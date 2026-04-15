#!/usr/bin/env bash
# adventure-agent.sh — Dispatcher universal para agentes autônomos C-Suite
# Deploy: /opt/adventure-labs/scripts/adventure-agent.sh
#
# Uso:
#   ./adventure-agent.sh \
#     --agent  <nome>        (ex: csuite-ohno) \
#     --role   <cargo>       (ex: COO) \
#     --title  <nome exibido>(ex: Ohno) \
#     --system-prompt "<txt>" \
#     --context-query "<sql>" \
#     --files  "<a.md,dir/>" (vírgula, relativo à raiz do repo)
#
# Requisitos (VPS .env):
#   SUPABASE_DB_URL, ANTHROPIC_API_KEY, GEMINI_API_KEY, OPENAI_API_KEY,
#   MISTRAL_API_KEY, TELEGRAM_BOT_TOKEN, TELEGRAM_CHAT_ID
#
# Comportamento de falha: envia alerta ao Telegram e sai com código 1.
# Comportamento de embedding: falha silenciosa (o agente completa sem embedding).

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"   # /opt/adventure-labs/scripts → /opt/adventure-labs
ENV_FILE="$REPO_DIR/.env"
DATE_UTC="$(date -u +'%Y-%m-%d %H:%M:%S UTC')"
RUN_DATE="$(date -u +'%Y-%m-%d')"

# ── Arg parsing ──────────────────────────────────────────────────────────────
AGENT_NAME=""
AGENT_ROLE=""
AGENT_TITLE=""
SYSTEM_PROMPT=""
CONTEXT_QUERY=""
FILES_ARG=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --agent)         AGENT_NAME="$2";    shift 2 ;;
    --role)          AGENT_ROLE="$2";    shift 2 ;;
    --title)         AGENT_TITLE="$2";   shift 2 ;;
    --system-prompt) SYSTEM_PROMPT="$2"; shift 2 ;;
    --context-query) CONTEXT_QUERY="$2"; shift 2 ;;
    --files)         FILES_ARG="$2";     shift 2 ;;
    *) echo "[WARN] Argumento desconhecido: $1" >&2; shift ;;
  esac
done

[[ -z "$AGENT_NAME" ]]  && { echo "ERRO: --agent obrigatorio" >&2; exit 1; }
[[ -z "$AGENT_ROLE" ]]  && { echo "ERRO: --role obrigatorio"  >&2; exit 1; }
[[ -z "$AGENT_TITLE" ]] && AGENT_TITLE="$AGENT_NAME"

# ── Logging ───────────────────────────────────────────────────────────────────
LOG_DIR="$REPO_DIR/logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/${AGENT_NAME}.log"

log() { echo "[$(date -u +'%Y-%m-%d %H:%M:%S')] $*" | tee -a "$LOG_FILE"; }

# ── Telegram ──────────────────────────────────────────────────────────────────
notify_telegram() {
  local msg="$1"
  if [[ -n "${TELEGRAM_BOT_TOKEN:-}" && -n "${TELEGRAM_CHAT_ID:-}" ]]; then
    curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
      -d "chat_id=${TELEGRAM_CHAT_ID}" \
      --data-urlencode "text=${msg}" \
      -d "parse_mode=HTML" > /dev/null 2>&1 || true
  fi
}

fail() {
  log "ERRO: $*"
  notify_telegram "🚨 <b>Adventure Labs — Agente falhou</b>
Agente: $AGENT_TITLE ($AGENT_ROLE)
Data: $DATE_UTC
Erro: $*" || true
  exit 1
}

# ── Carregar .env ─────────────────────────────────────────────────────────────
if [[ -f "$ENV_FILE" ]]; then
  # shellcheck disable=SC1090
  set -a; source "$ENV_FILE"; set +a
  log "Env carregado de $ENV_FILE"
else
  fail "Arquivo .env não encontrado em $ENV_FILE"
fi

log "=== Iniciando agente: $AGENT_TITLE ($AGENT_ROLE) — $DATE_UTC ==="

# ── Supabase via psql ─────────────────────────────────────────────────────────
# Usa conexão direta (bypassa problemas de headers REST/RLS)
query_supabase() {
  local sql="$1"
  if [[ -z "${SUPABASE_DB_URL:-}" ]]; then
    log "WARN: SUPABASE_DB_URL não definido — contexto DB indisponível"
    echo ""; return 0
  fi
  if ! command -v psql &>/dev/null; then
    log "WARN: psql não instalado — contexto DB indisponível"
    log "  Instalar: apt-get install -y postgresql-client"
    echo ""; return 0
  fi
  local result
  result=$(psql "$SUPABASE_DB_URL" \
    --no-password -t -A \
    -c "SET statement_timeout = '10s';" \
    -c "$sql" 2>&1) || {
    log "WARN: psql query falhou (agente roda sem contexto DB): ${result:0:300}"
    echo ""; return 0
  }
  echo "$result"
}

# ── Leitura de arquivos de conhecimento ───────────────────────────────────────
read_files() {
  local files_csv="$1"
  local output=""
  local MAX_FILE_CHARS=6000
  local MAX_DIR_FILES=5
  local MAX_DIR_CHARS=3000

  IFS=',' read -ra FILE_LIST <<< "$files_csv"
  for f in "${FILE_LIST[@]}"; do
    f="${f// /}"  # trim espaços
    [[ -z "$f" ]] && continue
    local full_path="$REPO_DIR/$f"

    if [[ -d "$full_path" ]]; then
      local count=0
      while IFS= read -r -d '' mdfile && [[ $count -lt $MAX_DIR_FILES ]]; do
        local content
        content=$(head -c "$MAX_DIR_CHARS" "$mdfile" 2>/dev/null || true)
        output+=$'\n\n'"=== FILE: ${mdfile#"$REPO_DIR"/} ===
$content"
        ((count++)) || true
      done < <(find "$full_path" -maxdepth 1 -name "*.md" -print0 2>/dev/null)
    elif [[ -f "$full_path" ]]; then
      local content
      content=$(head -c "$MAX_FILE_CHARS" "$full_path" 2>/dev/null || true)
      output+=$'\n\n'"=== FILE: $f ===
$content"
    else
      log "WARN: arquivo/dir não encontrado: $full_path"
    fi
  done
  echo "$output"
}

# ── LLM call chain: Anthropic → Gemini → OpenAI ───────────────────────────────
# Usa python3 para JSON encoding seguro (pré-instalado no Ubuntu 24.04)
call_llm() {
  local system_prompt="$1"
  local user_message="$2"
  local response=""

  # ── Attempt 1: Anthropic (claude-sonnet-4-6) ──────────────────────────────
  if [[ -n "${ANTHROPIC_API_KEY:-}" ]]; then
    log "Tentando Anthropic (claude-sonnet-4-6)..."
    local body
    body=$(python3 -c "
import json, sys
print(json.dumps({
  'model': 'claude-sonnet-4-6',
  'max_tokens': 2048,
  'system': sys.argv[1],
  'messages': [{'role': 'user', 'content': sys.argv[2]}]
}))" "$system_prompt" "$user_message" 2>/dev/null) || {
      log "WARN: falha ao montar JSON Anthropic — pulando"
    }

    if [[ -n "${body:-}" ]]; then
      local http_response http_code body_only
      http_response=$(curl -s -w "\n%{http_code}" \
        -X POST "https://api.anthropic.com/v1/messages" \
        -H "x-api-key: ${ANTHROPIC_API_KEY}" \
        -H "anthropic-version: 2023-06-01" \
        -H "content-type: application/json" \
        --max-time 60 \
        -d "$body" 2>/dev/null) || true
      http_code=$(echo "$http_response" | tail -1)
      body_only=$(echo "$http_response" | head -n -1)

      if [[ "$http_code" == "200" ]]; then
        response=$(python3 -c "
import json, sys
d = json.load(sys.stdin)
print(d['content'][0]['text'])
" <<< "$body_only" 2>/dev/null) || true
        [[ -n "$response" ]] && { log "LLM: Anthropic OK"; }
      else
        log "WARN: Anthropic retornou HTTP $http_code — tentando Gemini"
      fi
    fi
  fi

  # ── Attempt 2: Gemini (gemini-2.0-flash) ─────────────────────────────────
  if [[ -z "$response" && -n "${GEMINI_API_KEY:-}" ]]; then
    log "Tentando Gemini (gemini-2.0-flash)..."
    local body
    body=$(python3 -c "
import json, sys
print(json.dumps({
  'system_instruction': {'parts': [{'text': sys.argv[1]}]},
  'contents': [{'role': 'user', 'parts': [{'text': sys.argv[2]}]}],
  'generationConfig': {'maxOutputTokens': 2048}
}))" "$system_prompt" "$user_message" 2>/dev/null) || {
      log "WARN: falha ao montar JSON Gemini — pulando"
    }

    if [[ -n "${body:-}" ]]; then
      local http_response http_code body_only
      http_response=$(curl -s -w "\n%{http_code}" \
        -X POST "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=${GEMINI_API_KEY}" \
        -H "Content-Type: application/json" \
        --max-time 60 \
        -d "$body" 2>/dev/null) || true
      http_code=$(echo "$http_response" | tail -1)
      body_only=$(echo "$http_response" | head -n -1)

      if [[ "$http_code" == "200" ]]; then
        response=$(python3 -c "
import json, sys
d = json.load(sys.stdin)
print(d['candidates'][0]['content']['parts'][0]['text'])
" <<< "$body_only" 2>/dev/null) || true
        [[ -n "$response" ]] && { log "LLM: Gemini OK"; }
      else
        log "WARN: Gemini retornou HTTP $http_code — tentando OpenAI"
      fi
    fi
  fi

  # ── Attempt 3: OpenAI (gpt-4o) ────────────────────────────────────────────
  if [[ -z "$response" && -n "${OPENAI_API_KEY:-}" ]]; then
    log "Tentando OpenAI (gpt-4o)..."
    local body
    body=$(python3 -c "
import json, sys
print(json.dumps({
  'model': 'gpt-4o',
  'max_tokens': 2048,
  'messages': [
    {'role': 'system', 'content': sys.argv[1]},
    {'role': 'user', 'content': sys.argv[2]}
  ]
}))" "$system_prompt" "$user_message" 2>/dev/null) || {
      log "WARN: falha ao montar JSON OpenAI — pulando"
    }

    if [[ -n "${body:-}" ]]; then
      local http_response http_code body_only
      http_response=$(curl -s -w "\n%{http_code}" \
        -X POST "https://api.openai.com/v1/chat/completions" \
        -H "Authorization: Bearer ${OPENAI_API_KEY}" \
        -H "Content-Type: application/json" \
        --max-time 60 \
        -d "$body" 2>/dev/null) || true
      http_code=$(echo "$http_response" | tail -1)
      body_only=$(echo "$http_response" | head -n -1)

      if [[ "$http_code" == "200" ]]; then
        response=$(python3 -c "
import json, sys
d = json.load(sys.stdin)
print(d['choices'][0]['message']['content'])
" <<< "$body_only" 2>/dev/null) || true
        [[ -n "$response" ]] && { log "LLM: OpenAI OK"; }
      else
        log "WARN: OpenAI retornou HTTP $http_code"
      fi
    fi
  fi

  if [[ -z "$response" ]]; then
    return 1
  fi
  echo "$response"
}

# ── Embeddings via Mistral ────────────────────────────────────────────────────
# Modelo: mistral-embed (1024 dimensões)
# Substitui Google text-embedding-004 (indisponível)
# Falha silenciosa: agente completa sem embedding se MISTRAL_API_KEY ausente/erro
generate_embedding() {
  local text="$1"

  if [[ -z "${MISTRAL_API_KEY:-}" ]]; then
    log "WARN: MISTRAL_API_KEY não definido — embedding será nulo"
    echo ""; return 0
  fi

  local body
  body=$(python3 -c "
import json, sys
# Trunca em 8000 chars para evitar limite de tokens
print(json.dumps({
  'model': 'mistral-embed',
  'input': [sys.argv[1][:8000]]
}))" "$text" 2>/dev/null) || {
    log "WARN: falha ao montar JSON de embedding — embedding nulo"
    echo ""; return 0
  }

  local http_response http_code body_only
  http_response=$(curl -s -w "\n%{http_code}" \
    -X POST "https://api.mistral.ai/v1/embeddings" \
    -H "Authorization: Bearer ${MISTRAL_API_KEY}" \
    -H "Content-Type: application/json" \
    --max-time 30 \
    -d "$body" 2>/dev/null) || true
  http_code=$(echo "$http_response" | tail -1)
  body_only=$(echo "$http_response" | head -n -1)

  if [[ "$http_code" != "200" ]]; then
    log "WARN: Mistral embeddings retornou HTTP $http_code — embedding nulo"
    echo ""; return 0
  fi

  # Retorna como literal PostgreSQL vector: [0.1,0.2,...]
  local vec
  vec=$(python3 -c "
import json, sys
d = json.load(sys.stdin)
v = d['data'][0]['embedding']
print('[' + ','.join(str(x) for x in v) + ']')
" <<< "$body_only" 2>/dev/null) || {
    log "WARN: falha ao parsear embedding — embedding nulo"
    echo ""; return 0
  }

  log "Embedding Mistral OK (${#vec} chars)"
  echo "$vec"
}

# ── Gravar memória no Supabase ────────────────────────────────────────────────
# ATENÇÃO: se adv_csuite_memory.embedding for vector(1536) e Mistral retorna
# 1024 dims, o INSERT falhará no campo embedding. Nesse caso, rode na VPS:
#   ALTER TABLE adv_csuite_memory ALTER COLUMN embedding TYPE vector(1024)
#     USING embedding::text::vector(1024);
store_memory() {
  local agent_name="$1"
  local content="$2"
  local embedding_vec="$3"

  if [[ -z "${SUPABASE_DB_URL:-}" ]]; then
    log "WARN: SUPABASE_DB_URL não definido — memória não gravada"
    return 0
  fi

  local metadata
  metadata=$(python3 -c "
import json, sys
print(json.dumps({
  'type': 'csuite_decision',
  'agent': sys.argv[1],
  'date': sys.argv[2],
  'source': ['vps_cron']
}))" "$agent_name" "$RUN_DATE" 2>/dev/null) || metadata='{"type":"csuite_decision"}'

  # Trunca e escapa single quotes para SQL seguro
  local safe_content
  safe_content="${content:0:8000}"
  safe_content="${safe_content//\'/\'\'}"
  local safe_meta="${metadata//\'/\'\'}"

  local sql
  if [[ -n "$embedding_vec" ]]; then
    sql="INSERT INTO adv_csuite_memory (content, metadata, embedding, created_at)
         VALUES ('${safe_content}', '${safe_meta}'::jsonb, '${embedding_vec}'::vector, NOW());"
  else
    sql="INSERT INTO adv_csuite_memory (content, metadata, created_at)
         VALUES ('${safe_content}', '${safe_meta}'::jsonb, NOW());"
  fi

  psql "$SUPABASE_DB_URL" --no-password -c "$sql" >> "$LOG_FILE" 2>&1 || \
    log "WARN: falha ao gravar memória no Supabase (não crítico — agente concluído)"
}

# ── MAIN ──────────────────────────────────────────────────────────────────────

# 1. Contexto Supabase
DB_CONTEXT=""
if [[ -n "$CONTEXT_QUERY" ]]; then
  log "Consultando Supabase..."
  DB_CONTEXT=$(query_supabase "$CONTEXT_QUERY")
  if [[ -n "$DB_CONTEXT" ]]; then
    log "Contexto DB: $(echo "$DB_CONTEXT" | wc -l) linhas"
  else
    log "Contexto DB: vazio (continuando sem dados)"
  fi
fi

# 2. Arquivos de conhecimento
FILE_CONTEXT=""
if [[ -n "$FILES_ARG" ]]; then
  log "Lendo arquivos: $FILES_ARG"
  FILE_CONTEXT=$(read_files "$FILES_ARG")
  log "Arquivos lidos: $(echo "$FILE_CONTEXT" | wc -c) chars"
fi

# 3. Montar user message
USER_MESSAGE="Data: $DATE_UTC
Agente: $AGENT_TITLE ($AGENT_ROLE)

=== CONTEXTO DO BANCO DE DADOS ===
${DB_CONTEXT:-'(sem dados disponíveis)'}

=== ARQUIVOS DE CONHECIMENTO ===
${FILE_CONTEXT:-'(sem arquivos carregados)'}

=== INSTRUÇÃO ===
Com base no contexto acima, gere o briefing/relatório do dia no formato definido no seu system prompt. Seja direto e acionável."

# 4. Chamar LLM
log "Chamando LLM (cadeia: Anthropic → Gemini → OpenAI)..."
AGENT_RESPONSE=$(call_llm "$SYSTEM_PROMPT" "$USER_MESSAGE") || \
  fail "Todos os provedores LLM falharam. Verifique ANTHROPIC_API_KEY, GEMINI_API_KEY e OPENAI_API_KEY no .env"

log "LLM respondeu: ${#AGENT_RESPONSE} chars"

# 5. Telegram
log "Enviando para Telegram..."
notify_telegram "$AGENT_RESPONSE"

# 6. Embedding
log "Gerando embedding (Mistral mistral-embed)..."
EMBED_VEC=$(generate_embedding "$AGENT_RESPONSE") || true

# 7. Gravar memória
log "Gravando memória no Supabase (adv_csuite_memory)..."
store_memory "$AGENT_NAME" "$AGENT_RESPONSE" "${EMBED_VEC:-}"

log "=== Agente $AGENT_TITLE ($AGENT_ROLE) concluído com sucesso ==="
exit 0
