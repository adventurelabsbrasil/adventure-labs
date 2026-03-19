-- Tarefas: list_slug (plano-do-dia, acoes-prioritarias, geral) e assignee_email (responsável, ex. founder).
ALTER TABLE adv_tasks ADD COLUMN IF NOT EXISTS list_slug TEXT;
ALTER TABLE adv_tasks ADD COLUMN IF NOT EXISTS assignee_email TEXT;
CREATE INDEX IF NOT EXISTS idx_adv_tasks_list_slug ON adv_tasks(list_slug);
