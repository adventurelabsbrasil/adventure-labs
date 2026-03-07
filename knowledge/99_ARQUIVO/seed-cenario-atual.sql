-- Dados iniciais do cenário atual (LOTEADORA ELITE, planos Scale/Essential, microsaas ATS/CRM, aulas do webinar).
-- Execute após rodar a migration 20250302100000_adv_cenario_atual.sql.
-- Ajuste tenant_id se necessário (ou use o default da migration).

-- 1) Produtos/serviços do catálogo
INSERT INTO adv_products (tenant_id, nome, tipo, descricao, ativo)
VALUES
  (
    COALESCE((SELECT tenant_id FROM adv_clients LIMIT 1), '00000000-0000-0000-0000-000000000000'::uuid),
    'LOTEADORA ELITE',
    'programa',
    'Consultoria em Gestão de Lançamento Imobiliário. Webinar semanal para donos e gestores de loteadoras. Terça 16h.',
    true
  ),
  (
    COALESCE((SELECT tenant_id FROM adv_clients LIMIT 1), '00000000-0000-0000-0000-000000000000'::uuid),
    'Assessoria Martech - Scale',
    'plano_assessoria',
    'Plano Scale da assessoria em martech',
    true
  ),
  (
    COALESCE((SELECT tenant_id FROM adv_clients LIMIT 1), '00000000-0000-0000-0000-000000000000'::uuid),
    'Assessoria Martech - Essential',
    'plano_assessoria',
    'Plano Essential da assessoria em martech',
    true
  ),
  (
    COALESCE((SELECT tenant_id FROM adv_clients LIMIT 1), '00000000-0000-0000-0000-000000000000'::uuid),
    'ATS Adventure',
    'microsaas',
    'MicroSaaS ATS da Adventure para venda',
    true
  ),
  (
    COALESCE((SELECT tenant_id FROM adv_clients LIMIT 1), '00000000-0000-0000-0000-000000000000'::uuid),
    'CRM Adventure',
    'microsaas',
    'MicroSaaS CRM da Adventure para venda',
    true
  );

-- 2) Sessões do programa LOTEADORA ELITE (webinar toda terça 16h)
-- Vincula ao projeto interno "Loteadora Elite" (nome ou title)
INSERT INTO adv_program_sessions (tenant_id, project_id, data, numero_aula, titulo, horario_fixo)
SELECT
  proj.tenant_id,
  proj.id,
  d.data,
  d.numero_aula,
  d.titulo,
  'Terça 16h'
FROM (SELECT * FROM adv_projects WHERE (nome ILIKE '%Loteadora Elite%' OR title ILIKE '%Loteadora Elite%') AND client_id IS NULL LIMIT 1) proj
CROSS JOIN (VALUES
  ('2025-02-24'::date, 1, 'Aula 1 - Gestão de Lançamento'),
  ('2025-03-03'::date, 2, 'Aula 2')
) AS d(data, numero_aula, titulo);

-- Se o INSERT acima não inserir (projeto não existe), use o comentário abaixo ajustando o project_id manualmente:
-- INSERT INTO adv_program_sessions (tenant_id, project_id, data, numero_aula, titulo, horario_fixo)
-- VALUES
--   ('00000000-0000-0000-0000-000000000000'::uuid, '<ID_DO_PROJETO_LOTEADORA_ELITE>'::uuid, '2025-02-24', 1, 'Aula 1 - Gestão de Lançamento', 'Terça 16h'),
--   ('00000000-0000-0000-0000-000000000000'::uuid, '<ID_DO_PROJETO_LOTEADORA_ELITE>'::uuid, '2025-03-03', 2, 'Aula 2', 'Terça 16h');

-- 3) Vincular projetos existentes aos produtos (Loteadora Elite, Adventure CRM, ATS)
UPDATE adv_projects
SET product_id = (SELECT id FROM adv_products WHERE nome = 'LOTEADORA ELITE' AND tipo = 'programa' LIMIT 1)
WHERE (nome ILIKE '%Loteadora Elite%' OR title ILIKE '%Loteadora Elite%') AND client_id IS NULL;

UPDATE adv_projects
SET product_id = (SELECT id FROM adv_products WHERE nome = 'CRM Adventure' AND tipo = 'microsaas' LIMIT 1)
WHERE (nome ILIKE '%Adventure CRM%' OR title ILIKE '%Adventure CRM%') AND client_id IS NULL;

UPDATE adv_projects
SET product_id = (SELECT id FROM adv_products WHERE nome = 'ATS Adventure' AND tipo = 'microsaas' LIMIT 1)
WHERE (nome ILIKE '%Young Talents%' OR title ILIKE '%Young Talents%' OR nome ILIKE '%ATS%' OR title ILIKE '%ATS%') AND client_id IS NULL;

-- 4) Opcional: marcar clientes fixos (3) e pontual (1) — descomente e ajuste os nomes conforme seu cadastro
-- UPDATE adv_clients SET tipo_cliente = 'fixo' WHERE nome IN ('LIDERA SOLUÇÕES', 'YOUNG EMPREENDIMENTOS', 'ROSE PORTAL ADVOCACIA');
-- UPDATE adv_clients SET tipo_cliente = 'pontual' WHERE nome = 'NOME_DO_CLIENTE_PONTUAL';
