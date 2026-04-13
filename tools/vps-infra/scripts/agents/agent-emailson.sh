#!/usr/bin/env bash
# agent-emailson.sh — Emailson Correia (agente de triagem diária de emails)
# Deploy: /opt/adventure-labs/scripts/agents/agent-emailson.sh
# Cron:   0 5 * * *  /opt/adventure-labs/scripts/agents/agent-emailson.sh >> /opt/adventure-labs/logs/agent-emailson.log 2>&1
#
# Missao: Invocar Claude Code CLI para rodar a skill `triagem-emails` (persona Emailson Correia)
# usando Gmail MCP, gravar insights em docs/braindump/email-insights-YYYY-MM-DD.md e notificar Telegram.
#
# Diferente dos outros agentes do C-Suite: este NAO usa adventure-agent.sh (dispatcher via
# Anthropic API direta) porque precisa de acesso ao Gmail MCP, que so esta disponivel
# dentro de uma sessao Claude Code CLI com MCP configurado.

set -euo pipefail

REPO_DIR="${ADVENTURE_REPO_DIR:-/opt/adventure-labs}"
LOG_DIR="${REPO_DIR}/logs"
DATE_UTC=$(date -u +%Y-%m-%d)
LOG_FILE="${LOG_DIR}/agent-emailson_${DATE_UTC}.log"
TELEGRAM_BOT_TOKEN="${TELEGRAM_BOT_TOKEN:-}"
TELEGRAM_CHAT_ID="${TELEGRAM_CHAT_ID:-1069502175}"

mkdir -p "$LOG_DIR"

log() { echo "[$(date -u +'%Y-%m-%d %H:%M:%S')] $*" | tee -a "$LOG_FILE"; }

notify_telegram() {
  local msg="$1"
  if [[ -n "$TELEGRAM_BOT_TOKEN" && -n "$TELEGRAM_CHAT_ID" ]]; then
    curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
      -d "chat_id=${TELEGRAM_CHAT_ID}" \
      --data-urlencode "text=${msg}" \
      -d "parse_mode=HTML" > /dev/null 2>&1 || true
  fi
}

fail() {
  log "ERRO: $*"
  notify_telegram "🚨 <b>Emailson Correia — FALHA na triagem</b>
$(date -u)
Erro: $*
Log: ${LOG_FILE}"
  exit 1
}

log "=== Início Emailson Correia / triagem-emails (${DATE_UTC}) ==="

# Requisitos
command -v claude >/dev/null 2>&1 || fail "Claude CLI não encontrado no PATH"
[[ -d "$REPO_DIR" ]] || fail "Repo não encontrado em $REPO_DIR"
cd "$REPO_DIR"

# Garantir que a skill existe no repo (SSOT)
SKILL_FILE=".claude/skills/triagem-emails/SKILL.md"
[[ -f "$SKILL_FILE" ]] || fail "Skill não encontrada: $SKILL_FILE (rode git pull?)"

# Export vars para a skill usar dentro da sessão Claude
export TELEGRAM_BOT_TOKEN
export TELEGRAM_CHAT_ID

# Prompt headless: invoca a skill. Claude CLI carrega .claude/skills/ automaticamente.
PROMPT="Você é Emailson Correia. Execute a skill \`triagem-emails\` agora. Varra os emails das últimas 24h, trie conforme o protocolo de braindump, grave o report em docs/braindump/email-insights-${DATE_UTC}.md e envie a notificação Telegram assinada como Emailson. Reporte ao final: número de threads avaliadas, contagens por categoria e caminho do arquivo."

log "Invocando Claude CLI..."
if ! claude -p "$PROMPT" 2>&1 | tee -a "$LOG_FILE"; then
  fail "Claude CLI retornou erro (ver $LOG_FILE)"
fi

OUTPUT_FILE="docs/braindump/email-insights-${DATE_UTC}.md"
if [[ ! -f "$OUTPUT_FILE" ]]; then
  fail "Arquivo de saída não foi criado: $OUTPUT_FILE"
fi

log "Triagem concluída. Arquivo: $OUTPUT_FILE"
log "=== Fim Emailson Correia ==="

exit 0
