-- Seed: tarefa "Correção segurança e UX – Young Talents / Adventure" (plano young_talents_security_and_ux).
-- Tipo Desenvolvimento (TI) para vincular issues no GitHub. Reexecutável: ON CONFLICT DO NOTHING.

INSERT INTO adv_tasks (id, tenant_id, title, description, status, task_kind, list_slug, created_at, updated_at)
VALUES (
  'c3000001-0000-4000-8000-000000000001',
  '00000000-0000-0000-0000-000000000000',
  'Correção segurança e UX – Young Talents / Adventure (evitar direcionar candidatos e visitantes ao login)',
  'Checklist: [ ] Workstream 1: Adventure – rota /young-talents e página informativa. [ ] Workstream 2: Young Talents – raiz pública e PUBLIC_PATHS. [ ] Workstream 3: Documentação em context e Young Talents. [ ] Verificação Supabase Young Talents: Redirect URLs apenas youngempreendimentos.adventurelabs.com.br. Vincular issues: "Adventure: rota /young-talents e ajuste catch-all" e "Young Talents: landing raiz e rotas públicas".',
  'to_do',
  'dev',
  'geral',
  NOW(),
  NOW()
)
ON CONFLICT (id) DO NOTHING;
