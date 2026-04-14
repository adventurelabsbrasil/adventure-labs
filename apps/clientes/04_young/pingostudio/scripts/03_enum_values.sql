-- ==========================================================================
-- PINGOSTUDIO-264 — Descobrir valores reais dos enums do CRM
-- ==========================================================================
-- Necessário para finalizar o FIELD_MAPPING.md (substituir 'venda' e
-- 'qualificada' pelos valores reais usados na Pingolead).
--
-- Rodar via Buzz com psql contra direct ou pooler que já funciona.
--   psql "$URL" -f scripts/03_enum_values.sql > scripts/03_enum_values.out.txt
-- ==========================================================================

\echo '=== 1. Valores do enum status em crm_deals ==='
SELECT status, COUNT(*) AS total
FROM public.crm_deals
GROUP BY status
ORDER BY total DESC;

\echo ''
\echo '=== 2. Valores do enum qualificacao em crm_deals ==='
SELECT qualificacao, COUNT(*) AS total
FROM public.crm_deals
GROUP BY qualificacao
ORDER BY total DESC;

\echo ''
\echo '=== 3. Distribuição de fontes de lead ==='
SELECT f.nome AS fonte, COUNT(d.id) AS leads
FROM public.crm_deals d
LEFT JOIN public.crm_fontes_lead f ON d.fonte_id = f.id
GROUP BY f.nome
ORDER BY leads DESC
LIMIT 30;

\echo ''
\echo '=== 4. Títulos distintos em crm_tasks (top 30) ==='
SELECT titulo, COUNT(*) AS total
FROM public.crm_tasks
GROUP BY titulo
ORDER BY total DESC
LIMIT 30;

\echo ''
\echo '=== 5. Formas de pagamento em crm_deals ==='
SELECT forma_pagamento, COUNT(*) AS total
FROM public.crm_deals
WHERE forma_pagamento IS NOT NULL
GROUP BY forma_pagamento
ORDER BY total DESC;

\echo ''
\echo '=== 6. Empreendimentos ativos (para o filtro Ativo do Looker) ==='
SELECT e.nome, e.cidade, COUNT(d.id) AS deals
FROM public.crm_empreendimentos e
LEFT JOIN public.crm_deals d ON d.empreendimento_id = e.id
WHERE e.ativo = true
GROUP BY e.id, e.nome, e.cidade
ORDER BY e.nome;

\echo ''
\echo '=== 7. Consultores ativos ==='
SELECT c.nome, COUNT(d.id) AS deals_responsavel
FROM public.crm_consultores c
LEFT JOIN public.crm_deals d ON d.responsavel_id = c.id
WHERE c.ativo = true
GROUP BY c.id, c.nome
ORDER BY deals_responsavel DESC;

\echo ''
\echo '=== 8. Split interna/externa ==='
SELECT
  CASE WHEN responsavel_venda_imobiliaria_id IS NOT NULL THEN 'Externa'
       WHEN responsavel_venda_user_id IS NOT NULL THEN 'Interna'
       ELSE 'Não atribuída'
  END AS intermediacao,
  COUNT(*) AS total
FROM public.crm_deals
GROUP BY intermediacao;
