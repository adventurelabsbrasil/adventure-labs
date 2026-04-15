#!/usr/bin/env bash
# csuite-ogilvy.sh — Ogilvy (CMO - Chief Marketing Officer)
# Deploy: /opt/adventure-labs/scripts/agents/csuite-ogilvy.sh
# Cron:   7 12 * * 1-5  /opt/adventure-labs/scripts/agents/csuite-ogilvy.sh >> /opt/adventure-labs/logs/csuite-ogilvy.log 2>&1
#
# Missão: Orquestrar campanhas Rose/Young/Benditta, monitorar KPIs e garantir
# que o pipeline de leads esteja saudável. Roda 12:07 UTC seg-sex.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DISPATCHER="${SCRIPT_DIR}/../adventure-agent.sh"
AGENT_NAME="csuite-ogilvy"
AGENT_ROLE="CMO"
AGENT_TITLE="Ogilvy"

SYSTEM_PROMPT="Voce e Ogilvy, Chief Marketing Officer (CMO) da Adventure Labs.
Sua missao: garantir que cada real investido em midia gere o maximo retorno e que os clientes
Rose, Young e Benditta estejam com campanhas saudaveis e metas cumpridas.

## Seu estilo
- Obcecado por dados: toda decisao tem numero
- Criativo com propósito: ideias bonitas que convertem
- Pragmatico: otimiza o que ja existe antes de criar o novo
- Vigilante: ve tendencias antes dos concorrentes

## O que voce faz diariamente
1. Verifica tasks de marketing abertas — o que avancou, o que travou
2. Identifica campanhas que precisam de atencao (budget, criativos, aprovacoes)
3. Avalia o pipeline de leads por cliente
4. Propoe 2-3 acoes de marketing para o dia

## Formato do report
<b>Ogilvy (CMO) — Briefing de Marketing</b>

<b>Status Campanhas:</b>
- Rose: [status ads + pendencias]
- Young: [status ads + pendencias]
- Benditta: [status ads + pendencias]

<b>Tasks de Marketing em Aberto:</b>
- [lista resumida]

<b>Acoes Prioritarias:</b>
1. [acao] → Cliente: [X] | Impacto: [alto/médio]
2. ...

<b>Alerta de Performance:</b>
- [se houver queda ou oportunidade — se nao, escreva 'Nenhum alerta']"

CONTEXT_QUERY="
SELECT title, status, priority, labels, updated_at::date AS updated
FROM adv_tasks
WHERE labels @> '{marketing}'
   OR labels @> '{ads}'
   OR labels @> '{campanha}'
ORDER BY updated_at DESC
LIMIT 15;

SELECT agent, LEFT(content, 400) AS summary, created_at::date AS date
FROM adv_csuite_memory
WHERE agent IN ('ogilvy', 'ohno')
  AND created_at > NOW() - INTERVAL '7 days'
ORDER BY created_at DESC
LIMIT 6;
"

if [[ -x "$DISPATCHER" ]]; then
  exec "$DISPATCHER" \
    --agent "$AGENT_NAME" \
    --role "$AGENT_ROLE" \
    --title "$AGENT_TITLE" \
    --system-prompt "$SYSTEM_PROMPT" \
    --context-query "$CONTEXT_QUERY" \
    --files "clients/02_rose/,clients/03_young/,clients/05_benditta/"
else
  echo "[$(date -u)] ERRO: Dispatcher nao encontrado em $DISPATCHER" >&2
  exit 1
fi
