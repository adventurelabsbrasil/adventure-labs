---
title: WorkOS (Admin) — contexto para agentes
domain: conhecimento
tags: [admin, workos, agentes, clerk, supabase]
updated: 2026-03-18
---

# WorkOS (Admin) — o que agentes devem saber

Na Adventure Labs, **Admin** é a plataforma interna referida no manual como **WorkOS** (produto em evolução). Código em `apps/admin/`.

## Stack do Admin

- **Next.js** (App Router), **Clerk** (auth), **Supabase** (Postgres + RLS), deploy **Vercel**.
- Dados multitenant: tabelas com prefixo **`adv_`**; políticas RLS — nunca assumir acesso cross-tenant.

## Rotas e superfícies úteis

- Dashboard, relatórios founder, memória C-Suite (`/dashboard/csuite-diario`, `/dashboard/relatorio`), tarefas (`adv_tasks`), integrações n8n/cron.
- APIs internas protegidas: muitas exigem sessão Clerk; jobs cron usam **`x-admin-key` = `CRON_SECRET`** (nunca colocar em docs ou prompts versionados).

## O que não fazer

- Hardcodar `tenant_id` em automações definitivas (usar env / contexto da API).
- Expor `SUPABASE_SERVICE_ROLE_KEY` em ferramentas de agente sem matriz de acessos.

## Aprofundamento

- Arquitetura híbrida: `docs/ARQUITETURA_OPENCLAW_HIBRIDO.md`
- Manuais de negócio: `knowledge/00_GESTAO_CORPORATIVA/MANUAL_ADVENTURE_LABS.md` (seção produtos / Admin WorkOS)

*Melhorias futuras:* mapear rotas por persona (COO, CFO) e changelog de features Admin em doc dedicado.
