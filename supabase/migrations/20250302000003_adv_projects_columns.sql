-- Adiciona às tabelas adv_projects as colunas esperadas pelo admin (app).
-- Rode só se adv_projects já existir mas não tiver essas colunas.

-- Enum da etapa do projeto (só se não existir)
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'adv_project_stage') THEN
    CREATE TYPE adv_project_stage AS ENUM ('briefing', 'implementacao', 'execucao', 'relatorio');
  END IF;
END $$;

-- Colunas em adv_projects (cada ADD COLUMN IF NOT EXISTS é seguro rodar mais de uma vez)
ALTER TABLE adv_projects ADD COLUMN IF NOT EXISTS tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';
ALTER TABLE adv_projects ADD COLUMN IF NOT EXISTS client_id UUID REFERENCES adv_clients(id) ON DELETE SET NULL;
ALTER TABLE adv_projects ADD COLUMN IF NOT EXISTS nome TEXT;
ALTER TABLE adv_projects ADD COLUMN IF NOT EXISTS stage adv_project_stage NOT NULL DEFAULT 'briefing';
ALTER TABLE adv_projects ADD COLUMN IF NOT EXISTS sub_status TEXT;
ALTER TABLE adv_projects ADD COLUMN IF NOT EXISTS assignee_email TEXT;
ALTER TABLE adv_projects ADD COLUMN IF NOT EXISTS link TEXT;
ALTER TABLE adv_projects ADD COLUMN IF NOT EXISTS created_at TIMESTAMPTZ NOT NULL DEFAULT now();
ALTER TABLE adv_projects ADD COLUMN IF NOT EXISTS updated_at TIMESTAMPTZ NOT NULL DEFAULT now();

-- Se a tabela tiver "name" em vez de "nome", copiar para nome
DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'adv_projects' AND column_name = 'name'
  ) AND EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'adv_projects' AND column_name = 'nome'
  ) THEN
    UPDATE adv_projects SET nome = name WHERE nome IS NULL AND name IS NOT NULL;
  END IF;
END $$;

-- Garantir nome preenchido e NOT NULL (app espera nome obrigatório)
UPDATE adv_projects SET nome = COALESCE(nome, '');
ALTER TABLE adv_projects ALTER COLUMN nome SET DEFAULT '';
ALTER TABLE adv_projects ALTER COLUMN nome SET NOT NULL;

-- Índices para filtros
CREATE INDEX IF NOT EXISTS idx_adv_projects_tenant ON adv_projects(tenant_id);
CREATE INDEX IF NOT EXISTS idx_adv_projects_client ON adv_projects(client_id);
CREATE INDEX IF NOT EXISTS idx_adv_projects_stage ON adv_projects(stage);

-- Trigger updated_at
CREATE OR REPLACE FUNCTION adv_set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS adv_projects_updated_at ON adv_projects;
CREATE TRIGGER adv_projects_updated_at
  BEFORE UPDATE ON adv_projects
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

-- RLS (ativa e políticas para authenticated)
ALTER TABLE adv_projects ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS adv_projects_select ON adv_projects;
DROP POLICY IF EXISTS adv_projects_insert ON adv_projects;
DROP POLICY IF EXISTS adv_projects_update ON adv_projects;
DROP POLICY IF EXISTS adv_projects_delete ON adv_projects;
CREATE POLICY adv_projects_select ON adv_projects FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_projects_insert ON adv_projects FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_projects_update ON adv_projects FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_projects_delete ON adv_projects FOR DELETE TO authenticated USING (true);
