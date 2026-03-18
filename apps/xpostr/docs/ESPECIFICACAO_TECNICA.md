# Xpostr — Especificação técnica

## Stack

- Next.js 14 (App Router), TypeScript, Tailwind
- Clerk (auth + allowlist opcional `XPOSTR_ALLOWED_EMAILS`)
- Supabase PostgreSQL — tabelas `adv_xpostr_*`, acesso apenas **service role** no servidor
- Anthropic (Claude) — `ANTHROPIC_API_KEY`; modelo `ANTHROPIC_MODEL` opcional
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
2. `CRON_SECRET` — a Vercel injeta no header Bearer nas crons.
3. `vercel.json` já define cron a cada 15 min em `/api/cron`.

## SQL

Executar o arquivo de migration no SQL Editor do Supabase antes do primeiro uso.

## Porta local

`pnpm dev` → **3005** (evita conflito com Admin 3001).
