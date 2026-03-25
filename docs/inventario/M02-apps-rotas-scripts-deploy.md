---
module: M02
title: Apps, rotas, scripts e deploy
ssot: true
owner: Torvalds (CTO)
updated: 2026-03-25
version: 1.0.0
apps_scope: [admin, adventure, monorepo]
review_sla: por PR + quinzenal
sources:
  - docs/inventario/_raw/RAW_DATA_v2.md
  - apps/core/admin/package.json
  - apps/core/adventure/package.json
  - knowledge/06_CONHECIMENTO/os-registry/INDEX.md
---

# M02 — Apps, rotas, scripts e deploy

## Apps core em escopo completo

| item | tipo | caminho | owner | criticidade | status | ultima_atualizacao |
|---|---|---|---|---|---|---|
| `adventure-labs-admin` | app Next.js | `apps/core/admin` | Torvalds (CTO) | alta | ativo | 2026-03-25 |
| `crm-adventure-labs` | app React/Vite | `apps/core/adventure` | Torvalds (CTO) | alta | ativo | 2026-03-25 |

## Rotas/APIs (core)

| rota | método | app | finalidade | auth | middleware | origem |
|---|---|---|---|---|---|---|
| `src/app/**/route.ts` | `GET/POST/...` | admin | APIs App Router | a mapear (checkout parcial) | a mapear (checkout parcial) | estrutura Next App Router |
| `supabase/functions/*` | HTTP endpoint | adventure | edge functions/serviços | a mapear (checkout parcial) | N/A | `apps/core/adventure/supabase/functions` |
| `createBrowserRouter` e `Route path` | client routes | adventure | rotas SPA | a mapear (checkout parcial) | N/A | `apps/core/adventure/src` |

## Scripts registrados (core)

| item | tipo | caminho | owner | criticidade | status | ultima_atualizacao |
|---|---|---|---|---|---|---|
| `dev/build/start/lint` | script app | `apps/core/admin/package.json` | Torvalds (CTO) | alta | ativo | 2026-03-25 |
| `sync:context` | script doc-sync | `apps/core/admin/package.json` | Torvalds (CTO) | média | ativo | 2026-03-25 |
| `test:andon` | script validação | `apps/core/admin/package.json` | Torvalds (CTO) | média | ativo | 2026-03-25 |
| `migrate:*` e `supabase:*` | script dados | `apps/core/adventure/package.json` | Torvalds (CTO) | alta | ativo | 2026-03-25 |

## Deploy e runtime (core)

| tecnologia | versão | camada | uso | onde_aplica | status |
|---|---|---|---|---|---|
| Vercel [INFERIDO] | N/A | deploy web | admin e apps Next | `apps/core/admin` | ativo |
| Runtime Node | N/A | app runtime | scripts e servidores | core + tools | ativo |
| Supabase | N/A | backend dados | auth/db/functions | admin+adventure | ativo |

## Apps e projetos fora do escopo MVP

| nome | path | stack | status | observacao |
|---|---|---|---|---|
| `apps/core/elite` | `apps/core/elite` | Next.js | ativo | fora do foco MVP atual |
| `apps/labs/xpostr` | `apps/labs/xpostr` | Next.js + IA | labs | documentar em detalhe em fase posterior |
| `apps/labs/whatsapp-worker` | `apps/labs/whatsapp-worker` | Node/Express | labs | operacional de suporte |
| `apps/labs/minha-app` | `apps/labs/minha-app` | Canva app | labs | escopo experimental |
| `apps/clientes/01_lidera/*` | `apps/clientes/01_lidera` | Next/Vite | cliente | catálogo resumido no MVP |
| `apps/clientes/02_rose/*` | `apps/clientes/02_rose` | Next.js | cliente | catálogo resumido no MVP |
| `apps/clientes/04_young/*` | `apps/clientes/04_young` | Vite/SPA | cliente | forte presença de ATS |
| `apps/clientes/05_benditta/*` | `apps/clientes/05_benditta` | Next.js | cliente | dashboard e app cliente |

## Regras de não duplicação

- M02 não detalha schemas/tabelas: referenciar M03.
- M02 não detalha envs e segurança: referenciar M04.
- M02 não detalha integrações de terceiros: referenciar M07.

## Como atualizar este módulo

- Gatilho:
  - novo app, rota, script ou pipeline de deploy;
  - alteração estrutural em `apps/core/admin` ou `apps/core/adventure`.
- Checklist:
  - atualizar tabela de apps core;
  - atualizar seção de fora do MVP;
  - validar links cruzados com M03/M04/M07/M08.
- Módulo pai:
  - `docs/WIKI_CORPORATIVO_INDEX.md`

## Cobertura e fora de escopo

- Cobre: catálogo de apps, rotas, scripts e visão de deploy.
- Fora de escopo:
  - detalhamento de banco e RLS (M03);
  - credenciais/env/auth (M04);
  - workflows e integrações (M06/M07).
