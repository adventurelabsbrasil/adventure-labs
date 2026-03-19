# Matriz de roles e acessos — Supabase (Admin e Adventure CRM)

Projeto Supabase compartilhado: **ftctmseyrqhckutpfdeq**. Este documento é o **lugar único de referência** para: por app, quais tabelas são lidas/escritas e de onde no frontend; por tabela (ou grupo), qual conceito de role é usado e quem pode SELECT/INSERT/UPDATE/DELETE. Inclui os dois sistemas de Time Bank (Admin e Adventure).

Atualize este documento quando alterar roles ou políticas; use a [verificação](SUPABASE_ROLES_VERIFICACAO.md) para conferir o estado real no banco.

---

## 1. Por app: tabelas e origem no frontend

### 1.1 App Admin (Next.js, Supabase Auth)

| Tabela | Uso no frontend | Observação |
|--------|------------------|-------------|
| `adv_profiles` | `apps/core/admin/src/lib/auth-profile.ts` (perfil: role + allowedProjectIds); `apps/core/admin/src/app/dashboard/equipe/page.tsx` (lista de perfis) | Fonte da role do usuário (admin / tarefas) |
| `adv_project_members` | `auth-profile.ts` (projetos permitidos para role tarefas); `equipe/page.tsx` (membros por projeto) | Define quais projetos o usuário com role `tarefas` pode acessar |
| `adv_clients`, `adv_projects` | CRUD no dashboard (clientes e projetos) | |
| `adv_tasks`, `adv_task_time_entries` | Tarefas e apontamento de tempo; filtro por `allowedProjectIds` quando role = tarefas | Filtro aplicado no frontend |
| `adv_founder_reports` | `/dashboard/relatorio`: escrita no formulário; leitura no histórico. **n8n C-Suite** lê (SELECT) últimos 7 dias para contexto do Grove | Relatórios do founder; consumidos pelo workflow C-Suite |
| `adv_csuite_memory` | `/dashboard/csuite-diario`; **POST** `/api/csuite/founder-report` com `csuite_memory` (n8n Zazu). Loop C-Suite (n8n) lê/escreve | Memória C-Suite; ver [ADV_CSUITE_MEMORY_METADATA](ADV_CSUITE_MEMORY_METADATA.md) |
| `adv_daily_summaries` | `/dashboard/relatorio` e dashboard: resumos diários; cron/API gera via `daily-summary.ts` | Resumos consolidados por dia |
| `adv_time_bank_locations`, `adv_time_bank_entries`, `adv_time_bank_usages` | Ponto (registro e seção admin); `apps/core/admin/src/app/dashboard/ponto/page.tsx` usa `profile?.role !== "tarefas"` para exibir seção admin | **Time Bank do Admin** (identificação por `user_email`) |

### 1.2 App Adventure — CRM (React, Supabase Auth)

| Tabela | Uso no frontend | Observação |
|--------|------------------|-------------|
| `users` | `apps/core/adventure/src/features/users/hooks/useUsers.ts`, `useProjects.ts`, `usePermissions.ts` | Campo `user_type` (ex.: developer, owner) e `role` para permissões |
| `projects` | `useProjects.ts`, `apps/core/adventure/src/contexts/ProjectContext.tsx` | |
| `project_users` | `useProjectUsers.ts`, `useCurrentProjectUser.ts` (projectMembers); `useMemberProducts.ts` | Role por projeto: owner, admin, user, viewer |
| `deals`, `contacts`, `companies`, `tasks`, `services`, `proposals`, `funnels` | Hooks e features do CRM | Acesso conforme `has_project_access` / `project_users` (se RLS do script aplicado) |
| `whatsapp_conversations` | CRM / extensão | RLS aplicado em migration: owner do projeto ou project_users ativo |
| `time_bank_employees` | `RegistroPontoPage.tsx`, `TimeBankPage.tsx` (Time Bank no Adventure) | Coluna `role`: employee \| admin |
| `time_bank_entries`, `time_bank_usages` | Registro de ponto e usos no app Adventure | **Time Bank do Adventure** (identificação por `employee_id`); admin via Edge Functions com service_role |

---

## 2. Por tabela / grupo: role e permissões

### 2.1 Admin — tabelas `adv_*`

| Tabela / grupo | Conceito de role | SELECT | INSERT | UPDATE | DELETE | Notas |
|----------------|------------------|--------|--------|--------|--------|-------|
| `adv_profiles` | `adv_profiles.role` (admin \| tarefas) | authenticated | authenticated | authenticated | — | RLS não diferencia role; restrição de tela (ex.: Equipe só para admin) no frontend |
| `adv_project_members` | (sem role; user_email + project_id) | authenticated | admin only (INSERT/DELETE) | — | admin only | **Migration 20260308100001:** apenas admin pode adicionar/remover membros |
| `adv_clients` | — | authenticated | authenticated | authenticated | authenticated | Sem alteração |
| `adv_projects` | admin \| tarefas (adv_can_access_project) | admin ou tarefas nos projetos permitidos | admin only | idem SELECT | admin only | **Migration 20260308100001:** RLS por role |
| `adv_tasks`, `adv_task_time_entries` | admin \| tarefas por project_id | admin ou tarefas (projetos em adv_project_members) | idem | idem | idem | **Migration 20260308100001:** RLS por role; tarefas só em projetos permitidos |
| `adv_founder_reports` | — | authenticated + **n8n C-Suite** (SELECT) | authenticated | authenticated | authenticated | n8n lê últimos 7 dias para contexto do Grove; ver [CSuite_relatorios_founder](CSuite_relatorios_founder.md) |
| `adv_csuite_memory` | — | service/cron (n8n, APIs Admin com service role) | INSERT via n8n + POST founder-report (Zazu) | — | n8n (cleanup) | UI `/dashboard/csuite-diario` via API server; ver [ADV_CSUITE_MEMORY_METADATA](ADV_CSUITE_MEMORY_METADATA.md) |
| `adv_daily_summaries` | — | authenticated | authenticated (cron/API + UI) | authenticated | authenticated | Resumos diários; gerados por `daily-summary.ts` |
| `adv_time_bank_locations` | — | todos (SELECT público) | — | — | — | Policy "Admins podem tudo" para ALL (USING true) |
| `adv_time_bank_entries`, `adv_time_bank_usages` | — | authenticated | authenticated | authenticated (entries: policy "Admins podem atualizar") | — | RLS atual não restringe por role; policy USING true |

**Resumo Admin:** Após a migration `20260308100001_adv_rls_by_role.sql`, o RLS diferencia role em `adv_projects`, `adv_tasks`, `adv_task_time_entries` e `adv_project_members` (INSERT/DELETE de membros só admin). Role `tarefas` só acessa projetos em que consta em `adv_project_members`. Demais tabelas `adv_*` continuam com RLS por autenticação apenas.

### 2.1.1 OpenClaw cloud (Railway) e Supabase

| Recomendação | Detalhe |
|--------------|---------|
| **Evitar** colocar `SUPABASE_SERVICE_ROLE_KEY` nas tools do agente OpenClaw sem allowlist explícita de tabelas. | Service role ignora RLS; risco de vazamento multitenant se o prompt injetar SQL livre. |
| **Preferir** chamadas HTTP ao Admin (`/api/csuite/*`, cron com `CRON_SECRET`) para escritas controladas. | Mesmo padrão do Zazu/n8n. |
| Se Supabase direto for inevitável | Restringir a leitura/escrita apenas a tabelas documentadas em [SUPABASE_ADV_CSUITE_AUDIT](SUPABASE_ADV_CSUITE_AUDIT.md); sempre filtrar por `tenant_id` Adventure no código da tool. |

### 2.2 Adventure — CRM (users, projects, project_users, deals, …)

| Tabela / grupo | Conceito de role | SELECT | INSERT | UPDATE | DELETE | Notas |
|----------------|------------------|--------|--------|--------|--------|-------|
| `users` | `users.user_type` (developer, owner, …) | próprio ou developer/owner | autenticado (próprio) | próprio ou developer/owner | developer | Depende do script `supabase-rls-policies.sql` estar aplicado |
| `projects` | `has_project_access(project_id)`, `is_developer_or_owner()` | developer/owner ou com acesso ao projeto | developer/owner | developer/owner ou dono | developer/owner | |
| `project_users` | `project_users.role` (owner, admin, user, viewer) | developer/owner ou do projeto | developer/owner ou owner/admin do projeto | idem | idem | |
| `deals`, `contacts`, `companies`, `tasks`, `services`, `proposals`, `funnels` | Acesso por projeto (has_project_access); delete por owner/admin do projeto | developer/owner ou com acesso | idem | idem | owner/admin do projeto | |
| `close_reasons` | — | todos | developer/owner | developer/owner | developer/owner | |
| `whatsapp_conversations` | owner do projeto ou project_users ativo | RLS aplicado (migration) | idem | idem | idem | |

**Nota:** Se o script `apps/core/adventure/scripts/migration/supabase-rls-policies.sql` **não** estiver aplicado, as tabelas do CRM podem estar sem RLS ou com políticas antigas. Verificar com a [verificação](SUPABASE_ROLES_VERIFICACAO.md).

### 2.3 Time Bank — Admin (`adv_time_bank_*`)

| Tabela | Conceito de role | SELECT | INSERT | UPDATE | DELETE | Notas |
|--------|------------------|--------|--------|--------|--------|-------|
| `adv_time_bank_locations` | — | público | — | policy "Admins podem tudo" (USING true) | — | Identificação por `user_email` nas entries |
| `adv_time_bank_entries` | — | authenticated | authenticated | authenticated (policy "Admins podem atualizar", USING true) | — | |
| `adv_time_bank_usages` | — | authenticated | authenticated | — | — | |

### 2.4 Time Bank — Adventure (`time_bank_*`)

| Tabela | Conceito de role | SELECT | INSERT | UPDATE | DELETE | Notas |
|--------|------------------|--------|--------|--------|--------|-------|
| `time_bank_employees` | `time_bank_employees.role` (employee \| admin) | Edge Functions / cliente conforme auth | — | — | — | Admin vê todas as entradas/saldos via Edge Functions (service_role) |
| `time_bank_entries`, `time_bank_usages` | — | Via Edge Functions; cliente por employee_id se houver acesso direto | idem | idem | — | Sem RLS nas migrations; lógica de admin em `time-bank-admin-entries`, `time-bank-admin-balance` |

---

## 3. Nomenclatura de roles (resumo)

| Sistema | Onde está a role | Valores |
|---------|------------------|---------|
| **Admin** | `adv_profiles.role` | `admin`, `tarefas` |
| **Admin (projeto)** | `adv_project_members` | (sem role; apenas user_email + project_id) |
| **Adventure CRM** | `users` (user_type / role) | developer, owner, etc. |
| **Adventure CRM** | `project_users.role` | owner, admin, user, viewer |
| **Adventure Time Bank** | `time_bank_employees.role` | employee, admin |

---

## 4. Referências rápidas

- **Projeto Roles (passo a passo e organização):** [docs/roles/PASSO_A_PASSO.md](roles/PASSO_A_PASSO.md) — o que foi feito, o que fazer e resultados esperados.
- Verificação (como rodar diagnóstico e o que checar): [SUPABASE_ROLES_VERIFICACAO.md](SUPABASE_ROLES_VERIFICACAO.md)
- Alinhamento tabelas e RLS com os apps Admin e Adventure (checklist): [SUPABASE_APPS_ALINHAMENTO.md](SUPABASE_APPS_ALINHAMENTO.md)
- Perfil e roles no Admin: `apps/core/admin/src/lib/auth-profile.ts`
- Permissões no Adventure: `apps/core/adventure/src/hooks/usePermissions.ts`
- Definição de perfis e membros (Admin): `apps/core/admin/supabase/migrations/20250312100001_adv_profiles_and_project_members.sql`
- **RLS CRM (Adventure):** migration oficial `apps/core/adventure/supabase/migrations/20260308100000_crm_rls_policies.sql` (idempotente). Script legado: `apps/core/adventure/scripts/migration/supabase-rls-policies.sql`.
- **RLS Admin por role (admin vs tarefas):** `apps/core/admin/supabase/migrations/20260308100001_adv_rls_by_role.sql` — restringe adv_projects, adv_tasks, adv_task_time_entries e adv_project_members (INSERT/DELETE só admin).
- Diagnóstico do schema: `apps/core/admin/supabase/scripts/diagnostico_schema.sql`

---

## Resultado da verificação (funções RLS CRM)

Consulta executada conforme [SUPABASE_ROLES_VERIFICACAO.md](SUPABASE_ROLES_VERIFICACAO.md) (verificar se o script `supabase-rls-policies.sql` está aplicado):

```sql
SELECT routine_name
FROM information_schema.routines
WHERE routine_schema = 'public'
  AND routine_name IN ('get_user_type', 'has_project_access', 'is_developer_or_owner');
```

**Resultado:** As três funções existem no banco:

| routine_name           |
|------------------------|
| get_user_type          |
| has_project_access     |
| is_developer_or_owner  |

**Conclusão:** As funções do RLS do CRM **estão aplicadas** no projeto. A migration oficial é `apps/core/adventure/supabase/migrations/20260308100000_crm_rls_policies.sql` (idempotente, com DROP POLICY IF EXISTS). Use-a para aplicar ou atualizar o RLS do CRM; o script legado `supabase-rls-policies.sql` permanece como referência.
