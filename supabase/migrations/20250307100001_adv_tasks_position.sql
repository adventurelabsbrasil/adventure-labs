-- Ordem opcional das tarefas dentro do mesmo status (Kanban).
ALTER TABLE adv_tasks ADD COLUMN IF NOT EXISTS position INTEGER;

-- Preencher posição inicial por created_at (ordem ascendente por status).
WITH ordered AS (
  SELECT id, ROW_NUMBER() OVER (PARTITION BY status ORDER BY created_at ASC) AS rn
  FROM adv_tasks
)
UPDATE adv_tasks t SET position = ordered.rn::INTEGER
FROM ordered WHERE t.id = ordered.id;

CREATE INDEX IF NOT EXISTS idx_adv_tasks_status_position ON adv_tasks(status, position);
