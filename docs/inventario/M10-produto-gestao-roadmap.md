---
module: M10
title: Produto, gestão e roadmap
ssot: true
owner: Torvalds (CTO)
updated: 2026-03-25
version: 1.0.0
apps_scope: [admin, adventure, monorepo]
review_sla: por PR + quinzenal
sources:
  - docs/ACORE_ROADMAP.md
  - docs/BACKLOG.md
  - docs/ACORE_SESSION_LOG.md
  - knowledge/06_CONHECIMENTO/os-registry/INDEX.md
---

# M10 — Produto, gestão e roadmap

## Portfólio de produto (snapshot)

| item | tipo | caminho | owner | criticidade | status | ultima_atualizacao |
|---|---|---|---|---|---|---|
| WorkOS/Admin | produto core | `apps/core/admin` | Torvalds (CTO) | alta | ativo | 2026-03-25 |
| Adventure/CRM | produto core | `apps/core/adventure` | Torvalds (CTO) | alta | ativo | 2026-03-25 |
| Elite | produto core | `apps/core/elite` | Torvalds (CTO) | média | ativo | 2026-03-25 |
| Labs (xpostr, worker etc.) | laboratório | `apps/labs/` | Torvalds (CTO) | média | labs | 2026-03-25 |
| Apps de cliente | portfólio cliente | `apps/clientes/` | Torvalds (CTO) | média | cliente | 2026-03-25 |

## Gestão de execução

| nome | tipo | gatilho | entrada | saida | owner | status |
|---|---|---|---|---|---|---|
| `BACKLOG.md` | backlog engenharia | rotina semanal | demandas técnicas | prioridades | Torvalds (CTO) | ativo |
| `ACORE_ROADMAP.md` | roadmap técnico | governança ACORE | iniciativas | fases de execução | Torvalds (CTO) | ativo |
| `ACORE_SESSION_LOG.md` | log operacional | fechamento de sessão | decisões e ações | rastreabilidade | Torvalds (CTO) | ativo |

## Projects/issues/priorities

| termo | tipo | definicao | onde_aparece | relacionados |
|---|---|---|---|---|
| `Projects` | unidade de entrega | agrupamento por produto/cliente | admin, knowledge | M02 |
| `Issues` | unidade de trabalho | item de backlog/incidente | docs/knowledge/asana [INFERIDO] | M11 |
| `Priorities` | ordenação | urgência e impacto | backlog/roadmap | M01 |
| `Plans` | plano executivo/tático | macro-plano por frente | docs/plans | M01 |

## Roadmaps e plannings

| item | tipo | caminho | status |
|---|---|---|---|
| `PLANO_ADVENTURE_OS_UNIFICADO.md` | plano | `docs/PLANO_ADVENTURE_OS_UNIFICADO.md` | ativo |
| `PLANO_EXECUCAO_OPENCLAW_HIBRIDO_CURSOR.md` | plano | `docs/PLANO_EXECUCAO_OPENCLAW_HIBRIDO_CURSOR.md` | ativo |
| `PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md` | plano | `docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md` | ativo |

## Como atualizar este módulo

- Gatilho:
  - mudança de roadmap/backlog;
  - mudança de status de produto;
  - inclusão de nova frente de gestão.
- Checklist:
  - atualizar portfólio;
  - atualizar tabela de execução;
  - revisar referências cruzadas para M02 e M09.
- Módulo pai:
  - `docs/WIKI_CORPORATIVO_INDEX.md`

## Cobertura e fora de escopo

- Cobre: gestão de portfólio, roadmap e priorização.
- Fora de escopo:
  - implementação técnica detalhada de apps (M02);
  - regras de segurança e env (M04).
