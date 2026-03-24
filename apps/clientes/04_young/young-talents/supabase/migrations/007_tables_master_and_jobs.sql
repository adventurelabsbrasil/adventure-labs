-- Tabelas de apoio e vagas no schema young_talents (interconectadas)

-- Empresas
CREATE TABLE IF NOT EXISTS young_talents.companies (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL,
  city TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_companies_name ON young_talents.companies(name);

-- Cidades (cadastro mestre)
CREATE TABLE IF NOT EXISTS young_talents.cities (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL UNIQUE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_cities_name ON young_talents.cities(name);

-- Setores
CREATE TABLE IF NOT EXISTS young_talents.sectors (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL UNIQUE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_sectors_name ON young_talents.sectors(name);

-- Cargos (positions / roles)
CREATE TABLE IF NOT EXISTS young_talents.positions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL,
  level TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_positions_name ON young_talents.positions(name);

-- Vagas (jobs)
CREATE TABLE IF NOT EXISTS young_talents.jobs (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  title TEXT NOT NULL,
  code TEXT,
  company TEXT NOT NULL,
  city TEXT,
  interest_area TEXT,
  sector TEXT,
  position TEXT,
  "function" TEXT,
  status TEXT NOT NULL DEFAULT 'Aberta' CHECK (status IN ('Aberta', 'Preenchida', 'Cancelada', 'Fechada')),
  contract_type TEXT,
  work_model TEXT,
  vacancies INTEGER DEFAULT 1,
  priority TEXT,
  description TEXT,
  requirements TEXT,
  benefits TEXT,
  salary_range TEXT,
  workload TEXT,
  deadline DATE,
  recruiter TEXT,
  hiring_manager TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  deleted_at TIMESTAMPTZ
);
CREATE INDEX IF NOT EXISTS idx_jobs_status ON young_talents.jobs(status);
CREATE INDEX IF NOT EXISTS idx_jobs_company ON young_talents.jobs(company);
CREATE INDEX IF NOT EXISTS idx_jobs_created_at ON young_talents.jobs(created_at);

-- Triggers updated_at: drop all first (idempotent), then create
DO $$
BEGIN
  DROP TRIGGER IF EXISTS update_companies_updated_at ON young_talents.companies;
  DROP TRIGGER IF EXISTS update_cities_updated_at ON young_talents.cities;
  DROP TRIGGER IF EXISTS update_sectors_updated_at ON young_talents.sectors;
  DROP TRIGGER IF EXISTS update_positions_updated_at ON young_talents.positions;
  DROP TRIGGER IF EXISTS update_jobs_updated_at ON young_talents.jobs;
END $$;
CREATE TRIGGER update_companies_updated_at
  BEFORE UPDATE ON young_talents.companies
  FOR EACH ROW EXECUTE FUNCTION young_talents.update_updated_at_column();
CREATE TRIGGER update_cities_updated_at
  BEFORE UPDATE ON young_talents.cities
  FOR EACH ROW EXECUTE FUNCTION young_talents.update_updated_at_column();
CREATE TRIGGER update_sectors_updated_at
  BEFORE UPDATE ON young_talents.sectors
  FOR EACH ROW EXECUTE FUNCTION young_talents.update_updated_at_column();
CREATE TRIGGER update_positions_updated_at
  BEFORE UPDATE ON young_talents.positions
  FOR EACH ROW EXECUTE FUNCTION young_talents.update_updated_at_column();
CREATE TRIGGER update_jobs_updated_at
  BEFORE UPDATE ON young_talents.jobs
  FOR EACH ROW EXECUTE FUNCTION young_talents.update_updated_at_column();

-- RLS: apenas autenticados (admin/editor/viewer) leem e escrevem
ALTER TABLE young_talents.companies ENABLE ROW LEVEL SECURITY;
ALTER TABLE young_talents.cities ENABLE ROW LEVEL SECURITY;
ALTER TABLE young_talents.sectors ENABLE ROW LEVEL SECURITY;
ALTER TABLE young_talents.positions ENABLE ROW LEVEL SECURITY;
ALTER TABLE young_talents.jobs ENABLE ROW LEVEL SECURITY;

-- Políticas (DROP IF EXISTS para permitir reaplicar a migration)
DROP POLICY IF EXISTS "Authenticated read companies" ON young_talents.companies;
DROP POLICY IF EXISTS "Authenticated insert companies" ON young_talents.companies;
DROP POLICY IF EXISTS "Authenticated update companies" ON young_talents.companies;
DROP POLICY IF EXISTS "Authenticated delete companies" ON young_talents.companies;
CREATE POLICY "Authenticated read companies" ON young_talents.companies FOR SELECT TO authenticated USING (true);
CREATE POLICY "Authenticated insert companies" ON young_talents.companies FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY "Authenticated update companies" ON young_talents.companies FOR UPDATE TO authenticated USING (true);
CREATE POLICY "Authenticated delete companies" ON young_talents.companies FOR DELETE TO authenticated USING (true);

DROP POLICY IF EXISTS "Authenticated read cities" ON young_talents.cities;
DROP POLICY IF EXISTS "Authenticated insert cities" ON young_talents.cities;
DROP POLICY IF EXISTS "Authenticated update cities" ON young_talents.cities;
DROP POLICY IF EXISTS "Authenticated delete cities" ON young_talents.cities;
CREATE POLICY "Authenticated read cities" ON young_talents.cities FOR SELECT TO authenticated USING (true);
CREATE POLICY "Authenticated insert cities" ON young_talents.cities FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY "Authenticated update cities" ON young_talents.cities FOR UPDATE TO authenticated USING (true);
CREATE POLICY "Authenticated delete cities" ON young_talents.cities FOR DELETE TO authenticated USING (true);

DROP POLICY IF EXISTS "Authenticated read sectors" ON young_talents.sectors;
DROP POLICY IF EXISTS "Authenticated insert sectors" ON young_talents.sectors;
DROP POLICY IF EXISTS "Authenticated update sectors" ON young_talents.sectors;
DROP POLICY IF EXISTS "Authenticated delete sectors" ON young_talents.sectors;
CREATE POLICY "Authenticated read sectors" ON young_talents.sectors FOR SELECT TO authenticated USING (true);
CREATE POLICY "Authenticated insert sectors" ON young_talents.sectors FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY "Authenticated update sectors" ON young_talents.sectors FOR UPDATE TO authenticated USING (true);
CREATE POLICY "Authenticated delete sectors" ON young_talents.sectors FOR DELETE TO authenticated USING (true);

DROP POLICY IF EXISTS "Authenticated read positions" ON young_talents.positions;
DROP POLICY IF EXISTS "Authenticated insert positions" ON young_talents.positions;
DROP POLICY IF EXISTS "Authenticated update positions" ON young_talents.positions;
DROP POLICY IF EXISTS "Authenticated delete positions" ON young_talents.positions;
CREATE POLICY "Authenticated read positions" ON young_talents.positions FOR SELECT TO authenticated USING (true);
CREATE POLICY "Authenticated insert positions" ON young_talents.positions FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY "Authenticated update positions" ON young_talents.positions FOR UPDATE TO authenticated USING (true);
CREATE POLICY "Authenticated delete positions" ON young_talents.positions FOR DELETE TO authenticated USING (true);

DROP POLICY IF EXISTS "Authenticated read jobs" ON young_talents.jobs;
DROP POLICY IF EXISTS "Authenticated insert jobs" ON young_talents.jobs;
DROP POLICY IF EXISTS "Authenticated update jobs" ON young_talents.jobs;
DROP POLICY IF EXISTS "Authenticated delete jobs" ON young_talents.jobs;
CREATE POLICY "Authenticated read jobs" ON young_talents.jobs FOR SELECT TO authenticated USING (true);
CREATE POLICY "Authenticated insert jobs" ON young_talents.jobs FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY "Authenticated update jobs" ON young_talents.jobs FOR UPDATE TO authenticated USING (true);
CREATE POLICY "Authenticated delete jobs" ON young_talents.jobs FOR DELETE TO authenticated USING (true);

-- Grants para uso pelo client
GRANT USAGE ON SCHEMA young_talents TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON young_talents.companies TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON young_talents.cities TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON young_talents.sectors TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON young_talents.positions TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON young_talents.jobs TO authenticated;
