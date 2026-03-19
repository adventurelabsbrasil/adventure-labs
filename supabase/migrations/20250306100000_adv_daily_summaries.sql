-- Resumos diários: texto + áudio; exibidos na home até "marcar como lido", depois na página de relatórios.
-- summary_date = dia do resumo (ex.: ontem); agent_summary_text = input do Founder "o que os agentes fizeram".

CREATE TABLE IF NOT EXISTS adv_daily_summaries (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  summary_date DATE NOT NULL,
  title TEXT,
  summary_text TEXT NOT NULL,
  agent_summary_text TEXT,
  audio_url TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  created_by UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  UNIQUE(tenant_id, summary_date)
);

CREATE INDEX IF NOT EXISTS idx_adv_daily_summaries_tenant ON adv_daily_summaries(tenant_id);
CREATE INDEX IF NOT EXISTS idx_adv_daily_summaries_date ON adv_daily_summaries(summary_date DESC);

DROP TRIGGER IF EXISTS adv_daily_summaries_updated_at ON adv_daily_summaries;
CREATE TRIGGER adv_daily_summaries_updated_at
  BEFORE UPDATE ON adv_daily_summaries
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_daily_summaries ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS adv_daily_summaries_select ON adv_daily_summaries;
DROP POLICY IF EXISTS adv_daily_summaries_insert ON adv_daily_summaries;
DROP POLICY IF EXISTS adv_daily_summaries_update ON adv_daily_summaries;
DROP POLICY IF EXISTS adv_daily_summaries_delete ON adv_daily_summaries;

CREATE POLICY adv_daily_summaries_select ON adv_daily_summaries FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_daily_summaries_insert ON adv_daily_summaries FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_daily_summaries_update ON adv_daily_summaries FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_daily_summaries_delete ON adv_daily_summaries FOR DELETE TO authenticated USING (true);

-- Registro de "lido pela primeira vez" por usuário (ou por tenant se preferir um único read por resumo).
CREATE TABLE IF NOT EXISTS adv_daily_summary_reads (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  summary_id UUID NOT NULL REFERENCES adv_daily_summaries(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  read_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE(summary_id, user_id)
);

CREATE INDEX IF NOT EXISTS idx_adv_daily_summary_reads_summary ON adv_daily_summary_reads(summary_id);
CREATE INDEX IF NOT EXISTS idx_adv_daily_summary_reads_user ON adv_daily_summary_reads(user_id);

ALTER TABLE adv_daily_summary_reads ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS adv_daily_summary_reads_select ON adv_daily_summary_reads;
DROP POLICY IF EXISTS adv_daily_summary_reads_insert ON adv_daily_summary_reads;

CREATE POLICY adv_daily_summary_reads_select ON adv_daily_summary_reads FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_daily_summary_reads_insert ON adv_daily_summary_reads FOR INSERT TO authenticated WITH CHECK (true);
