-- Tarefas / To-dos do Admin — lista e tabela; RLS por tenant_id.
-- Opcional: report_id liga tarefa a um relatório Founder (criar tarefa a partir de relatório).

-- Enum para status da tarefa
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'adv_task_status') THEN
    CREATE TYPE adv_task_status AS ENUM ('backlog', 'to_do', 'in_progress', 'done');
  END IF;
END $$;

CREATE TABLE IF NOT EXISTS adv_tasks (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  title TEXT NOT NULL,
  description TEXT,
  status adv_task_status NOT NULL DEFAULT 'to_do',
  priority TEXT,
  due_date DATE,
  report_id UUID REFERENCES adv_founder_reports(id) ON DELETE SET NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  created_by UUID REFERENCES auth.users(id) ON DELETE SET NULL
);

CREATE INDEX IF NOT EXISTS idx_adv_tasks_tenant ON adv_tasks(tenant_id);
CREATE INDEX IF NOT EXISTS idx_adv_tasks_status ON adv_tasks(status);
CREATE INDEX IF NOT EXISTS idx_adv_tasks_created_at ON adv_tasks(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_adv_tasks_report ON adv_tasks(report_id);

DROP TRIGGER IF EXISTS adv_tasks_updated_at ON adv_tasks;
CREATE TRIGGER adv_tasks_updated_at
  BEFORE UPDATE ON adv_tasks
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_tasks ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS adv_tasks_select ON adv_tasks;
DROP POLICY IF EXISTS adv_tasks_insert ON adv_tasks;
DROP POLICY IF EXISTS adv_tasks_update ON adv_tasks;
DROP POLICY IF EXISTS adv_tasks_delete ON adv_tasks;

CREATE POLICY adv_tasks_select ON adv_tasks FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_tasks_insert ON adv_tasks FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_tasks_update ON adv_tasks FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_tasks_delete ON adv_tasks FOR DELETE TO authenticated USING (true);
