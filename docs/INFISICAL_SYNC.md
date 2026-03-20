# Infisical — sync de segredos (P0 operacional)

Sem **Developer Token** e credenciais OAuth do **Google Ads** (e demais APIs), fluxos como *Programar campanha Google Ads* nao sobem para producao. Este documento padroniza a injecao via **Infisical** sem versionar segredos.

## Principios

1. **Nunca** commitar tokens, refresh tokens ou chaves em `.env`, `.env.local` ou Markdown.
2. **Fonte da verdade** dos segredos: projeto Infisical (ambiente `dev` / `staging` / `prod` alinhado ao Vercel/Railway).
3. **Espelho local**: copiar apenas nomes de variaveis a partir de `apps/core/admin/.env.example` e preencher valores via Infisical CLI ou painel.

## Instalacao do CLI

```bash
brew install infisical/get-cli/infisical
# ou: https://infisical.com/docs/cli/overview
infisical login
```

## Projeto e ambiente

1. Crie (ou use) o projeto Infisical da Adventure Labs.
2. Crie pastas por app, ex.: `/admin`, `/monorepo`.
3. Cadastre os segredos abaixo no ambiente correto.

## Variaveis minimas para Admin + Ads + Asana

| Chave | Uso |
|-------|-----|
| `ASANA_ACCESS_TOKEN` | PAT Asana (rotas `/api/csuite/andon-asana-run`, scripts de prazo) |
| `ASANA_PROJECT_GIDS` | Lista de projetos Asana (GIDs separados por virgula) |
| `GOOGLE_ADS_DEVELOPER_TOKEN` | Google Ads API |
| `GOOGLE_ADS_CLIENT_ID` | OAuth2 (Desktop ou Web app no GCP) |
| `GOOGLE_ADS_CLIENT_SECRET` | OAuth2 |
| `GOOGLE_ADS_REFRESH_TOKEN` | OAuth2 (offline) |
| `GOOGLE_ADS_CUSTOMER_ID` | Conta Google Ads (formato `xxx-xxx-xxxx`) |
| `NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY` | Auth Admin |
| `CLERK_SECRET_KEY` | Auth Admin |
| `NEXT_PUBLIC_SUPABASE_URL` | Dados Admin |
| `NEXT_PUBLIC_SUPABASE_ANON_KEY` | Dados Admin |
| `SUPABASE_SERVICE_ROLE_KEY` | APIs servidor |
| `CRON_SECRET` | `x-admin-key` em cron e integracoes |

Outras chaves ja documentadas em `apps/core/admin/.env.example` (GitHub, n8n, Gemini, etc.) devem existir no mesmo ambiente Infisical quando o fluxo depender delas.

## Rodar o Admin com segredos do Infisical

Na pasta do Admin:

```bash
cd apps/core/admin
infisical run --env=dev -- pnpm dev
```

Para build local:

```bash
infisical run --env=dev -- pnpm build
```

## Vercel / CI

1. Instale a integracao **Infisical → Vercel** (sync unidirecional dos segredos) **ou**
2. Exporte manualmente os mesmos nomes de variavel no painel Vercel (sem reutilizar valores em repositorio).

## Referencia

- [Infisical docs](https://infisical.com/docs/documentation/getting-started/introduction)
- `apps/core/admin/.env.example` — lista de nomes esperados
- `scripts/check-deadlines.sh` — le `ASANA_ACCESS_TOKEN` do ambiente (pode ser injetado com `infisical run`)
