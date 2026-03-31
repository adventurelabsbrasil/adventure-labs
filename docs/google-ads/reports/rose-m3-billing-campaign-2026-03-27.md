# ROSE — M3 Saldo, Campanha e Impressões (2026-03-27)

## Escopo executado

1. Diagnóstico de saldo/reembolso da conta ROSE (`167-722-6456`).
2. Verificação de viabilidade de operação por API/CLI para recompor mínimo de R$ 400 sem cartão/Pix.
3. Validação de ativação da campanha trabalhista e meta de conversão de page_view.
4. Verificação de impressões (D+0).

## Resultado do diagnóstico financeiro

### Conta ROSE (Google Ads)

- Billing setup antigo:
  - `billingSetups/7242922025`
  - `payments_account_id`: `5252-0086-8792-5128`
  - `payments_profile_id`: `6060-7527-6917`
  - Período encerrado em `2026-03-27 09:49:19`
- Billing setup novo:
  - `billingSetups/8273487577`
  - `payments_account_id`: `3036-4504-0690-8332`
  - `payments_profile_id`: `2537-1330-8558`
  - Iniciado em `2026-03-27 09:49:19`

### Orçamentos de conta (account budget)

- Orçamento antigo: `approved_spending_limit_micros = 800000000` (R$ 800,00).
- Orçamento vigente: `approved_spending_limit_micros = 0` (R$ 0,00).

### Leitura técnica

- O comportamento é compatível com migração/troca de perfil de pagamentos com orçamento ativo zerado no novo setup.
- Isso explica a percepção de “havia R$ 800 e agora sem fundos”, com possível fluxo de ajuste/reembolso entre perfis.

## Tentativa API/CLI para recompor R$ 400

- Foi tentada operação programática para criar proposta de orçamento.
- A API Google Ads disponível neste fluxo não expôs operação direta utilizável para `account_budget_proposal` no endpoint já integrado.
- Conclusão: **recomposição de saldo/transferência entre contas deve ser conduzida por fluxo manual de billing (UI/suporte Google Ads)**.

## Campanha trabalhista e meta de page_view

Campanha prioritária:

- `23646258632` — `[Tráfego] - [Pesquisa] - [Auxílio Materniade] - [Vercel]`

Status atual:

- Campanha está `ENABLED` (status numérico `2` na resposta da API).
- Orçamento de campanha: `30_000_000` micros (R$ 30/dia) configurado.

Meta/conversão:

- `campaign_conversion_goal` inclui `PAGE_VIEW` (website) para a campanha.
- Ação de conversão de page_view da LP está ativa no ecossistema:
  - `Visualização de página (Carregamento da página auxilio-maternidade)` (`7551154267`)
  - `send_to`: `AW-16549386051/xTwGCNvw1ZAcEMOurtM9`

## Impressões (checagem D+0)

Campanhas checadas (`TODAY` e `LAST_7_DAYS`):

- `23646258632`
- `23628537292`

Resultado:

- `impressions = 0`, `clicks = 0`, `cost = 0` em ambas.

## Decisão operacional imediata

Para cumprir o requisito “ter pelo menos R$ 400 e veicular” **sem cartão/Pix**:

1. Resolver recomposição/transferência no billing da ROSE via UI/suporte Google Ads (entre perfis/contas, conforme política Google).
2. Confirmar orçamento de conta > R$ 400 no setup vigente (`billingSetups/8273487577`).
3. Reexecutar checagem de impressões em até 24h.

## Checklist manual (sem cartão/Pix)

- [ ] Abrir Billing da ROSE e confirmar destino do saldo antigo (R$ 800) após troca de perfil.
- [ ] Solicitar realocação/crédito/reversão para o perfil vigente da ROSE (sem pagamento novo).
- [ ] Confirmar limite/orçamento de conta >= R$ 400 no setup ativo.
- [ ] Rodar novamente diagnóstico de métricas para comprovar `impressions > 0`.
