# Relatório de Gestão Comercial
## Funil Seguro/Venda Casada — Rose Portal Advocacia
**Elaborado por:** Adventure Labs
**Data:** 16/04/2026
**Período analisado:** 02–16/04/2026
**Fonte de dados:** CRM Supabase — Funil ID `39014016-cd56-4843-9458-e65aec92ab4b`

---

## Sumário Executivo

O funil de Venda Casada está operacional e com volume crescendo (+36% na segunda quinzena do período). Porém, **o pipeline não converte de forma rastreável** — não há um único deal fechado registrado, todos os valores estão em R$0,00 e não existe status de "ganho". O problema central não é falta de lead. É falta de estrutura comercial para transformar interesse em contrato.

---

## Parte 1 — Gestão Comercial

### 1.1 Números do Período

| Indicador | Valor |
|-----------|-------|
| Total de atendimentos | 66 |
| Leads ativos no pipeline | 31 (47%) |
| Leads abandonados | 30 (45%) |
| Leads perdidos | 5 (8%) |
| Leads convertidos (contrato) | **0 registrados** |
| Valor médio por deal | R$ 0,00 |
| Agente responsável | Victor (único) |
| Período | 14 dias |

> O funil tem **entrada** funcionando e **saída** invisível. Não é possível calcular taxa de conversão real porque o momento do fechamento não está sendo registrado no CRM.

---

### 1.2 Pipeline dos Leads Ativos (31)

| Etapa | Qtd | Última mensagem padrão |
|-------|-----|------------------------|
| Primeiro Contato | 7 | "Bom dia, sou o Victor. Como posso te ajudar?" |
| 2° Mnsg | 8 | "Aqui é a Dra. Roselaine, vamos dar continuidade?" |
| 3° Mnsg | 3 | "Ficou com alguma dúvida que eu possa te esclarecer?" |
| 4° Mnsg | 11 | "Você ainda tem interesse na revisão do seu contrato?" |
| 5° Mnsg | 1 | (áudio recebido do lead) |
| Aguardando | 1 | Lead respondeu via anúncio — sem atendimento |

---

### 1.3 Diagnóstico do Funil Atual

#### Fluxo atual

```
Lead entra
    ↓
1° Msg: "Sou o Victor, como posso ajudar?"
    ↓
2° Msg: "Aqui é a Dra. Roselaine..." ← troca de identidade
    ↓
3° Msg: "Ficou com alguma dúvida?"
    ↓
4° Msg: "Ainda tem interesse na revisão?"
    ↓
Cancelamento (template automático)
```

#### Problemas estruturais identificados

**a) O funil pergunta "interesse" em vez de avançar para ação**
Todas as mensagens de follow-up perguntam se o lead ainda tem interesse. Isso coloca o ônus no lead e não cria momentum. Um lead que não responde não está necessariamente desinteressado — está esperando uma razão concreta para agir.

**b) Troca de identidade no 2° Mnsg**
A segunda mensagem usa o nome da Dra. Roselaine, enquanto todas as outras usam Victor. Isso gera desconfiança e quebra o relacionamento construído no primeiro contato.

**c) Não existe etapa de qualificação**
O funil não coleta nenhuma informação qualificadora: qual banco, qual valor do empréstimo, se há seguro na fatura, se tem acesso ao Gov.br. Sem isso, nenhum lead pode avançar para análise jurídica.

**d) Leads sendo descartados com sinal de conversão**

| Lead | Situação | Status no CRM |
|------|----------|---------------|
| Gustavo Roniel | Enviou `boleto gustavo.pdf` — documento de contrato | `abandoned` (erro) |
| Dalmor Trevisan | Victor respondeu ativamente sobre "outro contrato viável" | `abandoned` (erro) |

**e) Lead quente sem atendimento em 16/04**
O lead cadastrado como "." está em estágio "Aguardando" com a mensagem:
> *"Olá, Dra. Roselaine! Vi o anúncio sobre Venda Casada nos Empréstimos"*

Chegou via anúncio hoje, já qualificado pelo próprio texto. Sem resposta registrada.

---

### 1.4 Modelo de Funil Proposto

Objetivo: avançar o lead até a assinatura **sem adicionar trabalho para as advogadas** — elas entram apenas no momento de análise do contrato.

```
ETAPA 1 — PRIMEIRO CONTATO (Victor)
Gatilho: lead entra via anúncio
Ação: acolhimento + hook de valor imediato
Meta: confirmar que tem empréstimo consignado ativo
    ↓ respondeu
ETAPA 2 — QUALIFICAÇÃO RÁPIDA (Victor)
3 perguntas simples via WhatsApp:
  1. Qual banco do empréstimo?
  2. Tem seguro cobrado junto nas parcelas?
  3. Tem acesso ao Gov.br ou contracheque em mãos?
Meta: confirmar elegibilidade do caso
    ↓ qualificado
ETAPA 3 — APRESENTAÇÃO DA SOLUÇÃO (Victor)
Explicar o processo em 3 pontos:
  ✓ Sem custo para o cliente
  ✓ Prazo médio de resultado
  ✓ O que o cliente precisa fazer (só enviar documentos)
    ↓ aceitou
ETAPA 4 — COLETA DE DOCUMENTOS (self-service)
Enviar link para formulário ou checklist:
  □ Foto do contracheque ou extrato INSS
  □ Foto do contrato de empréstimo (se tiver)
  □ CPF
Meta: Victor não precisa solicitar documento por documento
    ↓ docs recebidos
ETAPA 5 — ANÁLISE JURÍDICA (Dra. Roselaine)
Única etapa que exige a advogada
Prazo: 24–48h para retorno ao lead
Victor mantém o lead informado: "seu caso está em análise"
    ↓ caso viável
ETAPA 6 — PROPOSTA + CONTRATO (fechamento)
Envio do contrato de honorários (contingência)
Assinatura digital (DocuSign, ClickSign ou similar)
Registro como GANHO no CRM com valor estimado do caso
```

**O que muda para as advogadas:** entram apenas na Etapa 5. Todo o trabalho de triagem, qualificação e coleta é responsabilidade do comercial.

---

### 1.5 Scripts de Abordagem Recomendados

#### Etapa 1 — Primeiro Contato
> *"Olá, [nome]! Aqui é o Victor, do escritório Rose Portal Advocacia. Vi que você teve interesse em entender mais sobre a cobrança de seguro junto ao seu empréstimo. Você tem empréstimo consignado ativo no momento?"*

**Por que funciona:** pergunta objetiva, confirma premissa básica, não pede "interesse" — avança direto para qualificação.

---

#### Etapa 2 — Follow-up sem resposta (substituir template atual)
> *"Oi [nome], só passando para deixar uma informação importante: muitos clientes com empréstimo consignado têm seguro cobrado indevidamente nas parcelas sem nem saber. Se isso estiver acontecendo com você, é possível pedir a devolução do valor + redução das parcelas, tudo sem custo. Quando tiver um minuto, me fala o banco do seu empréstimo que já verifico para você."*

**Por que funciona:** entrega valor concreto antes de pedir resposta. Transforma o follow-up de "você quer?" para "eu tenho algo para você".

---

#### Etapa 3 — Após qualificação confirmada
> *"Perfeito! Com base no que você me disse, o seu caso tem perfil para entrar com a revisão. O processo é 100% sem custo para você — trabalhamos por honorários sobre o resultado. Para eu enviar para nossa equipe jurídica analisar, preciso só de uma foto do seu contracheque ou extrato do INSS. Consegue me enviar?"*

---

#### Mensagem de encerramento por inatividade (substituir template atual)
> *"[Nome], vou encerrar nosso contato por aqui por enquanto. Mas quero deixar registrado: o direito de revisar seu contrato e pedir a devolução do seguro cobrado indevidamente não tem prazo imediato para acabar. Quando quiser retomar, é só me chamar nesse mesmo número. Até mais!"*

**Por que mudar:** o template atual menciona "indenização por dano moral de R$5.000" de forma assertiva no encerramento, o que pode soar como promessa jurídica sem base no caso específico do lead.

---

### 1.6 Volume por Dia (Atividade no Período)

```
Abr 02  ██                2
Abr 03  ██                2
Abr 04  ██                2
Abr 05  █                 1
Abr 06  ████              4
Abr 07  ██                2
Abr 08  █████             5
Abr 09  ████              4
Abr 10  ██████            6
Abr 11  ███               3
Abr 12  ███               3
Abr 13  █████             5
Abr 14  ████████          8
Abr 15  ████████          8
Abr 16  █████████         9 (até 12h38)
```

Abr 2–10: 28 atendimentos | Abr 11–16: 38 atendimentos | **Crescimento: +36%**

---

### 1.7 Distribuição Geográfica

Predominância **DDD 51 (Porto Alegre/RS)**, mas com leads de todo o Brasil:

- **Sul:** 51, 53, 54, 55 (RS) | 49, 47 (SC) | 42 (PR)
- **Sudeste:** 11, 13, 17 (SP) | 21 (RJ) | 31, 37 (MG)
- **Centro-Oeste:** 67 (MS) | 66 (MT)
- **Nordeste:** 77 (BA)
- **Norte:** 92 (AM)

Campanha com alcance nacional sem segmentação regional aparente.

---

### 1.8 Ações Imediatas

| Prioridade | Ação | Responsável |
|-----------|------|-------------|
| 🔴 Urgente | Atender lead "." (chegou hoje com intenção explícita via anúncio) | Victor — agora |
| 🔴 Urgente | Reabrir conversa com Gustavo Roniel (enviou boleto.pdf) | Victor |
| 🔴 Urgente | Reabrir conversa com Dalmor Trevisan (conversa ativa encerrada por erro) | Victor |
| 🟡 Esta semana | Unificar identidade nos templates (Victor ou Dra. Roselaine, não os dois) | Gestão |
| 🟡 Esta semana | Criar campo de valor no deal com estimativa inicial por caso | Gestão CRM |
| 🟡 Esta semana | Criar status "Contrato Assinado" no CRM | Gestão CRM |
| 🟢 Próximos 15 dias | Montar formulário/link de coleta de documentos | Victor + TI |
| 🟢 Próximos 15 dias | Revisar e atualizar todos os templates de mensagem | Victor + Dra. Roselaine |

---

## Parte 2 — Análise de Anúncios e Comunicação

*(Análise qualitativa baseada nos dados do CRM. A ser cruzada com métricas do Meta Ads/Google Ads em etapa posterior.)*

### 2.1 O que os dados do CRM revelam sobre os anúncios

**Sinal positivo:** o último lead do período chegou com a mensagem *"Vi o anúncio sobre Venda Casada nos Empréstimos"* — o criativo está comunicando o produto com clareza e o lead chegou já nomeando o problema.

**Sinal de atenção:** com 66 leads em 14 dias e zero conversões registradas, a **qualidade do lead pode estar correta**, mas o **funil pós-clique não converte**. Mexer nos anúncios agora pode trazer mais leads para um funil ainda ineficiente. A prioridade deve ser corrigir o funil primeiro, depois escalar o investimento em mídia.

---

### 2.2 Hipóteses para Melhorar Conversão

#### a) Desconexão entre anúncio e primeiro contato
O anúncio fala em "Venda Casada" ou "seguro indevido no empréstimo". A primeira mensagem do Victor é genérica: *"Bom dia, sou o Victor. Como posso te ajudar?"*

O lead chegou com contexto específico e se depara com uma pergunta aberta. Isso gera fricção e queda de engajamento.

**Sugestão:** o primeiro contato deve espelhar o anúncio:
> *"Olá! Você clicou no nosso anúncio sobre cobrança indevida de seguro em empréstimos — veio ao lugar certo. Você tem empréstimo consignado ativo?"*

#### b) Audiência possivelmente ampla demais
Base de leads com 15+ DDDs diferentes, distribuição nacional. O produto de Venda Casada em consignado tem maior concentração em perfis específicos:
- Aposentados e pensionistas INSS (55+)
- Servidores públicos com consignado
- Trabalhadores CLT com crédito consignado privado

Segmentar por faixa etária (50+) e interesses em crédito consignado/INSS pode reduzir custo por lead qualificado.

#### c) Anúncio pode não estar pré-qualificando na origem
Se o criativo não menciona que é necessário **ter empréstimo ativo com seguro cobrado**, ele atrai curiosos que não passam da primeira mensagem. Uma linha como *"Tem empréstimo consignado com seguro na parcela? Você pode ter direito à devolução"* filtra melhor antes do clique.

#### d) Testar Lead Form vs WhatsApp direto
O fluxo atual leva o lead direto ao WhatsApp sem nenhum filtro. Um **Meta Lead Form** com 2–3 perguntas antes de abrir o WhatsApp pode:
- Reduzir volume de leads não qualificados
- Aumentar taxa de resposta (lead já se comprometeu mais)
- Entregar informação de qualificação para Victor antes da primeira mensagem

#### e) Prova social (hipótese sem ver os criativos)
O público-alvo — aposentados e servidores — responde bem a depoimentos reais e números concretos. Um criativo com *"Recuperamos R$X.XXX para [perfil/cidade]"* ou *"Mais de X clientes já reduziram suas parcelas"* pode aumentar CTR e qualidade do lead.

---

### 2.3 Dados Necessários para Análise Completa de Ads

Para cruzar funil com performance de mídia:

| Dado | Onde buscar |
|------|-------------|
| CPL (custo por lead) por criativo/conjunto | Meta Ads Manager |
| Taxa clique → conversa WhatsApp iniciada | Meta Ads (eventos de conversa) |
| Leads por campanha (UTM nos links) | Meta Ads + CRM |
| Taxa de abertura da primeira mensagem | Evolution API / CRM |
| Criativos ativos no período 02–16/04 | Meta Ads Manager |
| Volume de impressões e frequência | Meta Ads Manager |

Com esse cruzamento é possível identificar **qual criativo gera leads que realmente avançam no funil** versus quais geram volume sem qualidade — e realocar orçamento para o que converte.

---

## Conclusão

O funil tem potencial real. A campanha está ganhando tração, o produto tem demanda comprovada e o ticket jurídico por caso é relevante. O gargalo hoje é comercial, não de marketing: o processo entre "lead interessado" e "contrato assinado" está indefinido, centralizado em uma pessoa e sem rastreamento de resultado.

**Prioridade 1:** Recuperar os 3 leads quentes identificados hoje (Lead ".", Gustavo, Dalmor).
**Prioridade 2:** Estruturar o funil com etapas de qualificação e coleta de documentos.
**Prioridade 3:** Registrar conversões no CRM para ter números reais de fechamento.
**Depois:** cruzar com métricas de ads para otimizar o investimento em mídia.

---

*Relatório gerado por Adventure Labs — Sistema Autônomo de Gestão de Contas*
*Revisão humana recomendada antes de apresentação ao cliente*
*Para dúvidas ou ações: contato via Telegram ceo_buzz_Bot*
