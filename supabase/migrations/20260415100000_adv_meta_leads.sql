-- adv_meta_leads: leads individuais captados via Meta Lead Ads (formulários nativos)
-- Diferente de adv_ads_daily_metrics (agregado) e sdr_wizard_leads (wizard próprio Adventure).
-- Populado pelo n8n via webhook Meta → GET lead data → INSERT aqui.
-- Referência: Operação Linha Essencial Digital — 15/04/2026

CREATE TABLE IF NOT EXISTS adv_meta_leads (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at      TIMESTAMPTZ NOT NULL DEFAULT now(),

  -- Origem
  client          TEXT NOT NULL,          -- 'benditta' | 'young' | 'rose'
  lead_id         TEXT NOT NULL UNIQUE,   -- Meta leadgen_id (idempotency key)
  form_id         TEXT,                   -- Meta leadgen_form_id
  campaign_id     TEXT,
  adset_id        TEXT,
  ad_id           TEXT,
  ad_name         TEXT,

  -- Dados do lead (pre-fill Meta)
  nome            TEXT,
  email           TEXT,
  telefone        TEXT,

  -- Campos MQL — Cliente Final (Benditta)
  tem_projeto     TEXT,   -- 'sim' | 'planejando' | 'nao'
  ambientes       TEXT,   -- '1' | '2' | '3' | '4' | '5_ou_mais'
  orcamento       TEXT,   -- 'abaixo_15k' | '15k_30k' | '30k_50k' | '50k_100k' | '100k_200k' | 'acima_200k'

  -- Campos MQL — Arquitetos (Benditta)
  projetos_por_ano TEXT,  -- '1_2' | '3_5' | '6_mais'
  ticket_medio     TEXT,  -- 'abaixo_30k' | '30k_80k' | '80k_150k' | 'acima_150k'

  -- Qualificação
  mql                BOOLEAN NOT NULL DEFAULT false,
  mql_reason         TEXT,       -- motivo da qualificação/rejeição

  -- Notificação
  notificado_wa      BOOLEAN NOT NULL DEFAULT false,
  notificado_wa_at   TIMESTAMPTZ,

  -- Payload bruto (todos os campos do formulário)
  raw_data           JSONB DEFAULT '{}'::jsonb
);

-- Índices
CREATE INDEX IF NOT EXISTS idx_adv_meta_leads_client     ON adv_meta_leads (client);
CREATE INDEX IF NOT EXISTS idx_adv_meta_leads_created_at ON adv_meta_leads (created_at DESC);
CREATE INDEX IF NOT EXISTS idx_adv_meta_leads_lead_id    ON adv_meta_leads (lead_id);
CREATE INDEX IF NOT EXISTS idx_adv_meta_leads_campaign   ON adv_meta_leads (campaign_id);
CREATE INDEX IF NOT EXISTS idx_adv_meta_leads_mql        ON adv_meta_leads (client, mql, created_at DESC);

-- RLS — interno (agentes e n8n), mesmo padrão de adv_ads_daily_metrics
ALTER TABLE adv_meta_leads ENABLE ROW LEVEL SECURITY;

CREATE POLICY adv_meta_leads_select ON adv_meta_leads
  FOR SELECT TO authenticated USING (true);

CREATE POLICY adv_meta_leads_insert ON adv_meta_leads
  FOR INSERT TO authenticated WITH CHECK (true);

CREATE POLICY adv_meta_leads_update ON adv_meta_leads
  FOR UPDATE TO authenticated USING (true);

-- Service role (n8n, scripts VPS) — acesso irrestrito via SUPABASE_SERVICE_ROLE_KEY
CREATE POLICY adv_meta_leads_service ON adv_meta_leads
  FOR ALL TO service_role USING (true) WITH CHECK (true);

COMMENT ON TABLE adv_meta_leads IS
  'Leads individuais captados via Meta Lead Ads (formulários nativos). '
  'Populado pelo n8n (webhook Meta leadgen). '
  'Complementa adv_ads_daily_metrics (agregado) com granularidade de lead individual.';

COMMENT ON COLUMN adv_meta_leads.lead_id     IS 'ID único do Meta — garante idempotência em re-processamentos';
COMMENT ON COLUMN adv_meta_leads.mql         IS 'true se orçamento >= threshold do cliente (ex: R$30k para Benditta)';
COMMENT ON COLUMN adv_meta_leads.notificado_wa IS 'true se mensagem WA foi enviada para o AM do cliente';
