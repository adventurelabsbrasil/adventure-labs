#!/usr/bin/env bash
# fix-ssh-buzz.sh — Restaura acesso SSH do Buzz/OpenClaw à VPS
# Deploy: /opt/adventure-labs/scripts/fix-ssh-buzz.sh
# Uso:    bash fix-ssh-buzz.sh  (como root na VPS)
#
# Idempotente: verifica se a chave já existe antes de adicionar.
#
# ⚠️  AÇÃO NECESSÁRIA ANTES DE RODAR:
#   Substitua o valor de BUZZ_PUBLIC_KEY abaixo pela chave pública real.
#   Obtenha com: cat ~/.ssh/id_ed25519.pub  (na máquina de origem)
#   Formato esperado: "ssh-ed25519 AAAA... comentario"

set -euo pipefail

# ── CONFIGURAÇÃO ─────────────────────────────────────────────────────────────
# TODO: substitua pelo valor real antes de executar
BUZZ_PUBLIC_KEY="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAI__SUBSTITUIR_PELA_CHAVE_PUBLICA_REAL__ buzz@adventure-labs-openclaw"

SSH_DIR="/root/.ssh"
AUTH_KEYS="$SSH_DIR/authorized_keys"
DATE_UTC="$(date -u +'%Y-%m-%d %H:%M:%S UTC')"

# ── VALIDAÇÃO ────────────────────────────────────────────────────────────────
echo "[$DATE_UTC] fix-ssh-buzz.sh — iniciando"

# Detecta se a chave ainda está com o placeholder
if echo "$BUZZ_PUBLIC_KEY" | grep -q "__SUBSTITUIR_PELA_CHAVE_PUBLICA_REAL__"; then
  echo "ERRO: BUZZ_PUBLIC_KEY ainda contém o placeholder." >&2
  echo "  Edite o script e substitua pelo valor real antes de executar." >&2
  echo "  Obtenha a chave com: cat ~/.ssh/id_ed25519.pub" >&2
  exit 1
fi

# Verifica se está rodando como root
if [[ "$(id -u)" != "0" ]]; then
  echo "ERRO: este script deve ser executado como root (sudo bash fix-ssh-buzz.sh)" >&2
  exit 1
fi

# ── DIRETÓRIO E PERMISSÕES ────────────────────────────────────────────────────
mkdir -p "$SSH_DIR"
chmod 700 "$SSH_DIR"
touch "$AUTH_KEYS"
chmod 600 "$AUTH_KEYS"
echo "[$(date -u)] Diretório $SSH_DIR e $AUTH_KEYS configurados"

# ── IDEMPOTÊNCIA: não duplica se já existir ───────────────────────────────────
if grep -qF "$BUZZ_PUBLIC_KEY" "$AUTH_KEYS" 2>/dev/null; then
  echo "[$(date -u)] Chave já presente em $AUTH_KEYS — nenhuma ação necessária."
  exit 0
fi

# ── ADICIONAR CHAVE ───────────────────────────────────────────────────────────
echo "$BUZZ_PUBLIC_KEY" >> "$AUTH_KEYS"
echo "[$(date -u)] Chave SSH adicionada com sucesso em $AUTH_KEYS"

# ── VERIFICAR CONFIG DO SSHD ─────────────────────────────────────────────────
echo "[$(date -u)] Verificando configuração do sshd..."

if command -v sshd &>/dev/null; then
  PUBKEY_AUTH=$(sshd -T 2>/dev/null | grep -i "^pubkeyauthentication" | awk '{print $2}' || echo "unknown")
  echo "[$(date -u)] PubkeyAuthentication: $PUBKEY_AUTH"

  if [[ "$PUBKEY_AUTH" == "no" ]]; then
    echo "AVISO: PubkeyAuthentication está desativado!" >&2
    echo "  Edite /etc/ssh/sshd_config e adicione: PubkeyAuthentication yes" >&2
    echo "  Depois execute: systemctl reload sshd" >&2
  else
    # Reload sshd para garantir que a nova chave seja reconhecida
    if systemctl reload sshd 2>/dev/null; then
      echo "[$(date -u)] sshd recarregado com sucesso"
    else
      echo "[$(date -u)] WARN: falha ao recarregar sshd — pode ser necessário manualmente"
    fi
  fi
fi

# ── RESUMO ────────────────────────────────────────────────────────────────────
echo ""
echo "✅ fix-ssh-buzz.sh concluído"
echo ""
echo "Para testar o acesso:"
echo "  ssh -i ~/.ssh/id_ed25519 root@187.77.251.199"
echo ""
echo "Se ainda falhar, verificar:"
echo "  1. cat /etc/ssh/sshd_config | grep PubkeyAuthentication"
echo "  2. grep 'Accepted publickey' /var/log/auth.log"
echo "  3. ssh -vvv root@187.77.251.199  (logs detalhados do cliente)"
