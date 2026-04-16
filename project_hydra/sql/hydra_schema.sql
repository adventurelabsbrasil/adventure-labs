-- =============================================================================
-- HYDRA Venture Studio Engine — Supabase Schema
-- Namespace isolado: todas as tabelas com prefixo hydra_
-- Nunca toca em tabelas adv_* ou da stack Adventure Labs.
-- =============================================================================
-- Executar: psql $DATABASE_URL -f project_hydra/sql/hydra_schema.sql
-- =============================================================================

-- ─── Trigger function para updated_at ─────────────────────────────────────────

CREATE OR REPLACE FUNCTION hydra_update_timestamp()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;


-- =============================================================================
-- 1. hydra_sessions — Estado de cada execução do pipeline
-- =============================================================================

CREATE TABLE IF NOT EXISTS hydra_sessions (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  session_id      TEXT UNIQUE NOT NULL,
  phase           TEXT NOT NULL DEFAULT 'init',
  data            JSONB DEFAULT '{}',
  capital_budget_brl  NUMERIC(10,2) DEFAULT 200.00,
  capital_spent_brl   NUMERIC(10,2) DEFAULT 0.00,
  pivot_count     INTEGER DEFAULT 0,
  errors          TEXT[] DEFAULT '{}',
  created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at      TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TRIGGER hydra_sessions_updated_at
  BEFORE UPDATE ON hydra_sessions
  FOR EACH ROW EXECUTE FUNCTION hydra_update_timestamp();

ALTER TABLE hydra_sessions ENABLE ROW LEVEL SECURITY;

CREATE POLICY "hydra_sessions_service_all"
  ON hydra_sessions FOR ALL TO service_role USING (true) WITH CHECK (true);

CREATE POLICY "hydra_sessions_auth_read"
  ON hydra_sessions FOR SELECT TO authenticated USING (true);


-- =============================================================================
-- 2. hydra_strategy_reports — Relatórios estratégicos persistidos
-- =============================================================================

CREATE TABLE IF NOT EXISTS hydra_strategy_reports (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  session_id      TEXT NOT NULL REFERENCES hydra_sessions(session_id),
  winner_model_id TEXT NOT NULL,
  winner_score    NUMERIC(4,2),
  report_data     JSONB NOT NULL,
  created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

ALTER TABLE hydra_strategy_reports ENABLE ROW LEVEL SECURITY;

CREATE POLICY "hydra_strategy_reports_service_all"
  ON hydra_strategy_reports FOR ALL TO service_role USING (true) WITH CHECK (true);

CREATE POLICY "hydra_strategy_reports_auth_read"
  ON hydra_strategy_reports FOR SELECT TO authenticated USING (true);


-- =============================================================================
-- 3. hydra_audit_log — Trilha de auditoria (imutável, append-only)
-- =============================================================================

CREATE TABLE IF NOT EXISTS hydra_audit_log (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  session_id      TEXT NOT NULL,
  audit_id        TEXT NOT NULL,
  action_type     TEXT NOT NULL,
  verdict         TEXT NOT NULL CHECK (verdict IN ('approved', 'approved_with_conditions', 'vetoed')),
  risk_score      NUMERIC(4,2),
  lgpd_check      JSONB,
  financial_check JSONB,
  ethics_check    JSONB,
  conditions      TEXT[] DEFAULT '{}',
  reasoning       TEXT,
  created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

ALTER TABLE hydra_audit_log ENABLE ROW LEVEL SECURITY;

CREATE POLICY "hydra_audit_log_service_all"
  ON hydra_audit_log FOR ALL TO service_role USING (true) WITH CHECK (true);

CREATE POLICY "hydra_audit_log_auth_read"
  ON hydra_audit_log FOR SELECT TO authenticated USING (true);


-- =============================================================================
-- 4. hydra_traction — Sinais de tração (pivot monitoring)
-- =============================================================================

CREATE TABLE IF NOT EXISTS hydra_traction (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  session_id      TEXT NOT NULL,
  signal_type     TEXT NOT NULL,  -- click, lead, demo_request, sale, referral
  count           INTEGER NOT NULL DEFAULT 1,
  source          TEXT,
  metadata        JSONB DEFAULT '{}',
  captured_at     TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

ALTER TABLE hydra_traction ENABLE ROW LEVEL SECURITY;

CREATE POLICY "hydra_traction_service_all"
  ON hydra_traction FOR ALL TO service_role USING (true) WITH CHECK (true);

CREATE POLICY "hydra_traction_auth_read"
  ON hydra_traction FOR SELECT TO authenticated USING (true);


-- =============================================================================
-- 5. hydra_clients — Pipeline de clientes do HYDRA
-- =============================================================================

CREATE TABLE IF NOT EXISTS hydra_clients (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name            TEXT NOT NULL,
  segment         TEXT,           -- clinica, imobiliaria, infoprodutor, ecommerce, agencia
  status          TEXT DEFAULT 'prospect',  -- prospect, demo, negotiation, active, churned
  ticket_brl      NUMERIC(10,2),
  monthly_api_cost_brl  NUMERIC(10,2) DEFAULT 0,
  ads_budget_brl  NUMERIC(12,2) DEFAULT 0,
  contact_phone   TEXT,
  contact_email   TEXT,
  onboarded_at    TIMESTAMPTZ,
  churned_at      TIMESTAMPTZ,
  notes           TEXT,
  created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at      TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TRIGGER hydra_clients_updated_at
  BEFORE UPDATE ON hydra_clients
  FOR EACH ROW EXECUTE FUNCTION hydra_update_timestamp();

ALTER TABLE hydra_clients ENABLE ROW LEVEL SECURITY;

CREATE POLICY "hydra_clients_service_all"
  ON hydra_clients FOR ALL TO service_role USING (true) WITH CHECK (true);

CREATE POLICY "hydra_clients_auth_read"
  ON hydra_clients FOR SELECT TO authenticated USING (true);


-- =============================================================================
-- 6. hydra_artifacts — Assets gerados pelo Builder Agent
-- =============================================================================

CREATE TABLE IF NOT EXISTS hydra_artifacts (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  session_id      TEXT NOT NULL,
  artifact_type   TEXT NOT NULL,  -- sql_schema, landing_page, email_template, outreach_whatsapp, n8n_workflow_spec, checklist
  name            TEXT NOT NULL,
  description     TEXT,
  content         TEXT,
  file_path       TEXT,
  status          TEXT DEFAULT 'created',  -- pending, created, deployed
  created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

ALTER TABLE hydra_artifacts ENABLE ROW LEVEL SECURITY;

CREATE POLICY "hydra_artifacts_service_all"
  ON hydra_artifacts FOR ALL TO service_role USING (true) WITH CHECK (true);

CREATE POLICY "hydra_artifacts_auth_read"
  ON hydra_artifacts FOR SELECT TO authenticated USING (true);


-- =============================================================================
-- Índices para queries frequentes
-- =============================================================================

CREATE INDEX IF NOT EXISTS idx_hydra_sessions_phase ON hydra_sessions(phase);
CREATE INDEX IF NOT EXISTS idx_hydra_strategy_reports_session ON hydra_strategy_reports(session_id);
CREATE INDEX IF NOT EXISTS idx_hydra_audit_log_session ON hydra_audit_log(session_id);
CREATE INDEX IF NOT EXISTS idx_hydra_audit_log_verdict ON hydra_audit_log(verdict);
CREATE INDEX IF NOT EXISTS idx_hydra_traction_session ON hydra_traction(session_id);
CREATE INDEX IF NOT EXISTS idx_hydra_traction_type ON hydra_traction(signal_type);
CREATE INDEX IF NOT EXISTS idx_hydra_clients_status ON hydra_clients(status);
CREATE INDEX IF NOT EXISTS idx_hydra_artifacts_session ON hydra_artifacts(session_id);
CREATE INDEX IF NOT EXISTS idx_hydra_artifacts_type ON hydra_artifacts(artifact_type);
