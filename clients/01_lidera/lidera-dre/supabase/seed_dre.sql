-- =============================================================================
-- Lidera DRE: seed categorias, subcategorias e lançamentos (dados fictícios)
-- Rodar após 001_schema_dre.sql e 002_dre_auth_roles.sql
-- =============================================================================

-- Garantir organização padrão (id usado nos lançamentos)
INSERT INTO public.dre_organizacoes (id, nome)
VALUES ('00000000-0000-4000-8000-000000000001', 'Organização padrão')
ON CONFLICT (id) DO NOTHING;

-- IDs fixos para referência nos lançamentos
INSERT INTO public.dre_categorias (id, nome, tipo, ordem) VALUES
  ('a1000001-0000-4000-8000-000000000001', 'Receitas diretas', 'entrada', 1),
  ('a1000001-0000-4000-8000-000000000002', 'Outras Entradas', 'entrada', 2),
  ('a1000001-0000-4000-8000-000000000003', 'Devoluções de Compra de Serviços', 'entrada', 3),
  ('b2000001-0000-4000-8000-000000000001', 'Despesas Administrativas', 'saida', 1),
  ('b2000001-0000-4000-8000-000000000002', 'Despesas Financeiras', 'saida', 2),
  ('b2000001-0000-4000-8000-000000000003', 'Despesas com Vendas e Marketing', 'saida', 3),
  ('b2000001-0000-4000-8000-000000000004', 'Outras Despesas', 'saida', 4),
  ('b2000001-0000-4000-8000-000000000005', 'Impostos e Taxas', 'saida', 5),
  ('b2000001-0000-4000-8000-000000000006', 'Despesas com Pessoal', 'saida', 6),
  ('b2000001-0000-4000-8000-000000000007', 'Investimento', 'saida', 7)
ON CONFLICT (id) DO NOTHING;

-- Subcategorias (categoria_id referencia categorias acima)
INSERT INTO public.dre_subcategorias (id, categoria_id, nome, ordem) VALUES
  ('c3000001-0000-4000-8000-000000000001', 'a1000001-0000-4000-8000-000000000001', 'Clientes - Serviços Pontuais', 1),
  ('c3000001-0000-4000-8000-000000000002', 'a1000001-0000-4000-8000-000000000001', 'Clientes - Variáveis', 2),
  ('c3000001-0000-4000-8000-000000000003', 'a1000001-0000-4000-8000-000000000001', 'Clientes - Serviços Recorrentes', 3),
  ('c3000001-0000-4000-8000-000000000004', 'a1000001-0000-4000-8000-000000000002', 'Integralização de capital', 1),
  ('c3000001-0000-4000-8000-000000000005', 'a1000001-0000-4000-8000-000000000002', 'Investimento CDB', 2),
  ('c3000001-0000-4000-8000-000000000006', 'a1000001-0000-4000-8000-000000000003', 'Estornos / Devoluções', 1),
  ('d4000001-0000-4000-8000-000000000001', 'b2000001-0000-4000-8000-000000000001', 'Domínio / Certificado', 1),
  ('d4000001-0000-4000-8000-000000000002', 'b2000001-0000-4000-8000-000000000001', 'Google Workspace / ERP', 2),
  ('d4000001-0000-4000-8000-000000000003', 'b2000001-0000-4000-8000-000000000001', 'Outros', 3),
  ('d4000001-0000-4000-8000-000000000004', 'b2000001-0000-4000-8000-000000000002', 'Cesta / Relacionamento', 1),
  ('d4000001-0000-4000-8000-000000000005', 'b2000001-0000-4000-8000-000000000003', 'Design / Freelancer', 1),
  ('d4000001-0000-4000-8000-000000000006', 'b2000001-0000-4000-8000-000000000003', 'Meta Ads / API', 2),
  ('d4000001-0000-4000-8000-000000000007', 'b2000001-0000-4000-8000-000000000004', 'Integralização / Transferência', 1),
  ('d4000001-0000-4000-8000-000000000008', 'b2000001-0000-4000-8000-000000000005', 'SEFAZ / Junta Comercial', 1),
  ('d4000001-0000-4000-8000-000000000009', 'b2000001-0000-4000-8000-000000000006', 'Pró-labore', 1),
  ('d4000001-0000-4000-8000-00000000000a', 'b2000001-0000-4000-8000-000000000007', 'CDB / Aplicação', 1)
ON CONFLICT (id) DO NOTHING;

-- Poucos lançamentos de exemplo (restaurante) — organização padrão
INSERT INTO public.dre_lancamentos (data_lancamento, tipo, categoria_id, subcategoria_id, descricao, valor, observacoes, responsavel, organizacao_id) VALUES
  ('2026-01-15', 'entrada', 'a1000001-0000-4000-8000-000000000001', 'c3000001-0000-4000-8000-000000000001', 'Venda salão - jantar', 420.00, 'PIX', 'Caixa', '00000000-0000-4000-8000-000000000001'),
  ('2026-01-15', 'entrada', 'a1000001-0000-4000-8000-000000000001', 'c3000001-0000-4000-8000-000000000002', 'Delivery - pedidos do dia', 380.50, 'PIX/iFood', 'Caixa', '00000000-0000-4000-8000-000000000001'),
  ('2026-01-16', 'saida', 'b2000001-0000-4000-8000-000000000001', 'd4000001-0000-4000-8000-000000000003', 'Compras insumos - hortifruti', 280.00, 'PIX', 'Gerente', '00000000-0000-4000-8000-000000000001'),
  ('2026-01-16', 'saida', 'b2000001-0000-4000-8000-000000000001', 'd4000001-0000-4000-8000-000000000003', 'Gás e limpeza', 165.00, 'PIX', 'Gerente', '00000000-0000-4000-8000-000000000001'),
  ('2026-01-17', 'saida', 'b2000001-0000-4000-8000-000000000006', 'd4000001-0000-4000-8000-000000000009', 'Salários - equipe cozinha/salão', 5200.00, 'TED', 'Gerente', '00000000-0000-4000-8000-000000000001'),
  ('2026-01-18', 'saida', 'b2000001-0000-4000-8000-000000000001', 'd4000001-0000-4000-8000-000000000003', 'Aluguel do ponto', 3500.00, 'BOLETO', 'Gerente', '00000000-0000-4000-8000-000000000001');
