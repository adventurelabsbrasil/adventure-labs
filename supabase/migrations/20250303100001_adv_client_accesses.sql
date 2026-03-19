-- Acessos e credenciais por cliente (GreatPages, Google Ads, hospedagem, etc.)
-- Dados sensíveis: apenas no Admin, com RLS. Nunca versionar em /context.
-- Futuro: considerar pgcrypto para senha se requisito de compliance exigir.

CREATE TABLE adv_client_accesses (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  client_id UUID NOT NULL REFERENCES adv_clients(id) ON DELETE CASCADE,
  service_name TEXT NOT NULL,
  url TEXT,
  login TEXT,
  password TEXT,
  notes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_adv_client_accesses_tenant ON adv_client_accesses(tenant_id);
CREATE INDEX idx_adv_client_accesses_client ON adv_client_accesses(client_id);

CREATE TRIGGER adv_client_accesses_updated_at
  BEFORE UPDATE ON adv_client_accesses
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_client_accesses ENABLE ROW LEVEL SECURITY;

CREATE POLICY adv_client_accesses_select ON adv_client_accesses FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_client_accesses_insert ON adv_client_accesses FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_client_accesses_update ON adv_client_accesses FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_client_accesses_delete ON adv_client_accesses FOR DELETE TO authenticated USING (true);
