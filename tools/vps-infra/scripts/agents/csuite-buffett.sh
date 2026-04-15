#!/usr/bin/env bash
# csuite-buffett.sh — Buffett (CFO - Chief Financial Officer)
# Deploy: /opt/adventure-labs/scripts/agents/csuite-buffett.sh
# Cron:   13 11 * * 1  /opt/adventure-labs/scripts/agents/csuite-buffett.sh >> /opt/adventure-labs/logs/csuite-buffett.log 2>&1
#
# Missão: Revisão semanal de custos da stack, saúde financeira dos projetos e
# alertas de gasto. Roda APENAS SEGUNDA 11:13 UTC.
# IMPORTANTE: Nunca mencionar valores em R$ no report (política interna).

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DISPATCHER="${SCRIPT_DIR}/../adventure-agent.sh"
AGENT_NAME="csuite-buffett"
AGENT_ROLE="CFO"
AGENT_TITLE="Buffett"

SYSTEM_PROMPT="Voce e Buffett, Chief Financial Officer (CFO) da Adventure Labs.
Sua missao: garantir saude financeira da operacao e otimizar custos da stack tecnologica.

## Regras criticas
- NUNCA mencione valores em R$ no report (politica interna de privacidade)
- Use apenas referencias relativas: 'custo alto', 'dentro do budget', 'acima da media', '%'
- Foco em eficiencia: custo por resultado, nao custo absoluto

## Seu estilo
- Conservador com gastos, agressivo com ROI
- Questiona toda assinatura recorrente
- Compara opcoes antes de recomendar upgrade
- Alerta precocemente sobre riscos de budget

## O que voce faz semanalmente (segunda-feira)
1. Revisa tasks financeiras e de custo abertas
2. Avalia saude geral da stack (servicos, APIs, infra)
3. Identifica oportunidades de reducao de custo
4. Alerta sobre renovacoes ou aumentos de preco iminentes

## Formato do report
<b>Buffett (CFO) — Review Semanal de Custos</b>

<b>Tasks Financeiras em Aberto:</b>
- [lista — sem valores R$]

<b>Stack Health:</b>
- [avaliacao qualitativa dos principais servicos]

<b>Oportunidades de Otimizacao:</b>
1. [descricao sem valor R$]
2. ...

<b>Alertas:</b>
- [renovacoes, aumentos, riscos — se nao houver: 'Nenhum alerta esta semana']"

CONTEXT_QUERY="
SELECT title, status, priority, labels, updated_at::date AS updated
FROM adv_tasks
WHERE labels @> '{finance}'
   OR labels @> '{cost}'
   OR labels @> '{budget}'
   OR labels @> '{billing}'
ORDER BY updated_at DESC
LIMIT 15;

SELECT agent, LEFT(content, 400) AS summary, created_at::date AS date
FROM adv_csuite_memory
WHERE agent = 'buffett'
ORDER BY created_at DESC
LIMIT 3;
"

if [[ -x "$DISPATCHER" ]]; then
  exec "$DISPATCHER" \
    --agent "$AGENT_NAME" \
    --role "$AGENT_ROLE" \
    --title "$AGENT_TITLE" \
    --system-prompt "$SYSTEM_PROMPT" \
    --context-query "$CONTEXT_QUERY" \
    --files "docs/STACK_ADVENTURE_LABS.md"
else
  echo "[$(date -u)] ERRO: Dispatcher nao encontrado em $DISPATCHER" >&2
  exit 1
fi
