# Rose — Histórico Google Ads (2026-03)

Registro operacional das alterações e diagnósticos executados na conta Google Ads da Rose (`167-722-6456`), com foco na campanha de Auxílio Maternidade (RS).

## Contexto

- **Conta Google Ads:** `1677226456`
- **Objetivo:** destravar impressões e criar campanha revisável dentro da restrição OAB/RS.
- **Escopo geográfico obrigatório:** Rio Grande do Sul.

## Linha do tempo das ações

### 2026-03-23 — Diagnóstico de ausência de impressões (CLI)

- Execução de diagnóstico técnico via API (CLI) nas campanhas principais.
- Foi confirmado cenário de **0 impressões** na janela consultada.
- Estrutura da conta/campanhas estava tecnicamente ativa, sem indício inicial de erro de integração.

### 2026-03-23 — Criação de script de provisionamento (draft-ready)

- Script criado em `apps/core/admin/scripts/create-rose-rs-maternity-maxclicks.mjs`.
- Padrão operacional definido:
  - campanha Search para RS
  - estratégia **Maximize Clicks** (campo `target_spend` no client atual)
  - orçamento **R$ 30/dia**
  - teto CPC **R$ 4,50**
  - RSA com copy revisada
  - keywords positivas + negativas
  - `--dry-run` por padrão e `--apply` para criação real

### 2026-03-23 — Provisionamento da campanha e saneamento de tentativas

- Campanha criada para revisão e validação por CLI.
- Durante a execução houve uma tentativa intermediária incompleta (sem anúncio) devido a ajuste de limites de texto do RSA.
- Campanha final correta (com anúncio) foi mantida para operação.

## Estado final aplicado

### Campanha publicada (correta)

- **Campaign ID:** `23689157956`
- **Ad Group ID:** `194294170443`
- **Ad ID:** `801703352301`
- **Nome:** `[Tráfego] - [Pesquisa] - [Auxílio Maternidade] - [RS] - [MaxClicks] - [2026-03-24-231401]`
- **Status operacional:** `ENABLED` (campanha, ad group e anúncio)
- **Observação de política:** anúncio em `UNDER_REVIEW` no momento da ativação.

### Campanha arquivada (duplicada/incompleta)

- **Campaign ID:** `23684470922`
- **Ação aplicada:** mantida em `PAUSED` e renomeada com prefixo `[ARQUIVADA]`.

## Agendamento de checagem automática

- **Agendado para:** 2026-03-24 às 09:00 (job one-shot local).
- **Script de checagem:** `tools/scripts/check-rose-campaign-9am-report.sh`
- **Saída do relatório:** `docs/google-ads/reports/rose-campaign-check-YYYY-MM-DD_HH-MM-SS.md`

## Checklist de continuidade (operação)

- Validar quando o anúncio sair de `UNDER_REVIEW`.
- Conferir primeiras métricas após liberação:
  - impressões
  - cliques
  - custo
  - parcela de impressões de pesquisa
- Revisar termos de pesquisa e negativas após primeiras 24-72h de entrega.
