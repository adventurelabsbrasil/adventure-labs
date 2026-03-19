-- Migration incremental: cria só adv_clients (e enum) quando ainda não existirem.
-- adv_projects já existe no projeto; esta migration não altera adv_projects.

-- Enum (só se não existir)
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'adv_client_status') THEN
    CREATE TYPE adv_client_status AS ENUM ('ativo', 'inativo', 'prospect');
  END IF;
END $$;

-- Tabela adv_clients
CREATE TABLE IF NOT EXISTS adv_clients (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  nome TEXT NOT NULL,
  cnpj TEXT,
  contato TEXT,
  status adv_client_status NOT NULL DEFAULT 'ativo',
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Índices (ignora se já existirem)
CREATE INDEX IF NOT EXISTS idx_adv_clients_tenant ON adv_clients(tenant_id);
CREATE INDEX IF NOT EXISTS idx_adv_clients_status ON adv_clients(status);

-- Trigger updated_at (função já pode existir)
CREATE OR REPLACE FUNCTION adv_set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS adv_clients_updated_at ON adv_clients;
CREATE TRIGGER adv_clients_updated_at
  BEFORE UPDATE ON adv_clients
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

-- RLS
ALTER TABLE adv_clients ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS adv_clients_select ON adv_clients;
DROP POLICY IF EXISTS adv_clients_insert ON adv_clients;
DROP POLICY IF EXISTS adv_clients_update ON adv_clients;
DROP POLICY IF EXISTS adv_clients_delete ON adv_clients;
CREATE POLICY adv_clients_select ON adv_clients FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_clients_insert ON adv_clients FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_clients_update ON adv_clients FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_clients_delete ON adv_clients FOR DELETE TO authenticated USING (true);
