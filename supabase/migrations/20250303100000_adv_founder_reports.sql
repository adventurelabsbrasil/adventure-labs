-- Relatórios Founder (brain dump) — digitação no app e feedback do Grove
-- RLS: tenant_id para multitenant; usuários autenticados (equipe) têm acesso.

CREATE TABLE IF NOT EXISTS adv_founder_reports (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  title TEXT,
  content TEXT NOT NULL,
  feedback TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  created_by UUID REFERENCES auth.users(id) ON DELETE SET NULL
);

CREATE INDEX IF NOT EXISTS idx_adv_founder_reports_tenant ON adv_founder_reports(tenant_id);
CREATE INDEX IF NOT EXISTS idx_adv_founder_reports_created_at ON adv_founder_reports(created_at DESC);

DROP TRIGGER IF EXISTS adv_founder_reports_updated_at ON adv_founder_reports;
CREATE TRIGGER adv_founder_reports_updated_at
  BEFORE UPDATE ON adv_founder_reports
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_founder_reports ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS adv_founder_reports_select ON adv_founder_reports;
DROP POLICY IF EXISTS adv_founder_reports_insert ON adv_founder_reports;
DROP POLICY IF EXISTS adv_founder_reports_update ON adv_founder_reports;
DROP POLICY IF EXISTS adv_founder_reports_delete ON adv_founder_reports;

CREATE POLICY adv_founder_reports_select ON adv_founder_reports FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_founder_reports_insert ON adv_founder_reports FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_founder_reports_update ON adv_founder_reports FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_founder_reports_delete ON adv_founder_reports FOR DELETE TO authenticated USING (true);
