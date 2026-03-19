-- Tarefas: vínculo opcional direto a cliente (para monitorar tempo por cliente).
-- Quando project_id está preenchido, client_id pode ser derivado do projeto; permite também tarefa só por cliente.
ALTER TABLE adv_tasks ADD COLUMN IF NOT EXISTS client_id UUID REFERENCES adv_clients(id) ON DELETE SET NULL;
CREATE INDEX IF NOT EXISTS idx_adv_tasks_client_id ON adv_tasks(client_id);
