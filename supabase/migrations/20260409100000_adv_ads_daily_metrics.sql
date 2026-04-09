-- adv_ads_daily_metrics: métricas diárias no nível de anúncio (ad-level)
-- Complementa adv_campaign_metrics_daily (campaign-level) com granularidade de adset + ad
-- Solicitado pelo Buzz (2026-04-09)

CREATE TABLE IF NOT EXISTS adv_ads_daily_metrics (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  date DATE NOT NULL,
  client TEXT NOT NULL,
  account_id TEXT NOT NULL,
  account_name TEXT,
  campaign_name TEXT NOT NULL,
  adset_name TEXT NOT NULL,
  ad_name TEXT NOT NULL,
  objective TEXT,
  impressions INTEGER DEFAULT 0,
  reach INTEGER DEFAULT 0,
  clicks INTEGER DEFAULT 0,
  spend NUMERIC DEFAULT 0,
  conversations INTEGER DEFAULT 0,
  leads INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),

  CONSTRAINT uq_ads_daily_metrics
    UNIQUE (date, account_id, campaign_name, adset_name, ad_name)
);

CREATE INDEX idx_adv_ads_daily_date ON adv_ads_daily_metrics(date);
CREATE INDEX idx_adv_ads_daily_client ON adv_ads_daily_metrics(client);
CREATE INDEX idx_adv_ads_daily_account ON adv_ads_daily_metrics(account_id);

ALTER TABLE adv_ads_daily_metrics ENABLE ROW LEVEL SECURITY;
