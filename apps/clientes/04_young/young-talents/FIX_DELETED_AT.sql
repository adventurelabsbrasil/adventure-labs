-- ============================================
-- SCRIPT PARA CORRIGIR deleted_at EM CANDIDATES
-- Execute este script no Supabase SQL Editor
-- ============================================

-- 1. Verificar se a tabela candidates existe e adicionar coluna deleted_at
DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.tables 
    WHERE table_schema = 'young_talents' 
    AND table_name = 'candidates'
  ) THEN
    -- Tabela existe, adicionar coluna
    IF NOT EXISTS (
      SELECT 1 FROM information_schema.columns 
      WHERE table_schema = 'young_talents' 
      AND table_name = 'candidates' 
      AND column_name = 'deleted_at'
    ) THEN
      ALTER TABLE young_talents.candidates 
      ADD COLUMN deleted_at TIMESTAMPTZ;
      RAISE NOTICE 'Coluna deleted_at adicionada à tabela candidates';
    ELSE
      RAISE NOTICE 'Coluna deleted_at já existe na tabela candidates';
    END IF;
  ELSE
    RAISE EXCEPTION 'Tabela young_talents.candidates não existe!';
  END IF;
END $$;

-- 2. Criar índice para melhor performance
CREATE INDEX IF NOT EXISTS idx_candidates_deleted_at ON young_talents.candidates(deleted_at) 
WHERE deleted_at IS NULL;

-- 3. Atualizar a view public.candidates para incluir deleted_at
-- Primeiro verificar se a coluna existe antes de atualizar a view
DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns 
    WHERE table_schema = 'young_talents' 
    AND table_name = 'candidates' 
    AND column_name = 'deleted_at'
  ) THEN
    -- Coluna existe, atualizar view
    CREATE OR REPLACE VIEW public.candidates AS
    SELECT
      id, full_name, email, email_secondary, phone, birth_date, age,
      marital_status, children_count, has_license, city, photo_url,
      education, schooling_level, institution, graduation_date, is_studying,
      experience, courses, certifications, interest_areas, cv_url, portfolio_url,
      source, referral, salary_expectation, can_relocate, professional_references,
      type_of_app, free_field, status, tags, origin, created_by,
      original_timestamp, created_at, updated_at, deleted_at
    FROM young_talents.candidates;
    RAISE NOTICE 'View public.candidates atualizada com deleted_at';
  ELSE
    RAISE EXCEPTION 'Coluna deleted_at não existe na tabela candidates! Execute a parte 1 primeiro.';
  END IF;
END $$;

-- Verificar se funcionou
SELECT 
  column_name, 
  data_type, 
  is_nullable
FROM information_schema.columns 
WHERE table_schema = 'young_talents' 
  AND table_name = 'candidates' 
  AND column_name = 'deleted_at';

-- ============================================
-- VERIFICAR/CORRIGIR activity_log (se necessário)
-- ============================================

-- Verificar se a tabela activity_log existe antes de criar a view
DO $$
BEGIN
  -- Verificar se a tabela existe
  IF EXISTS (
    SELECT 1 FROM information_schema.tables 
    WHERE table_schema = 'young_talents' 
    AND table_name = 'activity_log'
  ) THEN
    -- Tabela existe, criar/atualizar view
    IF NOT EXISTS (
      SELECT 1 FROM information_schema.views 
      WHERE table_schema = 'public' 
      AND table_name = 'activity_log'
    ) THEN
      CREATE OR REPLACE VIEW public.activity_log AS
      SELECT id, user_id, user_email, user_name, action, entity_type, entity_id, details, meta, created_at
      FROM young_talents.activity_log;
      
      GRANT SELECT ON public.activity_log TO authenticated;
      
      RAISE NOTICE 'View public.activity_log criada';
    ELSE
      RAISE NOTICE 'View public.activity_log já existe';
    END IF;
  ELSE
    RAISE NOTICE 'Tabela young_talents.activity_log não existe - pulando criação da view';
  END IF;
END $$;
