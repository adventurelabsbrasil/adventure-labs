# Xpostr — Voz pública Adventure Labs

Pipeline **Grove · Zazu · Ogilvy** → **@adventurelabsbr**.

## Vercel

- **Projeto:** `adventure-xpostr` → dashboard: `vercel.com/.../adventure-xpostr`
- **URL (padrão):** https://adventure-xpostr.vercel.app
- **Project ID:** `prj_KVuZQTMytWNFVLXgiyJsJ2PabVVN`
- **Root Directory:** `apps/xpostr`

## Setup

1. Aplicar [`supabase/migrations/20260317120000_adv_xpostr.sql`](./supabase/migrations/20260317120000_adv_xpostr.sql) no Supabase.
2. Copiar [`.env.example`](./.env.example) para `.env.local`. LLM: uma ou mais de **`OPENAI_API_KEY`**, **`ANTHROPIC_API_KEY`**, **`GEMINI_API_KEY`** (fallback em cota).
3. Na raiz do monorepo: `pnpm install --filter adventure-labs-xpostr`
4. `pnpm --filter adventure-labs-xpostr dev` → http://localhost:3005

## Docs

- [PLANO_VOZ_PUBLICA.md](../../knowledge/03_PROJETOS_INTERNOS/xpostr/PLANO_VOZ_PUBLICA.md)
- [docs/ESPECIFICACAO_TECNICA.md](./docs/ESPECIFICACAO_TECNICA.md)
- [docs/AGENDAMENTO_CRON.md](./docs/AGENDAMENTO_CRON.md) — cron **1×/dia** (Hobby)
- [docs/X_PUBLICACAO.md](./docs/X_PUBLICACAO.md) — troubleshooting publicação no X
- [docs/LLM_COTA.md](./docs/LLM_COTA.md) — erro 429 OpenAI / crédito Anthropic

## Legado

Blueprint antigo: `MVP_ADVENTURE_LABS-Xpostr.md` (referência histórica).
