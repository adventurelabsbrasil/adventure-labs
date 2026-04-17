#!/usr/bin/env bash
# beelink-bootstrap.sh — Setup inicial do Beelink T4 Pro como nó always-on
# Rodar UMA VEZ como: ssh adventurelabs@100.110.39.45 'bash -s' < beelink-bootstrap.sh
#
# O que faz:
#   1. Desabilita autenticação por senha (SSH key-only)
#   2. Instala Docker + Docker Compose
#   3. Cria estrutura de diretórios /opt/adventure-labs
#   4. Instala Node.js LTS via nvm
#   5. Clona o repo (leitura)
#   6. Configura cron de sync diário do repo

set -euo pipefail

ADV_DIR="/opt/adventure-labs"
GITHUB_REPO="adventurelabsbrasil/adventure-labs"

echo "=== [1/6] Desabilitando autenticação por senha ==="
sudo sed -i 's/^#*PasswordAuthentication.*/PasswordAuthentication no/' /etc/ssh/sshd_config
sudo sed -i 's/^#*ChallengeResponseAuthentication.*/ChallengeResponseAuthentication no/' /etc/ssh/sshd_config
sudo systemctl reload ssh
echo "SSH: password auth desabilitado"

echo "=== [2/6] Instalando Docker ==="
if ! command -v docker &>/dev/null; then
  curl -fsSL https://get.docker.com | sudo sh
  sudo usermod -aG docker "$USER"
  echo "Docker instalado"
else
  echo "Docker já instalado: $(docker --version)"
fi

echo "=== [3/6] Criando estrutura /opt/adventure-labs ==="
sudo mkdir -p "$ADV_DIR"/{scripts/agents,logs,backups}
sudo chown -R "$USER":"$USER" "$ADV_DIR"
echo "Estrutura criada em $ADV_DIR"

echo "=== [4/6] Instalando Node.js LTS via nvm ==="
if ! command -v nvm &>/dev/null; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
  # shellcheck disable=SC1090
  source ~/.nvm/nvm.sh
  nvm install --lts
  nvm use --lts
  echo "Node.js $(node --version) instalado"
else
  echo "nvm já instalado"
fi

echo "=== [5/6] Clonando repositório (leitura) ==="
if [[ ! -d "$ADV_DIR/repo/.git" ]]; then
  git clone "https://github.com/$GITHUB_REPO.git" "$ADV_DIR/repo"
  echo "Repo clonado em $ADV_DIR/repo"
else
  echo "Repo já existe, atualizando..."
  git -C "$ADV_DIR/repo" pull origin main
fi

echo "=== [6/6] Configurando sync diário do repo ==="
CRON_JOB="0 5 * * * git -C $ADV_DIR/repo pull origin main >> $ADV_DIR/logs/repo-sync.log 2>&1"
(crontab -l 2>/dev/null | grep -v "repo pull origin main"; echo "$CRON_JOB") | crontab -
echo "Cron de sync configurado (05:00 UTC diário)"

echo ""
echo "=== Bootstrap concluído! ==="
echo "Próximos passos manuais:"
echo "  1. Adicionar GITHUB_TOKEN ou SSH deploy key para repos privados"
echo "  2. Configurar Cursor AI Remote: ssh adventurelabs@100.110.39.45"
echo "  3. Instalar Claude Code: npm install -g @anthropic-ai/claude-code"
echo "  4. Copiar agentes VPS se quiser mirror local: scp root@187.77.251.199:/opt/adventure-labs/scripts/agents/*.sh $ADV_DIR/scripts/agents/"
