-- =============================================================================
-- DIAGNÓSTICO DO PROJETO SUPABASE (ftctmseyrqhckutpfdeq)
-- Adventure Labs — adventurelabs.com.br | admin em admin.adventurelabs.com.br
-- =============================================================================
-- Rode este arquivo no SQL Editor do Supabase e use os resultados para
-- documentar o estado atual de schemas, tabelas, colunas, RLS e auth.
-- Todas as queries são somente leitura (SELECT).
-- =============================================================================

-- 1) SCHEMAS DO PROJETO
-- (exclui schemas internos do sistema; inclui public, auth, storage, etc.)
SELECT
  n.nspname AS schema_name,
  pg_catalog.obj_description(n.oid, 'pg_namespace') AS comment
FROM pg_catalog.pg_namespace n
WHERE n.nspname NOT IN ('pg_toast', 'pg_temp_1', 'pg_toast_temp_1')
  AND n.nspname NOT LIKE 'pg_temp%'
  AND n.nspname NOT LIKE 'pg_toast%'
ORDER BY 1;

-- 2) TODAS AS TABELAS (schema + nome)
SELECT
  table_schema,
  table_name,
  (SELECT count(*) FROM information_schema.columns c
   WHERE c.table_schema = t.table_schema AND c.table_name = t.table_name) AS column_count
FROM information_schema.tables t
WHERE table_schema IN ('public', 'auth', 'storage', 'extensions', 'graphql_public')
  AND table_type = 'BASE TABLE'
ORDER BY table_schema, table_name;

-- 3) COLUNAS DE CADA TABELA (public e auth, para documentação)
SELECT
  table_schema,
  table_name,
  column_name,
  data_type,
  character_maximum_length,
  is_nullable,
  column_default
FROM information_schema.columns
WHERE table_schema IN ('public', 'auth')
ORDER BY table_schema, table_name, ordinal_position;

-- 4) POLÍTICAS RLS (quais tabelas têm RLS e quais políticas)
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

-- 5) TABELAS COM RLS LIGADO (sem política = bloqueado para todos)
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

-- 6) ESTRUTURA DO AUTH (apenas nomes de tabelas e colunas — sem dados sensíveis)
SELECT
  'auth' AS schema_name,
  table_name,
  column_name,
  data_type,
  is_nullable
FROM information_schema.columns
WHERE table_schema = 'auth'
ORDER BY table_name, ordinal_position;

-- 7) ENUMS CUSTOMIZADOS NO PUBLIC (tipos criados para adv_* etc.)
SELECT
  n.nspname AS schema_name,
  t.typname AS type_name,
  array_agg(e.enumlabel ORDER BY e.enumsortorder) AS enum_labels
FROM pg_type t
JOIN pg_enum e ON e.enumtypid = t.oid
JOIN pg_namespace n ON n.oid = t.typnamespace
WHERE n.nspname = 'public'
GROUP BY n.nspname, t.typname
ORDER BY 1, 2;

-- 8) TRIGGERS (função e tabela)
SELECT
  trigger_schema,
  trigger_name,
  event_manipulation,
  event_object_table,
  action_statement
FROM information_schema.triggers
WHERE trigger_schema = 'public'
ORDER BY event_object_table, trigger_name;

-- 9) FOREIGN KEYS (relacionamentos entre tabelas public)
SELECT
  tc.table_schema,
  tc.table_name AS from_table,
  kcu.column_name AS from_column,
  ccu.table_schema AS to_schema,
  ccu.table_name AS to_table,
  ccu.column_name AS to_column,
  tc.constraint_name
FROM information_schema.table_constraints tc
JOIN information_schema.key_column_usage kcu
  ON tc.constraint_name = kcu.constraint_name AND tc.table_schema = kcu.table_schema
JOIN information_schema.constraint_column_usage ccu
  ON ccu.constraint_name = tc.constraint_name AND ccu.table_schema = tc.table_schema
WHERE tc.constraint_type = 'FOREIGN KEY'
  AND tc.table_schema = 'public'
ORDER BY tc.table_name, tc.constraint_name;
