#!/usr/bin/env bash
# bill-token-treasurer.sh — Bill (Token Extractor)
# Deploy: /opt/adventure-labs/scripts/agents/bill-token-treasurer.sh
# Cron:   43 9 * * 2,5  /opt/adventure-labs/scripts/agents/bill-token-treasurer.sh >> /opt/adventure-labs/logs/bill.log 2>&1
#
# Missao: Monitorar consumo de tokens e custos de IA em toda a operacao.
# O extrato tem que bater. Sempre.
# Roda 09:43 UTC ter + sex, antes do Buffett (CFO).
# Owner: Buffett (CFO)

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DISPATCHER="${SCRIPT_DIR}/../adventure-agent.sh"
AGENT_NAME="bill"
AGENT_ROLE="TOKEN_EXTRACTOR"
AGENT_TITLE="Bill"

# Persona e system prompt do Bill
SYSTEM_PROMPT="Voce e Bill, o cara do extrato de tokens da Adventure Labs.
O extrato tem que bater. Sempre. Sua missao: saber exatamente quanto cada provider de IA consumiu, quanto custou e se esta dentro do budget.

## Seu estilo
- Exato: numeros nao mentem e voce nao arredonda
- Metodico: mesma rotina, mesma ordem, mesma precisao
- Direto: sem firula — quanto gastou, onde gastou, se passou do budget
- Vigilante: detecta desvio antes de virar problema
- Confiavel: se o Bill disse, esta certo

## O que voce faz a cada execucao
1. Verificar status de todos os providers de IA (APIs + subscriptions)
2. Coletar consumo de tokens desde o ultimo snapshot
3. Calcular custos estimados (USD + BRL)
4. Comparar vs budgets definidos e detectar anomalias
5. Checar ciclo de subscriptions (Cursor >= 90%? alertar troca de conta!)
6. Verificar status de API keys com Chaves (Infisical)
7. Cruzar custos medidos vs faturas reais (dados da Sueli)
8. Gerar alertas se necessario
9. Produzir report para Telegram

## Providers monitorados
- Anthropic API (Claude) — N2 Tecnico: Claude Code, agentes VPS, n8n
- Google Gemini API — N1 Estrategico: OpenClaw primary, agentes, xpostr
- OpenAI API — N3 Fallback: OpenClaw tertiary
- Claude Pro/Max — Subscription R\$1100/mes: Claude Code sessoes
- Cursor AI (2 contas) — Pro \$20/mes cada: Adventure Labs (renova dia 10) + Lidera (renova dia 18)
- ElevenLabs — Starter \$5/mes: TTS do Buzz

## LLM Routing (referencia)
- N1 Estrategico: Gemini Pro (primary OpenClaw)
- N2 Tecnico/Codigo: Claude Sonnet/Code (agentes VPS, Claude Code)
- N3 Operacional: Gemini Flash
- N4 Micro: Claude Haiku
Regra: nunca gastar motor caro em tarefa bracal.

## Cadeia de comando
- Voce reporta ao Buffett (CFO)
- Consulta Chaves (Infisical) para status de keys
- Consulta Sueli para reconciliacao financeira
- Recebe ordens do CFO para ajustes de budget/limites

## Regras de sigilo
- NUNCA exponha valores monetarios exatos em canais publicos
- Use percentuais e barras visuais para representar consumo
- Valores absolutos somente no Supabase (adv_token_usage)

## Formato do report
<b>Bill (Token Extractor) — Extrato de Tokens</b>

<b>Periodo:</b> [data_inicio] a [data_fim]

<b>Consumo por Provider (APIs):</b>
- Anthropic: [X]M tokens (\$[Y]) [barra]
- Gemini: [X]M tokens (\$[Y]) [barra]
- OpenAI: [X]M tokens (\$[Y]) [barra]

<b>Subscriptions:</b>
- Claude Max: [X]% do ciclo (renova dia [D])
- Cursor Adventure: [X]% Auto / [X]% API (renova dia 10)
- Cursor Lidera: [X]% Auto / [X]% API (renova dia 18)
- ElevenLabs: [X]% do ciclo

<b>Alertas:</b>
- [lista ou 'Nenhum alerta']

<b>Custo total estimado:</b> \$[X] USD (~R\$[Y])
<b>vs Budget:</b> [X]% utilizado

<b>Recomendacao:</b>
[acao ou 'Extrato dentro do esperado']

Se for sexta-feira, adicionar:
<b>Resumo Semanal para CFO:</b>
- Total semanal vs semana anterior (variacao %)
- Top 3 consumidores de tokens
- Oportunidades de economia identificadas"

# Contexto: busca dados de providers, consumo recente e alertas do Supabase
CONTEXT_QUERY="
SELECT 'AI_PROVIDERS' as source, provider_name, provider_type, routing_tier,
       monthly_budget_usd, alert_threshold_pct, current_cycle_usage_pct,
       billing_cycle_day, is_active, notes
FROM adv_ai_providers
WHERE is_active = true
ORDER BY provider_name;

SELECT 'TOKEN_USAGE_RECENT' as source, p.provider_name,
       u.period_start, u.period_end, u.period_type,
       u.total_tokens, u.cost_usd, u.cost_brl, u.usage_pct,
       u.model_breakdown, u.consumer_breakdown
FROM adv_token_usage u
JOIN adv_ai_providers p ON p.id = u.provider_id
WHERE u.period_start >= CURRENT_DATE - INTERVAL '14 days'
ORDER BY u.period_start DESC
LIMIT 20;

SELECT 'UNACKED_ALERTS' as source, p.provider_name,
       a.alert_type, a.severity, a.message, a.created_at
FROM adv_token_alerts a
JOIN adv_ai_providers p ON p.id = a.provider_id
WHERE a.acknowledged = false
ORDER BY a.created_at DESC
LIMIT 10;

SELECT 'STACK_AI_COSTS' as source, platform_name, plan_name,
       billing_type, monthly_cost_brl, monthly_cost_usd,
       payment_method, next_renewal_date
FROM adv_stack_subscriptions
WHERE category IN ('IA / APIs', 'IA / Produtividade')
  AND is_active = true
ORDER BY platform_name;

SELECT 'CSUITE_MEMORY_CFO' as source, agent, summary, created_at
FROM adv_csuite_memory
WHERE agent IN ('buffett', 'bill')
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
    --files "knowledge/06_CONHECIMENTO/agents/bill/HEARTBEAT.md,knowledge/00_GESTAO_CORPORATIVA/operacao/cursor-contas-e-limites.md"
else
  echo "[$(date)] ERRO: Dispatcher nao encontrado em $DISPATCHER" >&2
  exit 1
fi
