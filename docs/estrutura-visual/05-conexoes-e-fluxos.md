# Conexões e fluxos

Como Admin, n8n (C-Suite), knowledge e Supabase se relacionam.

```mermaid
flowchart LR
  Admin["Admin\n(Next.js :3001)"]
  Knowledge["knowledge/"]
  Context["admin/context\n(symlink)"]
  N8N["n8n C-Suite\n(Railway)"]
  Supabase["Supabase\n(adv_* tables)"]
  Knowledge --> Context
  Context --> Admin
  Admin --> Supabase
  N8N -->|"lê founder reports"| Supabase
  N8N -->|"contexto"| Knowledge
  Admin -->|"docs-context"| Knowledge
```

## Fluxos

- **knowledge/** — Base de conhecimento (taxonomia 00–99). Fonte canônica de contexto.
- **apps/core/admin/context** — Symlink para `../../../knowledge`; evita duplicação.
- **Admin** — Lê contexto para exibir documentação (`/dashboard/docs-context` via manifest); persiste dados em Supabase (tabelas `adv_*`).
- **n8n C-Suite** — Workflow em Railway; lê `adv_founder_reports` (relatórios dos últimos 7 dias) e usa contexto da base de conhecimento para os agentes (CFO, CTO, COO, CMO, CPO) e Grove.

Documentação: `docs/CSuite_relatorios_founder.md`, `docs/FASE_6_GIT_E_REPOSITORIO.md`.
