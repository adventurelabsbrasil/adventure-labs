---
module: M03
title: Dados, banco, RLS e migrations
ssot: true
owner: Torvalds (CTO)
updated: 2026-03-25
version: 1.0.0
apps_scope: [admin, adventure, monorepo]
review_sla: por PR + quinzenal
sources:
  - docs/SUPABASE_INVENTARIO_TABELAS.md
  - docs/inventario/_raw/RAW_DATA_v2.md
  - supabase/migrations/
  - apps/core/admin/supabase/
  - apps/core/adventure/supabase/
---

# M03 — Dados, banco, RLS e migrations

## Regras de escopo deste módulo

- Fonte SSOT para entidades de banco, tabelas, policies e migrations.
- Ignorar migrations em `_internal/archive/**`.
- Escopos válidos:
  - `supabase/migrations/`
  - `apps/core/admin/supabase/`
  - `apps/core/adventure/supabase/`
  - `apps/clientes/**/supabase/`
  - `apps/labs/**/supabase/`

## Banco/tabelas (visão consolidada)

| schema.tabela | app | finalidade | rls | tenant_scope | migration_ref |
|---|---|---|---|---|---|
| `public.adv_projects` | admin | projetos internos | sim | multitenant | `supabase/migrations/*adv_projects*` |
| `public.adv_tasks` | admin | backlog/tarefas | sim | multitenant | `supabase/migrations/*adv_tasks*` |
| `public.adv_profiles` | admin | perfis internos | sim | interno | `supabase/migrations/*adv_profiles*` |
| `public.crm_projects` | adventure | projetos CRM | sim | por projeto | `apps/core/adventure/supabase/migrations/*` |
| `public.crm_deals` | adventure | pipeline comercial | sim | por projeto | `apps/core/adventure/supabase/migrations/*` |
| `public.crm_contacts` | adventure | contatos | sim | por projeto | `apps/core/adventure/supabase/migrations/*` |
| `public.conversion_forms` | adventure/site | formulários conversão | sim | público+auth | `20260324194033_conversion_forms_martech_icp_rls.sql` |
| `public.sdr_wizard_leads` | admin/adventure | leads SDR wizard | sim | multitenant | `20260324140000_sdr_wizard_leads.sql` |
| `public.work_with_us_forms` | adventure/site | trabalhe conosco | a mapear | público | `20260324103000_landing_forms_attribution.sql` |
| `young_talents.*` | clientes/young | ATS candidato/vaga | sim | por role staff | `apps/clientes/04_young/**/supabase/migrations/*` |
| `space_*` | clientes/lidera (`lidera-space`) | LMS revenda | sim | por cliente | `apps/clientes/01_lidera/lidera/space/supabase/migrations/*` |

## Policies e RLS (amostras confirmadas)

| schema.tabela | policy | app | status |
|---|---|---|---|
| `public.conversion_forms` | `conversion_forms_anon_insert` | adventure/site | ativo |
| `public.conversion_forms` | `conversion_forms_authenticated_select` | adventure/site | ativo |
| `public.sdr_wizard_leads` | `sdr_wizard_leads_select/insert/update/delete` | admin/adventure | ativo |
| `young_talents.candidates` | `Formulário público pode inserir candidatos` | young-talents | ativo |
| `young_talents.user_roles` | `Usuários podem ler seu próprio role` | young-talents | ativo |

## Migrations (escopo operacional)

| item | tipo | caminho | owner | criticidade | status | ultima_atualizacao |
|---|---|---|---|---|---|---|
| `supabase/migrations/` | diretório migrations raiz | `supabase/migrations` | Torvalds (CTO) | alta | ativo | 2026-03-25 |
| `admin migrations` | app core | `apps/core/admin/supabase` | Torvalds (CTO) | alta | a mapear (checkout parcial) | 2026-03-25 |
| `adventure migrations` | app core | `apps/core/adventure/supabase` | Torvalds (CTO) | alta | ativo | 2026-03-25 |
| `clientes migrations` | app cliente | `apps/clientes/**/supabase` | Torvalds (CTO) | média | ativo | 2026-03-25 |
| `labs migrations` | app lab | `apps/labs/**/supabase` | Torvalds (CTO) | média | ativo | 2026-03-25 |

## Observações e guardrails

- Em mudanças de schema, atualizar sempre migration SQL versionada.
- Não fazer alteração de tipo local sem migration correspondente.
- Para tabelas sem evidência de uso atual, marcar como `a mapear` até rastreamento em código.

## Como atualizar este módulo

- Gatilho:
  - nova migration;
  - alteração de policy/RLS;
  - adição de tabela ou schema.
- Checklist:
  - atualizar tabela `schema.tabela`;
  - validar coluna `tenant_scope`;
  - anexar `migration_ref`.
- Módulo pai:
  - `docs/WIKI_CORPORATIVO_INDEX.md`

## Cobertura e fora de escopo

- Cobre: estrutura de dados, RLS e migrations.
- Fora de escopo:
  - credenciais/env (M04);
  - rotas e deploy (M02);
  - workflows de automação (M06).
