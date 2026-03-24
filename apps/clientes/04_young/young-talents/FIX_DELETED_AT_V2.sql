-- ============================================
-- SCRIPT CORRIGIDO PARA ADICIONAR deleted_at
-- Execute este script no Supabase SQL Editor
-- ============================================

-- PASSO 1: Adicionar coluna deleted_at (forçando mesmo se já existir)
DO $$
BEGIN
  -- Verificar se a tabela existe
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.tables 
    WHERE table_schema = 'young_talents' 
    AND table_name = 'candidates'
  ) THEN
    RAISE EXCEPTION 'Tabela young_talents.candidates não existe!';
  END IF;

  -- Tentar adicionar a coluna (pode dar erro se já existir, mas vamos ignorar)
  BEGIN
    ALTER TABLE young_talents.candidates 
    ADD COLUMN deleted_at TIMESTAMPTZ;
    RAISE NOTICE 'Coluna deleted_at adicionada com sucesso';
  EXCEPTION
    WHEN duplicate_column THEN
      RAISE NOTICE 'Coluna deleted_at já existe - continuando...';
  END;
END $$;

-- PASSO 2: Criar índice (se não existir)
CREATE INDEX IF NOT EXISTS idx_candidates_deleted_at 
ON young_talents.candidates(deleted_at) 
WHERE deleted_at IS NULL;

-- PASSO 3: Verificar se a coluna existe e atualizar a view
DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns 
    WHERE table_schema = 'young_talents' 
    AND table_name = 'candidates' 
    AND column_name = 'deleted_at'
  ) THEN
    -- Coluna existe, atualizar view (fora do bloco DO para evitar problemas com EXECUTE)
    RAISE NOTICE 'Coluna deleted_at encontrada - atualizando view...';
  ELSE
    RAISE EXCEPTION 'ERRO: Coluna deleted_at não foi criada! Verifique os logs acima.';
  END IF;
END $$;

-- Atualizar a view (fora do bloco DO)
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

-- PASSO 4: Verificar se funcionou
SELECT 
  'SUCESSO: Coluna deleted_at existe' as status,
  column_name, 
  data_type, 
  is_nullable
FROM information_schema.columns 
WHERE table_schema = 'young_talents' 
  AND table_name = 'candidates' 
  AND column_name = 'deleted_at';

-- PASSO 5: Verificar activity_log (opcional - não vai dar erro se não existir)
DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.tables 
    WHERE table_schema = 'young_talents' 
    AND table_name = 'activity_log'
  ) THEN
    -- Tabela existe, criar/atualizar view se necessário
    CREATE OR REPLACE VIEW public.activity_log AS
    SELECT id, user_id, user_email, user_name, action, entity_type, entity_id, details, meta, created_at
    FROM young_talents.activity_log;
    
    GRANT SELECT ON public.activity_log TO authenticated;
    
    RAISE NOTICE 'View public.activity_log criada/atualizada';
  ELSE
    RAISE NOTICE 'Tabela young_talents.activity_log não existe - isso é normal se você não usa activity_log';
  END IF;
END $$;
