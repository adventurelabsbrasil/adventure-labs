# Projeto Roles — Passo a passo e referência

Pasta dedicada ao **projeto de Roles e RLS** (Admin + Adventure CRM) no Supabase. Use este documento como guia único para acompanhar o que já foi feito, o que você deve fazer e os resultados esperados.

**Projeto Supabase:** `ftctmseyrqhckutpfdeq` (compartilhado entre Admin e Adventure).

---

## 1. Objetivo do projeto

- Organizar e **documentar** as roles dos apps **Admin** (`/admin`) e **Adventure** (CRM).
- Garantir que as **tabelas e políticas RLS** no Supabase estejam alinhadas às necessidades de cada app.
- **Admin:** role `admin` vs `tarefas`; usuário `tarefas` só acessa projetos em que está em `adv_project_members`.
- **Adventure CRM:** acesso por `user_type` (developer, owner, etc.) e por `project_users` (owner, admin, user, viewer) com RLS no banco.

---

## 2. O que já foi feito (registro)

### 2.1 Migrations criadas

| Onde | Arquivo | Descrição |
|------|---------|-----------|
| **Adventure** | `apps/core/adventure/supabase/migrations/20260308100000_crm_rls_policies.sql` | RLS do CRM: funções (`get_user_type`, `has_project_access`, `is_developer_or_owner`, etc.) + políticas idempotentes (DROP POLICY IF EXISTS + CREATE) para `users`, `projects`, `project_users`, `deals`, `contacts`, `companies`, `tasks`, `services`, `proposals`, `funnels`, `close_reasons`. |
| **Admin** | `apps/core/admin/supabase/migrations/20260308100001_adv_rls_by_role.sql` | RLS por role do Admin: funções (`auth_user_email`, `get_adv_profile_role`, `is_adv_admin`, `adv_can_access_project`) + políticas para `adv_projects`, `adv_tasks`, `adv_task_time_entries` e `adv_project_members` (INSERT/DELETE de membros só para admin). |
| **Admin** | `apps/core/admin/supabase/migrations/20260317100000_adv_clients_rls_by_role.sql` | RLS para `adv_clients`: admin vê todos; role `tarefas` só vê clientes que possuem ao menos um projeto em que o usuário está em `adv_project_members`. Ref.: Issue #118. |
| **Admin** | `apps/core/admin/supabase/migrations/20260317110000_auth_user_email_from_jwt.sql` | `auth_user_email()` passa a usar claim `email` do JWT (Clerk) quando não houver linha em `auth.users`. Ref.: docs/auth/CLERK_SUPABASE_JWT_RLS.md. |
| **Admin** | `apps/core/admin/supabase/migrations/20260318100000_adv_tenants_and_org_members.sql` | Cria tabelas `adv_tenants` (organizações/tenants) e `adv_org_members` (funcionários por tenant com roles `owner/admin/member/viewer`), além de funções `auth_is_adventure_owner`, `current_tenant_slug`, `current_tenant_id` e `org_member_role`. Base para multi-tenant e níveis por organização. |

### 2.2 Documentação e scripts

| Item | Local | Uso |
|------|--------|-----|
| Matriz de roles e acessos | `docs/SUPABASE_ROLES_MATRIZ_ACESSOS.md` | Referência única: por app e por tabela, quem pode SELECT/INSERT/UPDATE/DELETE. |
| Verificação (runbook) | `docs/SUPABASE_ROLES_VERIFICACAO.md` | Como rodar diagnósticos e onde colar resultados. |
| Alinhamento apps ↔ banco | `docs/SUPABASE_APPS_ALINHAMENTO.md` | Checklist para conferir se tabelas e RLS batem com Admin e Adventure. |
| Diagnóstico geral do schema | `apps/core/admin/supabase/scripts/diagnostico_schema.sql` | Queries para schemas, tabelas, colunas, RLS, FKs, etc. |
| Diagnóstico RLS e colunas CRM | `apps/core/admin/supabase/scripts/diagnostico_rls_e_colunas_crm.sql` | Queries A (políticas), B (RLS ativo), C (colunas CRM), D (tabelas dos apps). |
| Script legado RLS CRM | `apps/core/adventure/scripts/migration/supabase-rls-policies.sql` | Referência histórica; fonte oficial é a migration `20260308100000_crm_rls_policies.sql`. |
| README Supabase Admin | `apps/core/admin/supabase/README.md` | Entrada do Supabase no admin; links para roles e diagnóstico. |

### 2.3 Resultados de diagnóstico já salvos

- **Query C (colunas CRM):** `apps/core/admin/supabase/scripts/queryC_resultado.json`
- **Query D (tabelas dos apps):** `apps/core/admin/supabase/scripts/queryD_resultado`
- **Queries A e B:** coladas nas seções 4 e 5 do `estado_schema_template.md` (conforme runbook).

---

## 3. O que você deve fazer (passo a passo)

### Passo 1 — Aplicar as migrations no Supabase

1. Abra o **Dashboard do Supabase** do projeto `ftctmseyrqhckutpfdeq`.
2. Se você usa **um único projeto** para Admin e Adventure:
   - No **SQL Editor**, execute **na ordem**:
     1. Conteúdo de `apps/core/adventure/supabase/migrations/20260308100000_crm_rls_policies.sql`
     2. Conteúdo de `apps/core/admin/supabase/migrations/20260308100001_adv_rls_by_role.sql`
     3. Conteúdo de `apps/core/admin/supabase/migrations/20260317100000_adv_clients_rls_by_role.sql`
     4. Conteúdo de `apps/core/admin/supabase/migrations/20260317110000_auth_user_email_from_jwt.sql`
     5. Conteúdo de `apps/core/admin/supabase/migrations/20260318100000_adv_tenants_and_org_members.sql`
   - Ou, se as migrations forem aplicadas via CLI: rode `supabase db push` a partir do app que estiver ligado a esse projeto (Admin ou Adventure) — **certifique-se de que as duas migrations acima existam no histórico aplicado** (podem estar em pastas diferentes; se necessário, execute-as manualmente no SQL Editor).
3. Se Admin e Adventure usam **projetos Supabase diferentes**:
   - No projeto do **Adventure:** aplique `20260308100000_crm_rls_policies.sql`.
   - No projeto do **Admin:** aplique `20260308100001_adv_rls_by_role.sql`.
4. Confirme que não houve erro de execução (ex.: coluna inexistente, política já existente com outro nome).

**Se aparecer erro `column "project_id" does not exist`** ao rodar `20260308100000_crm_rls_policies.sql`:
- No SQL Editor, execute a query de diagnóstico (está no comentário no topo da própria migration) para listar tabelas que não têm a coluna `project_id`:
  ```sql
  SELECT t.table_name
  FROM information_schema.tables t
  WHERE t.table_schema = 'public'
    AND t.table_name IN ('project_users','deals','contacts','companies','tasks','services','proposals','funnels')
    AND NOT EXISTS (
      SELECT 1 FROM information_schema.columns c
      WHERE c.table_schema = t.table_schema AND c.table_name = t.table_name AND c.column_name = 'project_id'
    );
  ```
- Para cada tabela listada, adicione a coluna (ajuste se a tabela já tiver referência a `projects` com outro nome):  
  `ALTER TABLE nome_da_tabela ADD COLUMN project_id TEXT REFERENCES projects(id);`  
  Se a tabela já tiver linhas, use `ADD COLUMN project_id TEXT REFERENCES projects(id)` (nullable) e preencha os valores depois; em seguida, se quiser, altere para NOT NULL.
- Depois rode de novo a migration do CRM.

### Passo 2 — Verificar funções e políticas no banco

1. Siga o runbook: `docs/SUPABASE_ROLES_VERIFICACAO.md`.
2. Execute a query das **funções RLS do CRM** (conforme indicado no runbook) e confira se existem: `get_user_type`, `has_project_access`, `is_developer_or_owner`.
3. Opcional: rode as **queries A e B** do `diagnostico_rls_e_colunas_crm.sql` e compare com o que está em `estado_schema_template.md` (seções 4 e 5) para confirmar que as políticas e tabelas com RLS batem com o esperado.

### Passo 3 — Testar no Admin

1. Faça login com um usuário que tenha **role `tarefas`** e que esteja em **pelo menos um** `adv_project_members` para um projeto.
   - **Esperado:** o usuário vê apenas os projetos em que está como membro; vê e edita apenas tarefas desses projetos (ou sem projeto).
2. Faça login com um usuário **admin**.
   - **Esperado:** vê todos os projetos e tarefas; pode criar projeto e adicionar/remover membros em Equipe.
3. Com usuário `tarefas`, tente acessar a tela de Equipe e, se existir, tentar adicionar/remover membro.
   - **Esperado:** o backend (RLS) deve impedir INSERT/DELETE em `adv_project_members` (apenas admin pode).

### Passo 4 — Testar no Adventure (CRM)

1. Com um usuário **developer** ou **owner** (`users.user_type`):
   - **Esperado:** vê todos os projetos e entidades do CRM (deals, contacts, etc.).
2. Com um usuário que seja apenas **project_user** de um projeto (role user/viewer):
   - **Esperado:** vê apenas os projetos em que está em `project_users` com `active = true`; não vê dados de outros projetos.
3. Confirme que criar/editar/excluir deals, contacts, etc. respeita o projeto ao qual o usuário tem acesso.

### Passo 5 — Atualizar documentação (opcional)

1. Abra `docs/SUPABASE_APPS_ALINHAMENTO.md` e preencha o checklist (colunas “Existe no banco?”, “RLS permite o que o app faz?”, “Ação”) usando os resultados das queries C e D já salvos e as políticas atuais.
2. Se rodar novamente o diagnóstico completo, atualize as seções 4 e 5 do `estado_schema_template.md` com os resultados das queries A e B.

---

## 4. Resultados esperados do projeto

- **Banco:**  
  - CRM (Adventure): RLS ativo em users, projects, project_users, deals, contacts, companies, tasks, services, proposals, funnels, close_reasons, com acesso por `user_type` e `project_users`.  
  - Admin: RLS em adv_clients, adv_projects, adv_tasks, adv_task_time_entries e adv_project_members alinhado a `adv_profiles.role` e `adv_project_members` (admin vs tarefas).

- **Comportamento:**  
  - **Admin:** usuário `tarefas` só vê/edita clientes (adv_clients), projetos e tarefas dos projetos em que está em `adv_project_members`; apenas admin cria projetos/clientes e gerencia membros.  
  - **Adventure:** usuários só acessam dados dos projetos em que são owner ou estão em `project_users` ativo; developer/owner continuam com acesso global.

- **Documentação:**  
  - Uma única matriz de referência (`SUPABASE_ROLES_MATRIZ_ACESSOS.md`), runbook de verificação (`SUPABASE_ROLES_VERIFICACAO.md`) e checklist de alinhamento (`SUPABASE_APPS_ALINHAMENTO.md`) atualizados e utilizáveis para manutenção futura.

- **Organização:**  
  - Este projeto de Roles concentrado nesta pasta (`docs/roles/`) com este passo a passo; demais artefatos referenciados por links.

---

## 5. Referências rápidas (links)

| Documento / recurso | Caminho |
|---------------------|--------|
| Este passo a passo | `docs/roles/PASSO_A_PASSO.md` |
| Matriz de roles e acessos | [SUPABASE_ROLES_MATRIZ_ACESSOS.md](../SUPABASE_ROLES_MATRIZ_ACESSOS.md) |
| Runbook de verificação | [SUPABASE_ROLES_VERIFICACAO.md](../SUPABASE_ROLES_VERIFICACAO.md) |
| Checklist alinhamento apps | [SUPABASE_APPS_ALINHAMENTO.md](../SUPABASE_APPS_ALINHAMENTO.md) |
| Migration RLS CRM (Adventure) | `apps/core/adventure/supabase/migrations/20260308100000_crm_rls_policies.sql` |
| Migration RLS Admin por role | `apps/core/admin/supabase/migrations/20260308100001_adv_rls_by_role.sql` |
| Migration RLS adv_clients (Admin) | `apps/core/admin/supabase/migrations/20260317100000_adv_clients_rls_by_role.sql` |
| auth_user_email from JWT (Admin) | `apps/core/admin/supabase/migrations/20260317110000_auth_user_email_from_jwt.sql` |
| Diagnóstico RLS/CRM | `apps/core/admin/supabase/scripts/diagnostico_rls_e_colunas_crm.sql` |
| Perfil e roles no Admin (código) | `apps/core/admin/src/lib/auth-profile.ts` |
| Tabela `tasks` (public) = CRM, não Lidera | [SUPABASE_APPS_ALINHAMENTO.md](../SUPABASE_APPS_ALINHAMENTO.md) § 2.1 |

---

*Última atualização: conforme implementação do plano de melhorias (migrations + documentação).*
