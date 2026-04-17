#!/usr/bin/env bash
# hivemind-heartbeat.sh — Monitor de saúde dos containers críticos
# Deploy: /opt/adventure-labs/scripts/agents/hivemind-heartbeat.sh
# Cron:   17 */4 * * *  /opt/adventure-labs/scripts/agents/hivemind-heartbeat.sh >> /opt/adventure-labs/logs/hivemind-heartbeat.log 2>&1
#
# Missão: Verificar containers Docker a cada 4h e alertar o Telegram
# APENAS se houver container unhealthy/stopped. Sem LLM — lógica pura.

set -euo pipefail

REPO_DIR="/opt/adventure-labs"
ENV_FILE="$REPO_DIR/.env"
LOG_DIR="$REPO_DIR/logs"
LOG_FILE="$LOG_DIR/hivemind-heartbeat.log"
DATE_UTC="$(date -u +'%Y-%m-%d %H:%M:%S UTC')"

mkdir -p "$LOG_DIR"
log() { echo "[$(date -u +'%Y-%m-%d %H:%M:%S')] $*" | tee -a "$LOG_FILE"; }

# Carregar .env para Telegram
if [[ -f "$ENV_FILE" ]]; then
  # shellcheck disable=SC1090
  set -a; source "$ENV_FILE"; set +a
fi

notify_telegram() {
  local msg="$1"
  if [[ -n "${TELEGRAM_BOT_TOKEN:-}" && -n "${TELEGRAM_CHAT_ID:-}" ]]; then
    curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
      -d "chat_id=${TELEGRAM_CHAT_ID}" \
      --data-urlencode "text=${msg}" \
      -d "parse_mode=HTML" > /dev/null 2>&1 || true
  fi
fi

# ── Containers monitorados ────────────────────────────────────────────────────
CONTAINERS=(
  adventure-n8n
  adventure-metabase
  adventure-uptime
  adventure-evolution
  adventure-infisical
  adventure-vaultwarden
  plane-app-web-1
  plane-app-api-1
  plane-app-worker-1
)

log "=== Heartbeat check — $DATE_UTC ==="

UNHEALTHY_LIST=()
HEALTHY_COUNT=0
NOT_FOUND_COUNT=0

for container in "${CONTAINERS[@]}"; do
  # Tenta health status primeiro, depois state status (containers sem healthcheck)
  health=$(docker inspect --format='{{.State.Health.Status}}' "$container" 2>/dev/null || echo "")
  state=$(docker inspect --format='{{.State.Status}}' "$container" 2>/dev/null || echo "not_found")

  if [[ "$state" == "not_found" ]]; then
    log "NOT FOUND: $container"
    UNHEALTHY_LIST+=("❌ $container (não encontrado)")
    ((NOT_FOUND_COUNT++)) || true
    continue
  fi

  # Container está rodando — verificar health se disponível
  if [[ "$state" == "running" ]]; then
    if [[ -n "$health" && "$health" != "healthy" && "$health" != "starting" ]]; then
      log "UNHEALTHY: $container (state=$state, health=$health)"
      UNHEALTHY_LIST+=("⚠️ $container (rodando mas health=$health)")
    else
      log "OK: $container (state=$state${health:+, health=$health})"
      ((HEALTHY_COUNT++)) || true
    fi
  else
    # Container não está rodando
    log "STOPPED: $container (state=$state)"
    UNHEALTHY_LIST+=("🔴 $container (state=$state)")
  fi
done

# ── Resultado ─────────────────────────────────────────────────────────────────
TOTAL=${#CONTAINERS[@]}

if [[ ${#UNHEALTHY_LIST[@]} -eq 0 ]]; then
  log "Todos os $HEALTHY_COUNT/$TOTAL containers saudáveis — sem alerta"
else
  ALERT_MSG="⚠️ <b>Adventure Labs — Heartbeat Alert</b>
Data: $DATE_UTC
Containers com problema (${#UNHEALTHY_LIST[@]}/${TOTAL}):"

  for item in "${UNHEALTHY_LIST[@]}"; do
    ALERT_MSG="$ALERT_MSG
$item"
  done

  ALERT_MSG="$ALERT_MSG

Saudáveis: $HEALTHY_COUNT/${TOTAL}
Ação: verificar logs com <code>docker logs &lt;container&gt;</code>"

  log "Enviando alerta ao Telegram: ${#UNHEALTHY_LIST[@]} problema(s)"
  notify_telegram "$ALERT_MSG"
fi

log "=== Heartbeat concluído ==="
exit 0
