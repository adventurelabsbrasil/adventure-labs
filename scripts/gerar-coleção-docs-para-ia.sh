#!/usr/bin/env bash
# Regenera docs/COLEÇÃO_DOCS_PARA_IA.md a partir dos README e PLANO listados.
# Uso: ./scripts/gerar-coleção-docs-para-ia.sh (executar na raiz do 01_ADVENTURE_LABS)
# Requer: Python 3 na raiz do repo.

set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

python3 - "$ROOT" << 'PYEOF'
import sys
from pathlib import Path
from datetime import date

BASE = Path(sys.argv[1])
OUT = BASE / "docs" / "COLEÇÃO_DOCS_PARA_IA.md"

IMPLEMENTADO = [
    "README.md", "CONTRIBUTING.md", "PLANO_MONOREPO_ADVENTURE_LABS.md",
    "apps/admin/README.md", "apps/admin/agents/skills/README.md",
    "apps/admin/n8n_workflows/README.md", "apps/admin/n8n_workflows/csuite/README.md",
    "apps/admin/n8n_workflows/meta_ads_agent/README.md", "apps/admin/n8n_workflows/sueli/README.md",
    "apps/admin/public/context-docs/README.md", "apps/admin/public/context-docs/99_ARQUIVO/README.md",
    "apps/admin/public/agents-docs/skills/README.md", "apps/admin/supabase/README.md",
    "apps/admin/docs/PLANO_SKILL_GOOGLE_DRIVE_ADVENTURE.md",
    "apps/adventure/README.md", "apps/adventure/docs/README.md", "apps/adventure/extension/README.md",
    "apps/adventure/functions/README.md", "apps/elite/README.md", "apps/finfeed/README.md",
    "clients/02_rose/sites/auxilio-maternidade/README.md", "workflows/README.md",
    "tools/xtractor/README.md", "tools/dbgr/README.md", "tools/n8n-scripts/README.md",
    "tools/notebooklm/README.md", "tools/musicalart/README.md",
    "tools/gdrive-migrator/drive migrator/README.md",
    ".cursor/skills/clientes/README.md", ".cursor/skills/comercial/README.md",
    ".cursor/skills/desenvolvimento/README.md", ".cursor/skills/gestao-corporativa/README.md",
    ".cursor/skills/marketing/README.md",
    "clients/01_lidera/README.md", "clients/01_lidera/admin/README.md",
    "clients/01_lidera/lidera-dre/README.md", "clients/01_lidera/lidera-dre/scripts/README.md",
    "clients/01_lidera/lidera-skills/README.md", "clients/01_lidera/lidera-space/README.md",
    "clients/01_lidera/lideraspacev1/README.md", "clients/02_rose/README.md",
    "clients/02_rose/admin/README.md", "clients/02_rose/roseportaladvocacia/README.md",
    "clients/03_speed/README.md", "clients/04_young/README.md", "clients/04_young/admin/README.md",
    "clients/04_young/ranking-vendas/README.md", "clients/04_young/young-talents/README.md",
    "clients/04_young/young-talents/docs/README.md", "clients/05_benditta/README.md",
    "clients/06_capclear/README.md", "packages/config/README.md", "packages/db/README.md",
    "packages/ui/README.md", "knowledge/README.md", "knowledge/99_ARQUIVO/README.md",
    "docs/estrutura-visual/README.md", "docs/roles/README.md", "_internal/vault/README.md",
]

PENDENTE = [
    "clients/04_young/young-talents/docs/futuras-melhorias/README.md",
    "clients/04_young/young-talents/docs/futuras-melhorias/PLANEJAMENTO_TEMPLATES_VAGA.md",
    "docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md", "apps/finfeed/PLANO_INICIAL.md",
]

def read_file(path):
    p = BASE / path
    if not p.exists():
        return None
    try:
        return p.read_text(encoding="utf-8", errors="replace")
    except Exception:
        return None

lines = [
    "# Coleção de documentação para IA — 01_ADVENTURE_LABS",
    "",
    "**Data:** " + date.today().isoformat(),
    "",
    "Este arquivo reúne a documentação (README e, quando relevante, PLANO/roadmap) de **apps, sites, workflows, tools, skills e agentes** do monorepo 01_ADVENTURE_LABS. Use-o para entender **em que ponto estamos e onde queremos chegar** (implementado e pendente/futuro).",
    "",
    "---",
    "",
    "## Índice",
    "",
    "### Implementado",
]
for p in IMPLEMENTADO:
    if read_file(p):
        lines.append(f"- `{p}`")
lines.extend(["", "### Pendente / Futuro"])
for p in PENDENTE:
    if read_file(p):
        lines.append(f"- `{p}`")
lines.extend(["", "---", "", "# Parte 1 — Implementado", ""])

for path in IMPLEMENTADO:
    content = read_file(path)
    if content is None:
        continue
    lines.append("---")
    lines.append("")
    lines.append(f"## Fonte: {path}")
    lines.append("")
    lines.append(content.strip())
    lines.append("")
    lines.append("")

lines.extend(["---", "", "# Parte 2 — Pendente / Futuro", ""])
for path in PENDENTE:
    content = read_file(path)
    if content is None:
        continue
    lines.append("---")
    lines.append("")
    lines.append(f"## Fonte: {path}")
    lines.append("")
    lines.append(content.strip())
    lines.append("")
    lines.append("")

lines.append("---")
lines.append("")
lines.append("*Fim do documento. Para regenerar: ./scripts/gerar-coleção-docs-para-ia.sh — Última geração: " + date.today().isoformat() + "*")
lines.append("")

OUT.parent.mkdir(parents=True, exist_ok=True)
OUT.write_text("\n".join(lines), encoding="utf-8")
print("OK:", OUT)
PYEOF
