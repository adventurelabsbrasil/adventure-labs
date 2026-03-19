-- =============================================================================
-- DIAGNÓSTICO RLS E COLUNAS CRM — Supabase (ftctmseyrqhckutpfdeq)
-- =============================================================================
-- Somente leitura. Rode no SQL Editor e use os resultados para:
-- 1) Preencher seções 4 e 5 do estado_schema_template.md (queries A e B)
-- 2) Investigar o erro "column project_id does not exist" do supabase-rls-policies.sql (query C)
-- 3) Cruzar tabelas/colunas com os apps Admin e Adventure (query D; ver docs/SUPABASE_APPS_ALINHAMENTO.md)
--
-- Resultados já salvos neste diretório (para referência):
--   - queryC_resultado.json = resultado da query C (colunas das tabelas CRM)
--   - queryD_resultado      = resultado da query D (tabelas referenciadas pelos apps, com column_count)
-- =============================================================================

-- -----------------------------------------------------------------------------
-- QUERY A — Políticas RLS (igual à query 4 do diagnostico_schema.sql)
-- Resultado: colar na seção "## 4. Políticas RLS" do estado_schema_template.md
-- -----------------------------------------------------------------------------
SELECT
  schemaname,
  tablename,
  policyname,
  permissive,
  roles,
  cmd,
  qual AS using_expression,
  with_check AS with_check_expression
FROM pg_policies
ORDER BY schemaname, tablename, policyname;

-- -----------------------------------------------------------------------------
-- QUERY B — Tabelas com RLS ligado (igual à query 5 do diagnostico_schema.sql)
-- Resultado: colar na seção "## 5. RLS ativo por tabela" do estado_schema_template.md
-- -----------------------------------------------------------------------------
SELECT
  c.relnamespace::regnamespace::text AS schema_name,
  c.relname AS table_name,
  c.relrowsecurity AS rls_enabled,
  c.relforcerowsecurity AS rls_forced
FROM pg_class c
JOIN pg_namespace n ON n.oid = c.relnamespace
WHERE c.relkind = 'r'
  AND n.nspname IN ('public', 'auth', 'storage')
ORDER BY 1, 2;

-- -----------------------------------------------------------------------------
-- QUERY C — Colunas das tabelas usadas pelo supabase-rls-policies.sql (CRM)
-- Resultado: usar para identificar em qual tabela a coluna "project_id" não existe
--            ou tem outro nome (erro ao rodar o script RLS do CRM).
-- Tabelas: users, projects, project_users, deals, contacts, companies, tasks,
--          services, proposals, funnels, close_reasons
-- -----------------------------------------------------------------------------
SELECT
  table_schema,
  table_name,
  column_name,
  data_type,
  is_nullable
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name IN (
    'users',
    'projects',
    'project_users',
    'deals',
    'contacts',
    'companies',
    'tasks',
    'services',
    'proposals',
    'funnels',
    'close_reasons'
  )
ORDER BY table_name, ordinal_position;

-- -----------------------------------------------------------------------------
-- QUERY D — Tabelas referenciadas pelos apps Admin (adv_*) e Adventure (mapeamento db.ts)
-- Resultado: cruzar com a lista de tabelas que cada app usa; confirmar que todas existem.
-- Admin: adv_* ; Adventure: users, projects, project_users, project_members, tenants,
--        tenant_users, contacts, companies, deals, tasks, services, proposals, funnels,
--        close_reasons, activity_history, whatsapp_conversations, time_bank_*, etc.
-- -----------------------------------------------------------------------------
SELECT
  t.table_schema,
  t.table_name,
  (SELECT count(*)
   FROM information_schema.columns c
   WHERE c.table_schema = t.table_schema
     AND c.table_name = t.table_name) AS column_count
FROM information_schema.tables t
WHERE t.table_schema = 'public'
  AND t.table_type = 'BASE TABLE'
  AND (
    t.table_name LIKE 'adv\_%' ESCAPE '\'
    OR t.table_name IN (
      'users', 'projects', 'project_users', 'project_members',
      'tenants', 'tenant_users', 'contacts', 'companies', 'deals',
      'tasks', 'services', 'proposals', 'funnels', 'close_reasons',
      'activity_history', 'whatsapp_conversations',
      'time_bank_employees', 'time_bank_locations', 'time_bank_entries', 'time_bank_usages'
    )
  )
ORDER BY t.table_name;
