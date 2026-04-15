#!/bin/bash
# adventure-agent.sh — Dispatcher genérico de agentes IA
# Uso: adventure-agent.sh <agent_name> "<system_prompt>"
# Busca contexto do Supabase, chama Anthropic API, envia no Telegram.
#
# Requer: /opt/adventure-labs/.env com as variáveis abaixo definidas.

set -uo pipefail

# ── Carregar variáveis de ambiente ────────────────────────────────────
ENV_FILE="/opt/adventure-labs/.env"
if [[ -f "$ENV_FILE" ]]; then
  set -o allexport
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +o allexport
else
  echo "ERRO: $ENV_FILE não encontrado. Configure as variáveis de ambiente." >&2
  exit 1
fi

# Variáveis obrigatórias (validação)
: "${ANTHROPIC_API_KEY:?Variável ANTHROPIC_API_KEY não definida em .env}"
: "${TELEGRAM_BOT_TOKEN:?Variável TELEGRAM_BOT_TOKEN não definida em .env}"
: "${TELEGRAM_CHAT_ID:?Variável TELEGRAM_CHAT_ID não definida em .env}"
: "${SUPABASE_URL:?Variável SUPABASE_URL não definida em .env}"
: "${SUPABASE_SERVICE_ROLE_KEY:?Variável SUPABASE_SERVICE_ROLE_KEY não definida em .env}"

# Alias interno para compatibilidade
SUPABASE_KEY="${SUPABASE_SERVICE_ROLE_KEY}"

AGENT_NAME="${1:-agent}"
SYSTEM_PROMPT="${2:-Você é um agente da Adventure Labs.}"

TIMESTAMP=$(date '+%Y-%m-%d %H:%M BRT')
MODEL="${ANTHROPIC_MODEL:-claude-haiku-4-5-20251001}"

# ── Buscar contexto do Supabase ──────────────────────────────────────
fetch_context() {
  local tasks ideias memories

  # Tarefas abertas (últimas 30, in_progress + to_do)
  tasks=$(curl -s -X GET \
    "${SUPABASE_URL}/rest/v1/adv_tasks?select=title,status,priority,due_date&status=in_progress,to_do&limit=20&order=created_at.desc" \
    -H "apikey: ${SUPABASE_KEY}" \
    -H "Authorization: Bearer ${SUPABASE_KEY}" 2>/dev/null | \
    python3 -c "
import json,sys
data=json.load(sys.stdin)
lines=['TAREFAS ABERTAS:']
for t in data:
    due = t.get('due_date','') or ''
    lines.append(f'- [{t.get(\"status\",\"\")}] {t[\"title\"][:60]} {\"(vence: \"+due[:10]+\")\" if due else \"\"}'.strip())
print('\n'.join(lines))
" 2>/dev/null || echo "TAREFAS: sem dados")

  # Ideias recentes
  ideias=$(curl -s -X GET \
    "${SUPABASE_URL}/rest/v1/adv_ideias?select=title,category&limit=10&order=created_at.desc" \
    -H "apikey: ${SUPABASE_KEY}" \
    -H "Authorization: Bearer ${SUPABASE_KEY}" 2>/dev/null | \
    python3 -c "
import json,sys
data=json.load(sys.stdin)
if data:
    lines=['IDEIAS RECENTES:'] + [f'- {t[\"title\"][:60]}' for t in data]
    print('\n'.join(lines))
" 2>/dev/null || echo "")

  # Memória C-Suite recente
  memories=$(curl -s -X GET \
    "${SUPABASE_URL}/rest/v1/adv_csuite_memory?select=content,created_at&limit=3&order=created_at.desc" \
    -H "apikey: ${SUPABASE_KEY}" \
    -H "Authorization: Bearer ${SUPABASE_KEY}" 2>/dev/null | \
    python3 -c "
import json,sys
data=json.load(sys.stdin)
if data:
    lines=['MEMÓRIA C-SUITE RECENTE:'] + [f'- [{t[\"created_at\"][:10]}] {str(t.get(\"content\",\"\"))[:120]}' for t in data]
    print('\n'.join(lines))
" 2>/dev/null || echo "")

  echo "=== CONTEXTO ADVENTURE LABS — ${TIMESTAMP} ==="
  echo "$tasks"
  echo ""
  echo "$ideias"
  echo ""
  echo "$memories"
}

# ── Chamar Anthropic API ─────────────────────────────────────────────
CONTEXT=$(fetch_context)

RESPONSE=$(python3 -c "
import json, urllib.request, urllib.error

api_key = '${ANTHROPIC_API_KEY}'
system = '''${SYSTEM_PROMPT}'''
context = '''${CONTEXT}'''
user_msg = f'Data/hora atual: ${TIMESTAMP}\n\n{context}\n\nGere o relatório conforme suas instruções.'

payload = {
    'model': '${MODEL}',
    'max_tokens': 1500,
    'system': system,
    'messages': [{'role': 'user', 'content': user_msg}]
}

req = urllib.request.Request(
    'https://api.anthropic.com/v1/messages',
    data=json.dumps(payload).encode(),
    headers={
        'x-api-key': api_key,
        'anthropic-version': '2023-06-01',
        'content-type': 'application/json'
    }
)

try:
    with urllib.request.urlopen(req, timeout=60) as resp:
        data = json.load(resp)
        print(data['content'][0]['text'])
except urllib.error.HTTPError as e:
    print(f'API Error {e.code}: {e.read().decode()}')
except Exception as e:
    print(f'Error: {e}')
" 2>/dev/null)

# ── Enviar no Telegram ───────────────────────────────────────────────
MSG_HEADER="🤖 <b>${AGENT_NAME}</b> — ${TIMESTAMP}"
FULL_MSG="${MSG_HEADER}

${RESPONSE}"

# Truncar se necessário (limite Telegram: 4096 chars)
if [ ${#FULL_MSG} -gt 4000 ]; then
  FULL_MSG="${FULL_MSG:0:3950}...
<i>[truncado]</i>"
fi

curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
  -d "chat_id=${TELEGRAM_CHAT_ID}" \
  --data-urlencode "text=${FULL_MSG}" \
  -d "parse_mode=HTML" > /dev/null

echo "[${TIMESTAMP}] ${AGENT_NAME} — dispatch concluído"
