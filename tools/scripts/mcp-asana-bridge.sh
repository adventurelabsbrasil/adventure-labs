#!/usr/bin/env bash
set -euo pipefail

if [[ -z "${ASANA_CLIENT_ID:-}" || -z "${ASANA_CLIENT_SECRET:-}" ]]; then
  echo "Asana MCP: ASANA_CLIENT_ID e ASANA_CLIENT_SECRET não estão definidos." >&2
  echo "Crie .cursor/asana-mcp.env (veja asana-mcp.env.example) ou exporte no shell e abra o Cursor pelo Terminal." >&2
  exit 1
fi

OAUTH_JSON="$(python3 -c 'import json, os; print(json.dumps({"client_id": os.environ["ASANA_CLIENT_ID"], "client_secret": os.environ["ASANA_CLIENT_SECRET"]}))')"

exec npx -y mcp-remote@latest https://mcp.asana.com/v2/mcp 3334 --static-oauth-client-info "$OAUTH_JSON"
