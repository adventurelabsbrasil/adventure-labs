#!/bin/bash
# hivemind-heartbeat.sh — Hivemind Heartbeat Adventure Labs VPS
# Cron: 17 */4 * * * /opt/adventure-labs/scripts/hivemind-heartbeat.sh
# Roda a cada 4h. Envia alerta no Telegram apenas se houver problema.
#
# Requer: /opt/adventure-labs/.env com TELEGRAM_BOT_TOKEN e TELEGRAM_CHAT_ID

set -euo pipefail

ENV_FILE="/opt/adventure-labs/.env"
if [[ -f "$ENV_FILE" ]]; then
  set -o allexport
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +o allexport
fi

: "${TELEGRAM_BOT_TOKEN:?TELEGRAM_BOT_TOKEN não definido em .env}"
: "${TELEGRAM_CHAT_ID:?TELEGRAM_CHAT_ID não definido em .env}"

HOSTNAME="VPS-Hostinger"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M BRT')

send_telegram() {
  local msg="$1"
  curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
    -d "chat_id=${TELEGRAM_CHAT_ID}" \
    -d "text=${msg}" \
    -d "parse_mode=HTML" > /dev/null
}

# ── Containers críticos ────────────────────────────────────────────────
CRITICAL=("adventure-n8n" "adventure-evolution" "adventure-infisical" "adventure-postgres" "adventure-infisical-redis")
ALERTS=()
CONTAINERS_OK=()

for svc in "${CRITICAL[@]}"; do
  STATUS=$(docker inspect --format='{{.State.Status}}' "$svc" 2>/dev/null || echo "not_found")
  if [[ "$STATUS" != "running" ]]; then
    ALERTS+=("🔴 <b>${svc}</b>: ${STATUS}")
    docker start "$svc" 2>/dev/null && ALERTS[-1]="${ALERTS[-1]} → restart tentado"
  else
    CONTAINERS_OK+=("$svc")
  fi
done

# ── Disco ──────────────────────────────────────────────────────────────
DISK_PCT=$(df / | awk 'NR==2 {gsub(/%/,""); print $5}')
if [[ $DISK_PCT -gt 85 ]]; then
  ALERTS+=("🟡 <b>Disco</b>: ${DISK_PCT}% usado")
fi

# ── Memória ────────────────────────────────────────────────────────────
MEM_AVAIL=$(free | awk '/^Mem:/ {printf "%.0f", $7/$2*100}')
if [[ $MEM_AVAIL -lt 15 ]]; then
  ALERTS+=("🟡 <b>Memória</b>: apenas ${MEM_AVAIL}% livre")
fi

# ── Resultado ──────────────────────────────────────────────────────────
if [[ ${#ALERTS[@]} -eq 0 ]]; then
  echo "[${TIMESTAMP}] Heartbeat OK — ${#CONTAINERS_OK[@]} containers up, disco ${DISK_PCT}%, mem livre ${MEM_AVAIL}%"
  exit 0
fi

MSG="⚡ <b>Hivemind Heartbeat</b> — ${TIMESTAMP}

"
for alert in "${ALERTS[@]}"; do
  MSG="${MSG}${alert}
"
done
MSG="${MSG}
📍 ${HOSTNAME}"

send_telegram "$MSG"
echo "[${TIMESTAMP}] ALERTAS enviados: ${#ALERTS[@]}"
