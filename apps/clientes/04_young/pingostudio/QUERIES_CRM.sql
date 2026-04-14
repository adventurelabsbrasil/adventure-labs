-- ==========================================================================
-- PINGOSTUDIO-264 v2 — Queries versionadas p/ Metabase (Young CRM)
-- ==========================================================================
-- Cada bloco SQL abaixo corresponde a UMA "Question" do Metabase na
-- Collection "Young Empreendimentos". Copia o SQL, cola no Metabase em
-- "+ New → SQL query" apontando pra database "Young Pingolead (CRM)",
-- salva com o nome indicado, adiciona no dashboard respectivo.
--
-- IMPORTANTE — chute inteligente de enum:
--   Assumo `crm_deals.status` com valores: 'lead', 'contato',
--   'agendamento', 'visita', 'proposta', 'venda', 'perdido'.
--   Se a Fase B (scripts/03_enum_values.sql) revelar valores diferentes
--   (ex.: 'novo', 'won', 'lost', ou enum numérico), fazer replace-all
--   neste arquivo e salvar as Questions de novo.
--
-- Schema: public (Supabase vvtympzatclvjaqucebr)
-- Tabelas liberadas p/ looker_reader: crm_consultores, crm_deal_images,
-- crm_deal_phones, crm_deals, crm_empreendimentos, crm_fontes_lead,
-- crm_motivos_perda, crm_task_images, crm_tasks.
-- ==========================================================================

-- ============================================================
-- DASHBOARD 1 — VISÃO GERAL DE VENDAS
-- ============================================================

-- Q1.1 — KPI: Total de leads no período
-- [[WHERE d.created_at BETWEEN {{start_date}} AND {{end_date}}]]
SELECT COUNT(*) AS total_leads
FROM public.crm_deals d
[[WHERE d.created_at BETWEEN {{start_date}} AND {{end_date}}]];

-- Q1.2 — KPI: Total de vendas no período
SELECT COUNT(*) AS total_vendas
FROM public.crm_deals d
WHERE d.status = 'venda'
[[AND d.created_at BETWEEN {{start_date}} AND {{end_date}}]];

-- Q1.3 — KPI: Taxa de conversão global (%)
SELECT ROUND(
  100.0 * COUNT(*) FILTER (WHERE d.status = 'venda')
       / NULLIF(COUNT(*), 0)
, 2) AS taxa_conversao_pct
FROM public.crm_deals d
[[WHERE d.created_at BETWEEN {{start_date}} AND {{end_date}}]];

-- Q1.4 — KPI: Valor total vendido no período (R$)
SELECT COALESCE(SUM(d.preco_lote), 0) AS valor_total_vendido
FROM public.crm_deals d
WHERE d.status = 'venda'
[[AND d.created_at BETWEEN {{start_date}} AND {{end_date}}]];

-- Q1.5 — KPI: Ticket médio (R$)
SELECT COALESCE(AVG(d.preco_lote), 0) AS ticket_medio
FROM public.crm_deals d
WHERE d.status = 'venda'
  AND d.preco_lote IS NOT NULL
[[AND d.created_at BETWEEN {{start_date}} AND {{end_date}}]];

-- Q1.6 — Time series: Leads/dia e Vendas/dia
SELECT
  d.created_at::date AS dia,
  COUNT(*) AS leads,
  COUNT(*) FILTER (WHERE d.status = 'venda') AS vendas
FROM public.crm_deals d
[[WHERE d.created_at BETWEEN {{start_date}} AND {{end_date}}]]
GROUP BY d.created_at::date
ORDER BY dia;

-- ============================================================
-- DASHBOARD 2 — FUNIL DE CONVERSÃO
-- ============================================================

-- Q2.1 — Funil: contagem por etapa (gráfico Funnel)
-- Cada etapa conta também quem avançou além dela (cumulativo reverso)
WITH base AS (
  SELECT d.id, d.status, d.created_at
  FROM public.crm_deals d
  [[WHERE d.created_at BETWEEN {{start_date}} AND {{end_date}}]]
)
SELECT etapa, total, ordem
FROM (
  SELECT '1. Leads recebidos'    AS etapa, COUNT(*) AS total, 1 AS ordem FROM base
  UNION ALL
  SELECT '2. Contatos feitos',     COUNT(*) FILTER (WHERE status IN ('contato','agendamento','visita','proposta','venda')), 2 FROM base
  UNION ALL
  SELECT '3. Visitas agendadas',   COUNT(*) FILTER (WHERE status IN ('agendamento','visita','proposta','venda')), 3 FROM base
  UNION ALL
  SELECT '4. Visitas realizadas',  COUNT(*) FILTER (WHERE status IN ('visita','proposta','venda')), 4 FROM base
  UNION ALL
  SELECT '5. Propostas enviadas',  COUNT(*) FILTER (WHERE status IN ('proposta','venda')), 5 FROM base
  UNION ALL
  SELECT '6. Vendas fechadas',     COUNT(*) FILTER (WHERE status = 'venda'), 6 FROM base
) t
ORDER BY ordem;

-- Q2.2 — Taxas de conversão entre etapas (%)
WITH base AS (
  SELECT
    COUNT(*)                                                                   AS leads,
    COUNT(*) FILTER (WHERE status IN ('contato','agendamento','visita','proposta','venda'))    AS contatos,
    COUNT(*) FILTER (WHERE status IN ('agendamento','visita','proposta','venda'))              AS agendamentos,
    COUNT(*) FILTER (WHERE status IN ('visita','proposta','venda'))                            AS visitas,
    COUNT(*) FILTER (WHERE status IN ('proposta','venda'))                                     AS propostas,
    COUNT(*) FILTER (WHERE status = 'venda')                                                   AS vendas
  FROM public.crm_deals
  [[WHERE created_at BETWEEN {{start_date}} AND {{end_date}}]]
)
SELECT
  ROUND(100.0 * contatos     / NULLIF(leads, 0)       , 2) AS "1→2 Contact Rate (%)",
  ROUND(100.0 * agendamentos / NULLIF(contatos, 0)    , 2) AS "2→3 Appointment Setting Rate (%)",
  ROUND(100.0 * visitas      / NULLIF(agendamentos, 0), 2) AS "3→4 Show Rate (%)",
  ROUND(100.0 * propostas    / NULLIF(visitas, 0)     , 2) AS "4→5 Proposal Rate (%)",
  ROUND(100.0 * vendas       / NULLIF(propostas, 0)   , 2) AS "5→6 Closing Rate (%)",
  ROUND(100.0 * vendas       / NULLIF(leads, 0)       , 2) AS "Global Lead-to-Sale (%)"
FROM base;

-- ============================================================
-- DASHBOARD 3 — VENDAS POR CONSULTOR
-- ============================================================

-- Q3.1 — Ranking de vendas por consultor (bar chart)
SELECT
  c.nome AS consultor,
  COUNT(*) FILTER (WHERE d.status = 'venda')                          AS vendas,
  COALESCE(SUM(d.preco_lote) FILTER (WHERE d.status = 'venda'), 0)    AS valor_total
FROM public.crm_deals d
JOIN public.crm_consultores c ON c.id = d.responsavel_id
[[WHERE d.created_at BETWEEN {{start_date}} AND {{end_date}}]]
GROUP BY c.nome
ORDER BY vendas DESC;

-- Q3.2 — Pivot: consultor × leads/vendas/taxa/valor
SELECT
  c.nome AS consultor,
  COUNT(*)                                                            AS leads,
  COUNT(*) FILTER (WHERE d.status = 'venda')                          AS vendas,
  ROUND(100.0 * COUNT(*) FILTER (WHERE d.status = 'venda')
              / NULLIF(COUNT(*), 0), 2)                               AS taxa_conv_pct,
  COALESCE(SUM(d.preco_lote) FILTER (WHERE d.status = 'venda'), 0)    AS valor_total,
  COALESCE(AVG(d.preco_lote) FILTER (WHERE d.status = 'venda'), 0)    AS ticket_medio
FROM public.crm_deals d
JOIN public.crm_consultores c ON c.id = d.responsavel_id
[[WHERE d.created_at BETWEEN {{start_date}} AND {{end_date}}]]
GROUP BY c.nome
ORDER BY vendas DESC;

-- Q3.3 — Distribuição de leads por consultor (donut)
SELECT c.nome AS consultor, COUNT(*) AS leads
FROM public.crm_deals d
JOIN public.crm_consultores c ON c.id = d.responsavel_id
[[WHERE d.created_at BETWEEN {{start_date}} AND {{end_date}}]]
GROUP BY c.nome
ORDER BY leads DESC;

-- ============================================================
-- DASHBOARD 4 — VENDAS POR EMPREENDIMENTO (ATIVO)
-- ============================================================

-- Q4.1 — Ranking por volume de vendas
SELECT
  e.nome                                                              AS empreendimento,
  e.cidade                                                            AS cidade,
  COUNT(*) FILTER (WHERE d.status = 'venda')                          AS vendas,
  COALESCE(SUM(d.preco_lote) FILTER (WHERE d.status = 'venda'), 0)    AS valor_total
FROM public.crm_deals d
JOIN public.crm_empreendimentos e ON e.id = d.empreendimento_id
[[WHERE d.created_at BETWEEN {{start_date}} AND {{end_date}}]]
GROUP BY e.nome, e.cidade
ORDER BY vendas DESC;

-- Q4.2 — Pivot: empreendimento × leads/vendas/valor/ticket
SELECT
  e.nome                                                              AS empreendimento,
  COUNT(*)                                                            AS leads,
  COUNT(*) FILTER (WHERE d.status = 'venda')                          AS vendas,
  ROUND(100.0 * COUNT(*) FILTER (WHERE d.status = 'venda')
              / NULLIF(COUNT(*), 0), 2)                               AS taxa_conv_pct,
  COALESCE(SUM(d.preco_lote) FILTER (WHERE d.status = 'venda'), 0)    AS valor_total,
  COALESCE(AVG(d.preco_lote) FILTER (WHERE d.status = 'venda'), 0)    AS ticket_medio
FROM public.crm_deals d
JOIN public.crm_empreendimentos e ON e.id = d.empreendimento_id
[[WHERE d.created_at BETWEEN {{start_date}} AND {{end_date}}]]
GROUP BY e.nome
ORDER BY vendas DESC;

-- Q4.3 — Distribuição de vendas por cidade (pin map ou bar)
SELECT
  e.cidade                                                            AS cidade,
  COUNT(*) FILTER (WHERE d.status = 'venda')                          AS vendas,
  COALESCE(SUM(d.preco_lote) FILTER (WHERE d.status = 'venda'), 0)    AS valor_total
FROM public.crm_deals d
JOIN public.crm_empreendimentos e ON e.id = d.empreendimento_id
[[WHERE d.created_at BETWEEN {{start_date}} AND {{end_date}}]]
GROUP BY e.cidade
ORDER BY vendas DESC;

-- ============================================================
-- DASHBOARD 5 — MOTIVOS DE PERDA
-- ============================================================

-- Q5.1 — Contagem por motivo de perda (bar)
SELECT
  COALESCE(m.nome, '(sem motivo registrado)')                         AS motivo,
  COUNT(*)                                                            AS perdas
FROM public.crm_deals d
LEFT JOIN public.crm_motivos_perda m ON m.id = d.motivo_perda_id
WHERE d.status = 'perdido'
[[AND d.created_at BETWEEN {{start_date}} AND {{end_date}}]]
GROUP BY m.nome
ORDER BY perdas DESC;

-- Q5.2 — Motivos de perda ao longo do tempo (trend)
SELECT
  DATE_TRUNC('month', d.created_at)::date                             AS mes,
  COALESCE(m.nome, '(sem motivo)')                                    AS motivo,
  COUNT(*)                                                            AS perdas
FROM public.crm_deals d
LEFT JOIN public.crm_motivos_perda m ON m.id = d.motivo_perda_id
WHERE d.status = 'perdido'
[[AND d.created_at BETWEEN {{start_date}} AND {{end_date}}]]
GROUP BY mes, m.nome
ORDER BY mes, perdas DESC;

-- ============================================================
-- QUERIES COMPLEMENTARES (uso opcional em dashboards futuros)
-- ============================================================

-- QC.1 — Split interna (consultor Adventure) vs externa (imobiliária)
SELECT
  CASE
    WHEN d.responsavel_venda_imobiliaria_id IS NOT NULL THEN 'Externa (imobiliária)'
    WHEN d.responsavel_venda_user_id IS NOT NULL OR d.responsavel_id IS NOT NULL THEN 'Interna (consultor)'
    ELSE '(não atribuída)'
  END                                                                 AS intermediacao,
  COUNT(*) FILTER (WHERE d.status = 'venda')                          AS vendas,
  COALESCE(SUM(d.preco_lote) FILTER (WHERE d.status = 'venda'), 0)    AS valor_total
FROM public.crm_deals d
[[WHERE d.created_at BETWEEN {{start_date}} AND {{end_date}}]]
GROUP BY intermediacao;

-- QC.2 — Fontes de lead (top origem)
SELECT
  COALESCE(f.nome, '(sem fonte)')                                     AS fonte,
  COUNT(*)                                                            AS leads,
  COUNT(*) FILTER (WHERE d.status = 'venda')                          AS vendas,
  ROUND(100.0 * COUNT(*) FILTER (WHERE d.status = 'venda')
              / NULLIF(COUNT(*), 0), 2)                               AS taxa_conv_pct
FROM public.crm_deals d
LEFT JOIN public.crm_fontes_lead f ON f.id = d.fonte_id
[[WHERE d.created_at BETWEEN {{start_date}} AND {{end_date}}]]
GROUP BY f.nome
ORDER BY leads DESC;

-- QC.3 — Atividades por consultor (volumes de tarefas crm_tasks)
SELECT
  c.nome                                                              AS consultor,
  COUNT(*)                                                            AS atividades,
  COUNT(*) FILTER (WHERE t.concluida)                                 AS concluidas,
  ROUND(100.0 * COUNT(*) FILTER (WHERE t.concluida)
              / NULLIF(COUNT(*), 0), 2)                               AS taxa_conclusao_pct
FROM public.crm_tasks t
JOIN public.crm_consultores c ON c.id = t.responsavel_id
[[WHERE t.created_at BETWEEN {{start_date}} AND {{end_date}}]]
GROUP BY c.nome
ORDER BY atividades DESC;

-- ==========================================================================
-- Notas de implementação no Metabase
-- ==========================================================================
-- Filtros [[WHERE ... {{var}}]] são sintaxe Metabase para filtros
-- opcionais. Em cada Question:
--   1. Em "Filters" à direita, criar variável `start_date` e `end_date`
--      do tipo "Date".
--   2. Mapear a variável para um "Dashboard filter" (Variable type: Date)
--      no dashboard pai, para filtro global único propagar pra todas as
--      Questions.
--
-- Visualização recomendada por Question:
--   Q1.1–Q1.5 → Number (big single-value KPI card)
--   Q1.6      → Line chart (eixo X = dia, 2 séries)
--   Q2.1      → Funnel chart
--   Q2.2      → Table
--   Q3.1, 4.1 → Bar (horizontal, ordenado)
--   Q3.2, 4.2 → Table (pivot visual do Metabase)
--   Q3.3      → Donut
--   Q4.3      → Bar ou Pin Map (se ativar lookups de coord)
--   Q5.1      → Bar horizontal
--   Q5.2      → Stacked line chart ou Stacked bar
--   QC.1      → Bar
--   QC.2, 3   → Table ordenada
--
-- Dashboard layout sugerido:
--   Dashboard "Young — Visão Geral":     Q1.1–Q1.6 (topo: KPIs; abaixo: time series)
--   Dashboard "Young — Funil":           Q2.1, Q2.2
--   Dashboard "Young — Consultores":     Q3.1–Q3.3
--   Dashboard "Young — Empreendimentos": Q4.1–Q4.3
--   Dashboard "Young — Perdas":          Q5.1, Q5.2
-- ==========================================================================
