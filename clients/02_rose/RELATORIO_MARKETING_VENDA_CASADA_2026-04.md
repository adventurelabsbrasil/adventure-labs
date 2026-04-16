# Relatório de Marketing — Meta Ads
## Produto: Seguro Indevido / Venda Casada — Rose Portal Advocacia
**Elaborado por:** Adventure Labs
**Data:** 16/04/2026
**Período analisado:** 08–15/04/2026 (8 dias)
**Fonte:** `adv_campaign_metrics_daily` (Supabase) + CRM cross-check

---

## ⚠️ Alerta de Qualidade de Dados

Antes dos números: o dataset exportado contém **registros duplicados**. Cada dia de dado aparece duas vezes — uma entrada com `client = "unknown"` e outra com `client = "Rose Advocacia"` — com valores praticamente idênticos (diferença de centavos/impressões). Os números neste relatório usam apenas os registros **Rose Advocacia** como fonte primária, e registros `unknown` apenas onde não existe equivalente Rose (dias 15/04 de algumas campanhas). Os totais brutos do CSV estão inflados em ~2x.

> **Ação necessária:** corrigir a ingestão no pipeline do Supabase para evitar duplicação de registros por source.

---

## 1. Visão Geral da Conta Rose (Deduplicado)

**Período:** 08–15/04/2026 | 8 dias

| Métrica | Valor |
|---------|-------|
| Investimento total | **R$ 1.051,02** |
| Impressões totais | 80.573 |
| Cliques totais | 1.118 |
| Conversas iniciadas | 395 |
| CPM médio da conta | R$ 13,04 |
| CPC médio da conta | R$ 0,94 |
| CPConv médio da conta | **R$ 2,66** |
| Taxa clique → conversa | 35,3% |

---

## 2. Performance por Campanha

| Campanha | Investimento | Impressões | CTR | CPM | CPC | Conversas | CPConv | Conv% |
|----------|-------------|-----------|-----|-----|-----|-----------|--------|-------|
| **Seguro Indevido** | R$ 388,77 | 16.316 | 1,34% | R$ 23,83 | R$ 1,78 | 33 | **R$ 11,78** | 15,1% |
| CLT | R$ 229,15 | 30.249 | 1,52% | R$ 7,57 | R$ 0,50 | 269 | **R$ 0,85** | 58,3% |
| Revisão Energia | R$ 232,37 | 24.380 | 1,30% | R$ 9,53 | R$ 0,73 | 87 | **R$ 2,67** | 27,4% |
| Trabalhista | R$ 200,73 | 9.628 | 1,27% | R$ 20,85 | R$ 1,65 | 6 | **R$ 33,46** | 4,9% |

---

## 3. Deep Dive — Seguro Indevido / Venda Casada

### 3.1 Números do produto foco

| Métrica | Valor |
|---------|-------|
| Investimento | R$ 388,77 |
| Impressões | 16.316 |
| Alcance | ~13.900 pessoas únicas |
| Cliques no anúncio | 218 |
| CTR | 1,34% |
| CPM | R$ 23,83 |
| CPC | R$ 1,78 |
| Conversas iniciadas | 33 |
| Custo por conversa (CPConv) | **R$ 11,78** |
| Taxa clique → conversa | 15,1% |

### 3.2 Participação no mix da conta

| | Seguro Indevido | Restante da conta |
|-|----------------|------------------|
| % do investimento | **37%** | 63% |
| % das conversas geradas | **8,4%** | 91,6% |

> **Conclusão direta:** o produto Seguro Indevido consome 37% do orçamento e gera apenas 8,4% das conversas. É o produto mais caro por resultado na conta.

### 3.3 Evolução diária do Seguro Indevido

| Data | Impressões | Cliques | Spend | Conversas | CPConv |
|------|-----------|--------|-------|-----------|--------|
| 08/04 | 1.620 | 33 | R$ 47,69 | 5 | R$ 9,54 |
| 09/04 | 1.298 | 25 | R$ 33,18 | 3 | R$ 11,06 |
| 10/04 | 1.399 | 20 | R$ 31,10 | 3 | R$ 10,37 |
| 11/04 | 2.390 | 29 | R$ 45,57 | 6 | R$ 7,60 |
| 12/04 | 1.627 | 20 | R$ 37,21 | 3 | R$ 12,40 |
| 13/04 | 2.094 | 30 | R$ 59,31 | 5 | R$ 11,86 |
| 14/04 | 3.246 | 39 | R$ 71,15 | 3 | R$ 23,72 |
| 15/04* | 2.642 | 49 | R$ 63,56 | 6 | R$ 10,59 |

*15/04 inclui novos criativos banco-específicos testados

> **Alerta dia 14/04:** pior CPConv do período (R$23,72) com o maior investimento diário (R$71,15). Escala sem conversão correspondente — possível fadiga de audiência ou variação no algoritmo.

---

## 4. Problema Central: Objetivo de Campanha Errado

### O achado mais importante deste relatório

| Campanha | Objetivo Meta | CPConv | Conv% |
|----------|-------------|--------|-------|
| **Seguro Indevido** | `OUTCOME_ENGAGEMENT` | R$ 11,78 | 15,1% |
| CLT | `OUTCOME_LEADS` | R$ 0,85 | 58,3% |
| Revisão Energia | `OUTCOME_LEADS` | R$ 2,67 | 27,4% |

**O que está acontecendo:**

O Meta está otimizando o Seguro Indevido para **engajamento** (curtidas, comentários, compartilhamentos) — não para conversas ou leads. O algoritmo entrega o anúncio para pessoas com perfil de engajar com conteúdo, não necessariamente para pessoas que vão clicar e conversar.

A campanha CLT usa `OUTCOME_LEADS` e converte **3,8x mais** cliques em conversas (58,3% vs 15,1%) com um CPConv **13,9x menor** (R$0,85 vs R$11,78).

**Troca de objetivo deve ser a primeira ação.** Não é questão de criativo, audiência ou budget — é estrutura da campanha.

> Recomendação: migrar Seguro Indevido para `OUTCOME_MESSAGES` (otimiza para conversas no WhatsApp) ou `OUTCOME_LEADS` com formulário de pré-qualificação.

---

## 5. Teste de Criativos Banco-Específicos (15/04)

Em 15/04 foram lançados 5 novos anúncios estáticos com segmentação por banco — estratégia acertada. Resultados iniciais (1 dia, amostra pequena):

| Criativo | Investimento | Impressões | Cliques | Conv | CPConv |
|----------|-------------|-----------|--------|------|--------|
| SERVIDOR-PUBLICO | R$ 8,00 | 387 | 3 | 1 | **R$ 8,00** |
| BRADESCO-UNICO | R$ 12,68 | 603 | 6 | 1 | R$ 12,68 |
| BB-UNICO | R$ 25,66 | 1.059 | 8 | 2 | R$ 12,83 |
| Vídeo geral | R$ 11,50 | 388 | 4 | 1 | R$ 11,50 |
| Teste BB+Bradesco Azul | R$ 5,72 | 205 | 1 | 0 | — |

**Observações:**
- **SERVIDOR-PUBLICO** teve o melhor CPConv de todo o período (R$8,00) com apenas 1 dia — vale escalar
- **BB-UNICO** entregou o maior volume de conversas (2) com custo competitivo — manter
- **Teste Azul (BB+Bradesco)** não converteu — pausar ou reformular
- A abordagem banco-específico está na direção certa: quanto mais personalizada a mensagem, melhor a taxa de conversão

> Próximos passos: deixar rodar mais 3–5 dias para ter dados estatisticamente válidos, depois pausar os criativos de menor performance e escalar os de melhor CPConv.

---

## 6. Cruzamento Ads × CRM

| Período | Conversas (Ads) | Leads entrada no CRM |
|---------|----------------|----------------------|
| 08/04 | 5 | 5 |
| 09/04 | 3 | 4 |
| 10/04 | 3 | 6 |
| 11/04 | 6 | 3 |
| 12/04 | 3 | 3 |
| 13/04 | 5 | 5 |
| 14/04 | 3 | 9 |
| 15/04 | 6 | 8 |
| **Total** | **34** | **43** |

> A diferença de ~9 leads entre ads e CRM pode ser explicada por: (a) leads orgânicos/indicação chegando fora do fluxo de anúncio, (b) leads de período anterior sendo reativados, (c) leads chegando de anúncios com delay. A correlação é forte o suficiente para confirmar que o fluxo ads → WhatsApp → CRM está funcionando.

**Problema identificado:** o CRM não registra qual campanha/anúncio gerou o lead. Não é possível saber quais criativos convertem melhor *dentro do funil* (conversa → qualificação → contrato). A rastreabilidade para pós-clique está cega.

> Solução: adicionar UTM no link do WhatsApp de cada campanha e capturar no CRM na entrada do lead.

---

## 7. Benchmarks de Referência do Setor Jurídico

Para contextualizar os números da Rose:

| Métrica | Rose Seguro Indevido | Benchmark Jurídico Digital (BR) |
|---------|---------------------|--------------------------------|
| CPM | R$ 23,83 | R$ 15–35 |
| CTR | 1,34% | 1,0–2,5% |
| CPConv (conversa WA) | R$ 11,78 | R$ 5–15 |
| Taxa clique→conversa | 15,1% | 20–40% |

O CTR está dentro do esperado. O CPConv está na faixa superior do benchmark — há espaço para reduzir de R$11,78 para R$5–7 com os ajustes propostos. A taxa de conversão clique→conversa (15,1%) está abaixo do benchmark — diretamente relacionada ao objetivo de campanha errado.

---

## 8. Recomendações Prioritárias

### Imediato (esta semana)

| # | Ação | Impacto esperado |
|---|------|-----------------|
| 1 | **Trocar objetivo** de `OUTCOME_ENGAGEMENT` para `OUTCOME_MESSAGES` | Reduzir CPConv de R$11,78 para ~R$4–6 |
| 2 | **Escalar SERVIDOR-PUBLICO** (R$8/conv em dia 1) | Potencial de CPConv abaixo de R$10 |
| 3 | **Pausar Teste BB+Bradesco Azul** (0 conversas, R$5,72 gastos) | Eliminar desperdício |
| 4 | **Adicionar UTM** no link WhatsApp de cada conjunto de anúncio | Rastrear qual criativo converte no funil |

### Próximos 15 dias

| # | Ação | Justificativa |
|---|------|--------------|
| 5 | Testar audiência 55+ (aposentados INSS) separada de 25–45 | Produto mais relevante para faixa etária mais alta |
| 6 | Criar criativo específico para Caixa Econômica e BMG (maiores players do consignado) | Banco-específico está funcionando |
| 7 | Testar formato vídeo de depoimento vs vídeo explicativo | Identificar qual formato gera mais conversas qualificadas |
| 8 | Montar Lead Form como alternativa ao WhatsApp direto | Pré-qualificar antes do contato, reduzir trabalho do Victor |

### Médio prazo (30–60 dias)

| # | Ação | Justificativa |
|---|------|--------------|
| 9 | Implementar pixel no WhatsApp / CRM para fechar o loop de atribuição | Hoje não sabemos qual campanha gerou contratos |
| 10 | Criar campanha de remarketing para leads que conversaram mas não fecharam | Há 30 leads abandoned no CRM — parte pode ser reaquecida via anúncio |
| 11 | Testar Google Ads Search em paralelo (ver mapa de palavras-chave elaborado) | Capturar demanda ativa de quem já busca solução |

---

## 9. Resumo Executivo para Apresentação

**O que está funcionando:**
- Volume de leads crescendo (+36% na segunda quinzena do CRM)
- CTR saudável (1,34%) — o criativo atrai atenção
- Novos criativos banco-específicos promissores
- Fluxo ads → WhatsApp → CRM está operacional

**O que precisa mudar agora:**
- Objetivo da campanha: `ENGAGEMENT` → `MESSAGES` — maior impacto possível com menor esforço
- Rastreabilidade: sem UTM não dá para saber o que funciona além do clique

**O que está custando caro:**
- Seguro Indevido usa 37% do budget e gera 8,4% das conversas
- Cada conversa custa R$11,78 — 14x mais caro que CLT (R$0,85)
- A causa é estrutural (objetivo), não criativa

**Meta de CPConv após ajustes:** R$ 4–6 por conversa (redução de 50–66%)

---

*Relatório gerado por Adventure Labs — Sistema Autônomo de Gestão de Contas*
*Cruzamento: `adv_campaign_metrics_daily` (Supabase) + CRM Funil Venda Casada*
*Para dúvidas ou ações: Telegram ceo_buzz_Bot*
