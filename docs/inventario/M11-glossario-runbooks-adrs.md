---
module: M11
title: Glossário, runbooks e ADRs
ssot: true
owner: Torvalds (CTO)
updated: 2026-03-26
version: 1.1.0
apps_scope: [monorepo]
review_sla: por PR + quinzenal
sources:
  - docs/adr/README.md
  - docs/adr/
  - knowledge/06_CONHECIMENTO/os-registry/INDEX.md
---

# M11 — Glossário, runbooks e ADRs

## ADRs

| id | titulo | data_aceite | status | arquivo_ref | contexto_resumo | decisao_resumo |
|---|---|---|---|---|---|---|
| `ADR-0001` | fonte de verdade tarefas | 2026-03-22 | aceite | `docs/adr/0001-fonte-verdade-tarefas-asana-backlog-adv-tasks.md` | disputa Asana/BACKLOG/adv_tasks | separar SSOT de captura, engenharia Git e estado WorkOS |
| `ADR-0002` | `clients/` vs `apps/clientes/` | 2026-03-22 | aceite | `docs/adr/0002-clients-submodule-vs-apps-clientes-workspace.md` | coexistência de modelos de projeto | manter ambos por desenho canônico com regra de fronteira |
| `ADR-0003+` | catálogo futuro | N/A | não evidenciado no escopo atual | N/A | sem novos ADRs no diretório `docs/adr` | criar quando houver decisão arquitetural irreversível |

## Runbooks (inventário inicial)

| nome | tipo | caminho | owner | criticidade | status | ultima_atualizacao |
|---|---|---|---|---|---|---|
| deploy Vercel/GitHub | runbook | `docs/VERCEL_GITHUB_DEPLOY.md` | Torvalds (CTO) | alta | ativo | 2026-03-25 |
| sync infisical | runbook | `docs/INFISICAL_SYNC.md` | Torvalds (CTO) | alta | ativo | 2026-03-25 |
| schedule n8n | runbook/processo | `knowledge/00_GESTAO_CORPORATIVA/processos/n8n-schedule.md` | Torvalds (CTO) | média | ativo | 2026-03-25 |

## Glossário corporativo

| termo | tipo | definicao | onde_aparece | relacionados |
|---|---|---|---|---|
| `SSOT` | governança | fonte única de verdade por domínio | M01 + INDEX | todos os módulos |
| `RLS` | dados | row-level security no banco | M03/M04 | tenant_scope |
| `Tenant` | arquitetura | isolamento de dados entre clientes | M04 | clients, RLS |
| `MCP` | integração de agente | protocolo de ferramentas/contexto | M05 | tools, CLIs |
| `Workflow` | automação | fluxo executável em n8n/actions | M06 | cronjobs |
| `Guardrail` | segurança IA | limitação de comportamento e dados | M04/M12 | guidelines |
| `Acervo histórico` | documentação | conteúdo legada em `_internal/archive` | M09 | governance |

## Como atualizar este módulo

- Gatilho:
  - criação de novo ADR;
  - criação de novo runbook;
  - inclusão de novo termo corporativo.
- Checklist:
  - atualizar tabela de ADRs;
  - manter glossário sem ambiguidade;
  - linkar com módulo dono técnico quando aplicável.
- Módulo pai:
  - `docs/WIKI_CORPORATIVO_INDEX.md`

## Cobertura e fora de escopo

- Cobre: linguagem corporativa, ADRs e runbooks.
- Fora de escopo:
  - detalhe operacional de workflows (M06);
  - contexto de prompts/IA (M12).
