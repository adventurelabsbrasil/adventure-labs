-- Marcar como concluídas (status = 'done') tarefas cujo trabalho já foi entregue.
-- Contexto: plano análise_issues_admin_e_conclusão. Issues #1 e #2 Young Talents
-- (adventurelabsbrasil/adventure-labs) já estão fechadas no GitHub.

UPDATE adv_tasks
SET status = 'done',
    updated_at = now()
WHERE id = 'c3000001-0000-4000-8000-000000000001'
  AND tenant_id = '00000000-0000-0000-0000-000000000000'
  AND status != 'done';
