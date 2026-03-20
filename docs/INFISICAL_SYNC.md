# Infisical — sync de segredos (P0 operacional)

Sem **Developer Token** e credenciais OAuth do **Google Ads** (e demais APIs), fluxos como *Programar campanha Google Ads* nao sobem para producao. Este documento padroniza a injecao via **Infisical** sem versionar segredos.

## Principios

1. **Nunca** commitar tokens, refresh tokens ou chaves em `.env`, `.env.local` ou Markdown.
2. **Fonte da verdade** dos segredos: projeto Infisical (ambiente `dev` / `staging` / `prod` alinhado ao Vercel/Railway).
3. **Espelho local**: nomes de variaveis em cada app `/.env.example`; valores apenas no Infisical.
4. **Desenvolvimento local**: o script **`dev`** dos apps usa **`infisical run`** por padrao (secrets injetados na hora). **`build`** e **`start`** permanecem sem CLI Infisical para nao quebrar Vercel/CI — la as variaveis vêm do painel (sincronizadas com o Infisical). Emergencia local sem CLI: `pnpm dev:raw` onde existir.

## Instalacao do CLI

```bash
brew install infisical/get-cli/infisical
# ou: https://infisical.com/docs/cli/overview
infisical login
```

Na **raiz do monorepo**, associe o projeto (uma vez):

```bash
cd /caminho/01_ADVENTURE_LABS
infisical link
```

Para CI / identidade de maquina, use `INFISICAL_TOKEN` ou `INFISICAL_PROJECT_ID` (ver [documentacao](https://infisical.com/docs/cli/commands/secrets)).

## Mapa monorepo -> pastas Infisical (FOLDERS_MAP)

Fonte da verdade no script: comentario **FOLDERS_MAP** e funcao `foldermap_infisical_path()` em `tools/scripts/infisical-push-env-local.sh`.

Scan: raiz do repo + `apps/core`, `apps/labs`, `apps/clientes`, legado `apps/admin` / `apps/adventure`, e `clients/`. Diretorios ausentes geram **AVISO** e sao ignorados (a ingestao continua).

| Origem (exemplos) | Pasta Infisical (`--path`) |
|-------------------|----------------------------|
| `.env.local` | `/monorepo` |
| `apps/core/admin/.env.local` (canonico) ou `apps/admin/.env.local` (legado) | `/admin` |
| `apps/core/adventure/.env.local` ou `apps/adventure/.env.local` | `/core/adventure` |
| `apps/core/elite/.env.local` ou `apps/elite/.env.local` | `/core/elite` |
| `apps/labs/<lab>/.env.local` | `/labs/<lab>` |
| `apps/clientes/benditta/app/.env.local` | `/clientes/benditta` |
| `apps/clientes/young-talents/plataforma/.env.local` | `/clientes/young-talents` |
| `apps/clientes/lidera/flow/.env.local` | `/clientes/lidera` |
| `apps/clientes/<c>/<app>/.env.local` (demais) | `/clientes/<c>/<app>` |
| `clients/<slug>/admin/.env.local` | `/clients/<slug>/admin` |
| `clients/<a>/<b>/.env.local` | `/clients/<a>/<b>` |
| `clients/<slug>/.env.local` | `/clients/<slug>` |

Novos apps: atualize o case e os fallbacks em `foldermap_infisical_path()` e rode `./tools/scripts/infisical-push-env-local.sh --dry-run`.

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

## Import em lote (subir `.env.local` para o Infisical)

1. Dry-run (lista pastas e comandos):

```bash
./tools/scripts/infisical-push-env-local.sh --dry-run
```

2. Import real (ambiente `dev`; use `INFISICAL_ENV=staging` se necessario):

```bash
INFISICAL_ENV=dev ./tools/scripts/infisical-push-env-local.sh
```

3. Validar um app (ex.: Admin):

```bash
cd apps/core/admin && pnpm dev
# equivale a: infisical run --env=dev -- pnpm exec next dev --port 3001
```

4. **Somente depois** de confirmar login, build e APIs (ex. `/api/ads/google/campaigns`), remover os `.env.local` locais:

```bash
INFISICAL_ENV=dev ./tools/scripts/infisical-push-env-local.sh --delete-after-import
```

**Aider (revisao do script, sem ler segredos):**

```bash
aider --no-git tools/scripts/infisical-push-env-local.sh docs/INFISICAL_SYNC.md
# Mensagem sugerida: "Revise o bash para macOS Bash 3.2 e idempotencia das pastas Infisical."
```

Comando manual alternativo (um arquivo, uma pasta):

```bash
infisical secrets set --file="./apps/core/admin/.env.local" --path="/admin" --env=dev
```

## Rodar os apps (somente com secrets do Infisical)

| App | Comando |
|-----|---------|
| Admin | `cd apps/core/admin && pnpm dev` |
| xpostr | `cd apps/labs/xpostr && pnpm dev` |
| Young (Vite) | `cd apps/clientes/young-talents/plataforma && pnpm dev` |
| Benditta | `cd apps/clientes/benditta/app && pnpm dev` |
| Monorepo (atalho) | `pnpm admin:dev` |

Scripts de prazo / cron na raiz:

```bash
infisical run --env=dev -- ./scripts/check-deadlines.sh
```

## Vercel / CI

1. Integracao **Infisical -> Vercel** (sync dos segredos) **ou**
2. Variaveis no painel Vercel com os **mesmos nomes** que no Infisical.

Producao **nao** usa `pnpm dev` da sua maquina; o requisito “apenas Infisical” aplica-se ao **fluxo local** e a **fonte da verdade** dos segredos.

## Tarefa Rose (Google Ads) — diagnostico API

Erros comuns ao “consertar campanha” no Google Ads:

- **Env ausente**: resposta 502 com texto `Google Ads: GOOGLE_ADS_... é obrigatório` — faltam chaves na pasta `/admin` do Infisical.
- **OAuth / refresh**: `invalid_grant` ou 401 — regenere **refresh token** no Google OAuth e atualize `GOOGLE_ADS_REFRESH_TOKEN` no Infisical.
- **Conta errada**: `PERMISSION_DENIED` — ajuste `GOOGLE_ADS_CUSTOMER_ID` para a conta correta (Rose / MCC).

Validacao no Admin: `/dashboard/ads` (aba Google) ou `GET /api/ads/google/campaigns` autenticado.

## Referencia

- [Infisical CLI — secrets set --file](https://infisical.com/docs/cli/commands/secrets)
- `apps/core/admin/.env.example` — lista de nomes esperados
- `scripts/check-deadlines.sh` — preferir `infisical run -- ./scripts/check-deadlines.sh`
