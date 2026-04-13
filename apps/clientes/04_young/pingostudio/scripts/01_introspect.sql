-- ==========================================================================
-- PINGOSTUDIO-264 — Introspecção do schema da Pingolead no Supabase
-- ==========================================================================
-- Objetivo: descobrir quais schemas/tabelas/colunas a Pingolead já criou no
-- projeto `vvtympzatclvjaqucebr` para planejar os grants do `looker_reader`
-- e o remapeamento de fields no novo Looker Studio.
--
-- Como rodar (a partir de uma máquina com acesso à internet):
--
--   export PGPASSWORD='lg9S6Iz8y4LKSjxu'
--   psql "postgresql://postgres@db.vvtympzatclvjaqucebr.supabase.co:5432/postgres?sslmode=require" \
--        -f apps/clientes/04_young/pingostudio/scripts/01_introspect.sql \
--        > apps/clientes/04_young/pingostudio/scripts/01_introspect.out.txt
--
-- Se o direct connection falhar (IPv6), usar pooler IPv4:
--
--   psql "postgresql://postgres.vvtympzatclvjaqucebr@aws-0-sa-east-1.pooler.supabase.com:6543/postgres?sslmode=require" \
--        -f apps/clientes/04_young/pingostudio/scripts/01_introspect.sql \
--        > apps/clientes/04_young/pingostudio/scripts/01_introspect.out.txt
--
-- (Confirmar host/região do pooler em Supabase dashboard → Settings → Database → Connection pooling)
--
-- Envie o arquivo .out.txt de volta para analisar e preparar os grants.
-- ==========================================================================

\echo '======================================'
\echo '1. Schemas que NÃO são do Supabase/system'
\echo '======================================'
SELECT
  schema_name,
  schema_owner
FROM information_schema.schemata
WHERE schema_name NOT IN (
  'pg_catalog', 'information_schema', 'pg_toast',
  'auth', 'storage', 'realtime', 'supabase_functions', 'extensions',
  'graphql', 'graphql_public', 'pgsodium', 'pgsodium_masks',
  'vault', 'net', 'pgbouncer', '_realtime', '_analytics'
)
AND schema_name NOT LIKE 'pg_%'
ORDER BY schema_name;

\echo ''
\echo '======================================'
\echo '2. Tabelas por schema (public + quaisquer schemas Pingolead)'
\echo '======================================'
SELECT
  table_schema,
  table_name,
  table_type
FROM information_schema.tables
WHERE table_schema NOT IN (
  'pg_catalog', 'information_schema', 'pg_toast',
  'auth', 'storage', 'realtime', 'supabase_functions', 'extensions',
  'graphql', 'graphql_public', 'pgsodium', 'pgsodium_masks',
  'vault', 'net', 'pgbouncer', '_realtime', '_analytics'
)
ORDER BY table_schema, table_name;

\echo ''
\echo '======================================'
\echo '3. Colunas de cada tabela (schema + table + column + type + nullable)'
\echo '======================================'
SELECT
  table_schema,
  table_name,
  column_name,
  data_type,
  is_nullable,
  column_default
FROM information_schema.columns
WHERE table_schema NOT IN (
  'pg_catalog', 'information_schema', 'pg_toast',
  'auth', 'storage', 'realtime', 'supabase_functions', 'extensions',
  'graphql', 'graphql_public', 'pgsodium', 'pgsodium_masks',
  'vault', 'net', 'pgbouncer', '_realtime', '_analytics'
)
ORDER BY table_schema, table_name, ordinal_position;

\echo ''
\echo '======================================'
\echo '4. Primary keys e constraints'
\echo '======================================'
SELECT
  tc.table_schema,
  tc.table_name,
  tc.constraint_type,
  tc.constraint_name,
  kcu.column_name
FROM information_schema.table_constraints tc
LEFT JOIN information_schema.key_column_usage kcu
  ON tc.constraint_name = kcu.constraint_name
 AND tc.table_schema = kcu.table_schema
WHERE tc.table_schema NOT IN (
  'pg_catalog', 'information_schema', 'pg_toast',
  'auth', 'storage', 'realtime', 'supabase_functions', 'extensions',
  'graphql', 'graphql_public', 'pgsodium', 'pgsodium_masks',
  'vault', 'net', 'pgbouncer', '_realtime', '_analytics'
)
ORDER BY tc.table_schema, tc.table_name, tc.constraint_type;

\echo ''
\echo '======================================'
\echo '5. Linhas por tabela (aproximado via pg_class.reltuples)'
\echo '======================================'
SELECT
  n.nspname AS schema_name,
  c.relname AS table_name,
  c.reltuples::BIGINT AS estimated_rows,
  pg_size_pretty(pg_total_relation_size(c.oid)) AS total_size
FROM pg_class c
JOIN pg_namespace n ON n.oid = c.relnamespace
WHERE c.relkind = 'r'
  AND n.nspname NOT IN (
    'pg_catalog', 'information_schema', 'pg_toast',
    'auth', 'storage', 'realtime', 'supabase_functions', 'extensions',
    'graphql', 'graphql_public', 'pgsodium', 'pgsodium_masks',
    'vault', 'net', 'pgbouncer', '_realtime', '_analytics'
  )
ORDER BY c.reltuples DESC, n.nspname, c.relname;

\echo ''
\echo '======================================'
\echo '6. Status de RLS por tabela (crítico para decidir GRANTs)'
\echo '======================================'
SELECT
  n.nspname AS schema_name,
  c.relname AS table_name,
  c.relrowsecurity AS rls_enabled,
  c.relforcerowsecurity AS rls_forced
FROM pg_class c
JOIN pg_namespace n ON n.oid = c.relnamespace
WHERE c.relkind = 'r'
  AND n.nspname NOT IN (
    'pg_catalog', 'information_schema', 'pg_toast',
    'auth', 'storage', 'realtime', 'supabase_functions', 'extensions',
    'graphql', 'graphql_public', 'pgsodium', 'pgsodium_masks',
    'vault', 'net', 'pgbouncer', '_realtime', '_analytics'
  )
ORDER BY n.nspname, c.relname;

\echo ''
\echo '======================================'
\echo '7. Policies RLS existentes'
\echo '======================================'
SELECT
  schemaname,
  tablename,
  policyname,
  permissive,
  cmd
FROM pg_policies
WHERE schemaname NOT IN (
  'pg_catalog', 'information_schema', 'pg_toast',
  'auth', 'storage', 'realtime', 'supabase_functions', 'extensions',
  'graphql', 'graphql_public', 'pgsodium', 'pgsodium_masks',
  'vault', 'net', 'pgbouncer', '_realtime', '_analytics'
)
ORDER BY schemaname, tablename, policyname;

\echo ''
\echo '======================================'
\echo '8. Roles existentes (para verificar se looker_reader já existe)'
\echo '======================================'
SELECT
  rolname,
  rolsuper,
  rolcreaterole,
  rolcreatedb,
  rolcanlogin,
  rolbypassrls
FROM pg_roles
WHERE rolname NOT LIKE 'pg_%'
  AND rolname NOT IN ('anon', 'authenticated', 'authenticator', 'dashboard_user', 'service_role', 'supabase_admin', 'supabase_auth_admin', 'supabase_storage_admin', 'supabase_read_only_user', 'supabase_replication_admin', 'supabase_realtime_admin', 'supabase_etl_admin', 'pgsodium_keyholder', 'pgsodium_keyiduser', 'pgsodium_keymaker')
ORDER BY rolname;
