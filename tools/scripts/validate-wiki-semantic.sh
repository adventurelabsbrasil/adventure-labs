#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/../.." && pwd)"

python3 - <<'PY'
from pathlib import Path
import glob
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

# V10.1 Drift de endpoints (código vs M06)
api_base = root / "apps/core/admin/src/app/api"
actual_endpoints = set()
for route_file in glob.glob(str(api_base / "**/route.ts"), recursive=True):
    p = Path(route_file)
    endpoint = "/" + str(p.relative_to(root / "apps/core/admin/src/app")).replace("/route.ts", "").replace("\\", "/")
    if endpoint.startswith("/api/csuite/") or endpoint.startswith("/api/meta/") or endpoint.startswith("/api/cron/") or endpoint.startswith("/api/n8n/"):
        actual_endpoints.add(endpoint)

doc_endpoints = set()
for line in m06.splitlines():
    line = line.strip()
    if line.startswith("| `/api"):
        ep = line.split("`")[1]
        doc_endpoints.add(ep)

missing_in_docs = sorted(actual_endpoints - doc_endpoints)
extra_in_docs = sorted(doc_endpoints - actual_endpoints)
drift_count = len(missing_in_docs) + len(extra_in_docs)
DRIFT_THRESHOLD = 3
if drift_count > DRIFT_THRESHOLD:
    errors.append(
        f"V10 endpoint drift acima do limiar ({drift_count}>{DRIFT_THRESHOLD}). "
        f"Faltando na doc: {missing_in_docs[:6]}; extras na doc: {extra_in_docs[:6]}"
    )

# V10.2 Drift de migrations (arquivos recentes vs M03)
def latest_migrations(directory: Path, limit: int = 3):
    if not directory.exists():
        return []
    files = sorted(directory.glob("*.sql"), key=lambda p: p.name, reverse=True)
    return [p.name for p in files[:limit]]

migration_dirs = [
    root / "supabase/migrations",
    root / "apps/core/admin/supabase/migrations",
    root / "apps/core/adventure/supabase/migrations",
]

recent_migrations = []
for d in migration_dirs:
    recent_migrations.extend(latest_migrations(d, 3))
recent_migrations = sorted(set(recent_migrations))

missing_migration_refs = [m for m in recent_migrations if m not in m03]
MIGRATION_DRIFT_THRESHOLD = 2
if len(missing_migration_refs) > MIGRATION_DRIFT_THRESHOLD:
    errors.append(
        f"V10 migration drift acima do limiar ({len(missing_migration_refs)}>{MIGRATION_DRIFT_THRESHOLD}). "
        f"Migrations recentes sem referência em M03: {missing_migration_refs[:8]}"
    )

if errors:
    print("VALIDACAO SEMANTICA: FALHA")
    for e in errors:
        print("- " + e)
    sys.exit(1)

print("VALIDACAO SEMANTICA: OK")
PY

echo "Validação semântica concluída em: $ROOT_DIR"
