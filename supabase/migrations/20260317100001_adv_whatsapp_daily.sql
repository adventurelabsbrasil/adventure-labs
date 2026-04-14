-- Arquivo diário de mensagens dos grupos WhatsApp (worker + n8n).
-- Uso: auditoria, histórico e consulta por grupo/data. Prefixo adv_ (Torvalds); RLS.

CREATE TABLE IF NOT EXISTS adv_whatsapp_daily (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  report_date DATE NOT NULL,
  group_id TEXT NOT NULL,
  group_name TEXT,
  content_summary TEXT,
  raw_messages JSONB,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_adv_whatsapp_daily_tenant_date ON adv_whatsapp_daily(tenant_id, report_date DESC);
CREATE INDEX IF NOT EXISTS idx_adv_whatsapp_daily_report_date ON adv_whatsapp_daily(report_date DESC);

ALTER TABLE adv_whatsapp_daily ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS adv_whatsapp_daily_select ON adv_whatsapp_daily;
DROP POLICY IF EXISTS adv_whatsapp_daily_insert ON adv_whatsapp_daily;

CREATE POLICY adv_whatsapp_daily_select ON adv_whatsapp_daily FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_whatsapp_daily_insert ON adv_whatsapp_daily FOR INSERT TO authenticated WITH CHECK (true);

COMMENT ON TABLE adv_whatsapp_daily IS 'Arquivo diário de mensagens dos grupos WhatsApp (worker + n8n). Opcional no fluxo WhatsApp Grupos — Cagan/CPO.';
