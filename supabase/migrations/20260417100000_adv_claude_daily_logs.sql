-- adv_claude_daily_logs: registro diario das sessoes do Claude Code.
-- Populada pelo cron `claude-yesterday-log` (00:00 BRT) com o resumo do dia anterior:
-- sessoes, duracao, tokens, arquivos tocados, mudancas em settings e briefing.

CREATE TABLE IF NOT EXISTS adv_claude_daily_logs (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  log_date DATE NOT NULL,
  host TEXT,
  sessions_count INT NOT NULL DEFAULT 0,
  total_duration_seconds BIGINT NOT NULL DEFAULT 0,
  tokens_input BIGINT NOT NULL DEFAULT 0,
  tokens_output BIGINT NOT NULL DEFAULT 0,
  tokens_cache_read BIGINT NOT NULL DEFAULT 0,
  tokens_cache_write BIGINT NOT NULL DEFAULT 0,
  tools_used JSONB NOT NULL DEFAULT '{}'::jsonb,
  modified_files JSONB NOT NULL DEFAULT '[]'::jsonb,
  settings_changes JSONB NOT NULL DEFAULT '[]'::jsonb,
  commits JSONB NOT NULL DEFAULT '[]'::jsonb,
  sessions JSONB NOT NULL DEFAULT '[]'::jsonb,
  summary_text TEXT,
  md_path TEXT,
  raw_stats JSONB,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE (tenant_id, log_date, host)
);

CREATE INDEX IF NOT EXISTS idx_adv_claude_daily_logs_date
  ON adv_claude_daily_logs (log_date DESC);

DROP TRIGGER IF EXISTS adv_claude_daily_logs_updated_at ON adv_claude_daily_logs;
CREATE TRIGGER adv_claude_daily_logs_updated_at
  BEFORE UPDATE ON adv_claude_daily_logs
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_claude_daily_logs ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS adv_claude_daily_logs_select ON adv_claude_daily_logs;
DROP POLICY IF EXISTS adv_claude_daily_logs_insert ON adv_claude_daily_logs;
DROP POLICY IF EXISTS adv_claude_daily_logs_update ON adv_claude_daily_logs;
DROP POLICY IF EXISTS adv_claude_daily_logs_delete ON adv_claude_daily_logs;

CREATE POLICY adv_claude_daily_logs_select ON adv_claude_daily_logs
  FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_claude_daily_logs_insert ON adv_claude_daily_logs
  FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_claude_daily_logs_update ON adv_claude_daily_logs
  FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_claude_daily_logs_delete ON adv_claude_daily_logs
  FOR DELETE TO authenticated USING (true);
