---
module: M09
title: Docs, conhecimento e guidelines
ssot: true
owner: Torvalds (CTO)
updated: 2026-03-25
version: 1.0.0
apps_scope: [monorepo]
review_sla: por PR + quinzenal
sources:
  - knowledge/
  - docs/
  - wiki/
  - docs/inventario/_raw/RAW_DATA_v2.md
---

# M09 — Docs, conhecimento e guidelines

## Superfícies documentais

| item | tipo | caminho | owner | criticidade | status | ultima_atualizacao |
|---|---|---|---|---|---|---|
| `knowledge/` | base de conhecimento SSOT | `knowledge/` | Torvalds (CTO) | alta | ativo | 2026-03-25 |
| `docs/` | runbooks/guias técnicos | `docs/` | Torvalds (CTO) | alta | ativo | 2026-03-25 |
| `wiki/` | navegação e onboarding | `wiki/` | Torvalds (CTO) | média | ativo | 2026-03-25 |
| `docs/COLEÇÃO_DOCS_PARA_IA.md` | consolidado IA | `docs/COLEÇÃO_DOCS_PARA_IA.md` | Torvalds (CTO) | média | ativo | 2026-03-25 |

## Guidelines e guardrails

| nome | tipo | definicao | onde_aparece | relacionados |
|---|---|---|---|---|
| Taxonomia repositório | guideline | organização 00–99, naming e sensíveis | `knowledge/00_GESTAO_CORPORATIVA/MANUAL_TAXONOMIA_REPOSITORIO.md` | M01 |
| Security sensitives | guardrail | não versionar segredo/dados sensíveis | `.cursor/rules/security-sensitives.mdc` | M04 |
| AGENTS policy | guideline | governança de agentes/skills | `AGENTS.md` | M05 |

## Acervo histórico (`_internal/archive`)

> Regra deste inventário: `_internal/archive` é documentado somente aqui, de forma categórica, sem detalhar envs/rotas/migrations.

| categoria_encontrada | caminho_base | status |
|---|---|---|
| snapshots de apps/admin | `_internal/archive/temp_admin_*` | ativo (histórico) |
| snapshots de projetos adventure | `_internal/archive/adventure*` | ativo (histórico) |
| dumps/workflows antigos | `_internal/archive/n8n-dumps` | ativo (histórico) |
| relatórios founder antigos | `_internal/archive/relatorios-founder` | ativo (histórico) |
| experimentos temporários | `_internal/archive/temp/*` | ativo (histórico) |

## Arquivos/artefatos e storage documental

| termo | tipo | definicao | onde_aparece | relacionados |
|---|---|---|---|---|
| `Files (csv/mp4/mp3/jpeg/png/pdf)` | artefato | ativos e evidências operacionais | `docs/inventario/_raw/RAW_DATA_v2.md` | M10 |
| `Vault` | referência segura | ponteiro para conteúdo sensível | `_internal/vault/` | M04 |
| `Reports` | documentação operacional | relatórios de operação/cliente | `docs/`, `knowledge/` | M10 |

## Como atualizar este módulo

- Gatilho:
  - novo guideline, policy ou manual;
  - mudança de taxonomia;
  - mudança estrutural em docs/knowledge/wiki.
- Checklist:
  - atualizar superfícies documentais;
  - revisar acervo histórico por categoria;
  - manter links para M01/M04/M11/M12.
- Módulo pai:
  - `docs/WIKI_CORPORATIVO_INDEX.md`

## Cobertura e fora de escopo

- Cobre: documentação corporativa, guidelines e acervo histórico.
- Fora de escopo:
  - governança de roadmap/produto (M10);
  - prompts e RAG (M12).
