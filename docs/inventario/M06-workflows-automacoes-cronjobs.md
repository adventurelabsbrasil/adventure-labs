---
module: M06
title: Workflows, automações e cronjobs
ssot: true
owner: Torvalds (CTO)
updated: 2026-03-25
version: 1.0.0
apps_scope: [admin, adventure, monorepo]
review_sla: por PR + quinzenal
sources:
  - workflows/n8n/
  - docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md
  - docs/inventario/_raw/RAW_DATA_v2.md
---

# M06 — Workflows, automações e cronjobs

## Workflows/automações

| nome | tipo | gatilho | entrada | saida | owner | status |
|---|---|---|---|---|---|---|
| `csuite-loop-v10` | n8n | agendado/manual [INFERIDO] | dados operacionais | relatório/ações C-Suite | Torvalds (CTO) | ativo |
| `andon-asana-daily-v1` | n8n | diário [INFERIDO] | tarefas Asana | resumo operacional | Torvalds (CTO) | ativo |
| `lara-meta-ads-agent-v2` | n8n | agendado/manual [INFERIDO] | APIs Meta Ads | insights e sync | Torvalds (CTO) | ativo |
| `whatsapp-groups-daily-v1` | n8n | diário [INFERIDO] | mensagens de grupos | resumo/alerta | Torvalds (CTO) | ativo |
| `google-workspace-advisor-monthly-v1` | n8n | mensal [INFERIDO] | workspace signals | recomendação | Torvalds (CTO) | ativo |
| `xpostr-gemini-test-v1` | n8n | manual/teste | prompt/contexto | saída de teste | Torvalds (CTO) | ativo |

## GitHub Actions (automação CI)

| nome | tipo | gatilho | entrada | saida | owner | status |
|---|---|---|---|---|---|---|
| `deploy.yml` | github-actions | push/workflow | código app | deploy cliente | Torvalds (CTO) | ativo |
| `backup.yml` | github-actions | agendado/manual [INFERIDO] | dados/projeto | backup | Torvalds (CTO) | ativo |
| `docker-build.yml` | github-actions | push/workflow | código template | imagem/build | Torvalds (CTO) | ativo |

## Cronjobs e agendamentos

| nome | tipo | gatilho | entrada | saida | owner | status |
|---|---|---|---|---|---|---|
| `CRON_SECRET protected jobs` | app cron | schedule externo | rotas protegidas | execução rotinas | Torvalds (CTO) | a mapear |
| `n8n schedule jobs` | n8n cron | expression cron | nós n8n | tarefas periódicas | Torvalds (CTO) | ativo |

## Webhooks/channels/chats

| nome | tipo | gatilho | entrada | saida | owner | status |
|---|---|---|---|---|---|---|
| `Asana bridge` | webhook/bridge | eventos ou polling [INFERIDO] | Asana API | roteamento interno | Torvalds (CTO) | ativo |
| `WhatsApp worker` | worker | leitura de grupos | mensagens | endpoint diário | Torvalds (CTO) | ativo |
| `N8N API callbacks` | webhook | execução workflow | payload n8n | status e resultado | Torvalds (CTO) | a mapear |

## Como atualizar este módulo

- Gatilho:
  - novo workflow (`workflows/n8n`);
  - nova action em `.github/workflows`;
  - mudança de schedule/cron.
- Checklist:
  - atualizar tabela de workflows;
  - validar owner e status;
  - registrar itens `não evidenciado no escopo atual` quando aplicável.
- Módulo pai:
  - `docs/WIKI_CORPORATIVO_INDEX.md`

## Cobertura e fora de escopo

- Cobre: automações, workflows, cronjobs e webhooks operacionais.
- Fora de escopo:
  - catálogo de integrações terceiras detalhadas (M07);
  - regras de segurança/env (M04).
