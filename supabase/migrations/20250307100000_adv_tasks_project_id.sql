-- Tarefas: vínculo opcional a projeto (e indiretamente a cliente).
ALTER TABLE adv_tasks ADD COLUMN IF NOT EXISTS project_id UUID REFERENCES adv_projects(id) ON DELETE SET NULL;
CREATE INDEX IF NOT EXISTS idx_adv_tasks_project_id ON adv_tasks(project_id);
