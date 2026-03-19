-- task_kind: operational = só adv_tasks (registro); dev = adv_tasks + GitHub issue (triangulação).
ALTER TABLE adv_tasks
  ADD COLUMN IF NOT EXISTS task_kind TEXT NOT NULL DEFAULT 'operational'
    CHECK (task_kind IN ('operational', 'dev'));

COMMENT ON COLUMN adv_tasks.task_kind IS 'operational: apenas registro no Admin; dev: registro + issue no GitHub (tarefas de TI).';
