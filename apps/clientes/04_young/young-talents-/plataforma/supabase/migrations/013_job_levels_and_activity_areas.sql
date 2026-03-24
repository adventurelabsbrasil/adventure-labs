-- Níveis de cargo (menu suspenso) e Áreas de atuação (diferente de cargo/position)

-- Níveis de cargo
CREATE TABLE IF NOT EXISTS young_talents.job_levels (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL UNIQUE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_job_levels_name ON young_talents.job_levels(name);

-- Áreas de atuação (diferente de cargo/position)
CREATE TABLE IF NOT EXISTS young_talents.activity_areas (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL UNIQUE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_activity_areas_name ON young_talents.activity_areas(name);

-- Posições (cargos): referenciar nível e área de atuação
ALTER TABLE young_talents.positions
  ADD COLUMN IF NOT EXISTS level_id UUID REFERENCES young_talents.job_levels(id) ON DELETE SET NULL,
  ADD COLUMN IF NOT EXISTS activity_area_id UUID REFERENCES young_talents.activity_areas(id) ON DELETE SET NULL;
CREATE INDEX IF NOT EXISTS idx_positions_level_id ON young_talents.positions(level_id);
CREATE INDEX IF NOT EXISTS idx_positions_activity_area_id ON young_talents.positions(activity_area_id);

-- Triggers updated_at
CREATE TRIGGER update_job_levels_updated_at
  BEFORE UPDATE ON young_talents.job_levels
  FOR EACH ROW EXECUTE FUNCTION young_talents.update_updated_at_column();
CREATE TRIGGER update_activity_areas_updated_at
  BEFORE UPDATE ON young_talents.activity_areas
  FOR EACH ROW EXECUTE FUNCTION young_talents.update_updated_at_column();

-- RLS e grants
ALTER TABLE young_talents.job_levels ENABLE ROW LEVEL SECURITY;
ALTER TABLE young_talents.activity_areas ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Authenticated read job_levels" ON young_talents.job_levels FOR SELECT TO authenticated USING (true);
CREATE POLICY "Authenticated insert job_levels" ON young_talents.job_levels FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY "Authenticated update job_levels" ON young_talents.job_levels FOR UPDATE TO authenticated USING (true);
CREATE POLICY "Authenticated delete job_levels" ON young_talents.job_levels FOR DELETE TO authenticated USING (true);

CREATE POLICY "Authenticated read activity_areas" ON young_talents.activity_areas FOR SELECT TO authenticated USING (true);
CREATE POLICY "Authenticated insert activity_areas" ON young_talents.activity_areas FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY "Authenticated update activity_areas" ON young_talents.activity_areas FOR UPDATE TO authenticated USING (true);
CREATE POLICY "Authenticated delete activity_areas" ON young_talents.activity_areas FOR DELETE TO authenticated USING (true);

GRANT SELECT, INSERT, UPDATE, DELETE ON young_talents.job_levels TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON young_talents.activity_areas TO authenticated;

-- Seed iniciais
INSERT INTO young_talents.job_levels (name) VALUES
  ('Júnior'), ('Pleno'), ('Sênior'), ('Especialista'), ('Coordenador'), ('Gerente'), ('Diretor'), ('Estagiário'), ('Trainee')
ON CONFLICT (name) DO NOTHING;

INSERT INTO young_talents.activity_areas (name) VALUES
  ('Administrativo'), ('Comercial'), ('Financeiro'), ('TI / Tecnologia'), ('Recursos Humanos'), ('Operações'), ('Marketing'), ('Jurídico'), ('Comunicação')
ON CONFLICT (name) DO NOTHING;
