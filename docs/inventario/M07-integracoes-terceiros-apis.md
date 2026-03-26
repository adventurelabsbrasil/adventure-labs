---
module: M07
title: Integrações terceiras e APIs
ssot: true
owner: Torvalds (CTO)
updated: 2026-03-26
version: 1.1.0
apps_scope: [admin, adventure, monorepo]
review_sla: por PR + quinzenal
sources:
  - docs/inventario/_raw/RAW_DATA_v2.md
  - apps/**/.env.example
  - apps/**/package.json
  - tools/**/.env.example
---

# M07 — Integrações terceiras e APIs

## Método de derivação (regra v2)

- Não usar somente busca textual de integrações.
- Derivar integrações por:
  - conjuntos de envs por serviço;
  - dependências de pacotes (`package.json`).

## Integrações terceiras (derivadas)

| plataforma | uso | app | credencial_env | status | docs_ref |
|---|---|---|---|---|---|
| Supabase | auth/db/api | admin, adventure, clientes, labs | `NEXT_PUBLIC_SUPABASE_URL`, `SUPABASE_SERVICE_ROLE_KEY` | ativo | M03/M04 |
| Google APIs | Ads, Drive, OAuth | admin clientes | `GOOGLE_CLIENT_ID`, `GOOGLE_ADS_*` | ativo | `docs/GOOGLE_ADS_CONTAS_REGISTRO.md` |
| Meta Ads | insights e campanhas | admin clientes | `META_BM_SYSTEM_USER_TOKEN`, `META_APP_*` | ativo | workflows n8n meta ads |
| OpenAI | geração IA | xpostr | `OPENAI_API_KEY`, `OPENAI_MODEL` | ativo | M05/M12 |
| Anthropic | geração IA | xpostr | `ANTHROPIC_API_KEY`, `ANTHROPIC_MODEL` | ativo | M05/M12 |
| Google Gemini | geração IA | xpostr/tools | `GEMINI_API_KEY`, `GEMINI_MODEL` | ativo | M05/M12 |
| Clerk | autenticação app | xpostr | `CLERK_SECRET_KEY`, `NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY` | ativo | M04 |
| Asana | gestão tarefas/roteamento | tools/admin | `ASANA_OAUTH_CLIENT_ID`, `ASANA_OAUTH_CLIENT_SECRET` | ativo | M06 |
| Omie | integração ERP/financeiro | tools/omie-cli | `OMIE_APP_KEY`, `OMIE_APP_SECRET` | ativo | M09 |
| Wix | diagnóstico externo | tools/dbgr | `WIX_API_KEY`, `WIX_SITE_ID` | ativo | M08 |
| n8n API | orquestração workflows | workflows/tools | `N8N_API_URL`, `N8N_API_TOKEN` | ativo | M06 |
| WorkOS | contexto de identidade/agentes (documental) | knowledge/admin-contexto | N/A | evidência documental (sem SDK ativo no recorte) | `knowledge/06_CONHECIMENTO/workos-admin-contexto-agentes.md` |
| Stripe | billing/pagamento | monorepo | N/A | não evidenciado no código/env do recorte atual | N/A justificado |
| Resend/Sendgrid/Twilio | comunicação | monorepo | N/A | não evidenciado no código/env do recorte atual | N/A justificado |
| Slack/Discord/Notion/Airtable | colaboração/integração | monorepo | N/A | não evidenciado no código/env do recorte atual | N/A justificado |

## Packages de evidência (amostra)

| plataforma | pacote_sinal | app |
|---|---|---|
| OpenAI | `openai` | `apps/labs/xpostr` |
| Anthropic | `@anthropic-ai/sdk` | `apps/labs/xpostr` |
| Google Gemini | `@google/generative-ai` | `apps/labs/xpostr` |
| Supabase | `@supabase/supabase-js` | múltiplos apps |
| Google Ads API | `google-ads-api` | `apps/core/admin` |
| Twitter/X | `twitter-api-v2` | `apps/labs/xpostr` |

## Como atualizar este módulo

- Gatilho:
  - novo serviço terceiro (env ou pacote);
  - mudança de credencial/env;
  - inclusão de novo SDK de integração.
- Checklist:
  - incluir linha em `Integrações terceiras`;
  - preencher `credencial_env` mascarada;
  - linkar docs de referência.
- Módulo pai:
  - `docs/WIKI_CORPORATIVO_INDEX.md`

## Cobertura e fora de escopo

- Cobre: catálogo de integrações externas e sinais de evidência.
- Fora de escopo:
  - workflows de execução das integrações (M06);
  - políticas de auth e segredo (M04).
