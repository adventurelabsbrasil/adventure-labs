#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
REPORT_PATH="$ROOT_DIR/docs/inventario/_raw/VALIDATION_REPORT.md"

python3 - <<'PY'
from pathlib import Path
import re
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
lines.append("## Correções prioritárias")
lines.append("")
if broken_links or bad_env_lines or missing_update_section:
    lines.append("- Corrigir itens críticos de link, env e seção obrigatória antes do merge.")
else:
    lines.append("- Sem bloqueios críticos detectados por esta validação automatizada.")
lines.append("")
lines.append("## Melhorias opcionais MVP+1")
lines.append("")
lines.append("- Aprofundar V02 e V05 com validação semântica por entidade.")
lines.append("- Integrar este script ao CI para execução por PR.")

report_file.parent.mkdir(parents=True, exist_ok=True)
report_file.write_text("\n".join(lines) + "\n", encoding="utf-8")
print(f"VALIDATION_REPORT atualizado em: {report_file}")
print(f"Score: {score:.2f}% ({checks_pass}/{checks_total})")
print(f"Status: {status}")
PY

echo "Relatório salvo em: $REPORT_PATH"
