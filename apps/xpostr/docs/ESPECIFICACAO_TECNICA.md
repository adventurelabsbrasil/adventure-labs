# Xpostr — Especificação técnica

## Stack

- Next.js 14 (App Router), TypeScript, Tailwind
- Clerk (auth + allowlist opcional `XPOSTR_ALLOWED_EMAILS`)
- Supabase PostgreSQL — tabelas `adv_xpostr_*`, acesso apenas **service role** no servidor
- LLM: **OpenAI** (`OPENAI_API_KEY`, opcional `OPENAI_MODEL`, padrão `gpt-4o-mini`) tem prioridade; senão **Anthropic** (`ANTHROPIC_API_KEY`)
- X API v2 — `twitter-api-v2` (OAuth 1.0a user context)

## Variáveis de ambiente

Ver [`.env.example`](../.env.example).

## API

| Método | Rota | Auth |
|--------|------|------|
| GET | `/api/cron` | `Authorization: Bearer CRON_SECRET` |
| POST | `/api/xpostr/cycle` | Clerk + allowlist |
| GET/PATCH | `/api/xpostr/state` | Clerk |
| GET | `/api/xpostr/snapshot` | Clerk |

## Deploy (Vercel)

1. Definir todas as env vars.
2. **`CRON_SECRET`** — obrigatório; na Vercel o cron nativo envia `Authorization: Bearer <CRON_SECRET>` automaticamente.
3. **Cron:** `vercel.json` → **1×/dia** (13:00 UTC, ~10h BRT). Detalhes em [AGENDAMENTO_CRON.md](./AGENDAMENTO_CRON.md).

## SQL

Executar o arquivo de migration no SQL Editor do Supabase antes do primeiro uso.

## Porta local

`pnpm dev` → **3005** (evita conflito com Admin 3001).
