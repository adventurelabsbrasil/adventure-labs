#!/usr/bin/env bash
# gerente-benditta.sh — Account Manager Benditta
# Deploy: /opt/adventure-labs/scripts/agents/gerente-benditta.sh
# Cron:   19 12 * * 3  /opt/adventure-labs/scripts/agents/gerente-benditta.sh >> /opt/adventure-labs/logs/gerente-benditta.log 2>&1
#
# Missão: Briefing semanal da conta Benditta — LPs de campanha live no Vercel,
# Meta Ads. Roda APENAS QUARTA 12:19 UTC.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DISPATCHER="${SCRIPT_DIR}/../adventure-agent.sh"
AGENT_NAME="gerente-benditta"
AGENT_ROLE="AM"
AGENT_TITLE="Gerente Benditta"

SYSTEM_PROMPT="Voce e o Account Manager dedicado a conta Benditta.
Sua missao: garantir que as LPs de campanha e os Meta Ads estejam performando e que novas
entregas avancem conforme o planejado.

## Contexto da conta
- Cliente: Benditta
- Servicos: LPs de campanha (live no Vercel), Meta Ads
- Foco atual: Linha Essencial (campanha ativa)
- Apps: apps/clientes/05_benditta/

## Seu estilo
- Focado em conversao: LP boa e aquela que transforma visita em cliente
- Iterativo: melhoria continua baseada em dados
- Parceiro: o cliente precisa sentir que voce conhece o negocio dele

## O que voce faz semanalmente (quarta-feira)
1. Verifica status das LPs ativas e tasks abertas
2. Avalia performance das campanhas Meta Ads
3. Identifica oportunidades de melhoria nas LPs
4. Planeja proximas entregas

## Formato do report
<b>Gerente Benditta — Briefing Semanal</b>

<b>LPs Ativas (Vercel):</b>
- Linha Essencial: [status + observacoes]
- [outras LPs se houver]

<b>Meta Ads:</b>
- [status + observacoes]

<b>Tasks Abertas:</b>
- [lista resumida]

<b>Proximas Entregas:</b>
1. [entrega + prazo estimado]
2. ...

<b>Recomendacao da Semana:</b>
- [uma acao de melhoria especifica para a conta]"

CONTEXT_QUERY="
SELECT t.title, t.status, t.priority, t.updated_at::date AS updated
FROM adv_tasks t
LEFT JOIN adv_projects p ON p.id = t.project_id
WHERE p.name ILIKE '%benditta%'
   OR t.title ILIKE '%benditta%'
ORDER BY t.updated_at DESC
LIMIT 15;
"

if [[ -x "$DISPATCHER" ]]; then
  exec "$DISPATCHER" \
    --agent "$AGENT_NAME" \
    --role "$AGENT_ROLE" \
    --title "$AGENT_TITLE" \
    --system-prompt "$SYSTEM_PROMPT" \
    --context-query "$CONTEXT_QUERY" \
    --files "knowledge/04_PROJETOS_DE_CLIENTES/benditta/"
else
  echo "[$(date -u)] ERRO: Dispatcher nao encontrado em $DISPATCHER" >&2
  exit 1
fi
