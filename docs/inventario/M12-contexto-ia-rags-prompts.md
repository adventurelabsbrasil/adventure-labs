---
module: M12
title: Contexto IA, RAGs e prompts
ssot: true
owner: Torvalds (CTO)
updated: 2026-03-25
version: 1.0.0
apps_scope: [admin, adventure, monorepo]
review_sla: por PR + quinzenal
sources:
  - AGENTS.md
  - .cursor/rules/
  - docs/inventario/_raw/RAW_DATA_v2.md
  - knowledge/06_CONHECIMENTO/os-registry/INDEX.md
---

# M12 — Contexto IA, RAGs e prompts

## Contexto de agentes e prompts

| nome | domínio | path | acionamento | dependencias | owner |
|---|---|---|---|---|---|
| AGENTS root policy | governança de agentes | `AGENTS.md` | sessões com agentes | regras + skills | Torvalds (CTO) |
| rules de idioma e segurança | guardrails | `.cursor/rules/adventure-locale-pt-br.mdc`, `.cursor/rules/security-sensitives.mdc` | todo ciclo de execução | contexto Cursor | Torvalds (CTO) |
| prompts de inventário | documentação técnica | `docs/inventario/_raw/RAW_DATA_v2.md` | geração de módulos wiki | dados brutos | Torvalds (CTO) |

## RAGs e bases de contexto

| termo | tipo | definicao | onde_aparece | relacionados |
|---|---|---|---|---|
| `knowledge/` | base RAG corporativa | corpus principal da operação | `knowledge/**` | M09 |
| `docs/` | base técnica complementar | runbooks e guias | `docs/**` | M09/M11 |
| `os-registry` | índice de roteamento | descoberta de contexto por agentes | `knowledge/06_CONHECIMENTO/os-registry/INDEX.md` | M01 |
| `pgvector` | armazenamento vetorial | não evidenciado no escopo atual | N/A | a mapear |

## Models, engines e templates

| item | tipo | status | observacao |
|---|---|---|---|
| modelos por provider (OpenAI/Anthropic/Gemini) | engine IA | ativo | inferido por envs e pacotes |
| `AITemplates` | template IA | não evidenciado no escopo atual | sem catálogo formal explícito |
| `Gems` | artefato IA | não evidenciado no escopo atual | sem ocorrência explícita consolidada |
| `FigJams` | artefato colaborativo | a mapear | integração Figma existe no ecossistema, catálogo local pendente |

## Guardrails de uso IA

- Não usar dado sensível/credencial em prompts versionados.
- Contexto de IA deve apontar para fontes canônicas (M01, M09, M11).
- Todo prompt operacional deve ser rastreável por arquivo/versionamento.
- Quando não houver evidência, usar `não evidenciado no escopo atual` e não inferir como fato.

## Como atualizar este módulo

- Gatilho:
  - criação/alteração de prompts-base;
  - mudança de regras de agente/skill;
  - mudança de arquitetura de contexto RAG.
- Checklist:
  - atualizar tabela de contexto e fontes;
  - revisar guardrails;
  - sincronizar com M05 e M09.
- Módulo pai:
  - `docs/WIKI_CORPORATIVO_INDEX.md`

## Cobertura e fora de escopo

- Cobre: contexto IA, guardrails, prompts e superfícies de RAG.
- Fora de escopo:
  - integração de APIs terceiras em detalhe (M07);
  - fluxos n8n e cronjobs (M06).
