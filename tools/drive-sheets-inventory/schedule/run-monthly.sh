#!/usr/bin/env bash
# Executado pelo launchd (macOS) — atualiza a planilha de inventário.
set -euo pipefail

TOOL_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$TOOL_ROOT"

ENV_FILE="$TOOL_ROOT/schedule/.env.schedule"
if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck source=/dev/null
  source "$ENV_FILE"
  set +a
fi

export GOOGLE_CREDENTIALS_PATH="${GOOGLE_CREDENTIALS_PATH:-$TOOL_ROOT/credentials.json}"
export GOOGLE_TOKEN_PATH="${GOOGLE_TOKEN_PATH:-$TOOL_ROOT/token.json}"

_ts() { date "+%Y-%m-%d %H:%M:%S"; }

if [[ -z "${DRIVE_SHEETS_INVENTORY_SPREADSHEET_ID:-}" ]]; then
  echo "$(_ts) ERRO: defina DRIVE_SHEETS_INVENTORY_SPREADSHEET_ID em schedule/.env.schedule" >&2
  exit 1
fi

PY="$TOOL_ROOT/.venv/bin/python"
if [[ ! -x "$PY" ]]; then
  echo "$(_ts) ERRO: venv ausente em $PY" >&2
  exit 1
fi

EXTRA=(--spreadsheet-id "$DRIVE_SHEETS_INVENTORY_SPREADSHEET_ID")
if [[ "${USE_GEMINI:-0}" == "1" ]]; then
  EXTRA+=(--gemini-descriptions)
  [[ -n "${GEMINI_MODEL:-}" ]] && EXTRA+=(--gemini-model "$GEMINI_MODEL")
else
  EXTRA+=(--keep-descriptions)
fi

echo "$(_ts) Iniciando inventário…"
exec "$PY" -m drive_sheets_inventory "${EXTRA[@]}"
