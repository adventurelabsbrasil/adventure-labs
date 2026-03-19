-- Registro de tempo por tarefa/colaborador (para relatório por projeto e cliente).
CREATE TABLE IF NOT EXISTS adv_task_time_entries (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  task_id UUID NOT NULL REFERENCES adv_tasks(id) ON DELETE CASCADE,
  assignee_email TEXT NOT NULL,
  duration_minutes INTEGER NOT NULL CHECK (duration_minutes > 0),
  recorded_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  project_id UUID REFERENCES adv_projects(id) ON DELETE SET NULL,
  client_id UUID REFERENCES adv_clients(id) ON DELETE SET NULL,
  note TEXT
);

CREATE INDEX IF NOT EXISTS idx_adv_task_time_entries_tenant ON adv_task_time_entries(tenant_id);
CREATE INDEX IF NOT EXISTS idx_adv_task_time_entries_task ON adv_task_time_entries(task_id);
CREATE INDEX IF NOT EXISTS idx_adv_task_time_entries_assignee ON adv_task_time_entries(assignee_email);
CREATE INDEX IF NOT EXISTS idx_adv_task_time_entries_project ON adv_task_time_entries(project_id);
CREATE INDEX IF NOT EXISTS idx_adv_task_time_entries_client ON adv_task_time_entries(client_id);
CREATE INDEX IF NOT EXISTS idx_adv_task_time_entries_recorded ON adv_task_time_entries(recorded_at);

ALTER TABLE adv_task_time_entries ENABLE ROW LEVEL SECURITY;

CREATE POLICY adv_task_time_entries_select ON adv_task_time_entries FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_task_time_entries_insert ON adv_task_time_entries FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_task_time_entries_update ON adv_task_time_entries FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_task_time_entries_delete ON adv_task_time_entries FOR DELETE TO authenticated USING (true);
