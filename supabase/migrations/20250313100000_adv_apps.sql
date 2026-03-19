-- Registro central de apps/repos (GitHub + Vercel + Supabase) para o Admin.
-- Ref.: plano "Atualização plano e Apps no conhecimento", Eixo 3 frontend.

CREATE TYPE adv_app_phase AS ENUM ('idea', 'mvp', 'production', 'maintenance');

CREATE TABLE adv_apps (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  nome TEXT NOT NULL,
  slug TEXT,
  descricao TEXT,
  github_owner TEXT,
  github_repo TEXT,
  github_default_branch TEXT,
  vercel_url TEXT,
  vercel_project_id TEXT,
  supabase_project_ref TEXT,
  phase adv_app_phase NOT NULL DEFAULT 'mvp',
  sort_order INT NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  CONSTRAINT adv_apps_tenant_check CHECK (tenant_id IS NOT NULL)
);

CREATE INDEX idx_adv_apps_tenant ON adv_apps(tenant_id);
CREATE INDEX idx_adv_apps_phase ON adv_apps(phase);
CREATE INDEX idx_adv_apps_sort ON adv_apps(sort_order);

CREATE TRIGGER adv_apps_updated_at
  BEFORE UPDATE ON adv_apps
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_apps ENABLE ROW LEVEL SECURITY;

CREATE POLICY adv_apps_select ON adv_apps FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_apps_insert ON adv_apps FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_apps_update ON adv_apps FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_apps_delete ON adv_apps FOR DELETE TO authenticated USING (true);
