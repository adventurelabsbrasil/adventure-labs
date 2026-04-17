#!/usr/bin/env bash
# beelink-env-setup.sh — Configura variáveis de ambiente para MCP no Beelink
# Rodar UMA VEZ: ssh beelink 'bash -s' < beelink-env-setup.sh
# Ou interativamente: bash beelink-env-setup.sh
#
# Variáveis necessárias:
#   GITHUB_MCP_TOKEN       — Fine-grained PAT (github.com → Settings → Developer settings → PAT)
#                            Permissões: Contents R/W, Issues R/W, Pull Requests R/W
#                            Escopo: adventurelabsbrasil/adventure-labs
#   SUPABASE_ADV_URL       — URL do projeto Supabase adv_* (ex: https://xxx.supabase.co)
#   SUPABASE_ADV_SERVICE_ROLE_KEY — service_role key do projeto adv_*
#                            Supabase Dashboard → projeto → Settings → API

set -euo pipefail

BASHRC="$HOME/.bashrc"

add_env() {
  local key="$1" val="$2"
  # Remove entrada antiga se existir
  sed -i "/^export ${key}=/d" "$BASHRC"
  echo "export ${key}=\"${val}\"" >> "$BASHRC"
  echo "  ✓ $key configurado"
}

echo "=== Configuração de env vars para MCP no Beelink ==="
echo ""

read -rp "GITHUB_MCP_TOKEN: " github_token
read -rp "SUPABASE_ADV_URL (ex: https://xxx.supabase.co): " supabase_url
read -rp "SUPABASE_ADV_SERVICE_ROLE_KEY: " supabase_key

echo ""
echo "Gravando em $BASHRC..."
add_env "GITHUB_MCP_TOKEN" "$github_token"
add_env "SUPABASE_ADV_URL" "$supabase_url"
add_env "SUPABASE_ADV_SERVICE_ROLE_KEY" "$supabase_key"

# shellcheck disable=SC1090
source "$BASHRC"

echo ""
echo "=== Verificação ==="
echo "GITHUB_MCP_TOKEN: ${GITHUB_MCP_TOKEN:0:12}..."
echo "SUPABASE_ADV_URL: $SUPABASE_ADV_URL"
echo "SUPABASE_ADV_SERVICE_ROLE_KEY: ${SUPABASE_ADV_SERVICE_ROLE_KEY:0:12}..."
echo ""
echo "Pronto. Reinicie a sessão Claude Code no Beelink para carregar as vars."
