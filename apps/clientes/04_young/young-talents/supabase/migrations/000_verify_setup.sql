-- Script de Verificação - Execute após todas as migrations
-- Este script verifica se tudo foi criado corretamente

-- Verificar se o schema existe
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM information_schema.schemata WHERE schema_name = 'young_talents') THEN
    RAISE EXCEPTION 'Schema young_talents não existe!';
  ELSE
    RAISE NOTICE '✅ Schema young_talents existe';
  END IF;
END $$;

-- Verificar se a função existe
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_proc p
    JOIN pg_namespace n ON p.pronamespace = n.oid
    WHERE n.nspname = 'young_talents'
    AND p.proname = 'update_updated_at_column'
  ) THEN
    RAISE EXCEPTION 'Função update_updated_at_column não existe!';
  ELSE
    RAISE NOTICE '✅ Função update_updated_at_column existe';
  END IF;
END $$;

-- Verificar se a tabela candidates existe
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.tables
    WHERE table_schema = 'young_talents'
    AND table_name = 'candidates'
  ) THEN
    RAISE EXCEPTION 'Tabela candidates não existe!';
  ELSE
    RAISE NOTICE '✅ Tabela candidates existe';
  END IF;
END $$;

-- Verificar se a tabela user_roles existe
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.tables
    WHERE table_schema = 'young_talents'
    AND table_name = 'user_roles'
  ) THEN
    RAISE EXCEPTION 'Tabela user_roles não existe!';
  ELSE
    RAISE NOTICE '✅ Tabela user_roles existe';
  END IF;
END $$;

-- Verificar colunas importantes da tabela candidates
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'young_talents'
    AND table_name = 'candidates'
    AND column_name = 'professional_references'
  ) THEN
    RAISE EXCEPTION 'Coluna professional_references não existe em candidates!';
  ELSE
    RAISE NOTICE '✅ Coluna professional_references existe';
  END IF;
END $$;

-- Verificar se RLS está habilitado
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_tables
    WHERE schemaname = 'young_talents'
    AND tablename = 'candidates'
    AND rowsecurity = true
  ) THEN
    RAISE WARNING 'RLS não está habilitado na tabela candidates!';
  ELSE
    RAISE NOTICE '✅ RLS habilitado na tabela candidates';
  END IF;
END $$;

-- Verificar políticas RLS
DO $$
DECLARE
  policy_count INTEGER;
BEGIN
  SELECT COUNT(*) INTO policy_count
  FROM pg_policies
  WHERE schemaname = 'young_talents'
  AND tablename = 'candidates';
  
  IF policy_count < 4 THEN
    RAISE WARNING 'Número de políticas RLS em candidates parece insuficiente: %', policy_count;
  ELSE
    RAISE NOTICE '✅ % políticas RLS encontradas na tabela candidates', policy_count;
  END IF;
END $$;

-- Listar todas as políticas criadas
SELECT 
  schemaname,
  tablename,
  policyname,
  permissive,
  roles,
  cmd
FROM pg_policies
WHERE schemaname = 'young_talents'
ORDER BY tablename, policyname;

-- Resumo final
SELECT 
  'young_talents' as schema,
  COUNT(DISTINCT table_name) as total_tables,
  COUNT(DISTINCT indexname) as total_indexes,
  COUNT(DISTINCT policyname) as total_policies
FROM information_schema.tables t
LEFT JOIN pg_indexes i ON i.schemaname = t.table_schema AND i.tablename = t.table_name
LEFT JOIN pg_policies p ON p.schemaname = t.table_schema AND p.tablename = t.table_name
WHERE t.table_schema = 'young_talents'
AND t.table_type = 'BASE TABLE';
