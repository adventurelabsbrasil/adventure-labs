-- Triangulação Cursor → Issue GitHub → Tarefa no Admin: vínculo opcional adv_tasks ↔ GitHub.
ALTER TABLE adv_tasks ADD COLUMN IF NOT EXISTS github_issue_number INTEGER;
ALTER TABLE adv_tasks ADD COLUMN IF NOT EXISTS github_repo_owner TEXT;
ALTER TABLE adv_tasks ADD COLUMN IF NOT EXISTS github_repo_name TEXT;

CREATE INDEX IF NOT EXISTS idx_adv_tasks_github_issue
  ON adv_tasks(tenant_id, github_repo_owner, github_repo_name, github_issue_number)
  WHERE github_issue_number IS NOT NULL AND github_repo_owner IS NOT NULL AND github_repo_name IS NOT NULL;
