-- Nova estrutura unificada de métricas de campanhas (Meta + Google Ads) para a Lara
-- Granularidade: Nível de Campanha Diário
-- Substitui a necessidade de usar adv_meta_ads_daily (que era apenas por conta e exclusivo pro Meta)

CREATE TYPE adv_ads_platform AS ENUM ('meta_ads', 'google_ads', 'tiktok_ads', 'linkedin_ads');

CREATE TABLE IF NOT EXISTS adv_campaign_metrics_daily (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  date DATE NOT NULL,
  platform adv_ads_platform NOT NULL,
  account_id TEXT NOT NULL,
  account_name TEXT,
  campaign_id TEXT NOT NULL,
  campaign_name TEXT,
  objective TEXT,
  client_id UUID REFERENCES adv_clients(id) ON DELETE SET NULL,
  owner_type adv_meta_owner_type NOT NULL DEFAULT 'cliente',
  
  -- Funil e Custos
  spend NUMERIC(14, 2) DEFAULT 0,
  impressions BIGINT DEFAULT 0,
  reach BIGINT DEFAULT 0,
  frequency NUMERIC(14, 4) DEFAULT 0,
  cpm NUMERIC(14, 4) DEFAULT 0,
  
  -- Engajamento
  clicks BIGINT DEFAULT 0,
  link_clicks BIGINT DEFAULT 0,
  cpc NUMERIC(14, 4) DEFAULT 0,
  ctr NUMERIC(14, 4) DEFAULT 0,
  
  -- Conversão Geral
  page_views BIGINT DEFAULT 0,
  results NUMERIC(14, 2) DEFAULT 0,
  cpa NUMERIC(14, 2) DEFAULT 0,
  
  -- Conversões Específicas (Martech)
  leads BIGINT DEFAULT 0,
  cpl NUMERIC(14, 2) DEFAULT 0,
  conversations_started BIGINT DEFAULT 0,
  
  metrics_extra JSONB DEFAULT '{}',
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  
  -- Garante que não teremos duplicidade se a automação rodar 2x no mesmo dia para a mesma campanha
  UNIQUE (date, platform, account_id, campaign_id)
);

CREATE INDEX idx_adv_camp_metrics_date ON adv_campaign_metrics_daily(date);
CREATE INDEX idx_adv_camp_metrics_client ON adv_campaign_metrics_daily(client_id);
CREATE INDEX idx_adv_camp_metrics_campaign ON adv_campaign_metrics_daily(campaign_id);

-- Tabela para Demográficos e Posicionamento (Granularidade Semanal ou Mensal)
CREATE TABLE IF NOT EXISTS adv_campaign_demographics (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  platform adv_ads_platform NOT NULL,
  account_id TEXT NOT NULL,
  campaign_id TEXT NOT NULL,
  client_id UUID REFERENCES adv_clients(id) ON DELETE SET NULL,
  
  -- Dimensões
  breakdown_type TEXT NOT NULL, -- ex: 'age_gender', 'region', 'device', 'placement'
  breakdown_value1 TEXT NOT NULL, -- ex: '18-24' ou 'Instagram'
  breakdown_value2 TEXT, -- ex: 'male' ou 'Stories'
  
  -- Métricas
  spend NUMERIC(14, 2) DEFAULT 0,
  impressions BIGINT DEFAULT 0,
  results NUMERIC(14, 2) DEFAULT 0,
  
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE (start_date, end_date, platform, account_id, campaign_id, breakdown_type, breakdown_value1, breakdown_value2)
);

CREATE INDEX idx_adv_camp_demo_dates ON adv_campaign_demographics(start_date, end_date);
CREATE INDEX idx_adv_camp_demo_campaign ON adv_campaign_demographics(campaign_id);

ALTER TABLE adv_campaign_metrics_daily ENABLE ROW LEVEL SECURITY;
ALTER TABLE adv_campaign_demographics ENABLE ROW LEVEL SECURITY;

-- Adicione as policies necessárias depois...
