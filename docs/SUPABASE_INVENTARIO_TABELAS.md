# Inventário de tabelas — Supabase (ftctmseyrqhckutpfdeq)

Projeto compartilhado entre **Admin**, **CRM (Adventure)** e **site adventurelabs.com.br**. Classificação das tabelas em `public` (snapshot do banco).

**App Space (LMS):** O schema do Space (`space_*` ou tabelas sem prefixo) **não** está aplicado neste projeto. Ele vive no repositório (`apps/clientes/01_lidera/lidera/space/supabase/migrations/`) e é aplicado **apenas no Supabase do cliente** que compra o app (ex.: Lidera — projeto deles). Nosso Supabase não armazena dados do Space; a “configuração” do Space é só código e documentação no repo.

---

## 1. CRM (Adventure) — 14 tabelas `crm_*`

Usadas pelo **app CRM**. RLS por `get_user_type`, `has_project_access`, `is_project_owner`.

| Tabela | Colunas | Uso |
|--------|---------|-----|
| `crm_activity_history` | 8 | Histórico de atividades |
| `crm_close_reasons` | 9 | Motivos de fechamento (globais) |
| `crm_companies` | 20 | Empresas por projeto |
| `crm_contacts` | 18 | Contatos por projeto |
| `crm_custom_fields` | 9 | Campos customizados |
| `crm_deals` | 24 | Pipeline, negociações |
| `crm_funnels` | 10 | Funis por projeto |
| `crm_project_users` | 14 | Membros por projeto (role: owner, admin, user, viewer) |
| `crm_projects` | 14 | Projetos do CRM |
| `crm_proposals` | 16 | Propostas por deal |
| `crm_services` | 10 | Serviços por projeto |
| `crm_tasks` | 12 | Tarefas/atividades por deal (ligar, reunião, e-mail) |
| `crm_users` | 16 | Perfil, invites, members, RLS (user_type) |
| `crm_whatsapp_conversations` | 9 | Conversas WhatsApp |

---

## 2. Admin — 23 tabelas `adv_*`

Usadas pelo **app Admin** (gestão interna). RLS por `adv_profiles`, `adv_project_members`, etc.

| Tabela | Colunas | Uso |
|--------|---------|-----|
| `adv_app_clients` | 3 | N:N apps–clientes |
| `adv_app_projects` | 3 | N:N apps–projetos |
| `adv_apps` | 16 | Ativos/aplicações |
| `adv_client_accesses` | 11 | Acessos de clientes (logins, URLs) |
| `adv_client_inbox` | 10 | Inbox de cliente |
| `adv_clients` | 9 | Clientes |
| `adv_csuite_memory` | 6 | Memória/contexto C-Suite (n8n, RAG) |
| `adv_csuite_reports` | 13 | Relatórios C-Suite |
| `adv_daily_summaries` | 10 | Resumos diários |
| `adv_daily_summary_reads` | 4 | Leituras de resumo |
| `adv_founder_reports` | 8 | Relatórios founder |
| `adv_ideias` | 11 | Backlog de ideias (editorial, copy) |
| `adv_kanban_tasks` | 8 | Tarefas kanban |
| `adv_knowledge_base` | 6 | Base de conhecimento |
| `adv_products` | 8 | Produtos/cenário |
| `adv_profiles` | 5 | Perfis (user_email, role: admin/tarefas) |
| `adv_program_sessions` | 10 | Sessões de programa |
| `adv_project_members` | 4 | Membros por projeto Admin |
| `adv_projects` | 14 | Projetos Admin |
| `adv_tasks` | 20 | Tarefas Admin (backlog, dev) |
| `adv_time_bank_entries` | 12 | Registros de ponto |
| `adv_time_bank_locations` | 10 | Locais (registro de ponto) |
| `adv_time_bank_usages` | 8 | Uso de banco de horas |

---

## 3. Space (LMS / área de membros) — 6 tabelas `space_*`

Estrutura **genérica para revenda**: LMS (programas, módulos, aulas, notas, progresso). Usada pelo Lidera Space e reutilizável em outros clientes (prefixo `space_` para não amarrar ao Lidera). RLS por `space_users.role` (admin/aluno).

| Tabela | Colunas | Uso |
|--------|---------|-----|
| `space_users` | 5 | Perfil do membro (id, email, role: admin/aluno) — ref. auth.users |
| `space_programs` | 4 | Programas/trilhas |
| `space_modules` | 5 | Módulos por programa |
| `space_lessons` | 7 | Aulas por módulo |
| `space_notes` | 6 | Notas do aluno por aula |
| `space_progress` | 6 | Progresso (concluído) por aula |

---

## 4. Site adventurelabs.com.br / curso — 11 tabelas

Formulários do site, Growth Briefing e estrutura de **cursos/treinamentos** (lições, módulos, progresso).

| Tabela | Colunas | Uso |
|--------|---------|-----|
| `adventure_applications` | 2 | Candidaturas (site) |
| `conversion_forms` | 2 | Formulários de conversão |
| `work_with_us_forms` | 2 | Formulário “trabalhe conosco” |
| `growth_briefing_templates` | 9 | Templates Growth Briefing |
| `growth_briefing_responses` | 10 | Respostas Growth Briefing |
| `tasks` | 6 | **Lições** (lesson_id, order_index) — não é CRM |
| `courses` | 8 | Cursos |
| `lessons` | 10 | Aulas/lições |
| `modules` | 7 | Módulos |
| `enrollments` | 6 | Matrículas |
| `lesson_progress` | 7 | Progresso por lição |
| `notes` | 6 | Notas (por lição/usuário) |
| `resources` | 7 | Recursos |
| `task_completions` | 4 | Conclusões de tarefa (curso) |

---

## 5. Time Bank (Adventure) — 4 tabelas `time_bank_*`

Banco de horas do **app Adventure** (registro de ponto). Podem coexistir com `adv_time_bank_*` (Admin); conferir se ambos são usados ou se uma linha é legado.

| Tabela | Colunas | Uso |
|--------|---------|-----|
| `time_bank_employees` | 8 | Colaboradores |
| `time_bank_entries` | 12 | Registros de ponto |
| `time_bank_locations` | 10 | Locais |
| `time_bank_usages` | 7 | Uso de horas |

---

## 6. Revisar — possível lixo ou uso indefinido (11 tabelas)

Tabelas a confirmar em código antes de remover. **Não dropar sem backup.**

| Tabela | Colunas | Observação |
|--------|---------|------------|
| `tenants` | 12 | Multitenant; verificar se algum app usa |
| `tenant_users` | 9 | Usuários por tenant; idem |
| `project_members` | 11 | **Deprecated** — CRM usa `crm_project_users`; verificar se algo ainda lê/escreve |
| `profiles` | 9 | Perfis (auth)? Pode ser Supabase padrão ou site |
| `pending_invites` | 7 | Convites pendentes; pode ser CRM ou interno |
| `organizations` | 8 | Organizações; verificar qual app usa |
| `automations` | 12 | Automações; verificar referências no CRM/Admin |
| `client_integrations` | 2 | Integrações de cliente |
| `integrations` | 2 | Integrações genéricas |
| `emails` | 2 | E-mails (newsletter, etc.) |
| `marketing_reports` | 19 | Relatórios de marketing (CRM?) |
| `sales_reports` | 14 | Relatórios de vendas (CRM?) |
| `meta_ads_insights` | 26 | Meta Ads (CRM marketing?) |
| `meta_ads_monthly_summaries` | 18 | Resumos mensais Meta |
| `migration_config` | 4 | Config de migração — **candidato a lixo** se for ferramenta antiga |
| `migration_logs` | 12 | Logs de migração — **candidato a lixo** idem |

---

## Resumo por grupo

| Grupo | Quantidade | Ação |
|-------|------------|------|
| CRM (`crm_*`) | 14 | Em uso pelo app CRM |
| Admin (`adv_*`) | 23 | Em uso pelo app Admin |
| Space (`space_*`) | — | Schema no repo; aplicado só no Supabase do cliente (não neste projeto) |
| Site / curso | 14 | Site + cursos/treinamentos |
| Time Bank (`time_bank_*`) | 4 | Conferir se ainda em uso (vs adv_time_bank_*) |
| Revisar | 16 | Confirmar uso no repo; migration_* candidatos a remoção após backup |

---

## Referências

- CRM (tabelas e RLS): `apps/core/adventure/docs/CRM_TABELAS_E_ROLES_VERIFICACAO.md`
- Space (LMS): schema e RLS no repo — migração `apps/clientes/01_lidera/lidera/space/supabase/migrations/20260311100000_space_tables_prefix.sql`; doc completa `apps/clientes/01_lidera/lidera/space/docs/COMO_FUNCIONA_BANCO_E_ROLES.md`. Aplicado apenas no Supabase do cliente, não neste projeto.
- Script para listar tabelas: `apps/core/adventure/supabase/scripts/listar_todas_tabelas_public.sql`
- Diagnóstico CRM: `apps/core/adventure/supabase/scripts/diagnostico_crm_tables_rls.sql`
