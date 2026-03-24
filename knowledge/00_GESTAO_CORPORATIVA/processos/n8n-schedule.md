---
title: Agenda única — crons e schedules (BRT)
domain: gestao_corporativa
tags: [cron, n8n, vercel, schedule, brt]
updated: 2026-03-22
---

# Agenda única — crons e schedules

**Fuso padrão:** `America/Sao_Paulo` (BRT). No **n8n**, preferir timezone explícito no nó Schedule; na **Vercel**, converter para UTC no `vercel.json`.  
**Segredos:** `CRON_SECRET`, tokens HTTP — só Infisical / env; **nunca** no Git.

## Grade recomendada (racional)

Objetivo: **não empilhar** jobs pesados (LLM + várias APIs) no mesmo minuto e alinhar ao **dia comercial BR**.

| Princípio | Como aplicamos |
|-----------|----------------|
| Manhã | **08:15** SLA (leve) → **09:00** sync Meta (janela estável de dados do dia anterior). |
| Meio-dia | **12:45** C-Suite Loop — após a maior parte da manhã já registrada em tarefas/relatórios; evita 12:00 em cima do almoço. |
| Fim de tarde | **18:30** Zazu — após o grosso do expediente em grupos de WhatsApp. |
| Fechamento do dia | **19:45** resumo diário — dia útil praticamente fechado; resultado útil na manhã seguinte. |
| Sexta | **16:00** Idea Engine → **16:45** Board Meet prep — **antes** do rush das 17h–18h e sem colisão com Zazu. |
| Fim de semana | **Dom 02:00** poda de memória — carga mínima em APIs e equipe. |

**Ação:** alinhar os nós no **Railway/n8n** e o cron do **Vercel (Admin)** a esta tabela; quando divergir, atualizar **este ficheiro** no mesmo PR.

## Tabela mestra

| Nome / fluxo | Origem | Horário (BRT) | Owner | Runbook / link |
|--------------|--------|---------------|-------|----------------|
| **SLA / prazos (checagem diária)** | n8n Schedule | **Seg–Sex 08:15** | Ohno (COO) | [PLANO_N8N §3.2](../../../docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md) — implementar na F2 se ainda não existir |
| **Lara — Meta Ads Sync** | n8n Schedule | **Seg–Sex 09:00** | CMO / ops | [PLANO_N8N §3.6](../../../docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md); `apps/core/admin/n8n_workflows/meta_ads_agent/` |
| **meta_ads_agent** (`workflows/n8n/`) | n8n Schedule | **Seg–Sex 09:00** (igual à Lara; evitar duplo disparo se ambos ativos) | CMO / ops | [NOS_DO_FLUXO.md](../../../workflows/n8n/meta_ads_agent/NOS_DO_FLUXO.md) |
| **C-Suite Autonomous Loop (V11)** | n8n Schedule | **Seg–Sex 12:45** | C-Suite / Grove | [PLANO_N8N §3.1](../../../docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md); `apps/core/admin/n8n_workflows/` |
| **Idea Engine** | n8n Schedule | **Sex 16:00** | Cagan (CPO) | [PLANO_N8N §3.3](../../../docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md) |
| **Board Meet (preparação)** | n8n Schedule | **Sex 16:45** | COO / Founder | [PLANO_N8N §3.1](../../../docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md) |
| **Zazu — WhatsApp grupos (resumo diário)** | n8n Schedule | **Seg–Sex 18:30** | Cagan (CPO) / COO | [PLANO_N8N §3.6](../../../docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md); `whatsapp_groups_agent/` |
| **Resumo diário** (`POST /api/cron/daily-summary`) | Vercel Cron → Admin | **Seg–Sex 19:45** | CTO / ops | [api-cron-daily-summary.md](api-cron-daily-summary.md) — no Vercel (cron em **UTC**): `45 22 * * 1-5` (= 19:45 com **UTC−3**, padrão Brasil desde 2019) |
| **Memory Cleanup (poda sináptica)** | n8n Schedule | **Dom 02:00** | — | [PLANO_N8N §3.4](../../../docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md) |
| **Tarefa → Issue GitHub** | Webhook Admin | Sob demanda | CTO | [PLANO_N8N §3.2](../../../docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md) |
| **Tarefa concluída → e-mail** | Webhook Admin | Sob demanda | Ops | [PLANO_N8N §3.2](../../../docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md) |
| **OpenClaw heartbeat** | OpenClaw | *por agente* (`HEARTBEAT.md`) | — | [openclaw/AGENTS.md](../../../openclaw/AGENTS.md) |
| **GitHub Actions** | GHA | *se existir* | — | `.github/workflows/` |

### Cron Vercel (referência UTC)

**19:45** no relógio de Brasília (**UTC−3**, sem horário de verão desde 2019) = **22:45 UTC** → expressão típica: `45 22 * * 1-5` (minuto 45, hora 22 UTC, seg–sex).

### Apps cliente (fora da agenda n8n central)

Crons em **Vercel por repositório** (ex.: Rose) **não** substituem esta tabela — documentar no runbook do projeto. Ex.: `clients/02_rose/roseportaladvocacia/vercel.json`.

---

*Alterar agendador e **este doc** no mesmo PR.*

## Distinção importante

- **Horário de jobs** ≠ **horário de trabalho humano** (overlap de squad — wiki/RH quando existir).

## Referências

- [docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md](../../../docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md)  
- [os-registry/INDEX.md](../../06_CONHECIMENTO/os-registry/INDEX.md) §15  
- [n8n-workflow-resumo-diario-checklist.md](n8n-workflow-resumo-diario-checklist.md)
