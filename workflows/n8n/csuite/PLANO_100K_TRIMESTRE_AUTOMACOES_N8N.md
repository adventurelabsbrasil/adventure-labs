# Plano de automações n8n — Meta 100k trimestre

Objetivo: reduzir trabalho manual e acelerar decisão comercial/operacional com cinco automações críticas.

Projeto relacionado:
- Asana: `https://app.asana.com/1/1213725900473628/project/1213833123068364`

## Prioridade 1 — Asana -> Painel operacional diário

- **Trigger:** cron diário 07:00.
- **Entrada:** tarefas abertas de `_MARKETING`, `Martech MVP`, `03_ROSE`, `02_LIDERA`, `05_BENDITTA`, `_ACORE`.
- **Processo:**
  - classificar por risco (`vencido`, `sem dono`, `P0/P1` no título),
  - agrupar por projeto e responsável,
  - gerar resumo executivo diário.
- **Saída:** mensagem para canal operacional + registro em documento de acompanhamento.
- **SLA:** até 07:10.

## Prioridade 2 — Relatório de mídia diário/semanal

- **Trigger:** diário 08:00 + semanal segunda 08:30.
- **Entrada:** métricas Google Ads, Meta Ads e LinkedIn Ads.
- **Processo:**
  - calcular CPC, CPL, CVR, gasto diário e variação semana/semana,
  - detectar anomalias (queda abrupta de impressão, CTR ou conversão).
- **Saída:** relatório curto com recomendação (manter, ajustar, pausar).
- **SLA:** diário até 08:15; semanal até 09:00.

## Prioridade 3 — Pipeline comercial com aging

- **Trigger:** cron diário 09:00.
- **Entrada:** oportunidades em aberto (CRM/Asana).
- **Processo:**
  - calcular idade por etapa,
  - alertar follow-up vencido (>48h),
  - marcar bloqueio de proposta sem retorno.
- **Saída:** lista de follow-ups do dia por responsável.
- **SLA:** 09:05.

## Prioridade 4 — Snapshot financeiro semanal (Sueli)

- **Trigger:** sexta 17:00.
- **Entrada:** relatório financeiro consolidado e DRE recente.
- **Processo:**
  - consolidar faturamento semanal, despesas-chave, caixa e projeção 13 semanas,
  - apontar desvio contra meta da semana.
- **Saída:** resumo executivo para decisão de orçamento da semana seguinte.
- **SLA:** sexta 17:15.

## Prioridade 5 — Alertas de risco ponta a ponta

- **Trigger:** híbrido (cron 30 min + webhooks críticos).
- **Regras:**
  - form sem conversão em período alvo,
  - campanha sem impressão ativa,
  - deploy com erro,
  - tarefa crítica vencida sem owner.
- **Saída:** alerta com severidade (`P0`, `P1`, `P2`) e ação sugerida.

---

## Guardrails técnicos (Torvalds + Ohno)

- Todos os fluxos precisam:
  - idempotência básica por execução,
  - logs de erro com contexto,
  - retry com limite e escalonamento humano.
- Falha repetida (>3x no dia) vira tarefa automática no Asana em seção de bloqueios.

## Guardrails de negócio (Buffett + Ogilvy + Cagan)

- Nenhuma automação altera orçamento de mídia automaticamente.
- Nenhum ajuste de preço/ticket é aplicado sem validação humana.
- Relatórios devem sempre trazer recomendação acionável, não apenas métrica bruta.

---

## Definição de pronto por automação

- Fluxo publicado com trigger ativo.
- Teste de execução com evidência.
- Mensagem de saída validada por owner da área.
- Runbook curto com fallback manual.
