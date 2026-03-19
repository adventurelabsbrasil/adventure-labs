-- Seed estágios padrão do funil CRM (tenant Adventure)
INSERT INTO adv_crm_funnel_stages (tenant_id, name, sort_order)
VALUES
  ('00000000-0000-0000-0000-000000000000', 'Lead', 0),
  ('00000000-0000-0000-0000-000000000000', 'Qualificado', 1),
  ('00000000-0000-0000-0000-000000000000', 'Proposta', 2),
  ('00000000-0000-0000-0000-000000000000', 'Negociação', 3),
  ('00000000-0000-0000-0000-000000000000', 'Fechado - Ganho', 4),
  ('00000000-0000-0000-0000-000000000000', 'Fechado - Perdido', 5)
ON CONFLICT (tenant_id, name) DO NOTHING;
