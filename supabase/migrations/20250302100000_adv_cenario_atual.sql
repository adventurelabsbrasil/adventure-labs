-- Estrutura para cenário atual: tipo_cliente, adv_products, adv_program_sessions, project_type/title/product_id
-- Ver: context/00_GESTAO_CORPORATIVA e plano "Estrutura dados cenário atual"

-- 1) Tipo de cliente: fixo | pontual
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'adv_client_tipo') THEN
    CREATE TYPE adv_client_tipo AS ENUM ('fixo', 'pontual');
  END IF;
END $$;

ALTER TABLE adv_clients ADD COLUMN IF NOT EXISTS tipo_cliente adv_client_tipo;

-- 2) Catálogo de produtos/serviços (programa, plano_assessoria, microsaas)
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'adv_product_tipo') THEN
    CREATE TYPE adv_product_tipo AS ENUM ('programa', 'plano_assessoria', 'microsaas');
  END IF;
END $$;

CREATE TABLE IF NOT EXISTS adv_products (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  nome TEXT NOT NULL,
  tipo adv_product_tipo NOT NULL,
  descricao TEXT,
  ativo BOOLEAN NOT NULL DEFAULT true,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_adv_products_tenant ON adv_products(tenant_id);
CREATE INDEX IF NOT EXISTS idx_adv_products_tipo ON adv_products(tipo);

DROP TRIGGER IF EXISTS adv_products_updated_at ON adv_products;
CREATE TRIGGER adv_products_updated_at
  BEFORE UPDATE ON adv_products
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_products ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS adv_products_select ON adv_products;
DROP POLICY IF EXISTS adv_products_insert ON adv_products;
DROP POLICY IF EXISTS adv_products_update ON adv_products;
DROP POLICY IF EXISTS adv_products_delete ON adv_products;
CREATE POLICY adv_products_select ON adv_products FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_products_insert ON adv_products FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_products_update ON adv_products FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_products_delete ON adv_products FOR DELETE TO authenticated USING (true);

-- 3) adv_projects: title, project_type, product_id
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'adv_project_type') THEN
    CREATE TYPE adv_project_type AS ENUM ('client', 'internal');
  END IF;
END $$;

ALTER TABLE adv_projects ADD COLUMN IF NOT EXISTS "title" TEXT;
ALTER TABLE adv_projects ADD COLUMN IF NOT EXISTS project_type adv_project_type;
ALTER TABLE adv_projects ADD COLUMN IF NOT EXISTS product_id UUID REFERENCES adv_products(id) ON DELETE SET NULL;

-- Preencher title a partir de nome onde faltar
UPDATE adv_projects SET "title" = nome WHERE "title" IS NULL AND nome IS NOT NULL;
UPDATE adv_projects SET "title" = '' WHERE "title" IS NULL;

CREATE INDEX IF NOT EXISTS idx_adv_projects_product ON adv_projects(product_id);

-- 4) Sessões de programa (webinars/aulas)
CREATE TABLE IF NOT EXISTS adv_program_sessions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  project_id UUID NOT NULL REFERENCES adv_projects(id) ON DELETE CASCADE,
  data DATE NOT NULL,
  numero_aula INT NOT NULL,
  titulo TEXT,
  link_gravacao TEXT,
  horario_fixo TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_adv_program_sessions_project ON adv_program_sessions(project_id);
CREATE INDEX IF NOT EXISTS idx_adv_program_sessions_project_data ON adv_program_sessions(project_id, data);

DROP TRIGGER IF EXISTS adv_program_sessions_updated_at ON adv_program_sessions;
CREATE TRIGGER adv_program_sessions_updated_at
  BEFORE UPDATE ON adv_program_sessions
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_program_sessions ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS adv_program_sessions_select ON adv_program_sessions;
DROP POLICY IF EXISTS adv_program_sessions_insert ON adv_program_sessions;
DROP POLICY IF EXISTS adv_program_sessions_update ON adv_program_sessions;
DROP POLICY IF EXISTS adv_program_sessions_delete ON adv_program_sessions;
CREATE POLICY adv_program_sessions_select ON adv_program_sessions FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_program_sessions_insert ON adv_program_sessions FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_program_sessions_update ON adv_program_sessions FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_program_sessions_delete ON adv_program_sessions FOR DELETE TO authenticated USING (true);
