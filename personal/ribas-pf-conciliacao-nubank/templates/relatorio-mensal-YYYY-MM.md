# Relatório mensal — `YYYY-MM` (PF Nubank)

**Referência:** conta corrente + fatura cartão (OFX em `dados/`).  
**Plano de contas:** `templates/plano-de-contas-familiar.md`.

## 1. Resumo executivo

- Período analisado (conta): …
- Período fatura cartão (OFX): … (pode não coincidir com mês civil)
- Status conciliação conta ↔ fatura: OK / divergência (detalhar)

## 2. Cruzamento conta corrente × fatura

| Data conta | Valor | Descrição | Fatura associada | Batida |
|------------|-------|-----------|------------------|--------|
| | | Pagamento de fatura | | |

## 3. Custos por categoria (competência do mês)

> Contagem: compras no **cartão** por linha; na **conta**, movimentos que não sejam pagamento de fatura nem transferência interna duplicada.

| Categoria (código) | Total (R$) | % do gasto |
|---------------------|------------|------------|
| | | |

## 4. DRE familiar simplificado — `YYYY-MM`

| Linha | Valor (R$) |
|-------|------------|
| Receitas totais | |
| (-) Despesas por consumo (D1–D9, exceto F1 se só consolidado no cartão) | |
| (=) Resultado do mês | |

*Nota metodológica:* evitar **dupla contagem** — compras no crédito entram pelo detalhe da fatura; na conta entra apenas o **pagamento da fatura** (F1), não as compras individuais.

## 5. Pendências / dúvidas para o Founder

| # | Data | Valor | Memo / descrição | Pergunta |
|---|------|-------|------------------|----------|
| 1 | | | | |

## 6. Próximos passos

- [ ] Respostas às pendências
- [ ] Atualizar `plano-de-contas-familiar.md` com novas categorias aprovadas
- [ ] Arquivar OFX do mês em `dados/` (backup local)
