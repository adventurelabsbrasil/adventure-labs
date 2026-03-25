# Relatório de registro de ponto (espelho)

**Empresa:** Adventure Labs  
**Colaborador:** Mateus Scopel  
**E-mail (cadastro):** mateuslepocs@gmail.com  
**Período das marcações:** 06/03/2026 a 23/03/2026 (datas em America/Sao_Paulo)  
**Emitido em:** 25/03/2026 *(atualizado com batidas adv + ajustes manuais de 22–23/03)*  
**Fuso de exibição:** America/Sao_Paulo (horário de Brasília)  
**Fonte:** `public.time_bank_entries` + `time_bank_employees` (legado) **e** `public.adv_time_bank_entries` (fluxo unificado / ajustes manuais)

*Local aproximado obtido por geocodificação reversa (OpenStreetMap / Nominatim) a partir de latitude/longitude registradas na batida — uso informativo.*

---

## 1. Marcações detalhadas

| Data (ref. SP) | Tipo | Horário (America/Sao_Paulo) | Fonte | Latitude | Longitude | Local aproximado (bairro) |
|:---------------|:-----|:----------------------------|:------|:---------|:----------|:--------------------------|
| 06/03/2026 | Entrada | 20:13:00 | legado | -30,006459 | -51,154577 | Cristo Redentor — Porto Alegre/RS |
| 06/03/2026 | Saída | 21:51:00 | legado | -30,006482 | -51,154562 | Cristo Redentor — Porto Alegre/RS |
| 07/03/2026 | Entrada | 23:21:00 | legado | -30,006459 | -51,154577 | Cristo Redentor — Porto Alegre/RS |
| 08/03/2026 | Saída | 00:45:00 | legado | -30,006471 | -51,154568 | Cristo Redentor — Porto Alegre/RS |
| 11/03/2026 | Entrada | 10:57:09 | legado | — | — | *Geo não registrada* |
| 11/03/2026 | Saída | 13:57:41 | legado | — | — | *Geo não registrada* |
| 11/03/2026 | Saída | 13:57:42 | legado | -30,028300 | -51,197700 | Moinhos de Vento — Porto Alegre/RS |
| 22/03/2026 | Entrada | 09:00:00 | adv | — | — | *Ajuste manual (sem GPS)* |
| 22/03/2026 | Saída | 10:00:00 | adv | — | — | *Ajuste manual (sem GPS)* |
| 23/03/2026 | Entrada | 09:00:00 | adv | — | — | *Ajuste manual (sem GPS)* |
| 23/03/2026 | Saída | 10:00:00 | adv | — | — | *Ajuste manual (sem GPS)* |

**Observação:** a linha de **saída duplicada** em 11/03 (~1 s) permanece só no espelho bruto. **22–23/03:** inclusão manual de **1 h/dia** (sistema de ponto indisponível), registada em `adv_time_bank_entries`.

---

## 2. Apuração por jornada (entrada → próxima saída na sequência)

| # | Entrada (SP) | Saída (SP) | Horas (dec.) | Duração aprox. | Observação |
|:-:|:-------------|:-----------|:-------------|:---------------|:------------|
| 1 | 06/03/2026 20:13 | 06/03/2026 21:51 | 1,6333 | 1 h 38 min | Benditta (legado) |
| 2 | 07/03/2026 23:21 | 08/03/2026 00:45 | 1,4000 | 1 h 24 min | Benditta (legado) |
| 3 | 11/03/2026 10:57:09 | 11/03/2026 13:57:41 | 3,0090 | 3 h 0 min 32 s | Entrada sem geo (legado) |
| 4 | 22/03/2026 09:00:00 | 22/03/2026 10:00:00 | 1,0000 | 1 h | Ajuste manual (adv) |
| 5 | 23/03/2026 09:00:00 | 23/03/2026 10:00:00 | 1,0000 | 1 h | Ajuste manual (adv) |

---

## 3. Totais

| Indicador | Valor |
|:----------|:------|
| Jornadas apuradas (pares válidos) | **5** |
| **Total de horas (decimal)** | **8,0423 h** |
| **Total (hh:mm:ss)** | **8 h 02 min 32 s** |

---

## 4. Observações

- Consolidação **legado + adv** na ordem cronológica; mesma regra usada no Admin (`/dashboard/ponto/relatorio`).  
- Conferência final conforme política interna (intervalos, extras, tolerâncias).

---

## 5. Conferência

| Papel | Nome | Data | Assinatura |
|:------|:-----|:-----|:-----------|
| Colaborador | Mateus Scopel | ___/___/______ | _______________ |
| Responsável / RH | | ___/___/______ | _______________ |
