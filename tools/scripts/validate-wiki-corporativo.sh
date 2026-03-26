#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
REPORT_PATH="$ROOT_DIR/docs/inventario/_raw/VALIDATION_REPORT.md"

python3 - <<'PY'
from pathlib import Path
import re
import glob
from datetime import date

root = Path.cwd()
modules = [
    "docs/inventario/M01-governanca-stack-taxonomia.md",
    "docs/inventario/M02-apps-rotas-scripts-deploy.md",
    "docs/inventario/M03-dados-banco-rls-migrations.md",
    "docs/inventario/M04-auth-seguranca-envs-tenants.md",
    "docs/inventario/M05-ia-agentes-skills-tools-mcps.md",
    "docs/inventario/M06-workflows-automacoes-cronjobs.md",
    "docs/inventario/M07-integracoes-terceiros-apis.md",
    "docs/inventario/M08-infra-servidores-ci-cd.md",
    "docs/inventario/M09-docs-conhecimento-guidelines.md",
    "docs/inventario/M10-produto-gestao-roadmap.md",
    "docs/inventario/M11-glossario-runbooks-adrs.md",
    "docs/inventario/M12-contexto-ia-rags-prompts.md",
]
index_file = root / "docs/WIKI_CORPORATIVO_INDEX.md"
raw_file = root / "docs/inventario/_raw/RAW_DATA.md"
report_file = root / "docs/inventario/_raw/VALIDATION_REPORT.md"
m02_file = root / "docs/inventario/M02-apps-rotas-scripts-deploy.md"
m03_file = root / "docs/inventario/M03-dados-banco-rls-migrations.md"
m06_file = root / "docs/inventario/M06-workflows-automacoes-cronjobs.md"
m07_file = root / "docs/inventario/M07-integracoes-terceiros-apis.md"
m08_file = root / "docs/inventario/M08-infra-servidores-ci-cd.md"

required_headers = ["module","title","ssot","owner","updated","version","apps_scope","review_sla","sources"]
checks_pass = 0
checks_total = 0

def read(p: Path) -> str:
    return p.read_text(encoding="utf-8") if p.exists() else ""

def frontmatter_keys(text: str):
    m = re.match(r"^---\n(.*?)\n---\n", text, re.S)
    if not m:
        return set()
    keys = set()
    for line in m.group(1).splitlines():
        if ":" in line and not line.strip().startswith("-"):
            keys.add(line.split(":",1)[0].strip())
    return keys

v01_rows = []
for mp in modules:
    p = root / mp
    t = read(p)
    keys = frontmatter_keys(t)
    row = [mp]
    for k in required_headers:
        checks_total += 1
        ok = k in keys
        if ok:
            checks_pass += 1
            row.append("OK")
        else:
            row.append("AUSENTE")
    v01_rows.append(row)

# V07 links index
broken_links = []
index_text = read(index_file)
for rel in re.findall(r"\(([^)]+\.md)\)", index_text):
    if rel.startswith("http"):
        continue
    target = (index_file.parent / rel).resolve() if not rel.startswith("/") else (root / rel[1:]).resolve()
    checks_total += 1
    if target.exists():
        checks_pass += 1
    else:
        broken_links.append(rel)

# V08 seção como atualizar
missing_update_section = []
for mp in modules:
    t = read(root / mp)
    checks_total += 1
    if "## Como atualizar este módulo" in t:
        checks_pass += 1
    else:
        missing_update_section.append(mp)

# V03 env values no M04
m04 = read(root / "docs/inventario/M04-auth-seguranca-envs-tenants.md")
bad_env_lines = []
for i, line in enumerate(m04.splitlines(), start=1):
    if "|" in line and "`" in line and ("[oculto]" not in line and "••••••" not in line):
        # skip header/separator lines
        if line.strip().startswith("| nome |") or re.match(r"^\|\-+", line.strip()):
            continue
        # look only rows that appear to be env row
        if re.search(r"`[A-Z0-9_]+`", line):
            bad_env_lines.append(i)
checks_total += 1
if not bad_env_lines:
    checks_pass += 1

# V06 pendencias
pending_counts = {}
for mp in modules:
    t = read(root / mp)
    c = len(re.findall(r"\[PENDENTE\]|\[NÃO ENCONTRADO\]", t))
    pending_counts[mp] = c

# V04 cobertura por nome de seção RAW
raw_text = read(raw_file)
raw_sections = re.findall(r"^## RAW: (.+)$", raw_text, re.M)
module_texts = "\n".join(read(root / mp) for mp in modules).lower()
missing_raw_coverage = []
for sec in raw_sections:
    checks_total += 1
    token = sec.lower().split("—")[0].strip()
    ok = token[:16] in module_texts
    if ok:
        checks_pass += 1
    else:
        missing_raw_coverage.append(sec)

# V09 validação semântica (M02/M03/M06)
semantic_checks = []

def add_semantic_check(name: str, ok: bool, details_ok: str, details_fail: str):
    global checks_total, checks_pass
    checks_total += 1
    if ok:
        checks_pass += 1
        semantic_checks.append((name, "OK", details_ok))
    else:
        semantic_checks.append((name, "FALHA", details_fail))

# M02/M06 endpoint coverage mínimo
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
m02_text = read(m02_file)
m06_text = read(m06_file)
def covered_in_m02(ep: str) -> bool:
    if ep in m02_text:
        return True
    if ep.startswith("/api/meta/") and "/api/meta/*" in m02_text:
        return True
    if ep.startswith("/api/cron/") and "/api/cron/*" in m02_text:
        return True
    if ep.startswith("/api/csuite/") and "/api/csuite/*" in m02_text:
        return True
    if ep.startswith("/api/n8n/") and "/api/n8n/*" in m02_text:
        return True
    return False

m02_missing = [ep for ep in required_endpoints if not covered_in_m02(ep)]
m06_missing = [ep for ep in required_endpoints if ep not in m06_text]
add_semantic_check(
    "V09.1 endpoint coverage M02",
    len(m02_missing) == 0,
    "Todos endpoints mínimos estão documentados em M02.",
    "Endpoints ausentes em M02: " + ", ".join(m02_missing),
)
add_semantic_check(
    "V09.2 endpoint coverage M06",
    len(m06_missing) == 0,
    "Todos endpoints mínimos estão documentados em M06.",
    "Endpoints ausentes em M06: " + ", ".join(m06_missing),
)

# M03 admin migrations não deve ficar "a mapear" quando a pasta existe
admin_migrations_dir = root / "apps/core/admin/supabase/migrations"
admin_migrations_exist = admin_migrations_dir.exists()
m03_text = read(m03_file)
admin_migrations_marked_active = "| `admin migrations` |" in m03_text and "| alta | ativo" in m03_text.lower()
add_semantic_check(
    "V09.3 status admin migrations M03",
    (not admin_migrations_exist) or admin_migrations_marked_active,
    "Status de migrations admin coerente com evidência de diretório.",
    "M03 deve refletir status ativo para admin migrations (diretório existente).",
)

# updated/version mudaram nos módulos alvo (sanity check)
def has_frontmatter_key(text: str, key: str, expected_value: str) -> bool:
    pattern = rf"^{re.escape(key)}:\s*{re.escape(expected_value)}\s*$"
    return re.search(pattern, text, re.M) is not None

m02_ok_version = has_frontmatter_key(m02_text, "version", "1.2.0")
m03_ok_version = has_frontmatter_key(m03_text, "version", "1.2.0")
m06_ok_version = has_frontmatter_key(m06_text, "version", "1.2.0")
add_semantic_check(
    "V09.4 version bump M02/M03/M06",
    m02_ok_version and m03_ok_version and m06_ok_version,
    "Versionamento semântico atualizado em M02/M03/M06.",
    "Versionamento esperado (1.2.0) não encontrado em todos os módulos alvo.",
)

# M07 checks (evidência + N/A justificado)
m07_text = read(m07_file)
m07_tokens = ["WorkOS", "evidência documental", "Stripe", "N/A justificado"]
m07_missing = [tk for tk in m07_tokens if tk not in m07_text]
add_semantic_check(
    "V09.5 integracoes M07 (evidencia + N/A)",
    len(m07_missing) == 0,
    "M07 com evidência documental e N/A justificado para lacunas.",
    "Tokens ausentes em M07: " + ", ".join(m07_missing),
)

# M08 checks (baseline infra)
m08_text = read(m08_file)
m08_tokens = [
    "srv1526292.hstgr.cloud",
    "openclaw.adventurelabs.com.br",
    "n8n.adventurelabs.com.br",
    "coolify.adventurelabs.com.br",
]
m08_missing = [tk for tk in m08_tokens if tk not in m08_text]
add_semantic_check(
    "V09.6 baseline infra M08",
    len(m08_missing) == 0,
    "M08 cobre baseline de infraestrutura e domínios operacionais.",
    "Referências ausentes em M08: " + ", ".join(m08_missing),
)

# Owner consistency sem TBD em M01..M12
owner_issues = []
for mp in modules:
    txt = read(root / mp)
    owner_line = next((ln for ln in txt.splitlines() if ln.startswith("owner:")), "")
    if not owner_line:
        owner_issues.append(f"{Path(mp).name} sem owner")
    elif "tbd" in owner_line.lower():
        owner_issues.append(f"{Path(mp).name} com owner TBD")
add_semantic_check(
    "V09.7 owner consistency M01-M12",
    len(owner_issues) == 0,
    "Todos módulos M01-M12 têm owner definido sem TBD.",
    "Inconsistências de owner: " + ", ".join(owner_issues),
)

# V10 drift checks (código vs documentação)
drift_checks = []
def add_drift_check(name: str, status: str, detail: str):
    drift_checks.append((name, status, detail))

api_base = root / "apps/core/admin/src/app/api"
actual_endpoints = set()
for route_file in glob.glob(str(api_base / "**/route.ts"), recursive=True):
    p = Path(route_file)
    endpoint = "/" + str(p.relative_to(root / "apps/core/admin/src/app")).replace("/route.ts", "").replace("\\", "/")
    if endpoint.startswith("/api/csuite/") or endpoint.startswith("/api/meta/") or endpoint.startswith("/api/cron/") or endpoint.startswith("/api/n8n/"):
        actual_endpoints.add(endpoint)

doc_endpoints = set()
for line in m06_text.splitlines():
    line = line.strip()
    if line.startswith("| `/api"):
        ep = line.split("`")[1]
        doc_endpoints.add(ep)

missing_in_docs = sorted(actual_endpoints - doc_endpoints)
extra_in_docs = sorted(doc_endpoints - actual_endpoints)
drift_count = len(missing_in_docs) + len(extra_in_docs)
DRIFT_THRESHOLD = 3
if drift_count <= DRIFT_THRESHOLD:
    add_drift_check(
        "V10.1 endpoint drift M06",
        "OK",
        f"Drift={drift_count} (limiar<={DRIFT_THRESHOLD})."
    )
else:
    add_drift_check(
        "V10.1 endpoint drift M06",
        "ALERTA",
        f"Drift={drift_count} (limiar<={DRIFT_THRESHOLD}); faltando na doc: {missing_in_docs[:6]}; extras na doc: {extra_in_docs[:6]}"
    )

# V10.2 migration drift (arquivos recentes vs M03)
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
missing_migration_refs = [m for m in recent_migrations if m not in m03_text]
MIGRATION_DRIFT_THRESHOLD = 2
if len(missing_migration_refs) <= MIGRATION_DRIFT_THRESHOLD:
    add_drift_check(
        "V10.2 migration drift M03",
        "OK",
        f"Drift={len(missing_migration_refs)} (limiar<={MIGRATION_DRIFT_THRESHOLD})."
    )
else:
    add_drift_check(
        "V10.2 migration drift M03",
        "ALERTA",
        f"Drift={len(missing_migration_refs)} (limiar<={MIGRATION_DRIFT_THRESHOLD}); sem referência em M03: {missing_migration_refs[:8]}"
    )

score = (checks_pass / checks_total * 100) if checks_total else 0
status = "APROVADO para merge" if score >= 80 else "BLOQUEADO para merge"

lines = []
lines.append("# VALIDATION_REPORT — Auditoria Wiki Corporativa")
lines.append("")
lines.append(f"Data da auditoria: {date.today()}")
lines.append(f"Score final: **{score:.2f}%** ({checks_pass}/{checks_total})")
lines.append(f"Status: **{status}**")
lines.append("")
lines.append("## V01 — Cabeçalhos obrigatórios")
lines.append("")
header_cols = "| módulo | " + " | ".join(required_headers) + " |"
sep = "|" + "---|" * (len(required_headers) + 1)
lines.extend([header_cols, sep])
for row in v01_rows:
    lines.append("| " + " | ".join(row) + " |")
lines.append("")
lines.append("## V03 — Envs sem valores (M04)")
lines.append("")
if bad_env_lines:
    lines.append("- Linhas problemáticas: " + ", ".join(map(str, bad_env_lines)))
else:
    lines.append("- OK")
lines.append("")
lines.append("## V04 — Cobertura do RAW_DATA")
lines.append("")
if missing_raw_coverage:
    lines.append("- Itens sem cobertura: " + "; ".join(missing_raw_coverage))
else:
    lines.append("- OK")
lines.append("")
lines.append("## V06 — Pendências abertas")
lines.append("")
lines.append("| módulo | pendências |")
lines.append("|---|---:|")
for mp, c in pending_counts.items():
    lines.append(f"| `{Path(mp).name}` | {c} |")
lines.append("")
lines.append("## V07 — Links do INDEX")
lines.append("")
if broken_links:
    lines.append("- Links quebrados: " + "; ".join(broken_links))
else:
    lines.append("- OK")
lines.append("")
lines.append("## V08 — Módulos sem 'Como atualizar'")
lines.append("")
if missing_update_section:
    lines.append("- Ausentes: " + "; ".join(missing_update_section))
else:
    lines.append("- OK")
lines.append("")
lines.append("## V09 — Validação semântica (M02/M03/M06/M07/M08)")
lines.append("")
lines.append("| check | status | detalhe |")
lines.append("|---|---|---|")
for name, st, detail in semantic_checks:
    lines.append(f"| {name} | {st} | {detail} |")
lines.append("")
lines.append("## V10 — Drift check (código x wiki)")
lines.append("")
lines.append("| check | status | detalhe |")
lines.append("|---|---|---|")
for name, st, detail in drift_checks:
    lines.append(f"| {name} | {st} | {detail} |")
lines.append("")
lines.append("## Correções prioritárias")
lines.append("")
semantic_failures = [c for c in semantic_checks if c[1] != "OK"]
if broken_links or bad_env_lines or missing_update_section or semantic_failures:
    lines.append("- Corrigir itens críticos de link, env e seção obrigatória antes do merge.")
    if semantic_failures:
        lines.append("- Corrigir falhas semânticas dos checks V09 antes do merge.")
else:
    lines.append("- Sem bloqueios críticos detectados por esta validação automatizada.")
if any(c[1] == "ALERTA" for c in drift_checks):
    lines.append("- Existe alerta de drift em V10; revisar documentação operacional antes do merge final.")
lines.append("")
lines.append("## Melhorias opcionais MVP+1")
lines.append("")
lines.append("- Aprofundar V02 e V05 com validação semântica por entidade.")
lines.append("- Ajustar limiares V10 por release para reduzir falsos positivos em semanas de alta cadência.")

report_file.parent.mkdir(parents=True, exist_ok=True)
report_file.write_text("\n".join(lines) + "\n", encoding="utf-8")
print(f"VALIDATION_REPORT atualizado em: {report_file}")
print(f"Score: {score:.2f}% ({checks_pass}/{checks_total})")
print(f"Status: {status}")
PY

echo "Relatório salvo em: $REPORT_PATH"
