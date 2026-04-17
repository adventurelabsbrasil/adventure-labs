#!/usr/bin/env bash
# beelink-delegate.sh — Delega tarefa para Claude Code no Beelink T4 Pro
# Uso: ./tools/scripts/beelink-delegate.sh "título da tarefa" "prompt para Claude"
# Registra resultado em Supabase adv_tasks e notifica via Telegram.
#
# Pré-requisitos no Mac:
#   - ssh beelink configurado em ~/.ssh/config
#   - SUPABASE_ADV_URL e SUPABASE_ADV_SERVICE_ROLE_KEY no ambiente (ou .env.local)
#   - TELEGRAM_BOT_TOKEN e TELEGRAM_CHAT_ID no ambiente (ou .env.local)

set -euo pipefail

TITLE="${1:-}"
PROMPT="${2:-}"
BEELINK_HOST="${BEELINK_HOST:-beelink}"
BEELINK_REPO="${BEELINK_REPO:-/home/adventurelabs/adventure-labs}"
LOG_FILE="/tmp/beelink-delegate-$(date +%Y%m%d-%H%M%S).log"

# Carregar .env.local se existir
if [[ -f ".env.local" ]]; then
  # shellcheck disable=SC1091
  set -o allexport; source .env.local; set +o allexport
fi

SUPABASE_URL="${SUPABASE_ADV_URL:-}"
SUPABASE_KEY="${SUPABASE_ADV_SERVICE_ROLE_KEY:-}"
TG_TOKEN="${TELEGRAM_BOT_TOKEN:-}"
TG_CHAT="${TELEGRAM_CHAT_ID:-1069502175}"

# ──────────────────────────────────────────────
usage() {
  echo "Uso: $0 <título> <prompt>"
  echo ""
  echo "Exemplos:"
  echo "  $0 'auditoria _internal' 'Liste inconsistências entre _internal/ e CLAUDE.md'"
  echo "  $0 'análise logs n8n' 'Analise erros recentes e sugira fixes'"
  exit 1
}

notify_telegram() {
  local msg="$1"
  [[ -z "$TG_TOKEN" ]] && return 0
  curl -s -X POST "https://api.telegram.org/bot${TG_TOKEN}/sendMessage" \
    -d "chat_id=${TG_CHAT}" \
    -d "text=${msg}" \
    -d "parse_mode=Markdown" > /dev/null 2>&1 || true
}

register_task() {
  local status="$1" result="${2:-}"
  [[ -z "$SUPABASE_URL" || -z "$SUPABASE_KEY" ]] && return 0
  local payload
  payload=$(printf '{"title":"%s","status":"%s","source":"beelink","result":"%s","created_at":"%s"}' \
    "$TITLE" "$status" "$result" "$(date -u +%Y-%m-%dT%H:%M:%SZ)")
  curl -s -X POST "${SUPABASE_URL}/rest/v1/adv_tasks" \
    -H "apikey: ${SUPABASE_KEY}" \
    -H "Authorization: Bearer ${SUPABASE_KEY}" \
    -H "Content-Type: application/json" \
    -d "$payload" > /dev/null 2>&1 || true
}

# ──────────────────────────────────────────────
[[ -z "$TITLE" || -z "$PROMPT" ]] && usage

echo "=== Beelink Delegate ==="
echo "Título  : $TITLE"
echo "Host    : $BEELINK_HOST"
echo "Log     : $LOG_FILE"
echo ""

# Verificar conectividade SSH
if ! ssh -o ConnectTimeout=5 -o BatchMode=yes "$BEELINK_HOST" "echo ok" > /dev/null 2>&1; then
  echo "❌ Beelink inacessível via SSH ($BEELINK_HOST). Verifique Tailscale."
  notify_telegram "❌ *Beelink inacessível* — tarefa não delegada: \`${TITLE}\`"
  exit 1
fi

echo "✓ Beelink acessível. Delegando tarefa..."
notify_telegram "🚀 *Beelink recebeu tarefa:* \`${TITLE}\`\n_Aguarde resultado..._"
register_task "running"

# Executar Claude Code no Beelink
START_TS=$(date +%s)
ssh "$BEELINK_HOST" bash <<EOF 2>&1 | tee "$LOG_FILE"
  set -euo pipefail
  export HOME=/home/adventurelabs
  cd "${BEELINK_REPO}"
  git pull --ff-only origin main 2>/dev/null || true
  claude --dangerously-skip-permissions -p "$(printf '%s' "$PROMPT" | sed "s/'/'\\\\''/g")" 2>&1
EOF
EXIT_CODE=${PIPESTATUS[0]}
END_TS=$(date +%s)
DURATION=$(( END_TS - START_TS ))

# Resultado
RESULT_PREVIEW=$(tail -5 "$LOG_FILE" | tr '\n' ' ' | cut -c1-200)

if [[ $EXIT_CODE -eq 0 ]]; then
  echo ""
  echo "✅ Tarefa concluída em ${DURATION}s. Log: $LOG_FILE"
  notify_telegram "✅ *Beelink concluiu:* \`${TITLE}\` (${DURATION}s)\n\`\`\`\n${RESULT_PREVIEW}\n\`\`\`"
  register_task "done" "$RESULT_PREVIEW"
else
  echo ""
  echo "❌ Tarefa falhou (exit $EXIT_CODE) em ${DURATION}s. Log: $LOG_FILE"
  notify_telegram "❌ *Beelink falhou:* \`${TITLE}\` (exit ${EXIT_CODE})\n\`\`\`\n${RESULT_PREVIEW}\n\`\`\`"
  register_task "error" "exit ${EXIT_CODE}: ${RESULT_PREVIEW}"
  exit $EXIT_CODE
fi
