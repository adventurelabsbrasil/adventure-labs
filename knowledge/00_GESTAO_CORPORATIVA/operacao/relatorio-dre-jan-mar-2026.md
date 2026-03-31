# Relatório DRE — Jan a Mar 2026 (3 primeiros meses)

**Fonte:** CSV `202601_POP_Controle_Financeiro - Contas.csv` + OFX Sicredi (jan a mar).  
**Elaborado em:** 13/03/2026 · **Atualizado (OFX março fechado):** 30/03/2026 (Sueli inativa no n8n; atualização direta no Cursor).  
**Objetivo:** DRE mensal e anual (jan–mar), com rastreio OFX → plano de contas (sem “caixa preta”).

---

## 1. Resumo da base usada

- **CSV:** `knowledge/99_ARQUIVO/202601_POP_Controle_Financeiro - Contas.csv` — 31 lançamentos com Plano de Contas e Valor realizado; contas: Sicredi, Nubank PF Ribas, Young Empreendimentos, Inter.
- **OFX Sicredi (reexportados, mesma conta `1090000000797213`):** pasta canônica de trabalho da skill Sueli:
  - `apps/core/admin/agents/skills/sueli-conciliacao-bancaria/sicredi/sicredi_1774381641.ofx` — **jan/2026**
  - `apps/core/admin/agents/skills/sueli-conciliacao-bancaria/sicredi/sicredi_1774381655.ofx` — **fev/2026**
  - `apps/core/admin/agents/skills/sueli-conciliacao-bancaria/sicredi/sicredi_1774898310.ofx` — **mar/2026** (extrato fechado; `DTSERVER` 30/03/2026; todos os lançamentos até **30/03**)
  - *Referência:* `sicredi_1774381668.ofx` — recorte anterior do mesmo mês (cortava em 24/03); substituído pelo arquivo acima para DRE/dashboard.
- Cópias históricas em `knowledge/99_ARQUIVO/sicredi/` (nomes `sicredi_177341*.ofx`) podem divergir só por metadata; **valores jan/fev conferidos com os OFX da skill.**

---

## 2. DRE mensal (apenas lançamentos realizados no período)

*Valores em R$, agregados pelo **Data realizado** e pelo **Plano de Contas** do CSV. Contas: Sicredi, Nubank PF, Young, Inter.*

### 2.1 Janeiro 2026


| Plano de Contas                                 | Receitas      | Despesas      |
| ----------------------------------------------- | ------------- | ------------- |
| Receitas diretas - Clientes - Serviços Pontuais | 940,00        | —             |
| Receitas indiretas / Outras Entradas            | —             | —             |
| Devoluções de Compra de Serviços                | 64,90         | —             |
| Outras Entradas                                 | 50.500,00     | —             |
| Despesas Administrativas                        | —             | 880,20        |
| Despesas Financeiras                            | —             | 64,90         |
| Despesas com Vendas e Marketing                 | —             | 275,00        |
| Outras Despesas                                 | —             | 501,00        |
| **Subtotal**                                    | **51.504,90** | **1.721,10**  |
| **Resultado janeiro**                           |               | **49.783,80** |


*Detalhe jan:* Entradas 940 (Rose/Lidera/Speed) + 64,90 (estorno cesta) + 500 (integ. capital) + 50.000 (integ. Young) = 51.504,90. Saídas: domínio 184, certificado 389 (Young), cesta 64,90, Google 50, integralização 1, Young reembolso 500, Meta Ads 200, Omie 247,20, Beatriz 75, Nubank; Zoop 389 em Young.

### 2.2 Fevereiro 2026


| Plano de Contas                                    | Receitas      | Despesas       |
| -------------------------------------------------- | ------------- | -------------- |
| Receitas diretas - Clientes - Serviços Pontuais    | 550,00        | —              |
| Receitas diretas - Clientes - Variáveis            | 4.508,33      | —              |
| Receitas diretas - Clientes - Serviços Recorrentes | 1.300,00      | —              |
| Outras Entradas                                    | 40.000,00     | —              |
| Investimento                                       | —             | 40.000,00      |
| Despesas Administrativas                           | —             | 3.250,22       |
| Despesas com Vendas e Marketing                    | —             | 1.862,50       |
| Despesas com Pessoal                               | —             | 6.000,00       |
| Impostos e Taxas                                   | —             | 197,50         |
| Despesas Financeiras (cobrança TED em vez de PIX)   | —             | 8,00           |
| Outras Despesas                                    | —             | 40.000,00      |
| **Subtotal**                                       | **46.358,33** | **91.310,22**  |
| **Resultado fevereiro**                            |               | **-44.951,89** |


*Se considerar as duas linhas de 40.000 (Outras Entradas e Outras Despesas) como apenas movimentação entre contas (sem efeito no resultado), o resultado de fev seria -4.951,89 (só as demais despesas operacionais).*

*Detalhe fev:* Entradas Rose/Lidera/Altemir 550 + Rose variáveis 4.508,33 + Rose recorrente 1.300 + Outras Entradas 40.000 (retorno CDB) = 46.358,33. Saídas: SEFAZ 197,50, pró-labore 6.000, **Google Ads 200 + Meta 800** (mídia), Triangullo 310,96, Alvo Certo 2.658, Rupe 562,50, Omie 252,22, CDB 40.000 (saída + investimento), “Outras Despesas” 40.000 (transferência ADVENTURE COMUNICACOES).

### 2.3 Março 2026

*Fonte: OFX `sicredi_1774898310.ofx` (Sicredi), fechamento do mês com lançamentos até **30/03**.*

| Plano de Contas                                    | Receitas   | Despesas    |
| -------------------------------------------------- | ---------- | ----------- |
| Receitas diretas - Clientes - Serviços Pontuais     | 1.250,00   | —            |
| Receitas diretas - Clientes - Serviços Recorrentes | 5.500,00   | —            |
| Despesas Administrativas                           | —          | 3.469,35     |
| Despesas com Vendas e Marketing                    | —          | 1.687,50     |
| Despesas com Pessoal                               | —          | 3.000,00     |
| **Subtotal**                                       | **6.750,00** | **8.156,85** |
| **Resultado março**                                |            | **-1.406,85** |

*Detalhe mar (OFX):* **Receitas:** ITY Empreendimento 800 + Lidera 450 + Benditta 2.000 + Rose 3.500. **Adm:** Google Cloud 265,16 + TEL3 4 + **Alvo Certo 2.650** (50% placa de fachada) + **certificado digital A1** (Valid Certificadora, liquidação via **ZOOP**, 232,00) + **Hostinger VPS** (70,99; PIX **Demerge**) + **Omie** 247,20 (30/03). **Vendas/Marketing:** Meta 200 + 300 + Rupe 562,50 + **Rupe 625,00** (25/03). **Pessoal:** pró-labore Rodrigo Ribas 3.000.

**Saldo contábil no OFX (ledger):** R$ 3.972,10 em 31/03 (`LEDGERBAL` — arquivo `sicredi_1774898310.ofx`).

---

## 3. DRE consolidado (jan–mar 2026)

| Item          | Jan 2026   | Fev 2026    | Mar 2026    | Total jan–mar |
| ------------- | ---------- | ----------- | ----------- | ------------- |
| **Receitas**  | 51.504,90  | 46.358,33   | 6.750,00    | 104.613,23    |
| **Despesas**  | 1.721,10   | 91.310,22   | 8.156,85    | 101.188,17    |
| **Resultado** | 49.783,80  | -44.951,89  | -1.406,85   | 3.425,06      |

*Contas Nubank/Young/Inter: permanecem no gerenciamento (Founder confirmou que devem constar); jan/fev já refletem o CSV multi-conta; mar só Sicredi.*

---

## 4. Respostas do Founder (incorporadas)

1. **OFX Sicredi:** Jan/fev conforme `sicredi_1774381641/55`; março fechado em **30/03/2026** (`sicredi_1774898310.ofx`), incl. **Omie** 247,20 e **Rupe** 625 após o corte de 24/03; **Valid A1** (ZOOP), **Hostinger** (Demerge), **Alvo Certo** (2ª parcela fachada), demais linhas na §7.
2. **R$ 8 DOC/TED:** Cobrança por TED em vez de PIX → Despesas Financeiras.
3. **Diferença R$ 8 (Alvo Certo):** Taxa TED; Alvo Certo 2.650 (Desp Adm) + taxa 8 (Desp Financeiras).
4. **TEL3 R$ 4:** Internet escritório (fim do mês) → Despesas Administrativas.
5. **ITY R$ 800:** Serviço pontual Young → Receitas - Serviços Pontuais.
6. **Benditta R$ 2.000:** Recorrente (contrato 3 meses) → Receitas - Serviços Recorrentes.
7. **Rose R$ 3.500:** Recorrente Rose → Receitas - Serviços Recorrentes.
8. **Demais contas:** Pessoais mas no gerenciamento; mantido no DRE onde lançado.
9. **Investimento CDB:** Mantido como Investimento (saída Inter 40k para CDB).

### Como fica no DRE: os R$ 40 mil (Sicredi → Inter → CDB)

- **40 mil saíram do Sicredi e foram para o Inter**  
  É **movimentação entre contas** da empresa (não é receita nem despesa operacional). No DRE:
  - **Categoria sugerida:** tratar como **Outras Despesas** (saída Sicredi) e **Outras Entradas** (entrada no fluxo de caixa/Inter), ou uma única linha “Transferência entre contas” que zera. O **resultado** do período não muda: é apenas realocação de caixa.
- **40 mil saíram do Inter e foram investidos (CDB)**  
  É **aplicação financeira** (caixa vira ativo financeiro). No DRE:
  - **Categoria sugerida:** **Investimento** (ou “Aplicações financeiras”). Não é despesa que reduz resultado operacional; é uso de caixa. Mantém-se como linha **Investimento** para controle e fluxo de caixa, sem impactar o resultado líquido como despesa.

Resumo: Sicredi→Inter = transferência (zerar ou Outras Entradas/Outras Despesas); Inter→CDB = **Investimento**.

---

## 5. DRE visual e dinâmico

Relatório interativo com gráficos e abas por mês:
- **Dados:** `knowledge/00_GESTAO_CORPORATIVA/operacao/dre-jan-mar-2026.json` — cada linha de receita/despesa pode incluir **`linhas`** com `entidade`, `descricao` e `valor` (espelho da §7 / OFX), para o HTML mostrar **entidade/fornecedor** ao expandir (+) na aba **Analítico anual** ou **ver entidades** nas abas mensais.
- **Página:** `knowledge/00_GESTAO_CORPORATIVA/operacao/dre-jan-mar-2026.html` — abra no navegador (duplo clique no Finder ou arraste o arquivo para o Chrome). O topo da página mostra um **aviso em destaque** com o total do cartão Nubank PF **ainda não lançado** no controle; os gráficos seguem refletindo só o que está consolidado no JSON (alinhado ao controle até você efetivar).

---

## 6. Classificação março 2026 (respostas do Founder)

| # | Valor (R$) | Extrato (memo) | Natureza real | Plano de contas |
|---|------------|----------------|---------------|-----------------|
| 1 | 232,00 | ZOOP (liquidação boleto) | Certificado digital **A1** — **Valid Certificadora Digital Ltda** (integração NF ↔ Omie) | **Despesas Administrativas** |
| 2 | 70,99 | Demerge (PIX) | **Hostinger** — VPS plano mensal recorrente | **Despesas Administrativas** |
| 3 | 2.650,00 | Alvo Certo (PIX) | **50% remanescente** da placa de fachada do escritório Adventure | **Despesas Administrativas** |
| 4 | 625,00 | Rupe Creative (PIX, 25/03) | Criativo / produção (mesma linha do fornecedor Rupe) | **Despesas com Vendas e Marketing** |
| 5 | 247,20 | Omieexperience (PIX, 30/03) | ERP / assinatura Omie | **Despesas Administrativas** |

---

## 7. Conciliação analítica — todo movimento Sicredi (OFX) com categoria

Nada abaixo fica como “diversos”: cada linha tem **fornecedor/cliente** e **conta do plano**. Onde o banco mostra só o arranjo de pagamento (ZOOP, Demerge), o **fornecedor real** está na coluna “O que é”.

### Janeiro 2026

| Data | Valor | Contraparte no OFX | O que é | Categoria |
|------|-------|--------------------|---------|-----------|
| 14/01 | +250,00 | Roselaine Portal (Rose) | Recebimento cliente | Receitas diretas — Serviços Pontuais |
| 14/01 | -64,90 | Cesta relacionamento | Tarifa pacote conta | Despesas Financeiras |
| 14/01 | +450,00 | Lidera Soluções | Recebimento cliente | Receitas diretas — Serviços Pontuais |
| 15/01 | -1,00 | Integr. capital subscrito | Evento de **capital** (não é receita/despesa operacional) | Fora do resultado — **PL / integralização** |
| 15/01 | +64,90 | Estorno tarifa | Estorno cesta | Devoluções de Compra de Serviços (ajuste) |
| 15/01 | -50,00 | Google Cloud | Infra cloud | Despesas Administrativas |
| 16/01 | +50.000,00 | Young Empreendimentos | Movimentação societária / caixa (contexto: integralização) | **Outras Entradas** no DRE agregado — rotular no Omie como *integralização/aporte*, não receita de serviço |
| 16/01 | +500,00 | Rodrigo Ribas | Aporte PF / movimentação sócio | **Outras Entradas** — detalhar subconta *aporte* no ERP |
| 16/01 | -500,00 | Young Empreendimentos | Contrapartida da movimentação com Young | **Outras Despesas** ou compensação da entrada — transferência |
| 21/01 | -200,00 | Meta / Facebook | Mídia paga | Despesas com Vendas e Marketing |
| 23/01 | -247,20 | Omie | ERP / assinatura | Despesas Administrativas |

### Fevereiro 2026

| Data | Valor | Contraparte no OFX | O que é | Categoria |
|------|-------|--------------------|---------|-----------|
| 04/02 | -200,00 | Google Cloud | Infra cloud | Despesas Administrativas |
| 05/02 | +5.808,33 | Roselaine Portal (Rose) | Recebimento cliente (mix variável/agência) | Receitas diretas — Variáveis |
| 09/02 | -197,50 | SEFAZ | Tributo estadual | Impostos e Taxas |
| 09/02 | -6.000,00 | Rodrigo Ribas | Pró-labore / retirada | Despesas com Pessoal |
| 12/02 | +250,00 | Rose | Cliente | Serviços Pontuais |
| 12/02 | +240,00 | Rose Tebaldi | Cliente | Serviços Pontuais |
| 13/02 | +60,00 | Altemir Costa | Cliente pontual | Serviços Pontuais |
| 18/02 | -80,96 | Triangullo (boleto) | Fornecedor gráfico/comunicação visual | Despesas Administrativas |
| 18/02 | -300,00 | Meta / Facebook | Mídia | Despesas com Vendas e Marketing |
| 20/02 | -40.000,00 | ADVENTURE COMUNICAÇÕES | Transferência **entre empresas do grupo** | **Outras Despesas** no agregado — usar subconta *transferência Inter/corrente*, não “diversos” |
| 23/02 | -300,00 | Meta | Mídia | Despesas com Vendas e Marketing |
| 23/02 | -200,00 | Google Brasil Internet | Google Ads (custo da cliente Rose; reembolso via NF para Adventure) | Despesas com Vendas e Marketing |
| 23/02 | -200,00 | Meta | Mídia | Despesas com Vendas e Marketing |
| 25/02 | -2.650,00 | Alvo Certo | Fornecedor (fachada / comunicação visual — mesma linha do projeto escritório) | Despesas Administrativas |
| 25/02 | -8,00 | DOC/TED | Tarifa bancária TED | Despesas Financeiras |
| 25/02 | -562,50 | Rupe Creative | Criativo / produção | Despesas com Vendas e Marketing |
| 25/02 | -230,00 | Triangullo (boleto) | Gráfica | Despesas Administrativas |
| 27/02 | -252,22 | Omieexperience (Omie) | ERP | Despesas Administrativas |

### Março 2026

| Data | Valor | Contraparte no OFX | O que é | Categoria |
|------|-------|--------------------|---------|-----------|
| 02/03 | -200,00 | Meta | Mídia | Despesas com Vendas e Marketing |
| 06/03 | +800,00 | ITY Empreendimento Imobiliário SPE | Cliente — serviço pontual | Receitas diretas — Serviços Pontuais |
| 06/03 | -562,50 | Rupe Creative | Criativo | Despesas com Vendas e Marketing |
| 09/03 | -265,16 | Google Cloud | Infra cloud | Despesas Administrativas |
| 09/03 | -4,00 | TEL3 | Internet link escritório | Despesas Administrativas |
| 09/03 | -3.000,00 | Rodrigo Ribas | Pró-labore | Despesas com Pessoal |
| 10/03 | +450,00 | Lidera | Cliente | Serviços Pontuais |
| 10/03 | +2.000,00 | Benditta | Contrato recorrente | Serviços Recorrentes |
| 11/03 | -300,00 | Meta | Mídia | Despesas com Vendas e Marketing |
| 13/03 | +3.500,00 | Rose | Contrato recorrente | Serviços Recorrentes |
| 16/03 | -232,00 | ZOOP | **Valid Certificadora** — certificado A1 (NF + Omie) | Despesas Administrativas |
| 20/03 | -2.650,00 | Alvo Certo | 50% placa fachada escritório | Despesas Administrativas |
| 24/03 | -70,99 | Demerge | **Hostinger** — VPS mensal | Despesas Administrativas |
| 25/03 | -625,00 | Rupe Creative | Criativo / produção (2ª liquidação no mês) | Despesas com Vendas e Marketing |
| 30/03 | -247,20 | Omieexperience (Omie) | ERP / assinatura | Despesas Administrativas |

### Sobre “Outras Entradas / Outras Despesas” no DRE agregado (jan–fev)

No plano de contas oficial ainda existem as contas **Outras Entradas** e **Outras Despesas**. Elas aparecem no JSON/HTML por causa do **CSV multi-conta** (integralização Young, retorno CDB, transferência para Inter), não como “não sei o que é”. Recomendação para o Omie: criar **subcontas nomeadas** (ex.: *Integralização Young*, *Transferência Sicredi→Inter*, *Saída para CDB*) para não parecer “diversos” nos relatórios.

Pendências de classificação de OFX Sicredi: **nenhuma** até o corte atual.

### IDs únicos e linhas provisórias (governança)

- Cada linha do DRE (categoria e detalhamento) agora possui **ID único** no JSON/HTML para facilitar comunicação de ajustes (ex.: `FEV-D-003-L06`).
- Janeiro / Despesas Administrativas:
  - `JAN-D-001-L03` Registro BR — R$ 184,00
  - `JAN-D-001-L04` ZOOP Certificado A3 — R$ 389,00
  - `JAN-D-001-L05` diferença provisória — R$ 10,00 (pendente revisão do Founder)
- Fevereiro / Despesas Financeiras:
  - `FEV-D-006-L01` taxa TED Sicredi para pagamento Alvo Certo — R$ 8,00
- Fevereiro ainda contém linhas provisórias com entidade identificada e pendência de refinamento:
  - `FEV-D-002-L06` ajuste de conciliação
  - `FEV-D-003-L06` lançamento de mídia a confirmar

---

## 8. Cartão de crédito Nubank PF — triagem para conciliação Adventure

Arquivos-base lidos em `apps/core/admin/agents/skills/sueli-conciliacao-bancaria/nubank-pf/` (faturas OFX jan, fev e mar/2026).

### Decisão de cadastro de conta

- **Conta recomendada na conciliação:** `Cartão de Crédito Nubank PF Ribas`
- **Tipo:** Cartão de crédito
- **Regra operacional:** conta mista PF + empresa; somente lançamentos marcados como Adventure entram no DRE/controle da empresa.

### Classificação confirmada pelo Founder (itens suspeitos)

| # | Lançamento | Decisão | Categoria / tratamento |
|---|------------|---------|------------------------|
| 1 | Google Youtube 53,90 | Não (pessoal) | Fora da conciliação Adventure |
| 2 | Cursor 112,69 | Sim | Despesas Administrativas (software/ferramenta) |
| 3 | IOF Cursor 3,94 | Sim | Despesas Financeiras |
| 4 | Google Ads 400,00 | Sim | Despesas com Vendas e Marketing (**custo cliente Rose; reembolso via NF**) |
| 5 | Applecombill 187,90 | Não (pessoal) | Fora da conciliação Adventure |
| 6 | Cursor 112,15 | Sim | Despesas Administrativas (software/ferramenta) |
| 7 | IOF Cursor 3,92 | Sim | Despesas Financeiras |
| 8 | Adobe 98,00 (1 mês) | Sim | Despesas Administrativas |
| 9 | Google Youtube 53,90 | Não (pessoal) | Fora da conciliação Adventure |
| 10 | Applecombill 19,90 | Não (pessoal) | Fora da conciliação Adventure |

### Total mapeado como Adventure no cartão (jan–mar/2026)

- **Despesas Administrativas:** R$ 322,84
- **Despesas com Vendas e Marketing:** R$ 400,00
- **Despesas Financeiras (IOF):** R$ 7,86
- **Total Adventure no cartão Nubank PF:** **R$ 730,70**

> Observação de competência/caixa: esses valores são custos da Adventure pagos no cartão pessoal; para fechamento contábil correto, lançar contrapartida em conta de passivo com sócio (reembolso a pagar), e baixar quando houver pagamento.

**Política do dashboard visual (HTML):** enquanto isso não estiver no `Controle_Financeiro.csv` / Omie, o **DRE interativo não soma** esses R$ 730,70 nas despesas — só exibe o **banner laranja** no HTML com o detalhe. Depois de lançar, podemos regenerar o JSON a partir do controle (ou você pede para eu atualizar os totais).

### Aviso operacional — conta pessoal e reembolsos

> **Atenção:** o cartão Nubank PF usado em despesas da Adventure é conta **pessoal**. Para não distorcer DRE, margem e caixa:
>
> 1. Custos da Adventure pagos no cartão PF devem entrar como despesa da categoria correta **com contrapartida em passivo com sócio** (*reembolso a pagar*).
> 2. O pagamento do reembolso ao sócio baixa esse passivo e **não** deve virar nova despesa.
> 3. Gastos pessoais devem ficar fora do DRE da empresa.
> 4. No HTML de impressão, use os checkboxes para:
>    - ocultar integralizações/investimento (visão operacional), e
>    - incluir detalhamento analítico (entidade + descrição), quando precisar auditar decisão a decisão.
