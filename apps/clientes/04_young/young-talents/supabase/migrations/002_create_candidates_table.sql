-- Criar tabela de candidatos no schema young_talents
CREATE TABLE IF NOT EXISTS young_talents.candidates (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  full_name TEXT,
  email TEXT NOT NULL UNIQUE,
  email_secondary TEXT,
  phone TEXT NOT NULL,
  birth_date DATE,
  age INTEGER,
  marital_status TEXT,
  children_count TEXT,
  has_license TEXT,
  city TEXT,
  photo_url TEXT,
  education TEXT,
  schooling_level TEXT,
  institution TEXT,
  graduation_date DATE,
  is_studying TEXT,
  experience TEXT,
  courses TEXT,
  certifications TEXT,
  interest_areas TEXT,
  cv_url TEXT,
  portfolio_url TEXT,
  source TEXT,
  referral TEXT,
  salary_expectation TEXT,
  can_relocate TEXT,
  professional_references TEXT,
  type_of_app TEXT,
  free_field TEXT,
  status TEXT DEFAULT 'Inscrito',
  tags TEXT[] DEFAULT ARRAY[]::TEXT[],
  origin TEXT DEFAULT 'public_form',
  created_by TEXT DEFAULT 'Formulário Público',
  original_timestamp TIMESTAMPTZ,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Criar índices para melhor performance
CREATE INDEX IF NOT EXISTS idx_candidates_email ON young_talents.candidates(email);
CREATE INDEX IF NOT EXISTS idx_candidates_status ON young_talents.candidates(status);
CREATE INDEX IF NOT EXISTS idx_candidates_created_at ON young_talents.candidates(created_at);
CREATE INDEX IF NOT EXISTS idx_candidates_city ON young_talents.candidates(city);

-- Trigger para atualizar updated_at automaticamente
-- A função update_updated_at_column() já foi criada no arquivo 001_create_schema.sql
DROP TRIGGER IF EXISTS update_candidates_updated_at ON young_talents.candidates;
CREATE TRIGGER update_candidates_updated_at
  BEFORE UPDATE ON young_talents.candidates
  FOR EACH ROW
  EXECUTE FUNCTION young_talents.update_updated_at_column();

-- Habilitar RLS
ALTER TABLE young_talents.candidates ENABLE ROW LEVEL SECURITY;

-- Políticas RLS (DROP IF EXISTS para permitir reaplicar a migration)
DROP POLICY IF EXISTS "Usuários autenticados podem ler candidatos" ON young_talents.candidates;
CREATE POLICY "Usuários autenticados podem ler candidatos"
  ON young_talents.candidates
  FOR SELECT
  TO authenticated
  USING (true);

DROP POLICY IF EXISTS "Admin e editor podem inserir candidatos" ON young_talents.candidates;
CREATE POLICY "Admin e editor podem inserir candidatos"
  ON young_talents.candidates
  FOR INSERT
  TO authenticated
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM young_talents.user_roles
      WHERE user_roles.user_id = auth.uid()
      AND user_roles.role IN ('admin', 'editor')
    )
  );

DROP POLICY IF EXISTS "Admin e editor podem atualizar candidatos" ON young_talents.candidates;
CREATE POLICY "Admin e editor podem atualizar candidatos"
  ON young_talents.candidates
  FOR UPDATE
  TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM young_talents.user_roles
      WHERE user_roles.user_id = auth.uid()
      AND user_roles.role IN ('admin', 'editor')
    )
  );

DROP POLICY IF EXISTS "Apenas admin pode deletar candidatos" ON young_talents.candidates;
CREATE POLICY "Apenas admin pode deletar candidatos"
  ON young_talents.candidates
  FOR DELETE
  TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM young_talents.user_roles
      WHERE user_roles.user_id = auth.uid()
      AND user_roles.role = 'admin'
    )
  );

DROP POLICY IF EXISTS "Formulário público pode inserir candidatos" ON young_talents.candidates;
CREATE POLICY "Formulário público pode inserir candidatos"
  ON young_talents.candidates
  FOR INSERT
  TO anon
  WITH CHECK (true);
