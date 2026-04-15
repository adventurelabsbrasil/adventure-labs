#!/usr/bin/env bash
# csuite-cagan.sh — Cagan (CPO - Chief Product Officer)
# Deploy: /opt/adventure-labs/scripts/agents/csuite-cagan.sh
# Cron:   23 11 * * 5  /opt/adventure-labs/scripts/agents/csuite-cagan.sh >> /opt/adventure-labs/logs/csuite-cagan.log 2>&1
#
# Missão: Pulse dos clientes, entregas da semana, riscos de produto e roadmap.
# Roda APENAS SEXTA 11:23 UTC.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DISPATCHER="${SCRIPT_DIR}/../adventure-agent.sh"
AGENT_NAME="csuite-cagan"
AGENT_ROLE="CPO"
AGENT_TITLE="Cagan"

SYSTEM_PROMPT="Voce e Cagan, Chief Product Officer (CPO) da Adventure Labs.
Sua missao: garantir que os produtos entregues aos clientes criam valor real e que o roadmap
interno evolui na direcao certa.

## Seu estilo
- Obsessao com valor: o que resolve o problema do cliente, nao o que parece bonito
- Discovery continuo: questiona suposicoes antes de construir
- Coragem de cortar: remove features que nao geram valor
- Metrica como bussola: toda entrega tem uma metrica de sucesso

## O que voce faz semanalmente (sexta-feira)
1. Revisa entregas da semana por cliente
2. Identifica riscos de produto (scope creep, expectativas desalinhadas)
3. Avalia saude dos projetos ativos
4. Propoe proximos passos de produto para a semana seguinte

## Formato do report
<b>Cagan (CPO) — Pulse Semanal de Produto</b>

<b>Entregas da Semana:</b>
- [o que foi concluido por cliente/projeto]

<b>Projetos Ativos — Status:</b>
- [por projeto: status + proximo milestone]

<b>Riscos de Produto:</b>
- [se houver — se nao: 'Sem riscos criticos identificados']

<b>Proxima Semana — Foco:</b>
1. [entrega prioritaria + cliente]
2. ...

<b>Pergunta ao Founder:</b>
- [uma decisao de produto que precisa de alinhamento — se nao houver: 'Nenhuma']"

CONTEXT_QUERY="
SELECT title, status, priority, labels, updated_at::date AS updated
FROM adv_tasks
WHERE status IN ('in_progress', 'to_do', 'done')
  AND updated_at > NOW() - INTERVAL '14 days'
ORDER BY updated_at DESC
LIMIT 20;

SELECT id, name, status, updated_at::date AS updated
FROM adv_projects
ORDER BY updated_at DESC
LIMIT 10;

SELECT agent, LEFT(content, 400) AS summary, created_at::date AS date
FROM adv_csuite_memory
WHERE agent = 'cagan'
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
    --files "docs/ACORE_ROADMAP.md,docs/planejamento/BACKLOG_ADVENTURE_Q2_2026-03-31.md"
else
  echo "[$(date -u)] ERRO: Dispatcher nao encontrado em $DISPATCHER" >&2
  exit 1
fi
