-- Página do cliente (hub): novos campos em adv_clients e tabela de variáveis de ambiente por cliente.
-- Ref: plano Página do Cliente e Organização.

-- 1. Novos campos em adv_clients
ALTER TABLE adv_clients ADD COLUMN IF NOT EXISTS slug TEXT;
ALTER TABLE adv_clients ADD COLUMN IF NOT EXISTS razao_social TEXT;
ALTER TABLE adv_clients ADD COLUMN IF NOT EXISTS site TEXT;
ALTER TABLE adv_clients ADD COLUMN IF NOT EXISTS endereco TEXT;
ALTER TABLE adv_clients ADD COLUMN IF NOT EXISTS observacoes TEXT;
ALTER TABLE adv_clients ADD COLUMN IF NOT EXISTS repo_path TEXT;

CREATE UNIQUE INDEX IF NOT EXISTS idx_adv_clients_slug ON adv_clients(slug) WHERE slug IS NOT NULL;

-- 2. Tabela adv_client_env_vars (variáveis de ambiente por cliente)
CREATE TABLE IF NOT EXISTS adv_client_env_vars (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  client_id UUID NOT NULL REFERENCES adv_clients(id) ON DELETE CASCADE,
  key TEXT NOT NULL,
  value TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE (client_id, key)
);

CREATE INDEX IF NOT EXISTS idx_adv_client_env_vars_client ON adv_client_env_vars(client_id);

DROP TRIGGER IF EXISTS adv_client_env_vars_updated_at ON adv_client_env_vars;
CREATE TRIGGER adv_client_env_vars_updated_at
  BEFORE UPDATE ON adv_client_env_vars
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_client_env_vars ENABLE ROW LEVEL SECURITY;

CREATE POLICY adv_client_env_vars_select ON adv_client_env_vars FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_client_env_vars_insert ON adv_client_env_vars FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_client_env_vars_update ON adv_client_env_vars FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_client_env_vars_delete ON adv_client_env_vars FOR DELETE TO authenticated USING (true);
