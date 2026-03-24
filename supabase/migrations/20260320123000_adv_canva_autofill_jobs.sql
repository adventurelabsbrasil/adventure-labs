-- Jobs de autofill Canva Connect (create_design)
-- Guardamos jobId e resultado (design id/url) para auditoria/consulta interna.

DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'adv_canva_autofill_job_status') THEN
    CREATE TYPE adv_canva_autofill_job_status AS ENUM ('in_progress', 'success', 'failed');
  END IF;
END $$;

CREATE TABLE IF NOT EXISTS adv_canva_autofill_jobs (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  client_id UUID NULL REFERENCES adv_clients(id) ON DELETE SET NULL,
  provider TEXT NOT NULL DEFAULT 'canva_connect',

  job_id TEXT NOT NULL,
  brand_template_id TEXT NOT NULL,
  title TEXT,

  status adv_canva_autofill_job_status NOT NULL DEFAULT 'in_progress',

  design_id TEXT,
  design_url TEXT,
  thumbnail_url TEXT,

  last_error_code TEXT,
  last_error_message TEXT,

  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),

  UNIQUE (tenant_id, job_id)
);

CREATE INDEX IF NOT EXISTS idx_adv_canva_autofill_jobs_tenant ON adv_canva_autofill_jobs(tenant_id);
CREATE INDEX IF NOT EXISTS idx_adv_canva_autofill_jobs_status ON adv_canva_autofill_jobs(status);
CREATE INDEX IF NOT EXISTS idx_adv_canva_autofill_jobs_brand_template ON adv_canva_autofill_jobs(brand_template_id);

DROP TRIGGER IF EXISTS adv_canva_autofill_jobs_updated_at ON adv_canva_autofill_jobs;
CREATE TRIGGER adv_canva_autofill_jobs_updated_at
  BEFORE UPDATE ON adv_canva_autofill_jobs
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_canva_autofill_jobs ENABLE ROW LEVEL SECURITY;

CREATE POLICY adv_canva_autofill_jobs_select
  ON adv_canva_autofill_jobs
  FOR SELECT TO authenticated
  USING (tenant_id = current_tenant_id());

CREATE POLICY adv_canva_autofill_jobs_insert
  ON adv_canva_autofill_jobs
  FOR INSERT TO authenticated
  WITH CHECK (tenant_id = current_tenant_id());

CREATE POLICY adv_canva_autofill_jobs_update
  ON adv_canva_autofill_jobs
  FOR UPDATE TO authenticated
  USING (tenant_id = current_tenant_id())
  WITH CHECK (tenant_id = current_tenant_id());

CREATE POLICY adv_canva_autofill_jobs_delete
  ON adv_canva_autofill_jobs
  FOR DELETE TO authenticated
  USING (tenant_id = current_tenant_id());

