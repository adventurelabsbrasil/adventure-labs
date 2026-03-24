# Relatório de Verificação — Tabelas, Roles e Security Advisor (Supabase)

Este documento registra o snapshot do projeto Supabase **`adventurelabsbrasil`** (`ftctmseyrqhckutpfdeq`) para apoiar a revisão posterior de app, roles e políticas de acesso.

Data da coleta: **23/03/2026** (via MCP Supabase).

## Alinhamento com governança e manuais atuais

- Este relatório representa a **estrutura atual de tabelas/roles/policies** do projeto Supabase `adventurelabsbrasil`.
- O uso deste snapshot deve seguir as diretrizes operacionais de:
  - [`docs/MANUAL_HUMANO_ADVENTURE_OS.md`](MANUAL_HUMANO_ADVENTURE_OS.md)
  - [`docs/MANUAL_IA_ADVENTURE_OS.md`](MANUAL_IA_ADVENTURE_OS.md)
- Para evolução de segurança, manter aderência à regra multitenant da Adventure (RLS e escopo por `tenant_id`/`client_id`) descrita em [`ACORE_CONSTITUTION.md`](../ACORE_CONSTITUTION.md) e nas regras de operação do monorepo.

---

## 1. Escopo da verificação

- Projeto: `adventurelabsbrasil` (`ftctmseyrqhckutpfdeq`)
- Schema analisado: `public`
- Fontes de evidência:
  - `list_tables` (inventário e status RLS)
  - `get_advisors` (Security Advisor)
  - `execute_sql` em `pg_class`, `pg_policies` e `information_schema`

---

## 2. Snapshot de tabelas e RLS

Resumo geral:

- Total de tabelas em `public`: **96**
- Com RLS habilitado: **81**
- Sem RLS habilitado: **15**

Tabelas sem RLS (errors do Security Advisor):

- `public.time_bank_locations`
- `public.time_bank_employees`
- `public.time_bank_entries`
- `public.time_bank_usages`
- `public.project_members`
- `public.tenants`
- `public.tenant_users`
- `public.meta_ads_insights`
- `public.growth_briefing_responses`
- `public.meta_ads_monthly_summaries`
- `public.growth_briefing_templates`
- `public.migration_logs`
- `public.migration_config`
- `public.adv_csuite_reports`
- `public.adv_tenants`

Tabelas com RLS habilitado, porém sem policies (INFO):

- `public.adventure_applications`
- `public.client_integrations`
- `public.conversion_forms`
- `public.crm_activity_history`
- `public.crm_custom_fields`
- `public.emails`
- `public.integrations`
- `public.work_with_us_forms`

---

## 3. Snapshot de roles (tabelas de identidade)

Distribuição em `public.crm_users`:

| Role | Quantidade |
|---|---:|
| `admin` | 4 |
| `user` | 2 |

Distribuição em `public.profiles`:

| Role | Quantidade |
|---|---:|
| `admin` | 1 |
| `tenant` | 1 |
| `student` | 10 |

Distribuição em `public.adv_profiles`:

| Role | Quantidade |
|---|---:|
| `admin` | 4 |
| `tarefas` | 1 |

Observação: também existe coluna `role` em `public.adv_org_members`.

---

## 4. Isolamento multi-tenant/client no schema

Cobertura de colunas de escopo no `public`:

- Tabelas com `tenant_id`: **32**
- Tabelas com `client_id`: **8**
- Tabelas com `org_id`: **3**

Leitura arquitetural:

- O projeto já combina **segmentação por coluna** (`tenant_id`/`client_id`/`org_id`) com RLS em parte relevante das tabelas.
- Ainda há blocos sem RLS e diversos cenários permissivos, exigindo validação para garantir isolamento consistente entre clientes.

---

## 5. Security Advisor (estado atual)

Resumo do `get_advisors` (security):

- **Total de lints:** 128
- **ERROR:** 15
- **WARN:** 105
- **INFO:** 8

### 5.1 Errors (15)

Todos os 15 errors são do tipo **RLS Disabled in Public** (tabelas listadas na seção 2).

Remediação:

- aplicar habilitação de RLS e policies mínimas por role/escopo nas tabelas listadas.
- consultar o link de remediação exibido no Security Advisor do próprio projeto (mantém o lint exato do ambiente).

### 5.2 Warnings por categoria

- **RLS Policy Always True:** 76
- **Function Search Path Mutable:** 26
- **Extension in Public:** 2
- **Leaked Password Protection Disabled:** 1

#### Funções com `search_path` mutável (26)

- `public.update_updated_at_column`
- `public.is_admin`
- `public.is_adv_admin`
- `public.has_tenant_access`
- `public.update_updated_at`
- `public.get_user_role`
- `public.adv_set_updated_at`
- `public.find_user_id_by_email`
- `public.is_developer`
- `public.get_adv_profile_role`
- `elite.update_updated_at_column`
- `public.has_project_access_multitenant`
- `public.auth_user_email`
- `public.get_user_tenant_id`
- `public.auth_is_adventure_owner`
- `public.is_owner`
- `public.process_pending_invites`
- `public.is_root_user`
- `public.get_user_org_id`
- `public.is_tenant_or_admin`
- `public.is_project_owner`
- `public.handle_new_user`
- `public.adv_can_access_project`
- `public.has_project_access`
- `public.get_user_type`
- `public.is_developer_or_owner`

Remediação:

- [Supabase Database Linter — lint 0011 (Function Search Path Mutable)](https://supabase.com/docs/guides/database/database-linter?lint=0011_function_search_path_mutable)

#### Extensions instaladas em `public` (2)

- `vector`
- `pg_trgm`

Remediação:

- mover as extensões para schema dedicado e ajustar dependências.

#### Policies permissivas (`true`) — visão consolidada

- Total de policies permissivas: **76**
- Concentração em tabelas `adv_*`, `automations`, `marketing_reports` e `sales_reports`
- Em várias tabelas há padrão `SELECT/INSERT/UPDATE/DELETE` permissivo para `authenticated`

Remediação:

- [Supabase Database Linter — lint 0024 (Permissive RLS Policy)](https://supabase.com/docs/guides/database/database-linter?lint=0024_permissive_rls_policy)

#### Auth

- Leaked password protection desativado.

Remediação:

- [Password security — Leaked password protection](https://supabase.com/docs/guides/auth/password-security#password-strength-and-leaked-password-protection)

---

## 6. Implicações para revisão de roles e segurança

1. Existe base multi-tenant por coluna, mas a cobertura de RLS e o grau de restrição estão heterogêneos.
2. As 15 tabelas sem RLS são prioridade crítica para evitar exposição por API pública.
3. As 76 policies permissivas precisam de revisão para reforçar escopo por `tenant_id`/`client_id`/`org_id` e role efetiva.
4. A matriz de roles (`crm_users`, `profiles`, `adv_profiles`, `adv_org_members`) deve ser consolidada para reduzir ambiguidades de autorização.

---

## 7. Próximos passos sugeridos

1. Habilitar RLS nas 15 tabelas críticas e publicar policies mínimas por role + escopo.
2. Priorizar hardening das tabelas com policies `true` em massa.
3. Corrigir `search_path` das 26 funções.
4. Planejar padronização de autorização por tenant/client para todo o `public`.
5. Ativar leaked password protection no Supabase Auth.

---

## 8. Histórico de versionamento

- **2026-03-23:** criação do relatório com snapshot completo do projeto `adventurelabsbrasil` via MCP.

---

## 9. Rastreabilidade no fluxo (Asana)

Registro criado no Asana (projeto `Inbox`) para passar pelo fluxo/roadmap antes de execução:

- Task: `[Security/RLS] Hardening Supabase adventurelabsbrasil (P0/P1/P2)`
- GID: `1213771341802660`
- URL: <https://app.asana.com/1/1213725900473628/project/1213744799182607/task/1213771341802660>

Checklist registrado na task:

- **P0:** habilitar RLS nas 15 tabelas públicas sem RLS + policies mínimas por escopo.
- **P1:** revisar 76 policies permissivas + corrigir 26 funções com `search_path` mutável.
- **P2:** consolidar matriz de roles, revisar extensões em `public` e ativar leaked password protection.

Subtarefas criadas para planning:

- `P0.1 — Habilitar RLS nas 15 tabelas públicas críticas` (`1213771345253312`)
- `P0.2 — Policies mínimas por escopo (tenant_id/client_id/org_id)` (`1213772056704626`)
- `P1.1 — Endurecer 76 policies permissivas (true)` (`1213772060612299`)
- `P1.2 — Corrigir 26 funções com search_path mutável` (`1213772058997902`)
- `P2.1 — Consolidar matriz de roles (crm/profiles/adv)` (`1213772057042217`)
- `P2.2 — Revisar extensões em public + Auth leaked password` (`1213771371699463`)

Estimativas e donos sugeridos registrados no Asana:

- `P0.1` — **M** — Torvalds (CTO) / Founder (Rodrigo)
- `P0.2` — **L** — Torvalds (CTO)
- `P1.1` — **L** — Torvalds (CTO)
- `P1.2` — **M** — Torvalds (CTO)
- `P2.1` — **M** — Founder (Rodrigo) + Torvalds (CTO)
- `P2.2` — **S (Auth) + M (extensões)** — Torvalds (CTO)

Proposta de sequência de sprint registrada na task-mãe:

- **Sprint 1 (Segurança base):** `P0.1` + `P0.2`
- **Sprint 2 (Hardening estrutural):** `P1.2` + `P1.1`
- **Sprint 3 (Governança e fechamento):** `P2.1` + `P2.2`
- **Gate entre sprints:** reexecutar Security Advisor + checklist de regressão de acesso antes de avançar.

Definition of Done (DoD) por sprint registrada na task-mãe:

- **Sprint 1 (Segurança base)**
  - 100% das 15 tabelas críticas com RLS habilitado.
  - Policies mínimas por escopo aplicadas nas tabelas priorizadas.
  - Testes de acesso cruzado entre tenants/clientes bloqueados.
  - Security Advisor sem `RLS Disabled in Public` no escopo da sprint.
- **Sprint 2 (Hardening estrutural)**
  - Funções-alvo com `search_path` explícito e validado.
  - Policies permissivas revisadas no lote comprometido da sprint.
  - Regressão funcional de auth/CRUD sem quebra crítica.
  - Queda mensurável dos warnings de segurança vs baseline.
- **Sprint 3 (Governança e fechamento)**
  - Matriz única de autorização aprovada (fonte de verdade definida).
  - Plano decidido para extensões em `public` (migrar ou exceção formal).
  - Leaked password protection ativado e evidenciado.
  - Relatório final + próximos débitos técnicos registrados no roadmap.

Template de evidências por sprint (registrado na task-mãe Asana):

1. **Escopo entregue**
   - Itens planejados da sprint:
   - Itens concluídos:
   - Itens não concluídos e motivo:
2. **Evidências técnicas**
   - PR(s)/commit(s):
   - Migration(s) SQL aplicadas:
   - Ambiente(s) validados (`dev`/`staging`/`prod`):
3. **Segurança e acesso**
   - Resultado Security Advisor antes/depois (contagem por severidade):
   - Testes de acesso cruzado tenant/client (casos + resultado):
   - Regressão auth/RLS (casos críticos + resultado):
4. **Impacto e risco**
   - Breaking changes identificadas:
   - Plano de rollback validado:
   - Débitos técnicos remanescentes:
5. **Go/No-Go para próxima sprint**
   - Status: `GO` | `NO-GO`
   - Pendências bloqueadoras:
   - Aprovação (nome/data):

Convenção curta de preenchimento (registrada na task-mãe Asana):

- **Branch:** `feat/security-rls-sX-pY` (ex.: `feat/security-rls-s1-p01`)
- **PR:** `[SEC-RLS][Sx][Py] título objetivo`
- **Migration SQL:** `supabase/migrations/YYYYMMDDHHMMSS_sec_rls_sX_pY_<slug>.sql`
- **Evidência Security Advisor:** `BEFORE=<E/W/I> | AFTER=<E/W/I>`
- **Evidência de teste cruzado:** `actor=<role/user> tenant_or_client=<id> action=<select|insert|update|delete> expected=<allow|deny> result=<allow|deny>`
- **Rollback:** informar migration reversa ou estratégia de restore + responsável + horário
