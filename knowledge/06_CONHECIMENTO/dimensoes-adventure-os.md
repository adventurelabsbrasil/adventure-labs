---
title: Taxonomia expandida de dimensões — Adventure OS
domain: conhecimento
tags: [dimensoes, mini-companhias, roadmap, registry]
updated: 2026-03-21
---

# Taxonomia expandida de dimensões

Mapa **estratégico** para o Adventure OS: cada família liga-se a pastas, runbooks ou estado **implementado / stub / futuro**. Decisão **top-down** (Founder → Grove → C-Level) sobre **quando** abrir uma “mini companhia”; **bottom-up** sobre **como** cumprir sem violar RLS/LGPD.

| Família | Dimensões (agrupadas) | Ancoragem no OS | Estado |
|--------|------------------------|-----------------|--------|
| **Acesso & API** | SSH, endpoints, webhooks, hooks | `docs/`, VPS/Coolify (ACORE Fase 4), registry Infra | stub → evoluir com runbooks |
| **Ritmo & saúde** | Heartbeats, plans, builds, pipelines | OpenClaw `HEARTBEAT.md`, Vercel/GitHub, n8n | implementado (parcial) |
| **Pedidos & trabalho** | Asks, todolists, tasks, time tracking | Asana Tasks, `adv_*`, `BACKLOG` | implementado |
| **Código & qualidade** | deps, PRs, branches, tests, libraries | monorepo `pnpm`, CI | implementado |
| **Comunidade & canais** | chats, community, contact, conversion | bots, wiki, WorkOS futuro | misto |
| **Automação** | workflows, integrations | `workflows/n8n/`, MCPs | implementado |
| **Dados & IA** | analytics, LLMs, tables, users | Supabase/RLS, Admin, pgvector | implementado |
| **Produtos verticais** | ERP, ATS, CRM, LMS | `clients/`, `apps/clientes/`, apps core | misto |
| **Estratégia & narrativa** | ICP, OKRs, RACI, SWOT, releases | `knowledge/`, Drive `Adventure/Planejamento` | stub |
| **Marca & cultura** | brand, culture, gamification | Drive + wiki; resumos no Git | stub |
| **Suporte** | support / help | runbooks futuros | futuro |
| **Inventário & ciclo de vida** | portfolio, archive, trash | registry, `99_ARQUIVO` | stub |

### Faseamento (resumo)

0. **Mapa** — esta tabela viva no registry + Roadmap.  
1. **Por célula martech** — subconjunto de dimensões por setor (ver [`os-registry/INDEX.md` §20](os-registry/INDEX.md)).  
2. **Por cliente** — pacote com gerente de conta + CPO.  
3. **Mini companhia** — dimensões fechadas + orçamento + RACI; aprovação Grove + C-Suite virtual.

---

*Índice operacional:* [`os-registry/INDEX.md`](os-registry/INDEX.md).
