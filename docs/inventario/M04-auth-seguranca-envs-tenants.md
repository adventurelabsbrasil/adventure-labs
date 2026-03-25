---
module: M04
title: Auth, segurança, envs e tenants
ssot: true
owner: Torvalds (CTO)
updated: 2026-03-25
version: 1.0.0
apps_scope: [admin, adventure, monorepo]
review_sla: por PR + quinzenal
sources:
  - docs/inventario/_raw/RAW_DATA_v2.md
  - .cursor/rules/security-sensitives.mdc
  - apps/core/admin/.env.example
  - apps/core/adventure/.env.example
  - apps/labs/xpostr/.env.example
---

# M04 — Auth, segurança, envs e tenants

## Modelo de segurança

| item | tipo | caminho | owner | criticidade | status | ultima_atualizacao |
|---|---|---|---|---|---|---|
| Security sensitives | regra | `.cursor/rules/security-sensitives.mdc` | Torvalds (CTO) | alta | ativo | 2026-03-25 |
| RLS multi-tenant | banco | `supabase/migrations` | Torvalds (CTO) | alta | ativo | 2026-03-25 |
| Auth por app | implementação | `apps/core/admin`, `apps/core/adventure` | Torvalds (CTO) | alta | a mapear (checkout parcial) | 2026-03-25 |

## Envs (nunca expor valor real)

| nome | valor | descricao | escopo | app | origem |
|---|---|---|---|---|---|
| `NEXT_PUBLIC_SUPABASE_URL` | `[oculto]` | URL pública Supabase | app | admin/adventure/clientes | `.env.example` |
| `NEXT_PUBLIC_SUPABASE_ANON_KEY` | `[oculto]` | chave anon pública | app | admin | `.env.example` |
| `SUPABASE_SERVICE_ROLE_KEY` | `[oculto]` | chave service role | backend | admin/xpostr/young | `.env.example` |
| `CRON_SECRET` | `[oculto]` | proteção de endpoints cron | backend | admin/xpostr | `.env.example` |
| `ADMIN_ALLOWED_EMAILS` | `[oculto]` | allowlist admin | authz | admin clientes | `.env.example` |
| `CLERK_SECRET_KEY` | `[oculto]` | segredo auth clerk | auth | xpostr | `.env.example` |
| `NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY` | `[oculto]` | chave pública clerk | auth | xpostr | `.env.example` |
| `GOOGLE_CLIENT_ID` | `[oculto]` | oauth google | integração | admin clientes | `.env.example` |
| `GOOGLE_CLIENT_SECRET` | `[oculto]` | oauth secret | integração | admin clientes | `.env.example` |
| `META_BM_SYSTEM_USER_TOKEN` | `[oculto]` | token Meta Ads | integração | admin clientes | `.env.example` |
| `ASANA_OAUTH_CLIENT_ID` | `[oculto]` | client id asana | integração | tools/asana-cli | `.env.example` |
| `OMIE_APP_KEY` | `[oculto]` | API Omie | integração | tools/omie-cli | `.env.example` |
| `WIX_API_KEY` | `[oculto]` | API Wix | integração | tools/dbgr | `.env.example` |
| `N8N_API_TOKEN` | `[oculto]` | token API n8n | automação | workflows/tools | `.env.example` |

## Tenants e isolamento

| item | camada | regra | evidência | status |
|---|---|---|---|---|
| `tenant_id` em tabelas de cliente | banco | obrigatório em modelo multitenant | regras em `.cursorrules` + migrations | ativo |
| RLS por tenant/role | banco | cliente não pode ver outro cliente | policies em migrations | ativo |
| apps de cliente fora do admin core | arquitetura | admin não importa código-fonte de cliente | `.cursorrules`, manual taxonomia | ativo |

## Auth por app (snapshot)

| app | auth | fonte | status |
|---|---|---|---|
| `apps/core/admin` | Supabase auth + controles internos [INFERIDO] | envs + migrations | a mapear (checkout parcial) |
| `apps/core/adventure` | Supabase auth [INFERIDO] | `.env.example` + supabase | a mapear (checkout parcial) |
| `apps/labs/xpostr` | Clerk + Supabase | `.env.example` | ativo |
| `apps/clientes/**` | variável por projeto | `RAW_DATA_v2` | a mapear |

## Guardrails de segurança

- Nunca versionar `.env` reais, tokens e credenciais.
- Em documentação, usar somente nomes de variáveis.
- `valor` de env sempre mascarado (`[oculto]`/`••••••`).
- Itens sem evidência direta devem permanecer como `a mapear`.

## Como atualizar este módulo

- Gatilho:
  - nova variável de ambiente;
  - mudança de provider de auth;
  - mudança de regras de segurança/RLS.
- Checklist:
  - atualizar tabela de envs sem valores reais;
  - revisar tabela de tenants/isolamento;
  - revisar apps com auth alterado.
- Módulo pai:
  - `docs/WIKI_CORPORATIVO_INDEX.md`

## Cobertura e fora de escopo

- Cobre: auth, segurança, envs e tenants.
- Fora de escopo:
  - detalhe de schema e policies por tabela (M03);
  - integrações e workflows operacionais (M06/M07).
