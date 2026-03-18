#!/usr/bin/env bash
# Instala job mensal no macOS (dia 1, 08:30). O Cursor não agenda jobs; isso roda no sistema.
set -euo pipefail

TOOL_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LABEL="com.adventurelabs.drive-sheets-inventory"
DEST="$HOME/Library/LaunchAgents/${LABEL}.plist"
LOG_DIR="$TOOL_ROOT/schedule/logs"

mkdir -p "$LOG_DIR"

ENV_SCHEDULE="$TOOL_ROOT/schedule/.env.schedule"
if [[ ! -f "$ENV_SCHEDULE" ]]; then
  echo "Crie schedule/.env.schedule (copie de .env.schedule.example)."
  exit 1
fi
set -a
# shellcheck source=/dev/null
source "$ENV_SCHEDULE"
set +a
if [[ -z "${DRIVE_SHEETS_INVENTORY_SPREADSHEET_ID:-}" ]]; then
  echo "ERRO: em schedule/.env.schedule defina uma linha assim (sem # na frente):"
  echo "  DRIVE_SHEETS_INVENTORY_SPREADSHEET_ID=seu_id_da_planilha"
  echo "Edite o arquivo no Cursor; não cole comentários (# ...) no terminal."
  exit 1
fi

sed "s|__TOOL_ROOT__|$TOOL_ROOT|g" "$TOOL_ROOT/schedule/launchd.plist.template" > "$DEST"

launchctl unload "$DEST" 2>/dev/null || true
launchctl load -w "$DEST"

echo "Instalado: $DEST"
echo "Próxima execução: todo dia 1 do mês às 08:30 (horário local do Mac)."
echo "Logs: $LOG_DIR/monthly.{out,err}.log"
echo "Teste manual: bash $TOOL_ROOT/schedule/run-monthly.sh"
