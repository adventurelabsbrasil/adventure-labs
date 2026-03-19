-- Seed do catálogo único de apps/ativos (apps, clients, tools).
-- Executar uma vez após as migrations. Inserções são condicionais a repo_path para evitar duplicatas.
-- Ref.: plano Catálogo de Apps e Ativos.

-- Admin (OS interno)
INSERT INTO adv_apps (tenant_id, nome, slug, descricao, repo_path, tipo, phase, sort_order, assignee_email, vercel_url, github_owner, github_repo)
SELECT '00000000-0000-0000-0000-000000000000'::uuid, 'Admin', 'admin', 'Painel interno da equipe: clientes, projetos, tarefas, plano do dia, relatórios, ponto.', 'apps/admin', 'internal', 'production', 10, 'contato@adventurelabs.com.br', 'https://admin.adventurelabs.com.br', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM adv_apps WHERE repo_path = 'apps/admin');

-- CRM Adventure
INSERT INTO adv_apps (tenant_id, nome, slug, descricao, repo_path, tipo, phase, sort_order, assignee_email, vercel_url, github_owner, github_repo)
SELECT '00000000-0000-0000-0000-000000000000'::uuid, 'CRM Adventure', 'adventure', 'CRM de serviços: projetos/serviços da agência. React + Vite, Supabase.', 'apps/adventure', 'saas', 'production', 20, NULL, NULL, NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM adv_apps WHERE repo_path = 'apps/adventure');

-- Elite (landing)
INSERT INTO adv_apps (tenant_id, nome, slug, descricao, repo_path, tipo, phase, sort_order, assignee_email, vercel_url, github_owner, github_repo)
SELECT '00000000-0000-0000-0000-000000000000'::uuid, 'Landing ELITE', 'elite', 'Landing do Método ELITE: captação de leads, área admin. Next.js, Supabase, Shadcn/UI.', 'apps/elite', 'landing', 'production', 30, NULL, NULL, NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM adv_apps WHERE repo_path = 'apps/elite');

-- Finfeed
INSERT INTO adv_apps (tenant_id, nome, slug, descricao, repo_path, tipo, phase, sort_order, assignee_email, vercel_url, github_owner, github_repo)
SELECT '00000000-0000-0000-0000-000000000000'::uuid, 'Finfeed', 'finfeed', 'Dashboard de gastos no cartão Nubank (2025). HTML estático + Python, deploy GitHub Pages.', 'apps/finfeed', 'tool', 'production', 40, NULL, NULL, NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM adv_apps WHERE repo_path = 'apps/finfeed');

-- Lidera DRE
INSERT INTO adv_apps (tenant_id, nome, slug, descricao, repo_path, tipo, phase, sort_order, assignee_email, vercel_url, supabase_project_ref, github_owner, github_repo)
SELECT '00000000-0000-0000-0000-000000000000'::uuid, 'Lidera DRE', 'lidera-dre', 'Demonstrativo de Resultados (DRE). Vite + React, Supabase.', 'clients/01_lidera/lidera-dre', 'saas', 'production', 50, NULL, NULL, NULL, NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM adv_apps WHERE repo_path = 'clients/01_lidera/lidera-dre');

-- Lidera Skills
INSERT INTO adv_apps (tenant_id, nome, slug, descricao, repo_path, tipo, phase, sort_order, assignee_email, vercel_url, github_owner, github_repo)
SELECT '00000000-0000-0000-0000-000000000000'::uuid, 'Lidera Skills', 'lidera-skills', 'Gestão de avaliações de desempenho (Skills). App web/SaaS.', 'clients/01_lidera/lidera-skills', 'saas', 'production', 60, NULL, NULL, NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM adv_apps WHERE repo_path = 'clients/01_lidera/lidera-skills');

-- Lidera Space
INSERT INTO adv_apps (tenant_id, nome, slug, descricao, repo_path, tipo, phase, sort_order, assignee_email, vercel_url, github_owner, github_repo)
SELECT '00000000-0000-0000-0000-000000000000'::uuid, 'Lidera Space', 'lidera-space', 'Área de membros / ponto. Next.js + Supabase.', 'clients/01_lidera/lidera-space', 'saas', 'production', 70, NULL, NULL, NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM adv_apps WHERE repo_path = 'clients/01_lidera/lidera-space');

-- Lidera Space v1 (legacy)
INSERT INTO adv_apps (tenant_id, nome, slug, descricao, repo_path, tipo, phase, sort_order, assignee_email, vercel_url, github_owner, github_repo)
SELECT '00000000-0000-0000-0000-000000000000'::uuid, 'Lidera Space v1', 'lideraspacev1', 'Versão anterior do Space. Next.js + Supabase.', 'clients/01_lidera/lideraspacev1', 'app', 'maintenance', 75, NULL, NULL, NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM adv_apps WHERE repo_path = 'clients/01_lidera/lideraspacev1');

-- Rose Portal Advocacia
INSERT INTO adv_apps (tenant_id, nome, slug, descricao, repo_path, tipo, phase, sort_order, assignee_email, vercel_url, github_owner, github_repo)
SELECT '00000000-0000-0000-0000-000000000000'::uuid, 'Rose Portal Advocacia', 'roseportaladvocacia', 'Portal de advocacia. Next.js.', 'clients/02_rose/roseportaladvocacia', 'app', 'production', 80, NULL, NULL, NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM adv_apps WHERE repo_path = 'clients/02_rose/roseportaladvocacia');

-- Young Talents
INSERT INTO adv_apps (tenant_id, nome, slug, descricao, repo_path, tipo, phase, sort_order, assignee_email, vercel_url, supabase_project_ref, github_owner, github_repo)
SELECT '00000000-0000-0000-0000-000000000000'::uuid, 'Young Talents', 'young-talents', 'Banco de talentos: candidatos, export CSV/XLS/PDF. Supabase/Data Connect.', 'clients/04_young/young-talents', 'saas', 'production', 90, NULL, NULL, NULL, NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM adv_apps WHERE repo_path = 'clients/04_young/young-talents');

-- Ranking Vendas
INSERT INTO adv_apps (tenant_id, nome, slug, descricao, repo_path, tipo, phase, sort_order, assignee_email, vercel_url, github_owner, github_repo)
SELECT '00000000-0000-0000-0000-000000000000'::uuid, 'Ranking Vendas', 'ranking-vendas', 'Ranking de vendas. Vite + React.', 'clients/04_young/ranking-vendas', 'app', 'production', 95, NULL, NULL, NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM adv_apps WHERE repo_path = 'clients/04_young/ranking-vendas');

-- Young EMP (início/docs)
INSERT INTO adv_apps (tenant_id, nome, slug, descricao, repo_path, tipo, phase, sort_order, assignee_email, github_owner, github_repo)
SELECT '00000000-0000-0000-0000-000000000000'::uuid, 'Young EMP', 'young-emp', 'Projeto em início ou documentação. Sem app na raiz.', 'clients/04_young/young-emp', 'outro', 'idea', 98, NULL, NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM adv_apps WHERE repo_path = 'clients/04_young/young-emp');

-- Dbgr (tool)
INSERT INTO adv_apps (tenant_id, nome, slug, descricao, repo_path, tipo, phase, sort_order, assignee_email, github_owner, github_repo)
SELECT '00000000-0000-0000-0000-000000000000'::uuid, 'Dbgr', 'dbgr', 'Ferramenta/CLI interna. TypeScript.', 'tools/dbgr', 'tool', 'production', 100, NULL, NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM adv_apps WHERE repo_path = 'tools/dbgr');

-- Musicalart
INSERT INTO adv_apps (tenant_id, nome, slug, descricao, repo_path, tipo, phase, sort_order, assignee_email, github_owner, github_repo)
SELECT '00000000-0000-0000-0000-000000000000'::uuid, 'Musicalart', 'musicalart', 'Front estático (HTML/CSS/JS). Sem Node na raiz.', 'tools/musicalart', 'tool', 'mvp', 110, NULL, NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM adv_apps WHERE repo_path = 'tools/musicalart');

-- NotebookLM
INSERT INTO adv_apps (tenant_id, nome, slug, descricao, repo_path, tipo, phase, sort_order, assignee_email, github_owner, github_repo)
SELECT '00000000-0000-0000-0000-000000000000'::uuid, 'NotebookLM', 'notebooklm', 'Scripts Python: NotebookLM API, auth Google.', 'tools/notebooklm', 'tool', 'mvp', 120, NULL, NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM adv_apps WHERE repo_path = 'tools/notebooklm');

-- Xtractor
INSERT INTO adv_apps (tenant_id, nome, slug, descricao, repo_path, tipo, phase, sort_order, assignee_email, vercel_url, github_owner, github_repo)
SELECT '00000000-0000-0000-0000-000000000000'::uuid, 'Xtractor', 'xtractor', 'Projeto Python: api, scripts, serverless (vercel.json).', 'tools/xtractor', 'tool', 'mvp', 130, NULL, NULL, NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM adv_apps WHERE repo_path = 'tools/xtractor');

-- Gdrive-migrator
INSERT INTO adv_apps (tenant_id, nome, slug, descricao, repo_path, tipo, phase, sort_order, assignee_email, github_owner, github_repo)
SELECT '00000000-0000-0000-0000-000000000000'::uuid, 'Gdrive Migrator', 'gdrive-migrator', 'Script/config de migração Google Drive.', 'tools/gdrive-migrator', 'tool', 'mvp', 140, NULL, NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM adv_apps WHERE repo_path = 'tools/gdrive-migrator');

-- Imports (dados/scripts)
INSERT INTO adv_apps (tenant_id, nome, slug, descricao, repo_path, tipo, phase, sort_order, assignee_email, github_owner, github_repo)
SELECT '00000000-0000-0000-0000-000000000000'::uuid, 'Imports', 'imports', 'Dados/scripts de importação (CSV, CartaoCredito, ExtratoConta).', 'tools/imports', 'tool', 'maintenance', 150, NULL, NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM adv_apps WHERE repo_path = 'tools/imports');
