-- Canva Connect OAuth tokens por tenant
-- Nota: armazena refresh_token (secret). Evitar inserção de valores reais via migration.

CREATE TABLE IF NOT EXISTS adv_canva_connect_tokens (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  client_id UUID NULL REFERENCES adv_clients(id) ON DELETE SET NULL,
  service_name TEXT NOT NULL DEFAULT 'canva_connect',
  refresh_token TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_adv_canva_connect_tokens_tenant ON adv_canva_connect_tokens(tenant_id);
CREATE INDEX IF NOT EXISTS idx_adv_canva_connect_tokens_client ON adv_canva_connect_tokens(client_id);

DROP TRIGGER IF EXISTS adv_canva_connect_tokens_updated_at ON adv_canva_connect_tokens;
CREATE TRIGGER adv_canva_connect_tokens_updated_at
  BEFORE UPDATE ON adv_canva_connect_tokens
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_canva_connect_tokens ENABLE ROW LEVEL SECURITY;

-- Segurança multi-tenant: somente o tenant atual pode ler/escrever seus tokens.
CREATE POLICY adv_canva_connect_tokens_select
  ON adv_canva_connect_tokens
  FOR SELECT TO authenticated
  USING (tenant_id = current_tenant_id());

CREATE POLICY adv_canva_connect_tokens_insert
  ON adv_canva_connect_tokens
  FOR INSERT TO authenticated
  WITH CHECK (tenant_id = current_tenant_id());

CREATE POLICY adv_canva_connect_tokens_update
  ON adv_canva_connect_tokens
  FOR UPDATE TO authenticated
  USING (tenant_id = current_tenant_id())
  WITH CHECK (tenant_id = current_tenant_id());

CREATE POLICY adv_canva_connect_tokens_delete
  ON adv_canva_connect_tokens
  FOR DELETE TO authenticated
  USING (tenant_id = current_tenant_id());

