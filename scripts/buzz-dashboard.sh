#!/usr/bin/env bash
# buzz-dashboard — abre o OpenClaw dashboard do Mac em 1 comando
#
# Fluxo:
#   1) lê token cacheado em ~/.config/buzz/token (ou --refresh pra buscar via SSH)
#   2) sobe SSH tunnel 18789 → hostinger:18789 via Tailscale (se não houver)
#   3) abre Chrome em http://localhost:18789/#token=...
#
# Uso:
#   buzz-dashboard            # abre dashboard
#   buzz-dashboard --stop     # derruba tunnel
#   buzz-dashboard --status   # diagnóstico
#   buzz-dashboard --refresh  # busca token atualizado na VPS
#
# Requisitos no Mac:
#   - Tailscale ativo (Mac + VPS na mesma tailnet; hostname "hostinger")
#   - chave SSH autorizada em root@hostinger
#   - ~/.config/buzz/token com o token do dashboard (chmod 600)
#
# Variáveis de ambiente (opcionais):
#   BUZZ_VPS_HOST   destino SSH (default: hostinger — via Tailscale MagicDNS)
#   BUZZ_VPS_USER   usuário SSH (default: root)
#   BUZZ_PORT       porta do gateway (default: 18789)
#   BUZZ_BROWSER    app do browser (default: "Google Chrome")
#   BUZZ_TOKEN_FILE caminho do token (default: ~/.config/buzz/token)

set -euo pipefail

VPS_HOST="${BUZZ_VPS_HOST:-hostinger}"
VPS_USER="${BUZZ_VPS_USER:-root}"
PORT="${BUZZ_PORT:-18789}"
BROWSER="${BUZZ_BROWSER:-Google Chrome}"
TOKEN_FILE="${BUZZ_TOKEN_FILE:-$HOME/.config/buzz/token}"

log()  { printf '\033[1;36m[buzz]\033[0m %s\n' "$*"; }
warn() { printf '\033[1;33m[buzz]\033[0m %s\n' "$*"; }
err()  { printf '\033[1;31m[buzz]\033[0m %s\n' "$*" >&2; }

is_tunnel_alive() {
  lsof -ti ":${PORT}" >/dev/null 2>&1
}

stop_tunnel() {
  local pids
  pids=$(lsof -ti ":${PORT}" 2>/dev/null || true)
  if [[ -n "$pids" ]]; then
    log "encerrando tunnel (pids: $pids)"
    echo "$pids" | xargs -r kill 2>/dev/null || true
  fi
}

refresh_token() {
  log "buscando token atualizado em ${VPS_USER}@${VPS_HOST}..."
  local output token
  # openclaw dashboard precisa de TTY (socket systemd user)
  output=$(ssh -t -o ConnectTimeout=10 "${VPS_USER}@${VPS_HOST}" 'openclaw dashboard' 2>/dev/null || true)
  token=$(printf '%s' "$output" | grep -oE 'token=[A-Za-z0-9]+' | head -n1 | cut -d= -f2)
  if [[ -z "$token" ]]; then
    err "falha ao extrair token. Output bruto:"
    printf '%s\n' "$output" >&2
    return 1
  fi
  mkdir -p "$(dirname "$TOKEN_FILE")"
  printf '%s\n' "$token" > "$TOKEN_FILE"
  chmod 600 "$TOKEN_FILE"
  log "token atualizado: ${token:0:10}… ($TOKEN_FILE)"
}

case "${1:-}" in
  --stop)
    stop_tunnel
    log "tunnel encerrado."
    exit 0
    ;;
  --status)
    if is_tunnel_alive; then
      log "tunnel ativo: pid=$(lsof -ti ":${PORT}" | head -n1), porta=${PORT}"
    else
      log "tunnel inativo."
    fi
    if [[ -f "$TOKEN_FILE" ]]; then
      local_token=$(head -n1 "$TOKEN_FILE")
      log "token cached: ${local_token:0:10}… ($TOKEN_FILE)"
    else
      warn "sem token cached em $TOKEN_FILE"
    fi
    log "host: ${VPS_USER}@${VPS_HOST}:${PORT}"
    exit 0
    ;;
  --refresh)
    refresh_token
    exit $?
    ;;
esac

# token
if [[ ! -f "$TOKEN_FILE" ]]; then
  warn "sem token em $TOKEN_FILE — buscando via SSH..."
  refresh_token || {
    err "sem token disponível. Rode 'buzz-dashboard --refresh' manualmente."
    exit 1
  }
fi
TOKEN=$(head -n1 "$TOKEN_FILE")

# tunnel
if is_tunnel_alive; then
  log "tunnel já ativo em localhost:${PORT}"
else
  log "abrindo tunnel ${VPS_USER}@${VPS_HOST}:${PORT} → localhost:${PORT}..."
  ssh -fN \
      -o ServerAliveInterval=30 \
      -o ServerAliveCountMax=3 \
      -o ExitOnForwardFailure=yes \
      -L "${PORT}:127.0.0.1:${PORT}" \
      "${VPS_USER}@${VPS_HOST}"
  # espera tunnel responder
  for _ in 1 2 3 4 5; do
    if curl -s -o /dev/null -m 1 "http://localhost:${PORT}/"; then break; fi
    sleep 0.4
  done
fi

# abre browser
URL="http://localhost:${PORT}/#token=${TOKEN}"
log "abrindo dashboard"
if [[ "$(uname -s)" == "Darwin" ]]; then
  open -a "$BROWSER" "$URL"
elif command -v xdg-open >/dev/null 2>&1; then
  xdg-open "$URL" >/dev/null 2>&1 &
else
  log "URL: $URL"
fi

log "pronto. 'buzz-dashboard --stop' pra encerrar tunnel."
