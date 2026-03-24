-- ============================================
-- SCRIPT SIMPLES PARA ADICIONAR deleted_at
-- Execute este script no Supabase SQL Editor
-- ============================================

-- PASSO 1: Adicionar coluna deleted_at (ignora erro se já existir)
DO $$
BEGIN
  BEGIN
    ALTER TABLE young_talents.candidates 
    ADD COLUMN deleted_at TIMESTAMPTZ;
    RAISE NOTICE '✓ Coluna deleted_at adicionada';
  EXCEPTION
    WHEN duplicate_column THEN
      RAISE NOTICE '✓ Coluna deleted_at já existe';
  END;
END $$;

-- PASSO 2: Criar índice
CREATE INDEX IF NOT EXISTS idx_candidates_deleted_at 
ON young_talents.candidates(deleted_at) 
WHERE deleted_at IS NULL;

-- PASSO 3: Atualizar view (só funciona se a coluna existir)
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
  'SUCESSO' as status,
  column_name, 
  data_type
FROM information_schema.columns 
WHERE table_schema = 'young_talents' 
  AND table_name = 'candidates' 
  AND column_name = 'deleted_at';
