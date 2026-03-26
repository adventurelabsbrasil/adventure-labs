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
m07 = (root / "docs/inventario/M07-integracoes-terceiros-apis.md").read_text(encoding="utf-8")
m08 = (root / "docs/inventario/M08-infra-servidores-ci-cd.md").read_text(encoding="utf-8")
module_files = sorted((root / "docs/inventario").glob("M*.md"))

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

# M07: integrações documentais e N/A justificado para lacunas
for token in [
    "WorkOS",
    "evidência documental",
    "Stripe",
    "N/A justificado",
]:
    if token not in m07:
        errors.append(f"M07 sem evidência esperada: '{token}'")

# M08: baseline de infra operacional mínima
for token in [
    "srv1526292.hstgr.cloud",
    "openclaw.adventurelabs.com.br",
    "n8n.adventurelabs.com.br",
    "coolify.adventurelabs.com.br",
]:
    if token not in m08:
        errors.append(f"M08 sem referência de infra: '{token}'")

# Owner consistency: sem TBD no frontmatter de módulos M01..M12
for mf in module_files:
    txt = mf.read_text(encoding="utf-8")
    owner_line = next((ln for ln in txt.splitlines() if ln.startswith("owner:")), "")
    if not owner_line:
        errors.append(f"{mf.name} sem owner no frontmatter")
    elif "tbd" in owner_line.lower():
        errors.append(f"{mf.name} com owner TBD")

if errors:
    print("VALIDACAO SEMANTICA: FALHA")
    for e in errors:
        print("- " + e)
    sys.exit(1)

print("VALIDACAO SEMANTICA: OK")
PY

echo "Validação semântica concluída em: $ROOT_DIR"
