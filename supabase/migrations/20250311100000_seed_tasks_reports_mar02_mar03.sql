-- Seed: relatórios do founder e tarefas concluídas em 02 e 03/03/2025
-- Para testar o resumo diário com dados que refletem o trabalho feito (Cursor, agentes, founder).
-- Tenant Adventure Labs: 00000000-0000-0000-0000-000000000000
-- Reexecutável: ON CONFLICT DO NOTHING nos IDs fixos.

-- Relatórios founder (brain dump) nos dias 02 e 03/03
INSERT INTO adv_founder_reports (id, tenant_id, title, content, created_at, updated_at)
VALUES
  (
    'a1000001-0000-4000-8000-000000000001',
    '00000000-0000-0000-0000-000000000000',
    'Decisão: resumo diário com Gemini e n8n no Railway',
    'Definimos usar API Gemini para gerar o resumo e n8n no Railway para agendar. Implementação do cron no Admin, tabela adv_ideias e skill de ideias editoriais. Cursor e Grove na implementação.',
    '2025-03-02T10:00:00+00:00',
    '2025-03-02T10:00:00+00:00'
  ),
  (
    'a1000001-0000-4000-8000-000000000002',
    '00000000-0000-0000-0000-000000000000',
    'Deploy Vercel ready e próximos testes',
    'Build passou com npm. Testes do GET/POST cron e correção do modelo Gemini (v1 + gemini-2.0-flash). Resumo diário gerado com sucesso. Próximo: workflow n8n e testes da página Ideias.',
    '2025-03-03T19:00:00+00:00',
    '2025-03-03T19:00:00+00:00'
  )
ON CONFLICT (id) DO NOTHING;

-- Tarefas concluídas em 02/03/2025 (updated_at = dia em que foram marcadas como done)
INSERT INTO adv_tasks (id, tenant_id, title, description, status, task_kind, created_at, updated_at)
VALUES
  ('b2000001-0000-4000-8000-000000000001', '00000000-0000-0000-0000-000000000000', 'Configurar n8n no Railway com Postgres', 'Setup do serviço n8n e variáveis DB_POSTGRESDB_* com host público.', 'done', 'operational', '2025-03-01T14:00:00+00:00', '2025-03-02T11:30:00+00:00'),
  ('b2000001-0000-4000-8000-000000000002', '00000000-0000-0000-0000-000000000000', 'Criar migration e tabela adv_ideias (backlog)', 'Tabela para backlog de ideias (copy, editorial, etc.) com RLS.', 'done', 'dev', '2025-03-01T15:00:00+00:00', '2025-03-02T12:00:00+00:00'),
  ('b2000001-0000-4000-8000-000000000003', '00000000-0000-0000-0000-000000000000', 'Implementar API /api/cron/daily-summary (GET e POST)', 'Rotas cron para dados do dia e gravação do resumo com Gemini.', 'done', 'dev', '2025-03-01T16:00:00+00:00', '2025-03-02T14:00:00+00:00'),
  ('b2000001-0000-4000-8000-000000000004', '00000000-0000-0000-0000-000000000000', 'Implementar API /api/ideias para ingestão', 'POST para inserir ideias (auth por CRON_SECRET ou sessão).', 'done', 'dev', '2025-03-01T17:00:00+00:00', '2025-03-02T15:00:00+00:00'),
  ('b2000001-0000-4000-8000-000000000005', '00000000-0000-0000-0000-000000000000', 'Skill referências e ideias editorial (Ogilvy)', 'SKILL.md e registro no README dos skills.', 'done', 'operational', '2025-03-02T09:00:00+00:00', '2025-03-02T16:00:00+00:00'),
  ('b2000001-0000-4000-8000-000000000006', '00000000-0000-0000-0000-000000000000', 'Documentar passo a passo resumo diário e n8n', 'Docs: passo-a-passo, api-cron-daily-summary, checklist workflow.', 'done', 'operational', '2025-03-02T10:00:00+00:00', '2025-03-02T17:00:00+00:00')
ON CONFLICT (id) DO NOTHING;

-- Tarefas concluídas em 03/03/2025
INSERT INTO adv_tasks (id, tenant_id, title, description, status, task_kind, created_at, updated_at)
VALUES
  ('b2000001-0000-4000-8000-000000000011', '00000000-0000-0000-0000-000000000000', 'Ajustar build Vercel (npm install / npm run build)', 'vercel.json com fallback npm para contornar bug do pnpm.', 'done', 'dev', '2025-03-02T18:00:00+00:00', '2025-03-03T16:00:00+00:00'),
  ('b2000001-0000-4000-8000-000000000012', '00000000-0000-0000-0000-000000000000', 'Corrigir modelo Gemini (v1 + gemini-2.0-flash)', 'Atualizar daily-summary.ts para API v1 e modelo válido.', 'done', 'dev', '2025-03-03T17:00:00+00:00', '2025-03-03T18:30:00+00:00'),
  ('b2000001-0000-4000-8000-000000000013', '00000000-0000-0000-0000-000000000000', 'Testar GET/POST cron com CRON_SECRET', 'Validação das rotas de resumo diário em produção.', 'done', 'operational', '2025-03-03T18:00:00+00:00', '2025-03-03T19:00:00+00:00'),
  ('b2000001-0000-4000-8000-000000000014', '00000000-0000-0000-0000-000000000000', 'Documentar testes pós-deploy e checklist n8n', 'Guia testes-pos-deploy e n8n-workflow-resumo-diario-checklist.', 'done', 'operational', '2025-03-03T19:00:00+00:00', '2025-03-03T19:30:00+00:00')
ON CONFLICT (id) DO NOTHING;
