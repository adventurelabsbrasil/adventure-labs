#!/usr/bin/env bash
# barsi-patrimonio.sh — Barsi (Gestor de Patrimonio) — Modo Adventure (PJ)
# Deploy: /opt/adventure-labs/scripts/agents/barsi-patrimonio.sh
# Cron:   7 10 * * 5  /opt/adventure-labs/scripts/agents/barsi-patrimonio.sh >> /opt/adventure-labs/logs/barsi.log 2>&1
#
# Missao: Fotografia patrimonial semanal da Adventure Labs (PJ).
# Roda 10:07 UTC sexta-feira, depois da Faisca e antes do Buffett.
# Owner: Buffett (CFO)
#
# NOTA: Este script roda SOMENTE o modo Adventure (PJ).
# O modo Personal (PF) e acionado sob demanda pelo Founder via chat.
# Dados PF NUNCA passam por este script ou pelo Supabase.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DISPATCHER="${SCRIPT_DIR}/../adventure-agent.sh"
AGENT_NAME="barsi"
AGENT_ROLE="WEALTH_STEWARD"
AGENT_TITLE="Barsi"

SYSTEM_PROMPT="Voce e Barsi, o Gestor de Patrimonio da Adventure Labs.
Inspirado em Luiz Barsi Filho, o maior investidor PF do Brasil.
Sua missao: construir e manter a fotografia patrimonial completa da empresa.

## Seu estilo
- Paciente: patrimonio se constroi tijolo por tijolo
- Metodico: cada conta, cada ativo, cada passivo mapeado
- Conservador: preservar capital e a prioridade
- Transparente: o Founder e o CFO tem visao completa
- Discreto: sem valores absolutos em canais publicos

## IMPORTANTE: Este e o modo ADVENTURE (PJ)
- Dados SOMENTE da pessoa juridica Adventure Labs
- NUNCA mencionar dados pessoais do Founder
- NUNCA acessar personal/ ou dados PF

## O que voce faz semanalmente
1. Levantar saldos bancarios (Sicredi, Inter, CDB)
2. Mapear contas a receber (contratos: Rose, Benditta, Young, Lidera)
3. Mapear contas a pagar (fornecedores, reembolso socio, impostos)
4. Avaliar ativos fixos e intangiveis (escritorio, stack digital)
5. Inventariar bens fisicos e digitais (equipamentos, moveis, infra, marca)
6. Calcular depreciacao e valor atual dos bens
7. Calcular balanco: Ativos = Passivos + PL
8. Comparar com semana anterior (evolucao %)
9. Registrar movimentacoes relevantes
10. Produzir report para Telegram

## Contas monitoradas (Adventure Labs PJ)
- Sicredi Corrente (***797213) — conta principal
- Banco Inter (corrente + CDB) — investimentos
- Contas a Receber: Rose (~R\$3.500/mes), Benditta (R\$2.000/mes), Young (variavel), Lidera (pontual)
- Reembolso ao socio: Nubank PF (R\$730,70 pendente jan-mar/2026)
- Capital social: R\$50.501 integralizado (Young + Rodrigo + subscricao)

## Cadeia de comando
- Reporta ao Buffett (CFO) no modo PJ
- Consulta Sueli para saldos e conciliacoes
- Consulta Chaves para acessos bancarios
- Consulta Faisca para custos IA como % patrimonio

## Formato do report
<b>Barsi (Gestor de Patrimonio) — Foto Semanal</b>

<b>Data:</b> [YYYY-MM-DD]

<b>Ativo Circulante:</b>
- Caixa (contas correntes): R\$[X]
- Investimentos (CDB/aplicacoes): R\$[X]
- Contas a receber: R\$[X]
<b>Total Circulante:</b> R\$[X]

<b>Ativo Nao Circulante:</b>
- Imobilizado: R\$[X]
- Intangiveis: R\$[X]

<b>TOTAL ATIVOS:</b> R\$[X]

<b>Passivo:</b>
- Fornecedores: R\$[X]
- Impostos: R\$[X]
- Reembolso socio: R\$[X]
<b>Total Passivo:</b> R\$[X]

<b>Patrimonio Liquido:</b>
- Capital social: R\$[X]
- Resultado acumulado: R\$[X]
<b>PL Total:</b> R\$[X]

<b>Evolucao vs semana anterior:</b> [+X% / -X%]

<b>Movimentacoes da semana:</b>
- [lista ou 'Sem movimentacoes relevantes']

<b>Recebiveis pendentes:</b>
- [cliente]: R\$[X] (vence [data])

<b>Observacao:</b>
[insight ou recomendacao]"

# Contexto: busca dados patrimoniais, stack e ultimas decisoes do Supabase
CONTEXT_QUERY="
SELECT 'PATRIMONY_ACCOUNTS' as source, account_name, account_type,
       institution, is_active, notes
FROM adv_patrimony_accounts
WHERE is_active = true
ORDER BY account_type, account_name;

SELECT 'LAST_SNAPSHOT' as source, snapshot_date, snapshot_type,
       cash_checking, cash_investments, accounts_receivable,
       fixed_assets, intangible_assets,
       accounts_payable, taxes_payable, partner_reimbursement,
       share_capital, retained_earnings, current_period_result,
       total_assets, total_liabilities, net_worth,
       accounts_detail, receivables_detail, notes
FROM adv_patrimony_snapshots
ORDER BY snapshot_date DESC
LIMIT 2;

SELECT 'RECENT_MOVEMENTS' as source, movement_date, movement_type,
       amount, counterpart, description, impact_on_net_worth
FROM adv_patrimony_movements
WHERE movement_date >= CURRENT_DATE - INTERVAL '14 days'
ORDER BY movement_date DESC
LIMIT 15;

SELECT 'ASSET_INVENTORY' as source, asset_name, asset_category, scope,
       brand, model, location, responsible_person, condition,
       purchase_date, purchase_value, current_estimated_value,
       depreciation_rate_yearly, warranty_expiry, is_active, tags
FROM adv_patrimony_assets
WHERE is_active = true
ORDER BY asset_category, asset_name;

SELECT 'ASSET_EVENTS_RECENT' as source, a.asset_name,
       e.event_type, e.event_date, e.description, e.cost
FROM adv_patrimony_asset_events e
JOIN adv_patrimony_assets a ON a.id = e.asset_id
WHERE e.event_date >= CURRENT_DATE - INTERVAL '30 days'
ORDER BY e.event_date DESC
LIMIT 10;

SELECT 'STACK_FIXED_COSTS' as source, platform_name, monthly_cost_brl,
       monthly_cost_usd, billing_type, next_renewal_date
FROM adv_stack_subscriptions
WHERE is_active = true AND billing_type IN ('fixed', 'annual')
ORDER BY monthly_cost_brl DESC NULLS LAST;

SELECT 'AI_COSTS' as source, provider_name, monthly_budget_usd,
       monthly_budget_brl
FROM adv_ai_providers
WHERE is_active = true;

SELECT 'CSUITE_MEMORY' as source, agent, summary, created_at
FROM adv_csuite_memory
WHERE agent IN ('buffett', 'barsi', 'faisca', 'ohno')
ORDER BY created_at DESC
LIMIT 5;
"

# Executa via dispatcher padrao
if [[ -x "$DISPATCHER" ]]; then
  exec "$DISPATCHER" \
    --agent "$AGENT_NAME" \
    --role "$AGENT_ROLE" \
    --title "$AGENT_TITLE" \
    --system-prompt "$SYSTEM_PROMPT" \
    --context-query "$CONTEXT_QUERY" \
    --files "knowledge/06_CONHECIMENTO/agents/barsi/HEARTBEAT.md,knowledge/00_GESTAO_CORPORATIVA/checklists_config/plano-de-contas-categorias.md"
else
  echo "[$(date)] ERRO: Dispatcher nao encontrado em $DISPATCHER" >&2
  exit 1
fi
