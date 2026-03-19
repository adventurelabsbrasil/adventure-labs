# Alinhamento Supabase com apps Admin e Adventure

Checklist para conferir se os **nomes de tabelas** e as **políticas RLS** no Supabase estão de acordo com o que os apps **Admin** e **Adventure** usam. Preencha "Existe no banco?", "RLS permite o que o app faz?" e "Ação" após rodar o diagnóstico (ex.: `diagnostico_rls_e_colunas_crm.sql`) e cruzar com as queries 2, 4 e 5.

Referências: [SUPABASE_ROLES_VERIFICACAO.md](SUPABASE_ROLES_VERIFICACAO.md), [SUPABASE_ROLES_MATRIZ_ACESSOS.md](SUPABASE_ROLES_MATRIZ_ACESSOS.md). **Manual do projeto Roles (passo a passo):** [docs/roles/PASSO_A_PASSO.md](roles/PASSO_A_PASSO.md).

---

## 1. App Admin — tabelas usadas no código

O Admin usa `supabase.from("...")` com nomes literais. Preencha após obter a lista de tabelas do banco (query 2 ou query D do diagnostico_rls_e_colunas_crm.sql) e as políticas (query 4).

| Tabela no código | Existe no banco? (sim/não) | RLS permite o que o app faz? (sim/não/melhorar) | Ação (nenhuma / criar migration / ajustar RLS / documentar) |
|------------------|----------------------------|-------------------------------------------------|-------------------------------------------------------------|
| adv_profiles | | | |
| adv_project_members | | | |
| adv_clients | | | |
| adv_projects | | | |
| adv_tasks | | | |
| adv_task_time_entries | | | |
| adv_time_bank_locations | | | |
| adv_time_bank_entries | | | |
| adv_time_bank_usages | | | |
| adv_founder_reports | | | |
| adv_daily_summaries | | | |
| adv_daily_summary_reads | | | |
| adv_ideias | | | |
| adv_products | | | |
| adv_apps | | | |
| adv_app_clients | | | |
| adv_app_projects | | | |
| adv_client_accesses | | | |
| adv_client_inbox | | | |

**Expectativa do Admin hoje:** qualquer usuário autenticado pode SELECT/INSERT/UPDATE/DELETE conforme o uso em cada tela. Se a política for mais restritiva, o app pode falhar; se mais permissiva, é melhoria futura restringir por `adv_profiles.role` e `adv_project_members`.

---

## 2. App Adventure — mapeamento collection → tabela

O Adventure usa `getDocuments(collectionName)` (camelCase); o mapeamento para tabelas Supabase está em `apps/core/adventure/src/lib/supabase/db.ts` (`toTableName`). Preencha após cruzar com a lista de tabelas e colunas do banco.

| Collection (código) | Tabela Supabase | Existe no banco? | Colunas críticas (ex.: project_id, user_id) existem? | RLS alinhada com usePermissions / has_project_access? (sim/não/melhorar) | Ação |
|---------------------|-----------------|------------------|------------------------------------------------------|-------------------------------------------------------------------------|------|
| users | users | | | | |
| projects | projects | | | | |
| projectUsers | project_users | | | | |
| projectMembers | project_members | | | | |
| tenants | tenants | | | | |
| tenantUsers | tenant_users | | | | |
| contacts | contacts | | | | |
| companies | companies | | | | |
| deals | deals | | | | |
| tasks | tasks | | | | |
| services | services | | | | |
| proposals | proposals | | | | |
| funnels | funnels | | | | |
| closeReasons | close_reasons | | | | |
| activityHistory | activity_history | | | | |
| whatsappConversations | whatsapp_conversations | | | | |

**Expectativa do Adventure:** `users` com `user_type` (e possivelmente `role`); `project_users` com `project_id`, `user_id`, `role`; acesso a deals/contacts/companies/tasks/etc. conforme `has_project_access(project_id)` e roles em project_users. O `db.ts` converte camelCase → snake_case (ex.: projectId → project_id); as colunas no banco devem bater com esse mapeamento.

---

## 2.1 Esclarecimento: tabela `tasks` (sem schema = public)

A tabela **`tasks`** (schema `public`) é do **Adventure CRM**, não do Lidera. Definição: `apps/core/adventure/scripts/migration/supabase-schema.sql` (project_id, deal_id, title, type, status, due_date, etc.) — tarefas de negócio (ligar para cliente, follow-up, reunião).

- **Lidera (lidera-space)** usa **outro** projeto Supabase e **não** tem tabela `tasks`; tem `programs`, `modules`, `lessons`, `notes`, `progress`.
- Se no projeto compartilhado (ftctmseyrqhckutpfdeq) você vir dados em `tasks` que parecem de “liderança” ou genéricos, podem ser mocks/demo do CRM (ex.: demoSeed do Adventure) ou seed aplicado por engano. A **estrutura** da tabela é a do CRM; o **conteúdo** pode ter sido populado por outro seed. Para limpar ou alinhar: identificar a origem dos dados e, se for seed equivocado, remover ou migrar para o app correto.

---

## 3. Melhorias priorizadas (resumo)

- [x] **RLS CRM Adventure:** migration `apps/core/adventure/supabase/migrations/20260308100000_crm_rls_policies.sql` criada (idempotente); aplicar com `supabase db push` ou SQL Editor.
- [x] **RLS Admin por role:** migration `apps/core/admin/supabase/migrations/20260308100001_adv_rls_by_role.sql` criada; restringe adv_projects, adv_tasks, adv_task_time_entries e adv_project_members (INSERT/DELETE de membros só admin).
- [ ] Preencher o checklist acima (colunas 1–2) com os resultados das queries C e D para novas tabelas/ajustes.

---

## 4. Como preencher

1. Rode `apps/core/admin/supabase/scripts/diagnostico_rls_e_colunas_crm.sql` no SQL Editor do Supabase.
2. Use a **query A** (políticas) e **query B** (RLS ativo) para preencher o estado_schema_template (seções 4 e 5).
3. Use a **query C** (colunas CRM) para verificar se todas as tabelas CRM têm a coluna `project_id` (ou o nome real) onde o script RLS espera. Resultado de exemplo: `apps/core/admin/supabase/scripts/queryC_resultado.json`.
4. Use a **query D** (tabelas dos apps) para marcar "Existe no banco?" nas tabelas acima. Resultado de exemplo: `apps/core/admin/supabase/scripts/queryD_resultado`.
5. Para cada tabela, confira nas políticas (query A) se o que o app faz (SELECT/INSERT/UPDATE/DELETE) está permitido; preencha "RLS permite?" e "Ação".
