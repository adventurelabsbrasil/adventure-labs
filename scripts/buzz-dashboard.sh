#!/usr/bin/env bash
# buzz-dashboard — abre o OpenClaw dashboard do Mac em 1 comando
#
# Substitui o fluxo manual:
#   1) login Hostinger → terminal VPS
#   2) rodar `openclaw dashboard`
#   3) copiar ssh -N -L 18789:... e colar no Mac
#   4) copiar URL com token e colar no Chrome
#
# Uso:
#   ./scripts/buzz-dashboard.sh             # abre dashboard
#   ./scripts/buzz-dashboard.sh --stop      # derruba tunnel aberto
#   ./scripts/buzz-dashboard.sh --status    # status do tunnel
#
# Requisitos no Mac:
#   - chave SSH autorizada em root@187.77.251.199 (ou host Tailscale)
#   - `open` (padrão macOS) OU `xdg-open` no Linux
#
# Variáveis de ambiente (opcionais):
#   BUZZ_VPS_HOST   destino SSH (default: 187.77.251.199; pode ser `hostinger` se Tailscale ativo)
#   BUZZ_VPS_USER   usuário SSH (default: root)
#   BUZZ_PORT       porta do gateway OpenClaw (default: 18789)
#   BUZZ_BROWSER    app do browser (default: "Google Chrome")

set -euo pipefail

VPS_HOST="${BUZZ_VPS_HOST:-187.77.251.199}"
VPS_USER="${BUZZ_VPS_USER:-root}"
PORT="${BUZZ_PORT:-18789}"
BROWSER="${BUZZ_BROWSER:-Google Chrome}"
PID_FILE="${TMPDIR:-/tmp}/buzz-dashboard.${PORT}.pid"

log() { printf '\033[1;36m[buzz]\033[0m %s\n' "$*"; }
err() { printf '\033[1;31m[buzz]\033[0m %s\n' "$*" >&2; }

is_tunnel_alive() {
  [[ -f "$PID_FILE" ]] || return 1
  local pid
  pid=$(cat "$PID_FILE")
  kill -0 "$pid" 2>/dev/null
}

stop_tunnel() {
  if is_tunnel_alive; then
    local pid
    pid=$(cat "$PID_FILE")
    log "encerrando tunnel (pid=$pid)"
    kill "$pid" 2>/dev/null || true
  fi
  rm -f "$PID_FILE"
}

case "${1:-}" in
  --stop)
    stop_tunnel
    log "tunnel encerrado."
    exit 0
    ;;
  --status)
    if is_tunnel_alive; then
      log "tunnel ativo (pid=$(cat "$PID_FILE")) em localhost:${PORT}"
      exit 0
    else
      log "tunnel inativo."
      exit 1
    fi
    ;;
esac

# 1) buscar URL do dashboard via SSH (openclaw dashboard é executado pelo user openclaw via systemd)
log "solicitando URL do dashboard em ${VPS_USER}@${VPS_HOST}..."
DASHBOARD_OUTPUT=$(ssh -o ConnectTimeout=10 -o BatchMode=yes "${VPS_USER}@${VPS_HOST}" 'openclaw dashboard --print-url 2>/dev/null || openclaw dashboard') || {
  err "falha ao conectar em ${VPS_USER}@${VPS_HOST}. Verifique SSH e Tailscale."
  exit 1
}

# 2) extrair URL com token (procura http://...#token=...)
DASHBOARD_URL=$(printf '%s\n' "$DASHBOARD_OUTPUT" | grep -oE 'https?://[^[:space:]]+#token=[A-Za-z0-9]+' | head -n1 || true)

if [[ -z "$DASHBOARD_URL" ]]; then
  err "não foi possível extrair URL do dashboard. Output bruto:"
  printf '%s\n' "$DASHBOARD_OUTPUT" >&2
  exit 1
fi

# 3) abrir tunnel SSH em background se ainda não está
if is_tunnel_alive; then
  log "tunnel já ativo em localhost:${PORT} (pid=$(cat "$PID_FILE"))"
else
  log "abrindo tunnel SSH localhost:${PORT} → ${VPS_HOST}:${PORT}..."
  ssh -N -L "${PORT}:127.0.0.1:${PORT}" \
      -o ServerAliveInterval=30 \
      -o ServerAliveCountMax=3 \
      -o ExitOnForwardFailure=yes \
      "${VPS_USER}@${VPS_HOST}" &
  echo $! > "$PID_FILE"
  # pequena espera pro tunnel subir
  for _ in 1 2 3 4 5; do
    if nc -z localhost "$PORT" 2>/dev/null; then break; fi
    sleep 0.5
  done
fi

# 4) abrir no navegador
log "abrindo dashboard: ${DASHBOARD_URL}"
if [[ "$(uname -s)" == "Darwin" ]]; then
  open -a "$BROWSER" "$DASHBOARD_URL"
elif command -v xdg-open >/dev/null 2>&1; then
  xdg-open "$DASHBOARD_URL" >/dev/null 2>&1 &
else
  log "abra manualmente: $DASHBOARD_URL"
fi

log "pronto. Para encerrar: $0 --stop"
