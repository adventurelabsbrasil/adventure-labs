#!/usr/bin/env bash
set -euo pipefail
LABEL="com.adventurelabs.drive-sheets-inventory"
DEST="$HOME/Library/LaunchAgents/${LABEL}.plist"
launchctl unload "$DEST" 2>/dev/null || true
rm -f "$DEST"
echo "Removido: $DEST"
