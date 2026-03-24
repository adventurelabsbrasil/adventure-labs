-- Candidaturas (candidato ↔ vaga) no schema young_talents

CREATE TABLE IF NOT EXISTS young_talents.applications (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  candidate_id UUID NOT NULL REFERENCES young_talents.candidates(id) ON DELETE CASCADE,
  job_id UUID NOT NULL REFERENCES young_talents.jobs(id) ON DELETE CASCADE,
  candidate_name TEXT,
  candidate_email TEXT,
  job_title TEXT,
  job_company TEXT,
  status TEXT NOT NULL DEFAULT 'Inscrito',
  applied_at TIMESTAMPTZ DEFAULT NOW(),
  last_activity TIMESTAMPTZ DEFAULT NOW(),
  rating INTEGER DEFAULT 0,
  closed_at TIMESTAMPTZ,
  closed_reason TEXT,
  created_by TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  notes JSONB DEFAULT '[]'::JSONB,
  UNIQUE(candidate_id, job_id)
);
CREATE INDEX IF NOT EXISTS idx_applications_candidate_id ON young_talents.applications(candidate_id);
CREATE INDEX IF NOT EXISTS idx_applications_job_id ON young_talents.applications(job_id);
CREATE INDEX IF NOT EXISTS idx_applications_status ON young_talents.applications(status);

ALTER TABLE young_talents.applications ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Authenticated read applications" ON young_talents.applications;
DROP POLICY IF EXISTS "Authenticated insert applications" ON young_talents.applications;
DROP POLICY IF EXISTS "Authenticated update applications" ON young_talents.applications;
DROP POLICY IF EXISTS "Authenticated delete applications" ON young_talents.applications;
CREATE POLICY "Authenticated read applications" ON young_talents.applications FOR SELECT TO authenticated USING (true);
CREATE POLICY "Authenticated insert applications" ON young_talents.applications FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY "Authenticated update applications" ON young_talents.applications FOR UPDATE TO authenticated USING (true);
CREATE POLICY "Authenticated delete applications" ON young_talents.applications FOR DELETE TO authenticated USING (true);

GRANT SELECT, INSERT, UPDATE, DELETE ON young_talents.applications TO authenticated;
