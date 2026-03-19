-- Meta Ads: métricas diárias, mapeamento conta→dono (cliente vs Adventure), tópicos por conta, memória da Lara.
-- Lara (analista de marketing) separa sempre contas de clientes e contas próprias da Adventure (owner_type).
-- Ref.: plano Automação Meta Ads — Agente de marketing, Supabase e n8n.

-- 1. Enum para dono da conta (cliente vs. conta própria Adventure)
DO $$ BEGIN
  CREATE TYPE adv_meta_owner_type AS ENUM ('cliente', 'adventure');
EXCEPTION
  WHEN duplicate_object THEN NULL;
END $$;

-- 2. Mapeamento conta de anúncio → cliente ou Adventure (contas/BMs em geral separadas)
CREATE TABLE IF NOT EXISTS adv_client_meta_accounts (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  client_id UUID REFERENCES adv_clients(id) ON DELETE SET NULL,
  meta_account_id TEXT NOT NULL,
  account_name TEXT,
  owner_type adv_meta_owner_type NOT NULL DEFAULT 'cliente',
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE (meta_account_id)
);

CREATE INDEX idx_adv_client_meta_accounts_tenant ON adv_client_meta_accounts(tenant_id);
CREATE INDEX idx_adv_client_meta_accounts_client ON adv_client_meta_accounts(client_id);
CREATE INDEX idx_adv_client_meta_accounts_owner ON adv_client_meta_accounts(owner_type);

DROP TRIGGER IF EXISTS adv_client_meta_accounts_updated_at ON adv_client_meta_accounts;
CREATE TRIGGER adv_client_meta_accounts_updated_at
  BEFORE UPDATE ON adv_client_meta_accounts
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_client_meta_accounts ENABLE ROW LEVEL SECURITY;
CREATE POLICY adv_client_meta_accounts_select ON adv_client_meta_accounts FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_client_meta_accounts_insert ON adv_client_meta_accounts FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_client_meta_accounts_update ON adv_client_meta_accounts FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_client_meta_accounts_delete ON adv_client_meta_accounts FOR DELETE TO authenticated USING (true);

-- 3. Métricas diárias por conta (uma “planilha” única; filtrar por owner_type para separar clientes vs Adventure)
CREATE TABLE IF NOT EXISTS adv_meta_ads_daily (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  date DATE NOT NULL,
  account_id TEXT NOT NULL,
  account_name TEXT,
  client_id UUID REFERENCES adv_clients(id) ON DELETE SET NULL,
  owner_type adv_meta_owner_type NOT NULL DEFAULT 'cliente',
  spend NUMERIC(14, 2),
  impressions BIGINT,
  clicks BIGINT,
  conversions NUMERIC(14, 4),
  metrics_extra JSONB DEFAULT '{}',
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE (date, account_id)
);

CREATE INDEX idx_adv_meta_ads_daily_date ON adv_meta_ads_daily(date);
CREATE INDEX idx_adv_meta_ads_daily_account ON adv_meta_ads_daily(account_id);
CREATE INDEX idx_adv_meta_ads_daily_client ON adv_meta_ads_daily(client_id);
CREATE INDEX idx_adv_meta_ads_daily_owner ON adv_meta_ads_daily(owner_type);

ALTER TABLE adv_meta_ads_daily ENABLE ROW LEVEL SECURITY;
CREATE POLICY adv_meta_ads_daily_select ON adv_meta_ads_daily FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_meta_ads_daily_insert ON adv_meta_ads_daily FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_meta_ads_daily_update ON adv_meta_ads_daily FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_meta_ads_daily_delete ON adv_meta_ads_daily FOR DELETE TO authenticated USING (true);

-- 4. Tópicos por conta (opcional: temas/palavras por conta para a Lara)
CREATE TABLE IF NOT EXISTS adv_meta_ads_topics (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  account_id TEXT NOT NULL,
  owner_type adv_meta_owner_type NOT NULL DEFAULT 'cliente',
  topic TEXT NOT NULL,
  source TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_adv_meta_ads_topics_account ON adv_meta_ads_topics(account_id);
CREATE INDEX idx_adv_meta_ads_topics_owner ON adv_meta_ads_topics(owner_type);

ALTER TABLE adv_meta_ads_topics ENABLE ROW LEVEL SECURITY;
CREATE POLICY adv_meta_ads_topics_select ON adv_meta_ads_topics FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_meta_ads_topics_insert ON adv_meta_ads_topics FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_meta_ads_topics_update ON adv_meta_ads_topics FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_meta_ads_topics_delete ON adv_meta_ads_topics FOR DELETE TO authenticated USING (true);

-- 5. Memória da Lara (contexto por campanha/dado/relatório; padrão similar a adv_csuite_memory)
CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE IF NOT EXISTS adv_lara_memory (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  content TEXT NOT NULL,
  metadata JSONB DEFAULT '{}',
  embedding vector(768),
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_adv_lara_memory_created ON adv_lara_memory(created_at DESC);

ALTER TABLE adv_lara_memory ENABLE ROW LEVEL SECURITY;
CREATE POLICY adv_lara_memory_select ON adv_lara_memory FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_lara_memory_insert ON adv_lara_memory FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_lara_memory_update ON adv_lara_memory FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_lara_memory_delete ON adv_lara_memory FOR DELETE TO authenticated USING (true);

COMMENT ON TABLE adv_client_meta_accounts IS 'Mapeamento conta Meta Ads → cliente ou Adventure (owner_type). Contas/BMs em geral separadas.';
COMMENT ON TABLE adv_meta_ads_daily IS 'Métricas diárias Meta Ads por conta; owner_type separa clientes vs Adventure para a Lara.';
COMMENT ON TABLE adv_meta_ads_topics IS 'Tópicos/temas por conta para a Lara (busca ativa).';
COMMENT ON TABLE adv_lara_memory IS 'Memória da analista Lara: contexto por campanha/dado/relatório para insights e relatórios.';
