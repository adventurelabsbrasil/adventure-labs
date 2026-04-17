#!/usr/bin/env bash
# beelink-delegate.sh — Delega tarefa para Claude Code no Beelink T4 Pro
# Uso: ./tools/scripts/beelink-delegate.sh "título" "prompt" [issue-number]
#
# Fluxo:
#   1. Cria (ou usa) uma GitHub Issue para rastreamento
#   2. SSH no Beelink + git pull
#   3. Executa claude -p com o prompt
#   4. Comenta resultado na Issue + fecha
#   5. Notifica via Telegram
#
# Pré-requisitos:
#   - ssh beelink configurado em ~/.ssh/config
#   - GITHUB_MCP_TOKEN (Fine-grained PAT: Issues R/W) no ambiente
#   - TELEGRAM_BOT_TOKEN no ambiente (opcional — para notificação)
#   - GITHUB_REPO no ambiente ou padrão adventurelabsbrasil/adventure-labs

set -euo pipefail

TITLE="${1:-}"
PROMPT="${2:-}"
ISSUE_NUMBER="${3:-}"
BEELINK_HOST="${BEELINK_HOST:-beelink}"
BEELINK_REPO="${BEELINK_REPO:-/home/adventurelabs/adventure-labs}"
GITHUB_REPO="${GITHUB_REPO:-adventurelabsbrasil/adventure-labs}"
GITHUB_API="https://api.github.com"
LOG_FILE="/tmp/beelink-delegate-$(date +%Y%m%d-%H%M%S).log"

if [[ -f ".env.local" ]]; then
  # shellcheck disable=SC1091
  set -o allexport; source .env.local; set +o allexport
fi

GH_TOKEN="${GITHUB_MCP_TOKEN:-}"
TG_TOKEN="${TELEGRAM_BOT_TOKEN:-}"
TG_CHAT="${TELEGRAM_CHAT_ID:-1069502175}"

# ──────────────────────────────────────────────
usage() {
  echo "Uso: $0 <título> <prompt> [issue-number]"
  echo ""
  echo "Exemplos:"
  echo "  $0 'auditoria _internal' 'Liste inconsistências entre _internal/ e CLAUDE.md'"
  echo "  $0 'análise logs n8n' 'Analise erros recentes e sugira fixes' 42"
  exit 1
}

gh_api() {
  local method="$1" path="$2" data="${3:-}"
  local args=(-s -X "$method" "${GITHUB_API}${path}" \
    -H "Authorization: Bearer ${GH_TOKEN}" \
    -H "Accept: application/vnd.github+json" \
    -H "X-GitHub-Api-Version: 2022-11-28")
  [[ -n "$data" ]] && args+=(-H "Content-Type: application/json" -d "$data")
  curl "${args[@]}"
}

create_issue() {
  local title="$1"
  gh_api POST "/repos/${GITHUB_REPO}/issues" \
    "{\"title\":\"[Beelink] ${title}\",\"labels\":[\"beelink\",\"via-telegram\"],\"body\":\"Tarefa delegada ao Beelink T4 Pro via \`beelink-delegate.sh\`.\n\n**Prompt:**\n\`\`\`\n${PROMPT}\n\`\`\`\n\n_Aguardando execução..._\"}" \
    | python3 -c "import sys,json; print(json.load(sys.stdin)['number'])"
}

comment_issue() {
  local number="$1" body="$2"
  gh_api POST "/repos/${GITHUB_REPO}/issues/${number}/comments" \
    "{\"body\":\"${body}\"}" > /dev/null
}

close_issue() {
  local number="$1"
  gh_api PATCH "/repos/${GITHUB_REPO}/issues/${number}" \
    '{"state":"closed","state_reason":"completed"}' > /dev/null
}

notify_telegram() {
  local msg="$1"
  [[ -z "$TG_TOKEN" ]] && return 0
  curl -s -X POST "https://api.telegram.org/bot${TG_TOKEN}/sendMessage" \
    -d "chat_id=${TG_CHAT}" \
    -d "text=${msg}" \
    -d "parse_mode=Markdown" > /dev/null 2>&1 || true
}

# ──────────────────────────────────────────────
[[ -z "$TITLE" || -z "$PROMPT" ]] && usage

if [[ -z "$GH_TOKEN" ]]; then
  echo "❌ GITHUB_MCP_TOKEN não definido. Configure em ~/.bashrc ou .env.local"
  exit 1
fi

echo "=== Beelink Delegate ==="
echo "Título  : $TITLE"
echo "Host    : $BEELINK_HOST"
echo "Repo    : $GITHUB_REPO"
echo ""

# 1. Criar ou usar Issue existente
if [[ -n "$ISSUE_NUMBER" ]]; then
  echo "✓ Usando Issue #${ISSUE_NUMBER} existente"
  ISSUE_URL="https://github.com/${GITHUB_REPO}/issues/${ISSUE_NUMBER}"
else
  echo "Criando GitHub Issue..."
  ISSUE_NUMBER=$(create_issue "$TITLE")
  ISSUE_URL="https://github.com/${GITHUB_REPO}/issues/${ISSUE_NUMBER}"
  echo "✓ Issue #${ISSUE_NUMBER} criada: ${ISSUE_URL}"
fi

# 2. Verificar Beelink
if ! ssh -o ConnectTimeout=5 -o BatchMode=yes "$BEELINK_HOST" "echo ok" > /dev/null 2>&1; then
  echo "❌ Beelink inacessível ($BEELINK_HOST). Verifique Tailscale."
  comment_issue "$ISSUE_NUMBER" "❌ Beelink inacessível via SSH. Verifique Tailscale e tente novamente."
  notify_telegram "❌ *Beelink inacessível* — Issue #${ISSUE_NUMBER} não executada: \`${TITLE}\`\n${ISSUE_URL}"
  exit 1
fi

echo "✓ Beelink acessível. Executando..."
notify_telegram "🚀 *Beelink executando:* \`${TITLE}\`\nIssue: ${ISSUE_URL}"

# 3. Executar no Beelink
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

# 4. Resultado na Issue
RESULT_FULL=$(cat "$LOG_FILE")
RESULT_PREVIEW=$(echo "$RESULT_FULL" | tail -10 | tr '\n' ' ' | cut -c1-500)
ESCAPED_RESULT=$(echo "$RESULT_FULL" | python3 -c "import sys,json; print(json.dumps(sys.stdin.read()))" | sed 's/^"//;s/"$//')

if [[ $EXIT_CODE -eq 0 ]]; then
  COMMENT="✅ **Concluído em ${DURATION}s**\n\n\`\`\`\n${RESULT_PREVIEW}\n\`\`\`\n\nLog completo em: \`${LOG_FILE}\` (Beelink local)"
  comment_issue "$ISSUE_NUMBER" "$COMMENT"
  close_issue "$ISSUE_NUMBER"
  echo ""
  echo "✅ Concluído em ${DURATION}s. Issue #${ISSUE_NUMBER} fechada."
  notify_telegram "✅ *Beelink concluiu:* \`${TITLE}\` (${DURATION}s)\nIssue #${ISSUE_NUMBER} fechada: ${ISSUE_URL}"
else
  COMMENT="❌ **Falhou (exit ${EXIT_CODE}) em ${DURATION}s**\n\n\`\`\`\n${RESULT_PREVIEW}\n\`\`\`"
  comment_issue "$ISSUE_NUMBER" "$COMMENT"
  echo ""
  echo "❌ Falhou (exit $EXIT_CODE). Issue #${ISSUE_NUMBER} permanece aberta."
  notify_telegram "❌ *Beelink falhou:* \`${TITLE}\` (exit ${EXIT_CODE})\nIssue #${ISSUE_NUMBER}: ${ISSUE_URL}"
  exit $EXIT_CODE
fi
