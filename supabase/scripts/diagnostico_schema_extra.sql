-- =============================================================================
-- DIAGNÓSTICO EXTRA — Supabase (ftctmseyrqhckutpfdeq)
-- =============================================================================
-- Use depois do diagnostico_schema.sql quando precisar de:
-- índices, views, funções, snapshot só das tabelas adv_*, ou tamanhos.
-- Todas as queries são somente leitura (SELECT).
-- =============================================================================

-- 10) ÍNDICES NO PUBLIC (inclui PKs, FKs, índices explícitos)
SELECT
  schemaname,
  tablename,
  indexname,
  indexdef
FROM pg_indexes
WHERE schemaname = 'public'
ORDER BY tablename, indexname;

-- 11) VIEWS NO PUBLIC (se existirem)
SELECT
  table_schema,
  table_name AS view_name,
  view_definition
FROM information_schema.views
WHERE table_schema = 'public'
ORDER BY table_name;

-- 12) FUNÇÕES NO SCHEMA PUBLIC (nome e assinatura; útil para triggers e lógica)
SELECT
  n.nspname AS schema_name,
  p.proname AS function_name,
  pg_get_function_identity_arguments(p.oid) AS arguments
FROM pg_proc p
JOIN pg_namespace n ON n.oid = p.pronamespace
WHERE n.nspname = 'public'
ORDER BY p.proname;

-- 13) SÓ TABELAS adv_* — nome e colunas (snapshot do “schema do admin”)
SELECT
  table_name,
  column_name,
  data_type,
  is_nullable,
  column_default
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name LIKE 'adv\_%' ESCAPE '\'
ORDER BY table_name, ordinal_position;

-- 14) Contagem de linhas nas tabelas adv_* (só tabelas que existem; prefixo estrito "adv_")
DO $$
DECLARE
  r RECORD;
  c BIGINT;
BEGIN
  CREATE TEMP TABLE IF NOT EXISTS _adv_row_counts (table_name text, row_count bigint);
  TRUNCATE _adv_row_counts;
  FOR r IN
    SELECT t.table_name
    FROM information_schema.tables t
    WHERE t.table_schema = 'public' AND t.table_name LIKE 'adv\_%' ESCAPE '\'
  LOOP
    EXECUTE format('SELECT count(*) FROM public.%I', r.table_name) INTO c;
    INSERT INTO _adv_row_counts VALUES (r.table_name, c);
  END LOOP;
END $$;
SELECT * FROM _adv_row_counts ORDER BY table_name;
DROP TABLE IF EXISTS _adv_row_counts;
