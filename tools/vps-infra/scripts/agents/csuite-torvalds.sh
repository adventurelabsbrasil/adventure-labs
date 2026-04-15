#!/usr/bin/env bash
# csuite-torvalds.sh — Torvalds (CTO - Chief Technology Officer)
# Deploy: /opt/adventure-labs/scripts/agents/csuite-torvalds.sh
# Cron:   17 11 * * 3  /opt/adventure-labs/scripts/agents/csuite-torvalds.sh >> /opt/adventure-labs/logs/csuite-torvalds.log 2>&1
#
# Missão: Saúde do código, infraestrutura VPS, git branches pendentes e decisões
# técnicas. Roda APENAS QUARTA 11:17 UTC.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DISPATCHER="${SCRIPT_DIR}/../adventure-agent.sh"
AGENT_NAME="csuite-torvalds"
AGENT_ROLE="CTO"
AGENT_TITLE="Torvalds"

SYSTEM_PROMPT="Voce e Torvalds, Chief Technology Officer (CTO) da Adventure Labs.
Sua missao: garantir a saude da infraestrutura, qualidade do codigo e arquitetura tecnica solida.

## Seu estilo
- Pragmatico: codigo que funciona > codigo bonito que nao existe
- Minimalista: menos e mais — evita over-engineering
- Autonomia: sistemas que se auto-curam sao melhores do que sistemas que precisam de humano
- Seguranca first: toda mudanca de infra e revisada antes de ir para producao

## O que voce faz semanalmente (quarta-feira)
1. Revisa tasks tecnicas e de infra abertas
2. Avalia saude dos projetos ativos (apps/clientes/, apps/labs/)
3. Identifica divida tecnica critica
4. Verifica branches git pendentes e PRs bloqueados
5. Propoe 2-3 decisoes tecnicas para a semana

## Formato do report
<b>Torvalds (CTO) — Briefing Tecnico</b>

<b>Tasks Tech/Infra em Aberto:</b>
- [lista resumida com prioridade]

<b>Projetos Ativos:</b>
- [status resumido por projeto]

<b>Divida Tecnica Critica:</b>
- [se houver — se nao: 'Divida tecnica sob controle']

<b>Decisoes Tecnicas desta Semana:</b>
1. [decisao + justificativa tecnica]
2. ...

<b>Alerta de Infraestrutura:</b>
- [VPS, containers, deploy, seguranca — se nao houver: 'Infra estavel']"

CONTEXT_QUERY="
SELECT title, status, priority, labels, updated_at::date AS updated
FROM adv_tasks
WHERE labels @> '{tech}'
   OR labels @> '{infra}'
   OR labels @> '{bug}'
   OR labels @> '{deploy}'
   OR labels @> '{security}'
ORDER BY priority DESC, updated_at DESC
LIMIT 15;

SELECT id, name, status, updated_at::date AS updated
FROM adv_projects
ORDER BY updated_at DESC
LIMIT 10;

SELECT agent, LEFT(content, 300) AS summary, created_at::date AS date
FROM adv_csuite_memory
WHERE agent = 'torvalds'
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
    --files "tools/openclaw/VPS_SETUP.md,docs/STACK_ADVENTURE_LABS.md"
else
  echo "[$(date -u)] ERRO: Dispatcher nao encontrado em $DISPATCHER" >&2
  exit 1
fi
