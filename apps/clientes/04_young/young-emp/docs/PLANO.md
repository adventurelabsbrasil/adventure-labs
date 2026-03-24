# Plano: Young Emp – Painel Martech para Incorporadoras

## Stack e entrega

- **Frontend:** Vite + React + Tailwind CSS + Lucide React
- **Backend/DB/Auth:** Supabase
- **Deploy:** Vercel
- **Controle de versão:** GitHub

Objetivo: painel com tabelas e gráficos para métricas de Marketing e Vendas, filtros avançados e carregamento por etapas/paginação.

---

## 1. Arquitetura geral

- **Rotas claras:** cada tela (ex.: marketing diário, vendas, funil, métricas) com sua rota e carregamento sob demanda.
- **Paginação:** listagens e tabelas sempre paginadas; evitar carregar tudo de uma vez.

---

## 2. Modelo de dados (Supabase / PostgreSQL)

Estrutura mínima para a **primeira etapa** (tabela que recebe dados diários de Marketing e Vendas), **alinhada aos nomes das APIs** (ver seção 2.1):

**Entidades principais:**

- **`empreendimentos`** – projetos (incorporadora/loteadora)
- **`datas_referencia`** – apenas para controle de "qual dia os dados se referem"
- **`dados_marketing_diario`** – métricas diárias por canal (Meta, Google, etc.)
  - Campos: data, empreendimento_id, canal (meta_ads, google_ads, google_analytics), impressoes, cliques, cliques_link, visualizacoes_pagina, conversas_iniciadas, formularios_enviados, leads, custo, etc.
- **`dados_vendas_diario`** – estágios do funil de vendas por dia
  - Campos: data, empreendimento_id, contato_realizado, visita_agendada, visita_realizada, proposta_enviada, vendas, perdas, origem (RD/Sienge)
- **`vendas_detalhe`** – categorias (motivo compra/perda, responsável, valor à vista, a prazo, entrada, parcelas, primeira/última conversão UTM)
- **`metricas_custo`** – CPM, CPL, CPMQL, CPSQL, CPA (derivados ou armazenados)
- **`metricas_retorno`** – ROAS

Relacionamentos: `empreendimentos` como núcleo; dados diários e vendas sempre com `empreendimento_id` e `data` (ou período) para filtros.

### 2.1 Mapeamento de campos das APIs (RD Station CRM e Sienge)

**RD Station CRM** – [Referência](https://developers.rdstation.com/reference) (APIs CRM v1 e v2):

- **Deals (negociações):** `id`, `name`, `deal_stage_id` / `stage_id`, `win`, `hold`, `status`, `closed_at`, `created_at`, `updated_at`, `expected_close_date`, `organization_id`, `contact_id`, `owner_id`, `pipeline_id`, `closed_by_id`, `deal_lost_reason_id` / `lost_reason_id`, `deal_source`, `campaign`, `campaign_id`, `deal_custom_fields`, `deal_products`, etc.
- **Etapas do funil:** recurso Deal Stages; usar `deal_stage_id` / `stage_id` para ligar negociação à etapa.
- **Contatos:** `name`, `email`, `company`; campos adicionais via platform/contacts/fields.

**Sienge** – [Documentação REST](https://api.sienge.com.br/docs/):

- **Recursos relevantes:** Contratos de Vendas, Clientes, Tipos de Clientes, Unidades de Imóveis, Empreendimentos (Obras), Reservas de Unidades, Mapa Imobiliário Consolidado, Estoque de Insumos. Consultar a doc para nomes exatos dos campos de cada endpoint.

**Filtros avançados:** período, empreendimento(s), canal, campanha, origem, responsável.

---

## 3. Primeira etapa – escopo do protótipo

- **Opção A – Entrada manual (MVP rápido):** formulário com data, empreendimento, canal e métricas; dados no Supabase.
- **Opção B – Integrações desde o início:** RD Station e Sienge via Edge Functions/job.

Recomendação: primeiro modelo de dados + tela com entrada manual (ou CSV); depois RD e Sienge.

---

## 4. Integrações – ordem e estratégia

- **RD Station CRM:** Edge Function/job com OAuth; mapear funil e conversões para as tabelas.
- **Sienge:** job/Edge Function para estoque, custos, disponibilidade.
- **Meta/Google Ads e GA:** fase 2; tokens no backend; opção low-cost: webhook + Make/n8n.

---

## 5. Filtros avançados (prioridade alta)

Filtros por período, empreendimento, canal, campanha, origem, responsável. Query no Supabase com `.filter()`, `.gte()`, `.lte()`. UI: painel de filtros reutilizável; mesmo estado para tabelas e gráficos.

---

## 6. Gráficos – Looker vs custom

Recomendação para protótipo: **Recharts ou Tremor** no React com dados do Supabase; filtros unificados.

---

## 7. Métricas (CPM, CPL, ROAS, etc.)

Cálculo a partir de `dados_marketing_diario`; ROAS = receita / custo. UI: cards/tabela de métricas e gráficos de tendência.

---

## 8. Rotas iniciais

- `/` – dashboard resumo
- `/marketing` – dados diários de marketing
- `/vendas` – vendas e funil
- `/metricas` – CPM, CPL, ROAS
- `/empreendimentos` – CRUD
- `/integracao` – config tokens (futuro)

---

## 9. Próximos passos (ordem)

1. Setup: Vite + React + Tailwind + Lucide + Supabase
2. Schema Supabase + RLS
3. Auth
4. Tela de tabela de dados diários (entrada manual + listagem paginada)
5. Filtros avançados
6. Métricas (CPM, CPL, ROAS)
7. Gráficos (Recharts/Tremor)
8. Integrações RD Station e Sienge
9. Deploy Vercel
