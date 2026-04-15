#!/usr/bin/env bash
# buzz-dashboard — abre OpenClaw dashboard em 1 comando
#
# Estratégia (preferência):
#   1) HTTPS via Tailscale Serve (<fqdn>.ts.net) — cert Let's Encrypt, secure context
#   2) HTTP direto via Tailscale MagicDNS (hostinger:18789) — se gateway em tailnet
#   3) SSH tunnel localhost:18789 — fallback legacy (gateway em loopback)
#
# Uso:
#   buzz-dashboard            # abre dashboard
#   buzz-dashboard --stop     # derruba tunnel (se houver)
#   buzz-dashboard --status   # diagnóstico (HTTPS/direto/tunnel/token)
#   buzz-dashboard --refresh  # regenera token via SSH (openclaw dashboard)
#
# Requisitos no Mac:
#   - Tailscale ativo com VPS na mesma tailnet (MagicDNS "hostinger")
#   - Chave SSH autorizada em root@hostinger (só pro fallback tunnel)
#   - Token em ~/.config/buzz/token (chmod 600) — pode ser gerado via --refresh
#
# Variáveis (opcionais):
#   BUZZ_VPS_HOST     default: hostinger  (Tailscale MagicDNS curto)
#   BUZZ_VPS_FQDN     default: auto-detect (<host>.tail<tail-id>.ts.net)
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

# FQDN Tailscale — auto-detect via `tailscale status --json` se não setado
VPS_FQDN="${BUZZ_VPS_FQDN:-}"
if [[ -z "$VPS_FQDN" ]] && command -v tailscale >/dev/null 2>&1; then
  VPS_FQDN=$(tailscale status --json 2>/dev/null | \
    /usr/bin/python3 -c "
import json, sys
try:
    d = json.load(sys.stdin)
    for peer in d.get('Peer', {}).values():
        host = peer.get('HostName', '').lower()
        dns = peer.get('DNSName', '').rstrip('.')
        if host == '$VPS_HOST' or dns.startswith('$VPS_HOST.'):
            print(dns)
            break
except Exception:
    pass
" 2>/dev/null || true)
fi

log()  { printf '\033[1;36m[buzz]\033[0m %s\n' "$*"; }
warn() { printf '\033[1;33m[buzz]\033[0m %s\n' "$*"; }
err()  { printf '\033[1;31m[buzz]\033[0m %s\n' "$*" >&2; }

try_https() {
  [[ -n "$VPS_FQDN" ]] || return 1
  curl -sS -o /dev/null -m 5 "https://${VPS_FQDN}/" 2>/dev/null
}

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
    if try_https; then
      log "✓ HTTPS OK via ${VPS_FQDN} (Tailscale Serve)"
    elif [[ -n "$VPS_FQDN" ]]; then
      log "✗ HTTPS ${VPS_FQDN} não responde"
    else
      log "✗ FQDN Tailscale não detectado (Tailscale rodando?)"
    fi
    if try_direct; then
      log "✓ HTTP direto OK via ${VPS_HOST}:${PORT}"
    else
      log "✗ sem HTTP direto — gateway em loopback"
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

# decide rota: HTTPS (Tailscale Serve) > HTTP direto (tailnet) > SSH tunnel (legacy)
if try_https; then
  log "HTTPS via ${VPS_FQDN}"
  URL="https://${VPS_FQDN}/#token=${TOKEN}"
elif try_direct; then
  log "HTTP direto via ${VPS_HOST}:${PORT}"
  URL="http://${VPS_HOST}:${PORT}/#token=${TOKEN}"
else
  warn "sem HTTPS nem HTTP direto — usando SSH tunnel..."
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
