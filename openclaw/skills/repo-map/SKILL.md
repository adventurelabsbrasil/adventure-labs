---
name: repo-map
description: Map the Adventure Labs monorepo quickly and route questions to the right domain, app, package, client, docs area, or operational surface. Use when a request asks where something lives, what depends on what, which app/package/client is involved, how the repo is organized, or which SSOT/wiki module should own a change.
---

# Repo Map

Use this skill to navigate the Adventure Labs monorepo without guessing.

## Start here

1. Read `../..//AGENTS.md` only if session context has not already loaded workspace rules.
2. Read `../../docs/PLAYBOOK_OPENCLAW_ADVENTURE_LABS.md` for the operating model.
3. For routing by SSOT, use `../../docs/WIKI_CORPORATIVO_INDEX.md` and, when needed, the owning module in `../../docs/inventario/`.

## Routing shortcuts

- **Governança / taxonomia / naming / SSOT** → M01
- **Apps / rotas / scripts / deploy de app** → M02
- **Banco / RLS / migrations / tenant scope** → M03
- **IA / agentes / skills / tools / MCPs** → M05
- **Workflows / automações / cronjobs / webhooks** → M06
- **Infra / servidores / CI/CD / domínios** → M08

## Repo mental model

- `apps/core/` → superfícies centrais da Adventure Labs
- `apps/labs/` → produtos experimentais, workers e iniciativas de laboratório
- `apps/clientes/` → aplicações por cliente
- `packages/` → pacotes compartilhados
- `supabase/` → migrations e estrutura de dados raiz
- `workflows/` → automações n8n
- `tools/` → CLIs e utilitários internos
- `docs/` → documentação técnica e inventário operacional
- `knowledge/` → base de conhecimento organizacional
- `openclaw/` → workspace operacional do OpenClaw

## How to answer

- Sempre responder com caminho(s) concretos primeiro.
- Se houver ambiguidade, listar as superfícies candidatas e a diferença entre elas.
- Se a pergunta implicar impacto, citar domínios cruzados: app + banco, workflow + integração, deploy + env, etc.
- Se a mudança exigir documentação, apontar o módulo SSOT dono.

## Common asks

- “onde vive X?” → localizar arquivo/pasta + domínio SSOT
- “o que depende de Y?” → mapear apps/packages/docs/workflows relacionados
- “qual app é esse?” → classificar entre core, labs, clientes ou package compartilhado
- “onde atualizo isso?” → apontar código + módulo da wiki + docs correlatas
