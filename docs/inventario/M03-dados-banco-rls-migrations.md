---
module: M03
title: Dados, banco, RLS e migrations
ssot: true
owner: Torvalds (CTO)
updated: 2026-03-26
version: 1.2.0
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
| `public.adv_projects` | admin | projetos internos | sim | `tenant_id` + membership/role | `20250302000001_adv_schema.sql`, `20260308100001_adv_rls_by_role.sql` |
| `public.adv_tasks` | admin | backlog/tarefas | sim | `tenant_id` + membership/role | `20250304100000_adv_tasks.sql`, `20260308100001_adv_rls_by_role.sql` |
| `public.adv_profiles` | admin | perfis internos | sim | perfil próprio + vínculo organizacional | `20250312100001_adv_profiles_and_project_members.sql` |
| `public.adv_org_members` | admin | membros por tenant/org | sim | `tenant_id` obrigatório | `20260318100000_adv_tenants_and_org_members.sql` |
| `public.adv_crm_deals` | admin/adventure | pipeline comercial CRM | sim | isolamento por `tenant_id` (fix multi-tenant) | `20260318000000_adv_crm_schema.sql`, `20260320000000_fix_crm_rls_multi_tenant.sql` |
| `public.adv_crm_contacts` | admin/adventure | contatos CRM | sim | isolamento por `tenant_id` (fix multi-tenant) | `20260318000000_adv_crm_schema.sql`, `20260320000000_fix_crm_rls_multi_tenant.sql` |
| `public.conversion_forms` | adventure/site | formulários conversão | sim | público para insert + auth para leitura/insert autenticado | `20260324194033_conversion_forms_martech_icp_rls.sql`, `20260325095141_conversion_forms_authenticated_insert.sql` |
| `public.sdr_wizard_leads` | admin/adventure | leads SDR wizard | sim | multi-tenant por `tenant_id` + CRUD autenticado | `20260324140000_sdr_wizard_leads.sql`, `20260324164427_sdr_wizard_leads_mvp_v1.sql` |
| `public.work_with_us_forms` | adventure/site | trabalhe conosco | a mapear | público | `20260324103000_landing_forms_attribution.sql` |
| `young_talents.*` | clientes/young | ATS candidato/vaga | sim | por role staff | `apps/clientes/04_young/**/supabase/migrations/*` |
| `space_*` | clientes/lidera (`lidera-space`) | LMS revenda | sim | por cliente | `apps/clientes/01_lidera/lidera/space/supabase/migrations/*` |

## Policies e RLS (amostras confirmadas)

| schema.tabela | policy | app | status |
|---|---|---|---|
| `public.conversion_forms` | `conversion_forms_anon_insert` | adventure/site | ativo |
| `public.conversion_forms` | `conversion_forms_authenticated_select` | adventure/site | ativo |
| `public.conversion_forms` | `conversion_forms_authenticated_insert` | adventure/site | ativo |
| `public.sdr_wizard_leads` | `sdr_wizard_leads_select/insert/update/delete` | admin/adventure | ativo |
| `public.adv_tasks` | `adv_tasks_select/insert/update/delete` | admin | ativo |
| `public.adv_projects` | `adv_projects_select/insert/update/delete` | admin | ativo |
| `public.adv_org_members` | `adv_org_members_select/insert/update/delete` | admin | ativo |
| `public.adv_crm_deals` | `adv_crm_deals_select/insert/update/delete` | admin/adventure | ativo |
| `young_talents.candidates` | `Formulário público pode inserir candidatos` | young-talents | ativo |
| `young_talents.user_roles` | `Usuários podem ler seu próprio role` | young-talents | ativo |

## Tenant scope detalhado (amostra operacional)

| domínio | tabela/padrão | tenant_scope | mecanismo |
|---|---|---|---|
| Core Admin | `adv_*` com dado de negócio | obrigatório por `tenant_id` | policies RLS por membership/role |
| CRM unificado | `adv_crm_*` | obrigatório por `tenant_id` | fix de isolamento multi-tenant (`20260320000000_fix_crm_rls_multi_tenant.sql`) |
| Captura pública | `conversion_forms` | público no insert, autenticado para consulta | policies separadas anon/auth |
| Leads SDR | `sdr_wizard_leads` | multi-tenant com CRUD autenticado | policies CRUD dedicadas |

## Migrations (escopo operacional)

| item | tipo | caminho | owner | criticidade | status | ultima_atualizacao |
|---|---|---|---|---|---|---|
| `supabase/migrations/` | diretório migrations raiz | `supabase/migrations` | Torvalds (CTO) | alta | ativo | 2026-03-25 |
| `admin migrations` | app core | `apps/core/admin/supabase` | Torvalds (CTO) | alta | ativo (migrations evidenciadas) | 2026-03-26 |
| `adventure migrations` | app core | `apps/core/adventure/supabase` | Torvalds (CTO) | alta | ativo | 2026-03-25 |
| `clientes migrations` | app cliente | `apps/clientes/**/supabase` | Torvalds (CTO) | média | ativo | 2026-03-25 |
| `labs migrations` | app lab | `apps/labs/**/supabase` | Torvalds (CTO) | média | ativo | 2026-03-25 |

### Snapshot de migrations recentes (drift guard V10.2)

- `20260318000001_adv_crm_seed_funnel_stages.sql`
- `20260318000002_adv_crm_funcoes_subfuncoes.sql`
- `20260319100000_auth_user_email_from_jwt.sql`
- `20260325103000_align_mateus_adv_profile_id_with_auth.sql`
- `20260325120310_conversion_forms_payload_compat.sql`
- `20260325121500_adv_time_bank_manual_mateus_22_23_mar2026.sql`

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
