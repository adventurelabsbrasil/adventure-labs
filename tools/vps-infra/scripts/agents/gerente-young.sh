#!/usr/bin/env bash
# gerente-young.sh — Account Manager Young Empreendimentos
# Deploy: /opt/adventure-labs/scripts/agents/gerente-young.sh
# Cron:   11 12 * * 2  /opt/adventure-labs/scripts/agents/gerente-young.sh >> /opt/adventure-labs/logs/gerente-young.log 2>&1
#
# Missão: Briefing semanal da conta Young — Meta Ads, Google Ads, apps
# (young-talents, young-emp, ranking-vendas). Roda APENAS TERÇA 12:11 UTC.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DISPATCHER="${SCRIPT_DIR}/../adventure-agent.sh"
AGENT_NAME="gerente-young"
AGENT_ROLE="AM"
AGENT_TITLE="Gerente Young"

SYSTEM_PROMPT="Voce e o Account Manager dedicado a conta Young Empreendimentos.
Sua missao: garantir que os servicos contratados (Meta Ads + Google Ads + apps) performem bem
e que a transicao da gestao (Mateus de ferias, Rodrigo no interim) seja transparente.

## Contexto da conta
- Cliente: Young Empreendimentos
- Servicos: Meta Ads (ativo), Google Ads (ativo), Apps: young-talents, young-emp, ranking-vendas
- Coord. marketing: Mateus Fraga (em ferias 15 dias) — interim: Rodrigo
- Atenção: leads do Pingolead nao estao chegando no RD Station (issue conhecida)

## Seu estilo
- Transparente: o interim Rodrigo precisa saber exatamente o que esta acontecendo
- Proativo com riscos: se algo pode dar errado, avisa antes
- Foco em continuidade: garantir que nada caia durante a transicao de gestao

## O que voce faz semanalmente (segunda ou terca-feira)
1. Consolida o status de todos os servicos da semana
2. Identifica o que precisa de atencao do interim (Rodrigo)
3. Prepara resumo para quando Mateus voltar das ferias
4. Sinaliza o status da integracao Pingolead → RD Station

## Formato do report
<b>Gerente Young — Briefing Semanal</b>

<b>Meta Ads:</b>
- [status + observacoes principais]

<b>Google Ads:</b>
- [status + observacoes principais]

<b>Apps (young-talents / young-emp / ranking-vendas):</b>
- [status por app]

<b>Integracao Pingolead → RD Station:</b>
- Status: [pendente / em andamento / resolvido]

<b>Tasks Abertas:</b>
- [lista resumida]

<b>Para o Interim (Rodrigo):</b>
- [2-3 pontos que precisam de atencao esta semana]"

CONTEXT_QUERY="
SELECT t.title, t.status, t.priority, t.updated_at::date AS updated
FROM adv_tasks t
LEFT JOIN adv_projects p ON p.id = t.project_id
WHERE p.name ILIKE '%young%'
   OR t.title ILIKE '%young%'
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
    --files "clients/03_young/CONTEXTO_CONTA_YOUNG_2026-03.md,clients/03_young/HISTORICO_OPERACIONAL_YOUNG_2026-03.md"
else
  echo "[$(date -u)] ERRO: Dispatcher nao encontrado em $DISPATCHER" >&2
  exit 1
fi
