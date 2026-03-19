-- Vínculos N:N entre ativos (adv_apps) e clientes/projetos; assignee em ativos.
-- Ref.: plano "Vínculos: Ativos ↔ Projetos e Clientes".

ALTER TABLE adv_apps ADD COLUMN IF NOT EXISTS assignee_email TEXT;

CREATE TABLE adv_app_clients (
  app_id UUID NOT NULL REFERENCES adv_apps(id) ON DELETE CASCADE,
  client_id UUID NOT NULL REFERENCES adv_clients(id) ON DELETE CASCADE,
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  PRIMARY KEY (app_id, client_id)
);

CREATE INDEX idx_adv_app_clients_app ON adv_app_clients(app_id);
CREATE INDEX idx_adv_app_clients_client ON adv_app_clients(client_id);

CREATE TABLE adv_app_projects (
  app_id UUID NOT NULL REFERENCES adv_apps(id) ON DELETE CASCADE,
  project_id UUID NOT NULL REFERENCES adv_projects(id) ON DELETE CASCADE,
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  PRIMARY KEY (app_id, project_id)
);

CREATE INDEX idx_adv_app_projects_app ON adv_app_projects(app_id);
CREATE INDEX idx_adv_app_projects_project ON adv_app_projects(project_id);

ALTER TABLE adv_app_clients ENABLE ROW LEVEL SECURITY;
ALTER TABLE adv_app_projects ENABLE ROW LEVEL SECURITY;

CREATE POLICY adv_app_clients_select ON adv_app_clients FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_app_clients_insert ON adv_app_clients FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_app_clients_delete ON adv_app_clients FOR DELETE TO authenticated USING (true);

CREATE POLICY adv_app_projects_select ON adv_app_projects FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_app_projects_insert ON adv_app_projects FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_app_projects_delete ON adv_app_projects FOR DELETE TO authenticated USING (true);
