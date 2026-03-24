# Cliente: Benditta Marcenaria

**Índice canónico (SSOT):** [`knowledge/04_PROJETOS_DE_CLIENTES/benditta/INDICE.md`](../../knowledge/04_PROJETOS_DE_CLIENTES/benditta/INDICE.md) — código, Infisical, Asana, Vercel, checklist de novas apps, documentos relacionados e roadmap GitHub.

**Drive:** prefixo típico `05_BENDITTA` (crosswalk no [os-registry §9](../../knowledge/06_CONHECIMENTO/os-registry/INDEX.md)).

---

## Ler primeiro (humano e IA)

1. [`knowledge/04_PROJETOS_DE_CLIENTES/benditta/BRIEF_OPERACIONAL_BENDITTA_LINHA_ESSENCIAL.md`](../../knowledge/04_PROJETOS_DE_CLIENTES/benditta/BRIEF_OPERACIONAL_BENDITTA_LINHA_ESSENCIAL.md)
2. [`knowledge/04_PROJETOS_DE_CLIENTES/benditta/CONTEXTO_LINHA_ESSENCIAL.md`](../../knowledge/04_PROJETOS_DE_CLIENTES/benditta/CONTEXTO_LINHA_ESSENCIAL.md)
3. [`knowledge/04_PROJETOS_DE_CLIENTES/benditta/RELATORIO_META_LINHA_ESSENCIAL_FASE_1_2026-03.md`](../../knowledge/04_PROJETOS_DE_CLIENTES/benditta/RELATORIO_META_LINHA_ESSENCIAL_FASE_1_2026-03.md)

---

## Atalhos rápidos

- **Admin:** menu **Benditta (Meta)** → `/dashboard/benditta` e `/dashboard/benditta/tabela` — CSV em `apps/core/admin/public/benditta/BM-202603-MetaReport.csv`.
- **App workspace:** [`apps/clientes/benditta/app`](../../apps/clientes/benditta/app) — `pnpm benditta:dev` na raiz do monorepo (porta 3002). README do app descreve extração como subrepo/submódulo.
- **Pacote partilhado:** [`packages/benditta-meta-dashboard`](../../packages/benditta-meta-dashboard).

Export CSV de referência nesta pasta: [`BM-202603-MetaReport.csv`](./BM-202603-MetaReport.csv) (se existir; caso contrário usar o espelho em `apps/clientes/benditta/app/public/` ou Admin `public/benditta/`).
