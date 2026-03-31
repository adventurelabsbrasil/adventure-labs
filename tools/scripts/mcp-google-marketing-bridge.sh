#!/usr/bin/env bash
set -euo pipefail

required_vars=(
  GOOGLE_ADS_CLIENT_ID
  GOOGLE_ADS_CLIENT_SECRET
  GOOGLE_ADS_DEVELOPER_TOKEN
  GOOGLE_ADS_REFRESH_TOKEN
)

missing=()
for key in "${required_vars[@]}"; do
  if [[ -z "${!key:-}" ]]; then
    missing+=("$key")
  fi
done

if [[ ${#missing[@]} -gt 0 ]]; then
  echo "Google Marketing MCP: variáveis obrigatórias ausentes:" >&2
  for key in "${missing[@]}"; do
    echo " - $key" >&2
  done
  echo "Crie .cursor/google-marketing-mcp.env (a partir do .example) ou injete via Infisical." >&2
  exit 1
fi

exec node "${WORKSPACE_FOLDER:-$(pwd)}/tools/mcp/google-marketing-mcp.mjs"
