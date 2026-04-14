#!/usr/bin/env bash
# vps-tailscale-setup.sh — prepara a VPS Hostinger pra acesso via Tailscale
#
# Rodar UMA VEZ na VPS como root:
#   scp scripts/vps-tailscale-setup.sh root@187.77.251.199:/tmp/
#   ssh root@187.77.251.199 'bash /tmp/vps-tailscale-setup.sh'
#
# Flags:
#   --check          apenas diagnóstico, não instala nada (default se tailscale já existe)
#   --install        instala tailscale se faltar
#   --lockdown       após autenticar, bloqueia 18789 na internet e libera só na tailnet (UFW)
#                    ⚠️ só rodar DEPOIS de confirmar que Mac acessa a VPS via Tailscale,
#                    senão você trava o acesso público que hoje funciona.
#
# O que faz:
#   1. Confirma que está rodando como root
#   2. Instala tailscale (oficial script) se faltar
#   3. Roda `tailscale up --hostname=hostinger --ssh` e imprime URL de auth
#   4. Imprime próximos passos (Mac, iPhone, firewall)

set -euo pipefail

MODE="${1:---check}"

log()  { printf '\033[1;36m[tailscale-setup]\033[0m %s\n' "$*"; }
warn() { printf '\033[1;33m[tailscale-setup]\033[0m %s\n' "$*"; }
err()  { printf '\033[1;31m[tailscale-setup]\033[0m %s\n' "$*" >&2; }

if [[ "${EUID}" -ne 0 ]]; then
  err "rodar como root (sudo ou ssh root@...)"
  exit 1
fi

# 1. Diagnóstico
log "hostname: $(hostname)"
log "OS: $(. /etc/os-release && echo "$PRETTY_NAME")"

if command -v tailscale >/dev/null 2>&1; then
  TS_INSTALLED=1
  log "tailscale já instalado: $(tailscale version | head -n1)"
else
  TS_INSTALLED=0
  log "tailscale NÃO instalado"
fi

if [[ "$MODE" == "--check" ]]; then
  if [[ "$TS_INSTALLED" == "1" ]]; then
    log "status atual:"
    tailscale status || true
    log "IP tailnet: $(tailscale ip -4 2>/dev/null || echo 'n/a')"
  fi
  log "check concluído. Para instalar: bash $0 --install"
  exit 0
fi

# 2. Instalação
if [[ "$MODE" == "--install" || "$MODE" == "--lockdown" ]]; then
  if [[ "$TS_INSTALLED" == "0" ]]; then
    log "instalando tailscale via script oficial..."
    curl -fsSL https://tailscale.com/install.sh | sh
  fi

  log "subindo tailscale (hostname=hostinger, ssh=on)..."
  log ">>> ATENÇÃO: URL de autenticação vai aparecer abaixo."
  log ">>> Abra no browser autenticado na conta Tailscale da Adventure Labs."
  tailscale up --hostname=hostinger --ssh --accept-routes

  log ""
  log "=========================================="
  log "tailscale ativo."
  log "IP tailnet: $(tailscale ip -4 || echo 'pendente')"
  log "MagicDNS:   hostinger"
  log "=========================================="
  log ""
  log "Próximos passos:"
  log "  1) No Mac: export BUZZ_VPS_HOST=hostinger  (em ~/.zshrc)"
  log "  2) Testar: ssh root@hostinger   (via Tailscale SSH, sem chave)"
  log "  3) Testar: buzz-dashboard       (deve abrir mais rápido)"
  log "  4) iPhone: instalar app Tailscale, logar na mesma conta"
fi

# 3. Lockdown opcional (firewall)
if [[ "$MODE" == "--lockdown" ]]; then
  log ""
  warn "modo --lockdown: vai bloquear porta 18789 na internet e liberar só na tailnet"
  warn "SÓ PROSSIGA se o Mac já consegue acessar a VPS via Tailscale. Ctrl+C em 5s pra cancelar..."
  sleep 5

  if ! command -v ufw >/dev/null 2>&1; then
    log "instalando ufw..."
    apt-get update -qq
    apt-get install -y ufw
  fi

  # garantir que SSH não vai fechar
  log "garantindo regras essenciais (SSH, Tailscale SSH)..."
  ufw allow 22/tcp comment 'SSH fallback' || true
  ufw allow in on tailscale0 comment 'tailnet interna' || true

  # bloquear 18789 em interfaces não-tailnet
  log "bloqueando 18789 em interfaces públicas..."
  ufw deny 18789/tcp comment 'OpenClaw gateway — tailnet only' || true

  # ativar ufw se inativo
  if ufw status | grep -q "Status: inactive"; then
    warn "ativando ufw (default allow outgoing, deny incoming exceto regras acima)..."
    yes | ufw enable
  else
    ufw reload
  fi

  log "status final do firewall:"
  ufw status verbose

  log ""
  log "lockdown concluído. Valide de outra rede (4G do celular) que 187.77.251.199:18789 está fechado."
fi
