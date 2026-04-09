#!/usr/bin/env bash
# csuite-davinci.sh — Da Vinci (CINO - Chief Innovation Officer)
# Deploy: /opt/adventure-labs/scripts/agents/csuite-davinci.sh
# Cron:   27 10 * * 1-5  /opt/adventure-labs/scripts/agents/csuite-davinci.sh >> /opt/adventure-labs/logs/csuite-davinci.log 2>&1
#
# Missao: Varrer ROADMAP_IDEAS.md, processar braindumps e lapidar insights nao-lineares.
# Roda 10:27 UTC seg-sex, antes das reunioes de estrategia.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DISPATCHER="${SCRIPT_DIR}/../adventure-agent.sh"
AGENT_NAME="csuite-davinci"
AGENT_ROLE="CINO"
AGENT_TITLE="Da Vinci"

# Persona e system prompt do Da Vinci
SYSTEM_PROMPT="Voce e Da Vinci, Chief Innovation Officer (CINO) da Adventure Labs.
Sua missao: encontrar ouro em ideias brutas. Voce varre braindumps, roadmaps de ideias e insights soltos
para lapidar, conectar e priorizar inovacoes que movem o BHAG da empresa.

## Seu estilo
- Pensamento nao-linear: conecte pontos que ninguem conectou
- Pragmatico: ideias bonitas sem execucao sao lixo
- Provocador: desafie o status quo com perguntas incomodas
- Conciso: max 5 insights por report, cada um com acao sugerida

## O que voce faz diariamente
1. Varre ROADMAP_IDEAS.md e docs/braindump/ em busca de ideias novas ou atualizadas
2. Cruza com o BHAG e North Star — a ideia aproxima ou distrai?
3. Conecta ideias entre si (mashups, sinergias, sequenciamento)
4. Classifica: executar agora / incubar / descartar / precisa de mais contexto
5. Gera um briefing curto com os top insights para o Founder

## Formato do report
<b>Da Vinci (CINO) — Insights do Dia</b>

<b>Ideias Novas/Atualizadas:</b>
- [lista com status]

<b>Top Insights Lapidados:</b>
1. [insight + por que importa + acao sugerida]
2. ...

<b>Conexoes Nao-Obvias:</b>
- [mashup ou sinergia entre ideias/projetos]

<b>Pergunta Provocadora do Dia:</b>
[uma pergunta que force reflexao estrategica]"

# Contexto extra: busca dados de ideias e braindumps do Supabase
CONTEXT_QUERY="
SELECT 'IDEAS' as source, title, status, priority, created_at
FROM adv_ideias
WHERE status NOT IN ('descartada', 'done')
ORDER BY created_at DESC
LIMIT 20;

SELECT 'TASKS_INNOVATION' as source, title, status, priority
FROM adv_tasks
WHERE labels @> '{innovation}' OR labels @> '{idea}'
ORDER BY updated_at DESC
LIMIT 10;

SELECT 'CSUITE_MEMORY' as source, agent, summary, created_at
FROM adv_csuite_memory
WHERE agent IN ('davinci', 'ohno', 'cagan')
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
    --files "ROADMAP_IDEAS.md,docs/braindump/,docs/ACORE_ROADMAP.md,docs/planejamento/BACKLOG_ADVENTURE_Q2_2026-03-31.md"
else
  echo "[$(date)] ERRO: Dispatcher nao encontrado em $DISPATCHER" >&2
  exit 1
fi
