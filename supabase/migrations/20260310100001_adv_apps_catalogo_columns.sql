-- Catálogo único de apps/ativos: tipo, repo_path, proprietário, links úteis.
-- Ref.: plano Catálogo de Apps e Ativos.

CREATE TYPE adv_app_tipo AS ENUM ('app', 'saas', 'tool', 'landing', 'internal', 'outro');

ALTER TABLE adv_apps
  ADD COLUMN IF NOT EXISTS tipo adv_app_tipo NOT NULL DEFAULT 'app',
  ADD COLUMN IF NOT EXISTS repo_path TEXT,
  ADD COLUMN IF NOT EXISTS owner_email TEXT,
  ADD COLUMN IF NOT EXISTS links_uteis JSONB DEFAULT '[]'::jsonb;

CREATE INDEX IF NOT EXISTS idx_adv_apps_tipo ON adv_apps(tipo);

COMMENT ON COLUMN adv_apps.tipo IS 'Classificador: app, saas, tool, landing, internal, outro';
COMMENT ON COLUMN adv_apps.repo_path IS 'Caminho no monorepo (ex.: apps/admin, clients/01_lidera/lidera-dre)';
COMMENT ON COLUMN adv_apps.owner_email IS 'Proprietário (negócio/gestor); assignee_email = responsável técnico';
COMMENT ON COLUMN adv_apps.links_uteis IS 'Array de { label, url } para links extras';
