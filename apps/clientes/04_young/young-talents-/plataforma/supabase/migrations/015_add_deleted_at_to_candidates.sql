-- Adicionar coluna deleted_at à tabela candidates (soft delete)
-- IMPORTANTE: Execute este script ANTES de atualizar a view
ALTER TABLE young_talents.candidates 
ADD COLUMN IF NOT EXISTS deleted_at TIMESTAMPTZ;

-- Criar índice para melhor performance em queries que filtram deleted_at
CREATE INDEX IF NOT EXISTS idx_candidates_deleted_at ON young_talents.candidates(deleted_at) 
WHERE deleted_at IS NULL;

-- Atualizar a view para incluir deleted_at
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
