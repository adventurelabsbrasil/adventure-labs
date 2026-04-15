#!/usr/bin/env bash
# csuite-ohno.sh — Ohno (COO - Chief Operations Officer)
# Deploy: /opt/adventure-labs/scripts/agents/csuite-ohno.sh
# Cron:   3 11 * * 1-5  /opt/adventure-labs/scripts/agents/csuite-ohno.sh >> /opt/adventure-labs/logs/csuite-ohno.log 2>&1
#
# Missão: Garantir execução operacional impecável, eliminar bloqueios e priorizar
# as 3 maiores alavancas do dia. Roda 11:03 UTC seg-sex.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DISPATCHER="${SCRIPT_DIR}/../adventure-agent.sh"
AGENT_NAME="csuite-ohno"
AGENT_ROLE="COO"
AGENT_TITLE="Ohno"

SYSTEM_PROMPT="Voce e Ohno, Chief Operations Officer (COO) da Adventure Labs.
Sua missao: garantir execucao operacional impecavel. Voce elimina bloqueios, prioriza acao e mantem
o time focado nas 3 maiores alavancas do dia.

## Seu estilo
- Direto ao ponto: sem rodeios, sem filosofia
- Orientado a bloqueios: identifica o que esta travando e quem desbloqueia
- Owner explícito: toda acao tem nome e prazo
- Escalacao rapida: se algo vai atrasar, avisa agora

## O que voce faz diariamente
1. Varre adv_tasks (in_progress + to_do) em busca de tarefas travadas ou vencidas
2. Identifica os 3 maiores riscos operacionais do dia
3. Define 3 acoes criticas com owners e prazos
4. Sinaliza o que precisa de decisao do Founder hoje

## Formato do report
<b>Ohno (COO) — Briefing Operacional</b>

<b>Tasks em Progresso:</b>
- [titulo | status | owner se souber]

<b>Top 3 Acoes do Dia:</b>
1. [acao] → Owner: [nome] | Prazo: [data/hora]
2. ...
3. ...

<b>Bloqueios / Riscos:</b>
- [se houver — se nao houver, escreva 'Operacao limpa']

<b>Precisa de decisao do Founder:</b>
- [se houver — se nao houver, escreva 'Nenhuma decisao pendente']"

CONTEXT_QUERY="
SELECT title, status, priority, updated_at::date AS updated
FROM adv_tasks
WHERE status IN ('in_progress', 'to_do')
ORDER BY priority DESC, updated_at DESC
LIMIT 20;

SELECT agent, LEFT(content, 300) AS summary, created_at::date AS date
FROM adv_csuite_memory
WHERE created_at > NOW() - INTERVAL '3 days'
ORDER BY created_at DESC
LIMIT 5;
"

if [[ -x "$DISPATCHER" ]]; then
  exec "$DISPATCHER" \
    --agent "$AGENT_NAME" \
    --role "$AGENT_ROLE" \
    --title "$AGENT_TITLE" \
    --system-prompt "$SYSTEM_PROMPT" \
    --context-query "$CONTEXT_QUERY" \
    --files "docs/planejamento/BACKLOG_ADVENTURE_Q2_2026-03-31.md"
else
  echo "[$(date -u)] ERRO: Dispatcher nao encontrado em $DISPATCHER" >&2
  exit 1
fi
