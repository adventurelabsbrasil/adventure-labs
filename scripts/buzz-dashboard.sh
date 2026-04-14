#!/usr/bin/env bash
# buzz-dashboard — abre OpenClaw dashboard em 1 comando
#
# Estratégia:
#   1) Tenta acesso direto via Tailscale MagicDNS (hostinger:18789)
#      → funciona se o gateway estiver bound em tailscale0 ou 0.0.0.0
#   2) Se falhar, sobe SSH tunnel localhost:18789 (fallback legacy loopback)
#   3) Abre Chrome com token cacheado
#
# Uso:
#   buzz-dashboard            # abre dashboard
#   buzz-dashboard --stop     # derruba tunnel (se houver)
#   buzz-dashboard --status   # diagnóstico (direto/tunnel/token)
#   buzz-dashboard --refresh  # regenera token via SSH (openclaw dashboard)
#
# Requisitos no Mac:
#   - Tailscale ativo com VPS na mesma tailnet (MagicDNS "hostinger")
#   - Chave SSH autorizada em root@hostinger
#   - Token em ~/.config/buzz/token (chmod 600) — pode ser gerado via --refresh
#
# Variáveis (opcionais):
#   BUZZ_VPS_HOST     default: hostinger  (Tailscale MagicDNS)
#   BUZZ_VPS_USER     default: root
#   BUZZ_PORT         default: 18789
#   BUZZ_BROWSER      default: "Google Chrome"
#   BUZZ_TOKEN_FILE   default: ~/.config/buzz/token

set -euo pipefail

VPS_HOST="${BUZZ_VPS_HOST:-hostinger}"
VPS_USER="${BUZZ_VPS_USER:-root}"
PORT="${BUZZ_PORT:-18789}"
BROWSER="${BUZZ_BROWSER:-Google Chrome}"
TOKEN_FILE="${BUZZ_TOKEN_FILE:-$HOME/.config/buzz/token}"

log()  { printf '\033[1;36m[buzz]\033[0m %s\n' "$*"; }
warn() { printf '\033[1;33m[buzz]\033[0m %s\n' "$*"; }
err()  { printf '\033[1;31m[buzz]\033[0m %s\n' "$*" >&2; }

try_direct() {
  curl -sS -o /dev/null -m 3 "http://${VPS_HOST}:${PORT}/" 2>/dev/null
}

is_tunnel_alive() {
  lsof -ti ":${PORT}" >/dev/null 2>&1
}

start_tunnel() {
  is_tunnel_alive && return 0
  log "abrindo SSH tunnel ${VPS_USER}@${VPS_HOST}:${PORT} → localhost:${PORT}..."
  ssh -fN \
      -o ServerAliveInterval=30 \
      -o ServerAliveCountMax=3 \
      -o ExitOnForwardFailure=yes \
      -L "${PORT}:127.0.0.1:${PORT}" \
      "${VPS_USER}@${VPS_HOST}"
  for _ in 1 2 3 4 5; do
    curl -s -o /dev/null -m 1 "http://localhost:${PORT}/" && return 0
    sleep 0.4
  done
  return 1
}

stop_tunnel() {
  local pids
  pids=$(lsof -ti ":${PORT}" 2>/dev/null || true)
  if [[ -n "$pids" ]]; then
    echo "$pids" | xargs -r kill 2>/dev/null || true
    log "tunnel encerrado (pids: $pids)"
  else
    log "sem tunnel ativo"
  fi
}

refresh_token() {
  log "buscando token em ${VPS_USER}@${VPS_HOST}..."
  local output token
  output=$(ssh -t -o ConnectTimeout=10 "${VPS_USER}@${VPS_HOST}" 'openclaw dashboard' 2>/dev/null || true)
  token=$(printf '%s' "$output" | grep -oE 'token=[A-Za-z0-9]+' | head -n1 | cut -d= -f2)
  if [[ -z "$token" ]]; then
    err "falha ao extrair token. Tente manualmente: ssh root@hostinger 'openclaw dashboard'"
    return 1
  fi
  mkdir -p "$(dirname "$TOKEN_FILE")"
  printf '%s\n' "$token" > "$TOKEN_FILE"
  chmod 600 "$TOKEN_FILE"
  log "token atualizado: ${token:0:10}… ($TOKEN_FILE)"
}

case "${1:-}" in
  --stop)    stop_tunnel; exit 0 ;;
  --refresh) refresh_token; exit $? ;;
  --status)
    if try_direct; then
      log "✓ acesso direto OK via ${VPS_HOST}:${PORT} (bind em tailscale0 ou 0.0.0.0)"
    else
      log "✗ sem acesso direto — gateway provavelmente em loopback"
    fi
    if is_tunnel_alive; then
      log "✓ tunnel ativo (pid=$(lsof -ti ":${PORT}" | head -n1))"
    else
      log "✗ sem tunnel"
    fi
    if [[ -f "$TOKEN_FILE" ]]; then
      token=$(head -n1 "$TOKEN_FILE")
      log "✓ token cached: ${token:0:10}… ($TOKEN_FILE)"
    else
      log "✗ sem token cacheado"
    fi
    exit 0
    ;;
esac

# token
if [[ ! -f "$TOKEN_FILE" ]]; then
  warn "sem token em $TOKEN_FILE — buscando..."
  refresh_token || exit 1
fi
TOKEN=$(head -n1 "$TOKEN_FILE")

# decide rota: direto (Tailscale) > tunnel (legacy)
if try_direct; then
  log "acesso direto via ${VPS_HOST}:${PORT}"
  URL="http://${VPS_HOST}:${PORT}/#token=${TOKEN}"
else
  warn "gateway não exposto na tailnet, usando SSH tunnel..."
  start_tunnel || { err "tunnel falhou"; exit 1; }
  URL="http://localhost:${PORT}/#token=${TOKEN}"
fi

log "abrindo dashboard"
if [[ "$(uname -s)" == "Darwin" ]]; then
  open -a "$BROWSER" "$URL"
elif command -v xdg-open >/dev/null 2>&1; then
  xdg-open "$URL" >/dev/null 2>&1 &
else
  log "URL: $URL"
fi

log "pronto."
