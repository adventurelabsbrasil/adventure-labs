-- Seed para fluxo C-Suite n8n: ideias recentes (admin, Adventure Labs).
-- Garante dados nos últimos 30 dias para Fetch Ideias no workflow n8n.
-- Tarefas: assumimos que adv_tasks já tem dados; se quiser tarefas recentes, adicione aqui.

-- ADV_IDEIAS (created_at nos últimos 30 dias)
INSERT INTO adv_ideias (id, tenant_id, titulo, descricao, tipo, fonte, status, created_at, updated_at)
VALUES
  ('a1000001-0000-4000-8000-000000000001', '00000000-0000-0000-0000-000000000000', 'Dashboard de KPIs do C-Suite no Admin', 'Painel no Next.js com resumos das decisões do Grove e métricas por área (CTO, CFO, COO, CMO, CPO).', 'referencia', 'manual', 'backlog', NOW() - INTERVAL '2 days', NOW() - INTERVAL '2 days'),
  ('a1000001-0000-4000-8000-000000000002', '00000000-0000-0000-0000-000000000000', 'Automação de relatórios semanais via n8n', 'Workflow que consolida tarefas concluídas + ideias em produção e gera resumo para o Founder.', 'publicacao', 'n8n', 'backlog', NOW() - INTERVAL '5 days', NOW() - INTERVAL '5 days'),
  ('a1000001-0000-4000-8000-000000000003', '00000000-0000-0000-0000-000000000000', 'Integração Google Chat com notificações do C-Suite', 'Canal dedicado para decisões e issues criadas pelo loop autónomo (já em uso no workflow n8n).', 'referencia', 'cursor', 'aprovado', NOW() - INTERVAL '7 days', NOW() - INTERVAL '1 day'),
  ('a1000001-0000-4000-8000-000000000004', '00000000-0000-0000-0000-000000000000', 'Skill editorial: brief de campanhas (Ogilvy)', 'Template de brief para campanhas com ROAS, CPA, CPL e CVR alinhado ao indicadores-semestrais.', 'copy', 'skill-diaria', 'no_cronograma', NOW() - INTERVAL '10 days', NOW() - INTERVAL '3 days'),
  ('a1000001-0000-4000-8000-000000000005', '00000000-0000-0000-0000-000000000000', 'Memória pgvector para contexto do C-Suite', 'Tabela adv_csuite_memory com embeddings das reuniões para RAG nas próximas análises.', 'referencia', 'cursor', 'produzido', NOW() - INTERVAL '14 days', NOW() - INTERVAL '2 days'),
  ('a1000001-0000-4000-8000-000000000006', '00000000-0000-0000-0000-000000000000', 'Checklist de SLA por tipo de projeto no Admin', 'Lista de prazos por tipo (landing, tráfego, relatório) para o COO e Kanban.', 'criativo', 'manual', 'backlog', NOW() - INTERVAL '20 days', NOW() - INTERVAL '20 days')
ON CONFLICT (id) DO NOTHING;

-- Tarefas recentes (últimos 7 dias) para Fetch Tasks — se já existirem tarefas, isto adiciona mais algumas com updated_at recente
INSERT INTO adv_tasks (id, tenant_id, title, description, status, task_kind, created_at, updated_at)
VALUES
  ('b2000001-0000-4000-8000-000000000101', '00000000-0000-0000-0000-000000000000', 'Configurar credenciais C-Suite no n8n (Gemini, Supabase, GitHub)', 'Setup do workflow autónomo: pooler Supabase, HTTP Header Auth Gemini, PAT GitHub.', 'in_progress', 'operational', NOW() - INTERVAL '3 days', NOW() - INTERVAL '1 hour'),
  ('b2000001-0000-4000-8000-000000000102', '00000000-0000-0000-0000-000000000000', 'Testar fluxo completo C-Suite (Webhook + Merge)', 'Executar workflow via webhook e validar Issue GitHub + notificação Google Chat.', 'to_do', 'operational', NOW() - INTERVAL '2 days', NOW() - INTERVAL '1 day'),
  ('b2000001-0000-4000-8000-000000000103', '00000000-0000-0000-0000-000000000000', 'Documentar uso do pooler Supabase no guia n8n', 'Atualizar docs/csuite-n8n-setup-guide.md com host/porta do Transaction pooler.', 'to_do', 'dev', NOW() - INTERVAL '1 day', NOW() - INTERVAL '12 hours')
ON CONFLICT (id) DO NOTHING;
