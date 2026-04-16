#!/usr/bin/env bash
# fix-ssh-buzz.sh — Restaura serviço SSH na VPS Adventure Labs
# Deploy: /opt/adventure-labs/scripts/fix-ssh-buzz.sh
# Uso:    bash fix-ssh-buzz.sh  (como root na VPS — via console Hostinger se SSH offline)
#
# Problema real identificado em 2026-04-16:
#   openssh-server não estava instalado na VPS (Ubuntu 24.04).
#   authorized_keys já continha as chaves corretas (Rodrigo + root@hostinger).
#   Solução: instalar e habilitar o serviço ssh.
#
# Idempotente: verifica estado atual antes de agir.

set -euo pipefail

SSH_DIR="/root/.ssh"
AUTH_KEYS="$SSH_DIR/authorized_keys"
DATE_UTC="$(date -u +'%Y-%m-%d %H:%M:%S UTC')"

log() { echo "[$(date -u +'%Y-%m-%d %H:%M:%S')] $*"; }

log "fix-ssh-buzz.sh — iniciando ($DATE_UTC)"

# Verifica se está rodando como root
if [[ "$(id -u)" != "0" ]]; then
  echo "ERRO: executar como root (sudo bash fix-ssh-buzz.sh)" >&2
  exit 1
fi

# ── 1. Instalar openssh-server se ausente ─────────────────────────────────────
if ! command -v sshd &>/dev/null; then
  log "openssh-server não encontrado — instalando..."
  apt-get update -y
  apt-get install -y openssh-server
  log "openssh-server instalado"
else
  log "openssh-server já instalado: $(sshd -V 2>&1 | head -1)"
fi

# ── 2. Garantir PubkeyAuthentication habilitado ───────────────────────────────
SSHD_CONF="/etc/ssh/sshd_config"
PUBKEY_AUTH=$(grep -E "^PubkeyAuthentication" "$SSHD_CONF" | awk '{print $2}' || echo "")

if [[ "$PUBKEY_AUTH" == "no" ]]; then
  log "AVISO: PubkeyAuthentication=no — corrigindo..."
  sed -i 's/^PubkeyAuthentication.*/PubkeyAuthentication yes/' "$SSHD_CONF"
  log "PubkeyAuthentication definido como yes"
elif [[ -z "$PUBKEY_AUTH" ]]; then
  # Linha comentada ou ausente — o padrão do OpenSSH é yes, mas deixar explícito
  echo "PubkeyAuthentication yes" >> "$SSHD_CONF"
  log "PubkeyAuthentication adicionado ao sshd_config"
else
  log "PubkeyAuthentication: $PUBKEY_AUTH (ok)"
fi

# ── 3. Garantir PermitRootLogin habilitado ────────────────────────────────────
ROOT_LOGIN=$(grep -E "^PermitRootLogin" "$SSHD_CONF" | awk '{print $2}' || echo "")
if [[ "$ROOT_LOGIN" != "yes" && "$ROOT_LOGIN" != "prohibit-password" ]]; then
  log "AVISO: PermitRootLogin=$ROOT_LOGIN — definindo como prohibit-password (chave apenas)"
  sed -i '/^PermitRootLogin/d' "$SSHD_CONF"
  echo "PermitRootLogin prohibit-password" >> "$SSHD_CONF"
else
  log "PermitRootLogin: $ROOT_LOGIN (ok)"
fi

# ── 4. Garantir permissões corretas no .ssh ───────────────────────────────────
mkdir -p "$SSH_DIR"
chmod 700 "$SSH_DIR"
if [[ -f "$AUTH_KEYS" ]]; then
  chmod 600 "$AUTH_KEYS"
  KEY_COUNT=$(grep -c "ssh-" "$AUTH_KEYS" 2>/dev/null || echo "0")
  log "authorized_keys: $KEY_COUNT chave(s) presente(s)"
else
  touch "$AUTH_KEYS"
  chmod 600 "$AUTH_KEYS"
  log "AVISO: authorized_keys estava ausente — arquivo criado vazio"
  log "  Adicionar chave pública com: echo 'ssh-ed25519 AAAA...' >> $AUTH_KEYS"
fi

# ── 5. Habilitar e iniciar o serviço ─────────────────────────────────────────
SERVICE_STATUS=$(systemctl is-active ssh 2>/dev/null || echo "inactive")

if [[ "$SERVICE_STATUS" != "active" ]]; then
  log "Serviço ssh não está ativo ($SERVICE_STATUS) — habilitando e iniciando..."
  systemctl enable ssh
  systemctl start ssh
  sleep 1
  SERVICE_STATUS=$(systemctl is-active ssh 2>/dev/null || echo "failed")
  log "Serviço ssh após start: $SERVICE_STATUS"
else
  log "Serviço ssh já ativo — fazendo reload para aplicar config..."
  systemctl reload ssh
  log "Reload concluído"
fi

# ── 6. Verificação final ──────────────────────────────────────────────────────
if [[ "$(systemctl is-active ssh)" == "active" ]]; then
  PORT=$(ss -tlnp 2>/dev/null | grep sshd | awk '{print $4}' | head -1 || echo "22")
  echo ""
  log "✅ SSH operacional — porta: ${PORT:-22}"
  echo ""
  echo "Testar acesso do Mac do Rodrigo:"
  echo "  ssh root@187.77.251.199"
  echo ""
  echo "Diagnóstico se ainda falhar:"
  echo "  grep 'Accepted\|Failed' /var/log/auth.log | tail -20"
  echo "  ssh -vvv root@187.77.251.199"
else
  echo ""
  echo "ERRO: ssh ainda não está ativo após instalação." >&2
  echo "  Ver logs: journalctl -u ssh -n 50" >&2
  exit 1
fi
