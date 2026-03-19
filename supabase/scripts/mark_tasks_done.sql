-- Marcar como concluídas (status = 'done') tarefas cujo trabalho já foi entregue.
--
-- Como executar:
-- 1. Supabase Dashboard: SQL Editor → colar o bloco 2 (UPDATE) abaixo e Run.
-- 2. Ou: psql "$DATABASE_URL" -f supabase/scripts/mark_tasks_done.sql (se tiver connection string).
-- A migration 20260315100000_mark_resolved_tasks_done.sql contém o mesmo UPDATE para quem aplica via db push.
--
-- Contexto: Análise de issues do repo admin (plano análise_issues_admin_e_conclusão).
-- Issues do Admin ficam em adventurelabsbrasil/admin; as #1 e #2 Young Talents
-- estão em adventurelabsbrasil/adventure-labs e já estão fechadas.

-- =============================================================================
-- 1. PREVIEW (opcional): descomente e execute primeiro para ver o que será atualizado
-- =============================================================================
-- SELECT id, title, status, updated_at
-- FROM adv_tasks
-- WHERE tenant_id = '00000000-0000-0000-0000-000000000000'
--   AND status != 'done'
--   AND (id = 'c3000001-0000-4000-8000-000000000001'
--        OR title ILIKE '%Young Talents%'
--        OR title ILIKE '%segurança e UX%Adventure%');

-- =============================================================================
-- 2. Young Talents: tarefa seed vinculada às issues #1 e #2 (já fechadas no GitHub)
-- =============================================================================
UPDATE adv_tasks
SET status = 'done',
    updated_at = now()
WHERE id = 'c3000001-0000-4000-8000-000000000001'
  AND tenant_id = '00000000-0000-0000-0000-000000000000'
  AND status != 'done';

-- =============================================================================
-- 3. Opcional: se existirem tarefas criadas manualmente para os itens já
--    implementados no código (Permissões RLS, Vincular tarefa a projeto,
--    Atribuições explícitas, Registro de apps/repos), descomente e ajuste o título:
-- =============================================================================
-- UPDATE adv_tasks
-- SET status = 'done', updated_at = now()
-- WHERE tenant_id = '00000000-0000-0000-0000-000000000000'
--   AND status != 'done'
--   AND (
--     title ILIKE '%Permissões por responsável%'
--     OR title ILIKE '%Vincular tarefa a projeto%'
--     OR title ILIKE '%Atribuições explícitas%'
--     OR title ILIKE '%Registro de apps%'
--   );
