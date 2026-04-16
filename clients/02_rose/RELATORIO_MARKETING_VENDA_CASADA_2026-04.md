# Relatório de Marketing — Meta Ads
## Rose Portal Advocacia | Foco: Seguro Indevido / Venda Casada
**Elaborado por:** Adventure Labs
**Data:** 16/04/2026 | **Período:** 08–15/04/2026 (8 dias)
**Fontes:** `adv_campaign_metrics_daily` (Supabase) + CRM + configuração de público (Meta Ads Manager)

---

## Visão Geral da Conta

| Campanha | Invest. | Impressões | Cliques | CTR | CPM | Conversas | CPConv | Conv% |
|----------|---------|-----------|--------|-----|-----|-----------|--------|-------|
| **Seguro Indevido** | R$ 389 | 16.300 | 218 | 1,33% | R$ 23,83 | 33 | **R$ 11,78** | 15,1% |
| CLT | R$ 229 | 30.300 | 463 | 1,53% | R$ 7,57 | 269 | R$ 0,85 | 58,3% |
| Revisão Energia | R$ 233 | 24.400 | 318 | 1,30% | R$ 9,53 | 87 | R$ 2,67 | 27,4% |
| Trabalhista | R$ 201 | 9.600 | 122 | 1,27% | R$ 20,85 | 6 | R$ 33,46 | 4,9% |
| **Total** | **R$ 1.052** | **80.600** | **1.121** | **1,39%** | **R$ 13,04** | **395** | **R$ 2,66** | **35,2%** |

> **Participação do Seguro Indevido:** 37% do investimento, 8,4% das conversas.

---

## PARTE 1 — SEGURO INDEVIDO (prioridade)

### 1.1 Performance do Período

| Dia | Impressões | Cliques | Investimento | Conversas | CPConv |
|-----|-----------|--------|-------------|-----------|--------|
| 08/04 | 1.620 | 33 | R$ 47,69 | 5 | R$ 9,54 |
| 09/04 | 1.298 | 25 | R$ 33,18 | 3 | R$ 11,06 |
| 10/04 | 1.399 | 20 | R$ 31,10 | 3 | R$ 10,37 |
| 11/04 | 2.390 | 29 | R$ 45,57 | 6 | **R$ 7,60** ← melhor dia |
| 12/04 | 1.627 | 20 | R$ 37,21 | 3 | R$ 12,40 |
| 13/04 | 2.109 | 30 | R$ 59,63 | 5 | R$ 11,93 |
| 14/04 | 3.250 | 39 | R$ 71,42 | 3 | **R$ 23,81** ← pior dia |
| 15/04* | 2.642 | 22 | R$ 63,56 | 5 | R$ 12,71 |
| **Total** | **16.335** | **218** | **R$ 389,36** | **33** | **R$ 11,80** |

*15/04: primeiro dia dos estáticos banco-específicos (vídeo substituído)

---

### 1.2 Diagnóstico — Causa Raiz do Underperformance

#### 🔴 Problema #1: Audiência com interesses errados para o produto

Público atual configurado:
```
Localização: RS
Idade: 25–55
Interesses: Online marketplace, Bancos de investimento,
            Automóveis, Crédito, Financiamento,
            Investimento imobiliário, Portais de imóveis,
            Imóveis residenciais
```

**O problema:** esses interesses descrevem um perfil de **investidor ou comprador de imóvel/veículo**. Esse não é o perfil de quem tem empréstimo consignado com seguro indevido cobrado. São públicos completamente diferentes — e públicos de investimento/imóveis são **caros no leilão do Meta** (competem com bancos, construtoras, corretoras), o que explica diretamente o CPM de R$23,83.

| | Audiência atual | Audiência ideal |
|-|----------------|----------------|
| Perfil | Investidor, comprador de imóvel/carro | Tomador de crédito consignado |
| Quem é | 30–50, renda média-alta, interessa-se por investimentos | 45–70, aposentado/servidor/CLT com consignado |
| Por que não converte | Não tem o problema que o anúncio resolve | Tem o problema, responde ao gatilho |
| CPM típico | R$ 20–35 (audiência concorrida) | R$ 8–15 (menos disputada) |

#### 🔴 Problema #2: Teto de idade em 55 exclui o público principal

Empréstimos consignados são predominantemente contratados por:
- Aposentados e pensionistas INSS → **média 58–65 anos**
- Servidores públicos → **média 45–60 anos**
- CLT com consignado → **40–55 anos**

Com teto em 55 anos, a campanha **exclui a maior parte do público mais qualificado** para esse produto. Quem tem mais chance de ter seguro indevido no consignado está acima do teto atual.

#### 🟡 Problema #3: Troca de vídeo por estáticos em 15/04 — ainda sem dados suficientes

Os estáticos banco-específicos lançados em 15/04 tiveram apenas 1 dia de dados:

| Criativo | Investimento | Impr. | Cliques | Conv | CPConv |
|----------|-------------|------|--------|------|--------|
| SERVIDOR-PUBLICO | R$ 8,00 | 387 | 3 | 1 | **R$ 8,00** |
| BANCO-BB-UNICO | R$ 25,66 | 1.059 | 8 | 2 | R$ 12,83 |
| BANCO-BRADESCO-UNICO | R$ 12,68 | 603 | 6 | 1 | R$ 12,68 |
| Vídeo geral (ainda ativo) | R$ 11,50 | 388 | 4 | 1 | R$ 11,50 |
| Teste BB+Bradesco Azul | R$ 5,72 | 205 | 1 | 0 | — |

O SERVIDOR-PUBLICO teve o melhor CPConv (R$8,00) — mas 1 dia é amostra pequena demais para decisão. Precisam de 5–7 dias para confirmar qual criativo escalar.

---

### 1.3 O que está funcionando

- **CTR de 1,33%** está dentro do esperado para o setor — o criativo chama atenção
- **Abordagem banco-específica** é a direção certa (segmenta quem tem aquele banco)
- **Volume crescendo:** 66 leads no CRM em 14 dias, acelerando na segunda quinzena
- **Cruzamento ads × CRM** confirma que o fluxo anúncio → WhatsApp → CRM está funcionando

---

### 1.4 Recomendações Prioritárias — Seguro Indevido

#### Ação 1 — Corrigir a audiência (maior impacto, menor esforço)

**Remover** os interesses atuais e substituir por:

```
REMOVER:
✗ Online marketplace
✗ Automóveis (veículos)
✗ Investimento imobiliário
✗ Portais de imóveis
✗ Imóveis residenciais
✗ Bancos de investimento

ADICIONAR:
✓ INSS / Previdência Social
✓ Empréstimo consignado
✓ Benefício social
✓ Caixa Econômica Federal
✓ Servidores públicos / Funcionalismo público
✓ Aposentadoria
✓ BMG (banco)
✓ Banrisul
```

**Alternativa mais simples:** remover todos os interesses e deixar o **Público Advantage+ trabalhar broad** (sem interesses), aumentando a faixa de idade para 45–70. O algoritmo aprende com quem converte e vai otimizar sozinho com mais liberdade.

**Impacto esperado:** redução do CPM de R$23,83 para R$8–14, redução do CPConv de R$11,78 para R$4–7.

#### Ação 2 — Ampliar teto de idade

Mudar de **25–55** para **45 sem limite máximo** (ou 45–70 mínimo).

Aposentados e pensionistas INSS — o público com maior volume de consignado e maior probabilidade de ter seguro indevido — estão majoritariamente acima dos 55 anos. Cortar aqui é cortar o público de ouro.

#### Ação 3 — Dar tempo aos estáticos banco-específicos

Não pausar nem escalar nenhum criativo antes de **5–7 dias de dados**. Após esse período:
- Pausar TESTE-BB-BRADESCO-AZUL (0 conversas, baixo volume)
- Escalar o(s) de menor CPConv confirmado
- Testar novos bancos: Caixa, BMG, Safra, Banrisul (maiores no consignado RS)

#### Ação 4 — Configurar mensagem template inicial por criativo

UTM não se aplica a WhatsApp da mesma forma que URLs web. O tracking correto dentro do funil é via **mensagem inicial pré-preenchida** configurada no próprio anúncio (campo "mensagem inicial" no Meta Ads).

Cada criativo banco-específico deve abrir o WhatsApp com uma mensagem diferente:

| Criativo | Mensagem inicial sugerida |
|----------|--------------------------|
| BANCO-BB | `"Olá, vi o anúncio sobre empréstimo no Banco do Brasil"` |
| BRADESCO | `"Olá, vi o anúncio sobre empréstimo no Bradesco"` |
| SERVIDOR-PUBLICO | `"Olá, vi o anúncio sobre empréstimo de servidor público"` |
| Caixa (futuro) | `"Olá, vi o anúncio sobre empréstimo na Caixa Econômica"` |

Com isso, quando o lead chega no WhatsApp, Victor já sabe de qual criativo veio — sem precisar perguntar o banco, e podendo personalizar o primeiro contato imediatamente. O CRM também pode capturar e taggear automaticamente pela primeira mensagem recebida.

> A contagem de conversas por criativo já é feita nativamente pelo Meta Ads Manager (a coluna `conversations` dos dados já reflete isso). A mensagem template fecha o loop **dentro do CRM** — rastreando qual criativo avança no funil além do primeiro clique.

---

## PARTE 2 — OUTRAS CAMPANHAS

### 2.1 CLT — Star performer da conta

| Métrica | Valor |
|---------|-------|
| Investimento | R$ 229 |
| Conversas | 269 |
| CPConv | **R$ 0,85** |
| Taxa clique→conversa | **58,3%** |
| CPM | R$ 7,57 |

**Status:** campanha saudável, sem necessidade de intervenção. O CPM baixo (R$7,57) e a altíssima taxa de conversão (58,3%) indicam audiência bem calibrada e criativo alinhado com o público.

**Atenção:** manter budget estável. Não cortar para realocar no Seguro — são produtos e públicos diferentes.

---

### 2.2 Revisão Energia — Estável, com espaço para crescer

| Métrica | Valor |
|---------|-------|
| Investimento | R$ 233 |
| Conversas | 87 |
| CPConv | R$ 2,67 |
| Taxa clique→conversa | 27,4% |
| CPM | R$ 9,53 |

**Status:** performance consistente, CPConv aceitável. A taxa de clique→conversa (27,4%) está abaixo da CLT mas dentro do esperado para o setor energético.

**Oportunidade:** o criativo `[Tem Empréstimo na Conta de Luz]` está rodando há semanas sem variação. Vale testar um novo ângulo criativo para evitar fadiga de audiência.

---

### 2.3 Trabalhista — Resultado abaixo do viável

| Métrica | Valor |
|---------|-------|
| Investimento | R$ 201 |
| Conversas | 6 |
| CPConv | **R$ 33,46** |
| Taxa clique→conversa | **4,9%** |

**Status:** pior CPConv da conta, 4,9% de conversão após o clique. Problema diferente do Seguro Indevido — aqui o CTR também é o menor (1,27%) e a taxa pós-clique é crítica.

Possíveis causas:
- Criativo não gera intenção de ação (só informativo)
- Primeiro contato no WhatsApp não está calibrado para esse produto
- Público sem urgência suficiente para o tema (hora extra, pejotização)

**Recomendação:** revisar o CTA do criativo e o script de primeiro contato antes de continuar investindo. Se não melhorar em 7 dias após ajuste, considerar pausar e redirecionar budget para Seguro Indevido.

---

## Cruzamento Ads × CRM

| Período | Conv (Ads) | Leads CRM | Leads ainda ativos | Leads abandonados |
|---------|-----------|-----------|-------------------|------------------|
| 08–15/04 | 33 | ~35 | 31 (47%) | 30 (45%) |

O fluxo está funcionando: anúncio → conversa WhatsApp → entrada no CRM. O problema está **dentro do funil**, não na geração de lead — mas essa é análise do relatório comercial.

---

## Resumo de Ações por Prioridade

| # | Ação | Campanha | Esforço | Impacto |
|---|------|----------|---------|---------|
| 1 | Corrigir interesses da audiência (remover imóveis/automóveis, adicionar INSS/consignado) | Seguro Indevido | Baixo | **Alto** |
| 2 | Ampliar teto de idade para 45–70 (ou sem limite) | Seguro Indevido | Baixo | **Alto** |
| 3 | Aguardar 5–7 dias de dados nos estáticos banco-específicos | Seguro Indevido | Zero | Alto |
| 4 | Pausar Teste-BB-Bradesco-Azul (sem resultado) | Seguro Indevido | Baixo | Médio |
| 5 | Testar novos bancos: Caixa, BMG, Safra, Banrisul | Seguro Indevido | Médio | Alto |
| 6 | Configurar mensagem template inicial por criativo (BB, Bradesco, Servidor, Caixa) | Seguro Indevido | Baixo | Médio |
| 7 | Revisar criativo + script Trabalhista ou pausar | Trabalhista | Médio | Médio |
| 8 | Novo criativo Revisão Energia (prevenir fadiga) | Revisão Energia | Médio | Médio |
| 9 | Manter CLT sem alterações | CLT | Zero | Manter |

---

## Meta de Performance Pós-Ajustes

Com a correção de audiência (ações 1 e 2), a projeção para o Seguro Indevido:

| Métrica | Atual | Meta pós-ajuste |
|---------|-------|----------------|
| CPM | R$ 23,83 | R$ 8–14 |
| CPConv | R$ 11,78 | R$ 4–7 |
| Taxa clique→conversa | 15,1% | 25–35% |
| Conversas/mês (mesmo budget) | ~100 | 170–250 |

---

*Relatório gerado por Adventure Labs — Sistema Autônomo de Gestão de Contas*
*Dados: `adv_campaign_metrics_daily` (Supabase) + CRM Funil Venda Casada + Meta Ads Manager*
