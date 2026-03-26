---
module: M05
title: IA, agentes, skills, tools e MCPs
ssot: true
owner: Torvalds (CTO)
updated: 2026-03-26
version: 1.1.0
apps_scope: [admin, adventure, monorepo]
review_sla: por PR + quinzenal
sources:
  - docs/inventario/_raw/RAW_DATA_v2.md
  - .cursor/mcp.json
  - AGENTS.md
---

# M05 — IA, agentes, skills, tools e MCPs

## Agentes/skills (catálogo operacional)

| nome | domínio | path | acionamento | dependencias | owner |
|---|---|---|---|---|---|
| `reconhecimento-monorepo` | inventário técnico | `.cursor/agents/reconhecimento-monorepo.md` | varredura bruta de repositório | filesystem + shell + rg | Torvalds (CTO) |
| `grove` | estratégia/coordenação | `apps/labs/xpostr/src/lib/agents/grove.ts` | rotinas agentic xpostr | stack app xpostr | Torvalds (CTO) |
| `ogilvy` | marketing/conteúdo | `apps/labs/xpostr/src/lib/agents/ogilvy.ts` | geração de conteúdo | stack app xpostr | Torvalds (CTO) |
| `zazu` | operações/comando | `apps/labs/xpostr/src/lib/agents/zazu.ts` | operação assistida | stack app xpostr | Torvalds (CTO) |
| `skills em admin` | catálogo corporativo | `apps/core/admin/agents/skills/` | workflows e agentes internos | skills markdown | Torvalds (CTO) |

## Owners reais de agentes (admin)

| agente | owner | path | status |
|---|---|---|---|
| `grove_ceo` | Grove (CEO Agent) | `apps/core/admin/agents/grove_ceo.md` | ativo |
| `ohno_coo` | Ohno (COO) | `apps/core/admin/agents/ohno_coo.md` | ativo |
| `torvalds_cto` | Torvalds (CTO) | `apps/core/admin/agents/torvalds_cto.md` | ativo |
| `ogilvy_cmo` | Ogilvy (CMO) | `apps/core/admin/agents/ogilvy_cmo.md` | ativo |
| `buffett_cfo` | Buffett (CFO) | `apps/core/admin/agents/buffett_cfo.md` | ativo |
| `cagan_cpo` | Cagan (CPO) | `apps/core/admin/agents/cagan_cpo.md` | ativo |
| `gerente_rose` | Cagan (CPO) | `apps/core/admin/agents/gerente_rose/` | ativo |
| `gerente_benditta` | Cagan (CPO) | `apps/core/admin/agents/gerente_benditta/` | ativo |
| `gerente_young` | Cagan (CPO) | `apps/core/admin/agents/gerente_young/` | ativo |
| `benchmark_adventure` | Ogilvy (CMO) | `apps/core/admin/agents/benchmark_adventure/` | ativo |
| `benchmark_clientes` | Cagan (CPO) | `apps/core/admin/agents/benchmark_clientes/` | ativo |
| `benchmark_conteudo` | Ogilvy (CMO) | `apps/core/admin/agents/benchmark_conteudo/` | ativo |
| `andon_asana` | Ohno (COO) | `apps/core/admin/agents/andon_asana/` | ativo |
| `google_workspace_advisor` | Torvalds (CTO) | `apps/core/admin/agents/google_workspace_advisor/` | ativo |

## MCPs/CLIs/tools

| nome | categoria | escopo | config_path | riscos | status |
|---|---|---|---|---|---|
| `Railway MCP` | mcp | monorepo | `.cursor/mcp.json` | credencial externa | ativo |
| `asana MCP bridge` | mcp | monorepo/admin | `.cursor/mcp.json`, `tools/scripts/mcp-asana-bridge.sh` | token OAuth | ativo |
| `pnpm scripts toolchain` | cli | build/dev | `package.json` raiz e apps | execução indevida em ambiente errado | ativo |
| `tools/*` | utilitários internos | monorepo | `tools/` | heterogeneidade de qualidade e auth | ativo |

## Models/engines/contextos IA

| item | tipo | onde_aparece | status |
|---|---|---|---|
| prompts estruturados | artefato IA | `docs/`, `knowledge/`, `workflows/n8n` | ativo |
| referências RAG | contexto IA | `knowledge/06_CONHECIMENTO` | a mapear |
| engines/models por app | configuração | envs de apps/labs | a mapear |

## Itens adicionais do checklist macro

| termo | tipo | definicao | onde_aparece | relacionados |
|---|---|---|---|---|
| `Subagents` | capacidade | agentes especializados por prompt | `.cursor/agents/` | MCP, tools |
| `Hooks` | automação local | comportamento de sessão/ferramenta | regras e plugins Cursor | M06 |
| `Plugins` | integração IDE/plataforma | extensões de provider | ambiente Cursor | M07 |
| `Bots` | agente operacional | automações em n8n/whatsapp | `workflows/n8n`, `apps/labs` | M06 |
| `Gateways` | camada integração | ponte de serviços/API | tools e workflows | M07/M08 |

## Como atualizar este módulo

- Gatilho:
  - novo agente, skill, MCP ou tool;
  - mudança de provider/modelo de IA;
  - alteração de política de uso de agentes.
- Checklist:
  - atualizar tabela `Agentes/skills`;
  - atualizar `MCPs/CLIs/tools`;
  - validar referência cruzada com M06/M07/M12.
- Módulo pai:
  - `docs/WIKI_CORPORATIVO_INDEX.md`

## Cobertura e fora de escopo

- Cobre: superfícies IA (agentes/skills/tools/MCP).
- Fora de escopo:
  - workflows e cronjobs detalhados (M06);
  - infraestrutura de deploy/runtime (M08);
  - catálogo de prompts e RAG detalhado (M12).
