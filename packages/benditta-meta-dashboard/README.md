# `@adventure-labs/benditta-meta-dashboard`

Pacote **isolado** com parser do CSV do Meta (export PT-BR), agregações (CPL, CPC, CPM, CTR, séries por dia), componentes de dashboard e tabela dinâmica.

## Consumidores

- **`apps/core/admin`** — rotas `/dashboard/benditta` e `/dashboard/benditta/tabela` (CSV em `/public/benditta/BM-202603-MetaReport.csv`).
- **`apps/clientes/benditta/app`** (`@cliente/benditta-app`) — app Next standalone (porta 3002) para extrair como subrepo/submódulo sem levar o restante do monorepo.

## Contrato do CSV

Cabeçalhos esperados (export Meta): `Dia`, `Objetivo`, `Nome do conjunto de anúncios`, `Nome do anúncio`, `Idade`, `Gênero`, `Alcance`, `Impressões`, `Frequência`, `Tipo de resultado`, `Resultados`, `Valor usado (BRL)`, colunas de CPC/CPM/CTR, etc.

**Leads:** soma de `Resultados` apenas em linhas com `Objetivo === OUTCOME_LEADS`.
