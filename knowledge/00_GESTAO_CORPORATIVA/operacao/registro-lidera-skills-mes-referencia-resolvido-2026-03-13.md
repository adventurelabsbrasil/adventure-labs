---
title: Registro — Lidera Skills — Mês de referência um mês atrasado (resolvido)
domain: gestao_corporativa
tags: [lidera, lidera-skills, cliente, bugfix, frontend, timezone, conhecimento, admin]
updated: 2026-03-13
---

# Registro — Problema resolvido: mês de referência atrasado (Lidera Skills)

**Data:** 13/03/2026  
**Cliente:** Lidera  
**Projeto/App:** Lidera Skills  
**Repositório:** `github.com/adventurelabsbrasil/lidera-skills`

---

## Problema

No frontend do Lidera Skills, o **mês de referência** exibido nas telas (avaliações, agrupamentos, filtros, gráficos) aparecia **um mês atrasado** em relação ao mês de referência gravado na tabela de dados (ex.: dado com `date: "2024-03-01"` era exibido como fevereiro em vez de março).

---

## Causa raiz

No JavaScript, `new Date("2024-03-01")` é interpretado como **meia-noite em UTC**. No fuso do Brasil (UTC-3), isso vira 21h do dia anterior (ex.: 29/02/2024 21:00). Por isso `date.getMonth()` e `toLocaleDateString` sem `timeZone: 'UTC'` retornavam o mês errado.

---

## Solução implementada

- **Utilitário** `src/utils/date.ts`: funções `getMonthKey`, `getYearFromDateStr`, `formatDateOnlyPtBR` e `getDateOnlyTimestamp` para tratar datas no formato YYYY-MM-DD como “só data”, sem deslocamento de timezone.
- **EvaluationsView.tsx:** agrupamento por mês, filtros (mês/ano), anos únicos, modal de resumo e ordenação passaram a usar essas funções.
- **EmployeeProfile.tsx:** gráfico e tabela de avaliações passaram a usar `formatDateOnlyPtBR`; ordenação com `getDateOnlyTimestamp`.
- **EvaluationHistory.tsx:** agrupamento por período e filtro por período passaram a usar as mesmas funções.
- **RankingView.tsx:** filtro por período passou a comparar strings YYYY-MM-DD em vez de `new Date()`.

Commits: `191319c` (fix principal), `005f827` (ajuste TypeScript para build Vercel).

---

## Status

**Resolvido.** Deploy em produção (Vercel); registro com `date: "2024-03-01"` passa a ser exibido consistentemente como **março de 2024** em todas as telas.

---

*Registrado na base de conhecimento do Admin em 13/03/2026.*
