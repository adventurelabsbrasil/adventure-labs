# Field Mapping — Looker atual (Sheets) → Looker novo (Supabase `crm_*`)

> **Fonte de referência:** `reference/looker_atual_2026-04-13.pdf` (5 páginas, 967KB)
> **Schema alvo:** `public.crm_*` no Supabase `vvtympzatclvjaqucebr`
> **Status:** plano de remap pronto, aguardando `looker_reader` funcionar via pooler (Fase B diagnóstico em andamento)

---

## 1. Inventário do relatório atual

Páginas identificadas no PDF:

| # | Página | Escopo | Fonte de dados |
|---|--------|--------|----------------|
| 1 | **Marketing e Vendas** | KPIs gerais, Vendas/Leads por ativo, Gaps mensais, Vendas por consultor, Leads diários, Investimento por canal, Intermediação, Vendas por ativo | Sheets |
| 2 | **Leads por etapa do funil** | Tabela diária + taxas de conversão (CTR, CLR, LCR, ASR, SR, CR, LTS, LR) | Sheets |
| 3 | **Leads de imobiliárias** / **Videochamadas** | Leads Externa + agendamentos/visitas por canal | Sheets |
| 4 | **Mais detalhes** | Tabela de atividades por consultor (Atividades / Agendamentos / Visitas / Tx Conv A>V) | Sheets |
| 5 | **ROAS Detalhado / Mapa** | ROAS + Google Maps (Dados cartográficos ©2026) | Sheets |

## 2. Filtros globais — remapeamento

| Filtro atual (Sheets) | Nova coluna (Postgres CRM) | Notas |
|-----------------------|----------------------------|-------|
| Subcategoria do relatório | — | **Manter no Sheets** (metadata do próprio report, não é dado) |
| Período | `crm_deals.created_at::date` ou `crm_tasks.created_at::date` | Date range global |
| Ativo | `crm_empreendimentos.nome` via join `crm_deals.empreendimento_id` | Dropdown populado por SELECT DISTINCT nome FROM crm_empreendimentos WHERE ativo=true |
| Cidade | `crm_empreendimentos.cidade` | Coluna `cidade` já existe direto em `crm_empreendimentos` |
| Intermediação da venda | derivado: CASE WHEN `crm_deals.responsavel_venda_imobiliaria_id IS NOT NULL` THEN 'Externa' ELSE 'Interna' END | Campo calculado novo no Looker |
| Canal | `crm_fontes_lead.nome` via join `crm_deals.fonte_id` | Dropdown populado da tabela |

## 3. KPI Cards — remapeamento

| Card | Fórmula no Sheets atual | Fórmula nova (Postgres CRM) | Observação |
|------|--------------------------|------------------------------|------------|
| **Investimento** | soma da coluna investimento | **GAP — fica no Sheets** | CRM não tem dados de ads |
| **Impressões** | soma das impressões | **GAP — fica no Sheets** | Idem |
| **Cliques** | soma dos cliques | **GAP — fica no Sheets** | Idem |
| **Leads** | COUNT leads | `COUNT(crm_deals.id)` no período | Cada linha de `crm_deals` = 1 lead |
| **Vendas** | COUNT vendas | `COUNT(crm_deals.id) FILTER (WHERE status = 'venda')` | Enum `status` precisa ser confirmado (ver §7) |
| **Valor do lote à vista** | SUM valor | `SUM(crm_deals.preco_lote) FILTER (WHERE status = 'venda' AND forma_pagamento = 'à vista')` | Filtrar só vendas concretizadas + à vista |
| **CTR** | Cliques / Impressões | **GAP (Sheets)** | Depende de ads |
| **CPC** | Investimento / Cliques | **GAP (Sheets)** | Depende de ads |
| **CPA** | Investimento / Vendas | **HÍBRIDO**: `Sheets.Investimento / COUNT(crm_deals WHERE status='venda')` | Numerador Sheets, denominador Postgres |
| **CPL** | Investimento / Leads | **HÍBRIDO**: `Sheets.Investimento / COUNT(crm_deals)` | Idem |
| **Vendas qualificadas** | COUNT com flag | `COUNT(crm_deals.id) FILTER (WHERE qualificacao = 'qualificada' AND status = 'venda')` | Enum `qualificacao` a confirmar |
| **Vendas qualificadas %** | V.qualif / V.total | `vendas_qualificadas / vendas * 100` | Campo calculado |

## 4. Gráficos — remapeamento detalhado

### Investimento por Categoria (stacked bar)
- **Sheets:** categoria × investimento mensal
- **Postgres:** **GAP** — permanece no Sheets

### Vendas por Ativo (donut)
- **Sheets:** count vendas por ativo
- **Postgres:** `SELECT e.nome, COUNT(d.id) FROM crm_deals d JOIN crm_empreendimentos e ON d.empreendimento_id = e.id WHERE d.status = 'venda' GROUP BY e.nome`

### Leads por Ativo (bar)
- **Sheets:** count leads por ativo
- **Postgres:** `SELECT e.nome, COUNT(d.id) FROM crm_deals d JOIN crm_empreendimentos e ON d.empreendimento_id = e.id GROUP BY e.nome`

### Análise de Gaps de Vendas (monthly bars nov/2024 → abr/2026)
- **Sheets:** valor de vendas por mês
- **Postgres:** `SELECT DATE_TRUNC('month', d.created_at) AS mes, SUM(d.preco_lote) FROM crm_deals d WHERE d.status = 'venda' GROUP BY mes`
- **Nota:** pode ter diferença numérica vs Sheets se Sheets consolidava de outra fonte (Sienge contratos?). Validar com spot check.

### Vendas mensais por consultor (pivot Interna/Externa × mês × {Venda qualif, Vendas, Valor})
- **Sheets:** pivot complexa
- **Postgres (custom query SQL):**
  ```sql
  SELECT
    DATE_TRUNC('month', d.created_at) AS mes,
    CASE WHEN d.responsavel_venda_imobiliaria_id IS NOT NULL THEN 'Externa' ELSE 'Interna' END AS intermediacao,
    COUNT(*) FILTER (WHERE d.qualificacao = 'qualificada' AND d.status = 'venda') AS venda_qualificada,
    COUNT(*) FILTER (WHERE d.status = 'venda') AS vendas,
    SUM(d.preco_lote) FILTER (WHERE d.status = 'venda' AND d.forma_pagamento = 'à vista') AS valor_lote_a_vista
  FROM crm_deals d
  GROUP BY mes, intermediacao
  ORDER BY mes DESC, intermediacao
  ```

### Leads diários por Ativo (line + Meta Diária)
- **Sheets:** leads/dia × ativo + linha de meta
- **Postgres:** `SELECT d.created_at::date AS dia, e.nome, COUNT(*) FROM crm_deals d JOIN crm_empreendimentos e ON d.empreendimento_id = e.id GROUP BY dia, e.nome`
- **Meta Diária:** **manter Sheets** (não tem tabela de metas no CRM)

### Investimento por canal (daily stacked — Meta/Google/Outdoor/Mobília/Sala/Renders)
- **Sheets/Postgres:** **GAP total — fica no Sheets**

### Responsável pela venda (donut por consultor)
- **Sheets:** count vendas por consultor
- **Postgres:** `SELECT c.nome, COUNT(d.id) FROM crm_deals d JOIN crm_consultores c ON d.responsavel_id = c.id WHERE d.status = 'venda' GROUP BY c.nome`

### Intermediação da venda (bar Interna × Externa)
- **Postgres:** `SELECT intermediacao, COUNT(*) FROM (SELECT CASE WHEN responsavel_venda_imobiliaria_id IS NOT NULL THEN 'Externa' ELSE 'Interna' END AS intermediacao FROM crm_deals WHERE status='venda') t GROUP BY intermediacao`

### Leads por etapa do funil (tabela diária: Impressões, Cliques, Leads gerados, Leads, Contatos, Agendamentos, Visitas, Vendas, Perdas)
- **Impressões/Cliques:** GAP → Sheets
- **Leads gerados / Leads:** `COUNT(crm_deals WHERE created_at::date = D)`
- **Contatos:** `COUNT(crm_deals WHERE status IN ('contato', 'agendamento', 'visita', 'venda'))` (inclusão em cascata)
- **Agendamentos:** `COUNT(crm_tasks WHERE titulo ILIKE '%agendamento%')` OU `COUNT(crm_deals WHERE status IN ('agendamento','visita','venda'))` (depende de como Pingolead modela)
- **Visitas:** `COUNT(crm_tasks WHERE titulo ILIKE '%visita%')` OU `COUNT(crm_deals WHERE status IN ('visita','venda'))`
- **Vendas:** `COUNT(crm_deals WHERE status='venda')`
- **Perdas:** `COUNT(crm_deals WHERE status='perdido')` ou motivo_perda_id IS NOT NULL

### Taxas de conversão do funil (CTR, CLR, LCR, ASR, SR, CR, LTS, LR)
- **CTR** (Click-Through Rate) = Cliques/Impressões → **GAP (Sheets)**
- **CLR** (Click-to-Lead Rate) = Leads/Cliques → **HÍBRIDO** (num Postgres, den Sheets)
- **LCR** (Lead-to-Contact Rate) = Contatos/Leads → **Postgres 100%**
- **ASR** (Appointment Setting Rate) = Agendamentos/Contatos → **Postgres**
- **SR** (Show Rate) = Visitas/Agendamentos → **Postgres**
- **CR** (Closing Rate) = Vendas/Visitas → **Postgres**
- **LTS** (Lead-to-Sale Rate) = Vendas/Leads → **Postgres**
- **LR** (Loss Rate) = Perdas/(Vendas+Perdas) → **Postgres**

### Leads de imobiliárias em atendimento
- **Postgres:** `SELECT COUNT(*) FROM crm_deals WHERE responsavel_venda_imobiliaria_id IS NOT NULL AND status NOT IN ('venda','perdido')`

### Atividades por consultor (Atividades/Agendamentos/Visitas/Tx Conv A>V)
- **Postgres:** joins de `crm_tasks` com `crm_consultores` (responsavel_id). Tx Conv A>V = Visitas/Agendamentos

### ROAS Detalhado
- **ROAS** = Valor vendas / Investimento → **HÍBRIDO** (num Postgres, den Sheets)

### Google Maps (mapa dos empreendimentos)
- Usa `crm_empreendimentos.cidade`. Se quiser geolocalização precisa, precisa adicionar `latitude/longitude` em `crm_empreendimentos` (gap, mas Looker resolve por nome de cidade OK)

## 5. Estratégia: data source híbrida

No Looker Studio novo, criar **duas fontes**:

1. **Postgres — CRM Young** (host: pooler IPv4, user: looker_reader.vvtympzatclvjaqucebr, tabelas: crm_deals, crm_empreendimentos, crm_consultores, crm_fontes_lead, crm_motivos_perda, crm_tasks)
2. **Sheets — Ads Young** (manter o link atual da planilha, APENAS com as colunas de ads: data, canal, ativo, impressões, cliques, investimento)

Gráficos que misturam (CPL, CPA, CTR por campanha, Investimento por canal) usam **Blending** do Looker (join entre as duas fontes pela chave `data + ativo`).

## 6. Fórmulas calculadas (recriar no Looker)

Campos calculados que o Looker precisa ter após a troca:

```
Intermediacao       = CASE WHEN responsavel_venda_imobiliaria_id IS NOT NULL THEN "Externa" ELSE "Interna" END
Vendas_qualif_pct   = SUM(vendas_qualificadas) / SUM(vendas) * 100
CPA                 = SUM(Sheets.Investimento) / SUM(Postgres.vendas)       -- via Blending
CPL                 = SUM(Sheets.Investimento) / SUM(Postgres.leads)        -- via Blending
ROAS                = SUM(Postgres.valor_lote) / SUM(Sheets.Investimento)   -- via Blending
CLR                 = SUM(Postgres.leads) / SUM(Sheets.cliques)             -- via Blending
LCR                 = SUM(Postgres.contatos) / SUM(Postgres.leads)
ASR                 = SUM(Postgres.agendamentos) / SUM(Postgres.contatos)
SR                  = SUM(Postgres.visitas) / SUM(Postgres.agendamentos)
CR                  = SUM(Postgres.vendas) / SUM(Postgres.visitas)
LTS                 = SUM(Postgres.vendas) / SUM(Postgres.leads)
LR                  = SUM(Postgres.perdas) / (SUM(Postgres.vendas) + SUM(Postgres.perdas))
```

## 7. Dados que ainda precisamos confirmar (via Buzz)

Para fechar esse mapa com 100% de certeza, Buzz precisa rodar 3 queries e commitar o output em `scripts/03_enum_values.out.txt`:

```sql
-- Valores do enum status em crm_deals
SELECT DISTINCT status FROM public.crm_deals ORDER BY status;

-- Valores do enum qualificacao em crm_deals
SELECT DISTINCT qualificacao FROM public.crm_deals ORDER BY qualificacao;

-- Distribuição de fontes (para sanear o dropdown Canal do Looker)
SELECT f.nome, COUNT(d.id) AS leads
FROM crm_deals d LEFT JOIN crm_fontes_lead f ON d.fonte_id = f.id
GROUP BY f.nome ORDER BY leads DESC;

-- Distribuição de status com contagem (entender o funil real)
SELECT status, COUNT(*) FROM crm_deals GROUP BY status ORDER BY 2 DESC;

-- Títulos distintos de crm_tasks (para descobrir como mapear agendamento/visita)
SELECT titulo, COUNT(*) FROM crm_tasks GROUP BY titulo ORDER BY 2 DESC LIMIT 30;
```

Com isso eu refino as fórmulas acima substituindo `'venda'`, `'qualificada'`, `'contato'` pelos valores reais do enum.

## 8. Passo-a-passo no Looker Studio (Fase 4)

Quando Buzz confirmar pooler OK:

1. Abrir relatório atual → Arquivo → Fazer uma cópia → **"Young Empreendimentos — Dashboard (Supabase)"**
2. Recursos → Gerenciar fontes → Adicionar → PostgreSQL:
   - host `aws-0-sa-east-1.pooler.supabase.com` · porta `6543` · db `postgres` · user `looker_reader.vvtympzatclvjaqucebr` · SSL ON
   - Selecionar 6 tabelas: `crm_deals`, `crm_empreendimentos`, `crm_consultores`, `crm_fontes_lead`, `crm_motivos_perda`, `crm_tasks`
3. Para métricas complexas (pivots), usar **Custom Query** (cola os SELECTs da seção 4 deste doc)
4. Manter a fonte Sheets original para colunas de ads (Investimento, Impressões, Cliques)
5. Em cada chart, "Alterar fonte de dados": trocar para Postgres correspondente. Usar Blending quando precisar misturar ads + vendas
6. Recriar campos calculados da seção 6
7. Reconfigurar filtros globais conforme §2
8. Remover colunas antigas do Sheets que agora vêm do Postgres
9. Validar página a página: abrir → conferir números contra o report antigo (toleramos diferença <5% em métricas derivadas devido a timing)
10. Compartilhar com stakeholders Young (lista tirada da aba Compartilhar do report antigo)
11. Renomear antigo para `[DEPRECATED 2026-04] Young — Marketing e Vendas`

## 9. Checklist final (pós-Fase 4)

- [ ] 5 páginas do report novo renderizam sem "Configuration error"
- [ ] Todos os 12 KPI cards funcionam (ou mostram "Sem dados" se ads ainda em Sheets)
- [ ] 12+ gráficos migrados (stacked bars, donuts, lines, pivots)
- [ ] 8 taxas do funil (CTR, CLR, LCR, ASR, SR, CR, LTS, LR) calculando
- [ ] Filtros globais funcionam cross-page
- [ ] Blending Sheets + Postgres funcionando nos KPIs híbridos
- [ ] Compartilhamento replicado
- [ ] Report antigo renomeado `[DEPRECATED]`
- [ ] Planilha Sheets: só colunas de ads (resto descontinuado)
- [ ] Telegram comunicado para grupo Young
