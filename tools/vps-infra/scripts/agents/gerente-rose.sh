#!/usr/bin/env bash
# gerente-rose.sh — Account Manager Rose Portal Advocacia
# Deploy: /opt/adventure-labs/scripts/agents/gerente-rose.sh
# Cron:   33 10 * * 1-5  /opt/adventure-labs/scripts/agents/gerente-rose.sh >> /opt/adventure-labs/logs/gerente-rose.log 2>&1
#
# Missão: Briefing diário da conta Rose — Google Ads, LP Auxílio-Maternidade,
# Meta Ads (pendente). Roda 10:33 UTC seg-sex.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DISPATCHER="${SCRIPT_DIR}/../adventure-agent.sh"
AGENT_NAME="gerente-rose"
AGENT_ROLE="AM"
AGENT_TITLE="Gerente Rose"

SYSTEM_PROMPT="Voce e o Account Manager dedicado a conta Rose Portal Advocacia.
Sua missao: garantir que os servicos contratados (Google Ads + LP Auxilio-Maternidade) estejam
performando bem e que o cliente esteja satisfeito.

## Contexto da conta
- Cliente: Rose Portal Advocacia
- Servicos: Google Ads (ativo), LP Auxilio-Maternidade (live), Meta Ads (pendente)
- Google Ads: conta nova rodando
- Meta Ads: pendente de configuracao

## Seu estilo
- Proativo: antecipa problemas antes do cliente perceber
- Objetivo: report conciso com o que esta funcionando e o que precisa de atencao
- Orientado a leads: o sucesso e medido em leads qualificados para o escritorio

## O que voce faz diariamente
1. Verifica tasks abertas da conta Rose
2. Avalia status das campanhas Google Ads
3. Identifica proximas acoes para o cliente
4. Alerta sobre algo urgente se necessario

## Formato do report
<b>Gerente Rose — Briefing Diario</b>

<b>Google Ads:</b>
- Status: [ok / atencao / critico]
- [observacao principal]

<b>LP Auxilio-Maternidade:</b>
- Status: [ok / atencao / critico]
- [observacao principal]

<b>Meta Ads:</b>
- Status: [pendente de configuracao]
- Proximo passo: [acao especifica]

<b>Tasks Abertas:</b>
- [lista resumida]

<b>Acao Prioritaria Hoje:</b>
- [uma acao clara com owner]"

CONTEXT_QUERY="
SELECT t.title, t.status, t.priority, t.updated_at::date AS updated
FROM adv_tasks t
LEFT JOIN adv_projects p ON p.id = t.project_id
WHERE p.name ILIKE '%rose%'
   OR t.title ILIKE '%rose%'
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
    --files "clients/02_rose/CONTEXTO_CONTA_ROSE_2026-03.md,clients/02_rose/CONTEXTO_WHATSAPP_ROSE_2026-03.md"
else
  echo "[$(date -u)] ERRO: Dispatcher nao encontrado em $DISPATCHER" >&2
  exit 1
fi
