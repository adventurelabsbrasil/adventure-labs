#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ENV_FILE_ROOT="$ROOT_DIR/.env.local"
ENV_FILE_ADMIN="$ROOT_DIR/apps/admin/.env.local"

if [[ -f "$ENV_FILE_ROOT" ]]; then
  ENV_FILE="$ENV_FILE_ROOT"
elif [[ -f "$ENV_FILE_ADMIN" ]]; then
  ENV_FILE="$ENV_FILE_ADMIN"
else
  echo "ERRO: nenhum .env.local encontrado em:"
  echo "  - $ENV_FILE_ROOT"
  echo "  - $ENV_FILE_ADMIN"
  exit 1
fi

# Variaveis obrigatorias para apps/admin (sem expor valores)
REQUIRED_VARS=(
  "NEXT_PUBLIC_SUPABASE_URL"
  "NEXT_PUBLIC_SUPABASE_ANON_KEY"
  "SUPABASE_SERVICE_ROLE_KEY"
  "CRON_SECRET"
  "OPENROUTER_API_KEY"
)

echo "Arquivo de ambiente usado: $ENV_FILE"
echo "Validando variaveis obrigatorias para apps/admin..."
echo

missing=0
for var in "${REQUIRED_VARS[@]}"; do
  if grep -qE "^${var}=" "$ENV_FILE"; then
    echo "[OK]     $var"
  else
    echo "[MISSING] $var"
    missing=$((missing + 1))
  fi
done

echo
if [[ "$missing" -gt 0 ]]; then
  echo "Resultado: $missing variavel(is) obrigatoria(s) ausente(s)."
  exit 2
fi

echo "Resultado: todas as variaveis obrigatorias foram encontradas."
