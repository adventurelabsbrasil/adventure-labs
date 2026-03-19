-- Perfis para usuários com acesso apenas ao sistema de Tarefas (criar/editar tarefas).
-- Para dar acesso a projetos específicos (Trello interno), insira em adv_project_members.
-- Processo completo: context/00_GESTAO_CORPORATIVA/processos/trello-interno-liberacao-equipe.md
-- Exemplo:
--   INSERT INTO adv_project_members (project_id, user_email) VALUES
--     ('<uuid-do-projeto>', 'igor@adventurelabs.com.br'),
--     ('<uuid-do-projeto>', 'mateuslepocs@gmail.com');
INSERT INTO adv_profiles (user_email, role) VALUES
  ('igor@adventurelabs.com.br', 'tarefas'),
  ('mateuslepocs@gmail.com', 'tarefas')
ON CONFLICT (user_email) DO UPDATE SET role = EXCLUDED.role, updated_at = now();
