#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/../.." && pwd)"

python3 - <<'PY'
from pathlib import Path
import sys

root = Path.cwd()
m02 = (root / "docs/inventario/M02-apps-rotas-scripts-deploy.md").read_text(encoding="utf-8")
m03 = (root / "docs/inventario/M03-dados-banco-rls-migrations.md").read_text(encoding="utf-8")
m06 = (root / "docs/inventario/M06-workflows-automacoes-cronjobs.md").read_text(encoding="utf-8")

required_endpoints = [
    "/api/csuite/andon-asana-run",
    "/api/csuite/andon-tts",
    "/api/csuite/context-docs",
    "/api/csuite/daily-memory",
    "/api/csuite/founder-report",
    "/api/csuite/google-workspace-advisor-inspect",
    "/api/meta/accounts",
    "/api/meta/accounts/[id]/campaigns",
    "/api/meta/accounts/[id]/insights",
    "/api/meta/daily",
    "/api/meta/mapping",
    "/api/meta/topics",
    "/api/cron/daily-summary",
    "/api/cron/whatsapp-daily",
    "/api/n8n/sueli-config",
]

errors = []

def covered_in_m02(ep: str) -> bool:
    if ep in m02:
        return True
    if ep.startswith("/api/meta/") and "/api/meta/*" in m02:
        return True
    if ep.startswith("/api/cron/") and "/api/cron/*" in m02:
        return True
    if ep.startswith("/api/csuite/") and "/api/csuite/*" in m02:
        return True
    if ep.startswith("/api/n8n/") and "/api/n8n/*" in m02:
        return True
    return False

m02_missing = [ep for ep in required_endpoints if not covered_in_m02(ep)]
m06_missing = [ep for ep in required_endpoints if ep not in m06]
if m02_missing:
    errors.append("M02 sem endpoints: " + ", ".join(m02_missing))
if m06_missing:
    errors.append("M06 sem endpoints: " + ", ".join(m06_missing))

if "| `admin migrations` |" in m03 and "| alta | a mapear" in m03.lower():
    errors.append("M03 ainda marca admin migrations como 'a mapear'.")

for module_name, text in [("M02", m02), ("M03", m03), ("M06", m06)]:
    if "version: 1.2.0" not in text:
        errors.append(f"{module_name} sem version: 1.2.0")

if errors:
    print("VALIDACAO SEMANTICA: FALHA")
    for e in errors:
        print("- " + e)
    sys.exit(1)

print("VALIDACAO SEMANTICA: OK")
PY

echo "Validação semântica concluída em: $ROOT_DIR"
