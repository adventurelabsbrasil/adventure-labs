# Estado do schema — Supabase (ftctmseyrqhckutpfdeq)

**Data do snapshot:** _parcial — query 9 (Foreign keys) preenchida_

Quando rodar de novo o script `../scripts/diagnostico_schema.sql`, cole os resultados das queries 1–8 nas seções correspondentes (Schemas, Tabelas, Colunas, RLS, etc.) para completar o registro.

---

## 1. Schemas

_Resultado da query 1 (schemas do projeto)._

## 2. Tabelas (schema + nome)

_Resultado da query 2 (todas as tabelas)._

## 3. Colunas (public + auth)

_Resultado da query 3 (colunas por tabela) — ou resumo: “Tabelas public: X, Y, Z; auth: users, …”._

## 4. Políticas RLS

_Resultado da query 4 (políticas por tabela)._

## 5. RLS ativo por tabela

_Resultado da query 5._

## 6. Auth (estrutura)

_Resultado da query 6 (apenas estrutura; sem dados sensíveis)._

## 7. Enums public

_Resultado da query 7 (adv_client_status, adv_project_stage, etc.)._

## 8. Triggers

_Resultado da query 8._

## 9. Foreign keys (public)

Resultado da query 9 do `diagnostico_schema.sql`. Resumo: o `public` tem um ecossistema grande (tenants, users, projects, deals, companies, contacts, courses, etc.). Tabelas **adv_**: `adv_kanban_tasks.project_id` → `adv_projects.id` — ou seja, já existem `adv_projects` e `adv_kanban_tasks` (tasks do Kanban por projeto). Vale conferir a query 3 (colunas) para alinhar o código ao schema real.

---

## Notas

- Se `adv_projects` ou `adv_clients` já existirem, não rodar de novo a migration que faz `CREATE TABLE`; usar migrations incrementais (ex.: `20250302000002_adv_clients_only.sql`).
- Hosting do admin: **admin.adventurelabs.com.br**.
- **adv_ no projeto:** existem `adv_projects` e `adv_kanban_tasks`. O admin atual usa stage em `adv_projects`; se o Kanban real for baseado em `adv_kanban_tasks`, pode ser preciso alinhar o app a essa tabela.


| table_schema | from_table                 | from_column            | to_schema | to_table                  | to_column | constraint_name                                 |
| ------------ | -------------------------- | ---------------------- | --------- | ------------------------- | --------- | ----------------------------------------------- |
| public       | activity_history           | project_id             | public    | projects                  | id        | activity_history_project_id_fkey                |
| public       | activity_history           | user_id                | public    | users                     | id        | activity_history_user_id_fkey                   |
| public       | adv_kanban_tasks           | project_id             | public    | adv_projects              | id        | adv_kanban_tasks_project_id_fkey                |
| public       | close_reasons              | created_by             | public    | users                     | id        | close_reasons_created_by_fkey                   |
| public       | companies                  | created_by             | public    | users                     | id        | companies_created_by_fkey                       |
| public       | companies                  | project_id             | public    | projects                  | id        | companies_project_id_fkey                       |
| public       | contacts                   | created_by             | public    | users                     | id        | contacts_created_by_fkey                        |
| public       | contacts                   | project_id             | public    | projects                  | id        | contacts_project_id_fkey                        |
| public       | courses                    | org_id                 | public    | organizations             | id        | courses_org_id_fkey                             |
| public       | custom_fields              | created_by             | public    | users                     | id        | custom_fields_created_by_fkey                   |
| public       | deals                      | assigned_to            | public    | project_users             | id        | deals_assigned_to_fkey                          |
| public       | deals                      | close_reason           | public    | close_reasons             | id        | deals_close_reason_fkey                         |
| public       | deals                      | company_id             | public    | companies                 | id        | deals_company_id_fkey                           |
| public       | deals                      | contact_id             | public    | contacts                  | id        | deals_contact_id_fkey                           |
| public       | deals                      | created_by             | public    | users                     | id        | deals_created_by_fkey                           |
| public       | deals                      | project_id             | public    | projects                  | id        | deals_project_id_fkey                           |
| public       | enrollments                | course_id              | public    | courses                   | id        | enrollments_course_id_fkey                      |
| public       | enrollments                | user_id                | public    | profiles                  | id        | enrollments_user_id_fkey                        |
| public       | funnels                    | created_by             | public    | users                     | id        | funnels_created_by_fkey                         |
| public       | funnels                    | project_id             | public    | projects                  | id        | funnels_project_id_fkey                         |
| public       | growth_briefing_responses  | template_id            | public    | growth_briefing_templates | id        | growth_briefing_responses_template_id_fkey      |
| public       | growth_briefing_templates  | created_by             | public    | users                     | id        | growth_briefing_templates_created_by_fkey       |
| public       | lesson_progress            | lesson_id              | public    | lessons                   | id        | lesson_progress_lesson_id_fkey                  |
| public       | lesson_progress            | user_id                | public    | profiles                  | id        | lesson_progress_user_id_fkey                    |
| public       | lessons                    | module_id              | public    | modules                   | id        | lessons_module_id_fkey                          |
| public       | meta_ads_insights          | created_by             | public    | users                     | id        | meta_ads_insights_created_by_fkey               |
| public       | meta_ads_insights          | project_id             | public    | projects                  | id        | meta_ads_insights_project_id_fkey               |
| public       | meta_ads_monthly_summaries | created_by             | public    | users                     | id        | meta_ads_monthly_summaries_created_by_fkey      |
| public       | meta_ads_monthly_summaries | project_id             | public    | projects                  | id        | meta_ads_monthly_summaries_project_id_fkey      |
| public       | modules                    | course_id              | public    | courses                   | id        | modules_course_id_fkey                          |
| public       | notes                      | lesson_id              | public    | lessons                   | id        | notes_lesson_id_fkey                            |
| public       | notes                      | user_id                | public    | profiles                  | id        | notes_user_id_fkey                              |
| public       | pending_invites            | invited_by             | public    | profiles                  | id        | pending_invites_invited_by_fkey                 |
| public       | pending_invites            | org_id                 | public    | organizations             | id        | pending_invites_org_id_fkey                     |
| public       | profiles                   | org_id                 | public    | organizations             | id        | profiles_org_id_fkey                            |
| public       | project_members            | created_by             | public    | users                     | id        | project_members_created_by_fkey                 |
| public       | project_members            | project_id             | public    | projects                  | id        | project_members_project_id_fkey                 |
| public       | project_users              | created_by             | public    | users                     | id        | project_users_created_by_fkey                   |
| public       | project_users              | project_id             | public    | projects                  | id        | project_users_project_id_fkey                   |
| public       | project_users              | user_id                | public    | users                     | id        | project_users_user_id_fkey                      |
| public       | projects                   | created_by             | public    | users                     | id        | projects_created_by_fkey                        |
| public       | projects                   | owner_id               | public    | users                     | id        | projects_owner_id_fkey                          |
| public       | projects                   | parent_project_id      | public    | projects                  | id        | projects_parent_project_id_fkey                 |
| public       | projects                   | tenant_id              | public    | tenants                   | id        | projects_tenant_id_fkey                         |
| public       | proposals                  | created_by             | public    | users                     | id        | proposals_created_by_fkey                       |
| public       | proposals                  | deal_id                | public    | deals                     | id        | proposals_deal_id_fkey                          |
| public       | proposals                  | project_id             | public    | projects                  | id        | proposals_project_id_fkey                       |
| public       | resources                  | lesson_id              | public    | lessons                   | id        | resources_lesson_id_fkey                        |
| public       | services                   | created_by             | public    | users                     | id        | services_created_by_fkey                        |
| public       | services                   | project_id             | public    | projects                  | id        | services_project_id_fkey                        |
| public       | task_completions           | task_id                | public    | tasks                     | id        | task_completions_task_id_fkey                   |
| public       | task_completions           | user_id                | public    | profiles                  | id        | task_completions_user_id_fkey                   |
| public       | tasks                      | lesson_id              | public    | lessons                   | id        | tasks_lesson_id_fkey                            |
| public       | tenant_users               | created_by             | public    | users                     | id        | tenant_users_created_by_fkey                    |
| public       | tenant_users               | tenant_id              | public    | tenants                   | id        | tenant_users_tenant_id_fkey                     |
| public       | tenant_users               | user_id                | public    | users                     | id        | tenant_users_user_id_fkey                       |
| public       | tenants                    | created_by             | public    | users                     | id        | tenants_created_by_fkey                         |
| public       | tenants                    | owner_id               | public    | users                     | id        | tenants_owner_id_fkey                           |
| public       | tenants                    | parent_tenant_id       | public    | tenants                   | id        | tenants_parent_tenant_id_fkey                   |
| public       | time_bank_entries          | employee_id            | public    | time_bank_employees       | id        | time_bank_entries_employee_id_fkey              |
| public       | time_bank_entries          | location_id            | public    | time_bank_locations       | id        | time_bank_entries_location_id_fkey              |
| public       | time_bank_locations        | created_by_employee_id | public    | time_bank_employees       | id        | time_bank_locations_created_by_employee_id_fkey |
| public       | time_bank_usages           | employee_id            | public    | time_bank_employees       | id        | time_bank_usages_employee_id_fkey               |
| public       | users                      | created_by             | public    | users                     | id        | users_created_by_fkey                           |
| public       | users                      | tenant_id              | public    | tenants                   | id        | users_tenant_id_fkey                            |
| public       | whatsapp_conversations     | created_by             | public    | users                     | id        | whatsapp_conversations_created_by_fkey          |
| public       | whatsapp_conversations     | deal_id                | public    | deals                     | id        | whatsapp_conversations_deal_id_fkey             |
| public       | whatsapp_conversations     | project_id             | public    | projects                  | id        | whatsapp_conversations_project_id_fkey          |

---

## Extras (script `diagnostico_schema_extra.sql`)

Quando precisar de mais detalhes, rode `../scripts/diagnostico_schema_extra.sql` e cole aqui:

- **10. Índices (public)** — query 10
- **11. Views (public)** — query 11
- **12. Funções (public)** — query 12
- **13. Colunas só adv_*** — query 13 (snapshot do schema do admin)
- **14. Contagem de linhas adv_*** — query 14 (só tabelas que existem)

**Resultado (query 14):** Tabelas que batem com `adv_%` no public (todas com 0 linhas). Não existe `adv_clients` ainda — dá para rodar migration que cria só `adv_clients` se quiser.

| table_name             | row_count |
| ---------------------- | --------- |
| adv_kanban_tasks       | 0         |
| adv_knowledge_base     | 0         |
| adv_projects           | 0         |
| adventure_applications | 0         |

*(No SQL, `LIKE 'adv_%'` trata `_` como curinga; por isso entrou `adventure_applications`. O script extra foi ajustado para prefixo estrito `adv_` quando quiser só as tabelas do admin.)*