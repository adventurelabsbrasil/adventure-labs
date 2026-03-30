# Infisical — sync de segredos (P0 operacional)

Sem **Developer Token** e credenciais OAuth do **Google Ads** (e demais APIs), fluxos como *Programar campanha Google Ads* nao sobem para producao. Este documento padroniza a injecao via **Infisical** sem versionar segredos.

## Principios

1. **Nunca** commitar tokens, refresh tokens ou chaves em `.env`, `.env.local` ou Markdown.
2. **Fonte da verdade** dos segredos: projeto Infisical (ambiente `dev` / `staging` / `prod` alinhado ao Vercel/Railway).
3. **Espelho local**: nomes de variaveis em cada app `/.env.example`; valores apenas no Infisical.
4. **Desenvolvimento local**: os scripts **`dev`** / **`build`** / **`start`** **dentro de cada app** sao **comandos puros** (`next dev`, `vite`, etc.) — **sem** `infisical run` embutido (evita dupla injecao e conflito de chaves). O Human chama **`infisical run` na raiz do monorepo** (ver `package.json` da raiz: `admin:dev`, `xpostr:dev`, etc.), com `--path` alinhado ao [FOLDERS_MAP](#mapa-monorepo---pastas-infisical-folders_map). **Producao (Vercel/CI)** continua com variaveis do painel, sincronizadas com o Infisical.

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
| `apps/clientes/04_young/young-talents/.env.local` | `/clientes/young-talents` |
| `apps/clientes/01_lidera/lidera/flow/.env.local` | `/clientes/lidera` |
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
| `GOOGLE_ADS_LOGIN_CUSTOMER_ID` | MCC opcional para header `login-customer-id` |
| `GTM_TAG_ID` | Container GTM alvo (ex.: `GTM-MN283T6L`) |
| `NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY` | Auth Admin |
| `CLERK_SECRET_KEY` | Auth Admin |
| `NEXT_PUBLIC_SUPABASE_URL` | Dados Admin |
| `NEXT_PUBLIC_SUPABASE_ANON_KEY` | Dados Admin |
| `SUPABASE_SERVICE_ROLE_KEY` | APIs servidor |
| `CRON_SECRET` | `x-admin-key` em cron e integracoes |

Outras chaves ja documentadas em `apps/core/admin/.env.example` (GitHub, n8n, Gemini, etc.) devem existir no mesmo ambiente Infisical quando o fluxo depender delas.

### n8n (VPS Coolify + workflow LinkedIn → Supabase)

Centralize na pasta Infisical **`/admin`** (mesmo ambiente que o Admin), com os **mesmos nomes** usados nas Secrets do Coolify no serviço n8n — evita duplicar “nomes diferentes para a mesma coisa”.

| Chave | Uso |
|-------|-----|
| `N8N_API_URL` | Base HTTPS do n8n (ex.: `https://n8n.adventurelabs.com.br`) — import via API (`pnpm n8n:import:linkedin`). |
| `N8N_API_TOKEN` | API Key da Public API do n8n (Settings → API no n8n). Header `X-N8N-API-KEY` no script de import. |
| `LINKEDIN_EDGE_FUNCTION_URL` | URL da Edge Function `linkedin-native-lead-submit` (slug com hífens). |
| `LINKEDIN_WEBHOOK_SECRET` | Igual ao secret da função no Supabase (`x-webhook-secret`). |
| `SUPABASE_ANON_KEY` | Pode repetir o valor de `NEXT_PUBLIC_SUPABASE_ANON_KEY` do mesmo projeto, para testes `curl` / automação que chamam a função. |

**Producao no Coolify:** o serviço n8n continua a ler essas variáveis nas **Secrets** do recurso; sincronize valores com o Infisical (manual ou integração Infisical → deploy, conforme a vossa política).

**Comando (raiz do monorepo, com `infisical login` + pasta `/admin` preenchida):**

```bash
pnpm n8n:import:linkedin
```

**Agente no Cursor:** o agente **nao** acede ao painel Infisical na nuvem. Ele pode:
- Executar comandos como `pnpm n8n:import:linkedin` no teu terminal (injecao via `infisical run` na tua maquina), ou
- Ler `apps/core/admin/.env.local` **se** existir no workspace (gitignored) — opcionalmente gerado com `infisical secrets` / export local; **nunca** commitar valores.

Nunca colocar tokens em Markdown versionado. Runbook: `workflows/n8n/linkedin/HOSTINGER_VPS_N8N_DEPLOY.md` e `workflows/n8n/linkedin/CHECKLIST_OPERADOR_REATIVACAO_N8N_LINKEDIN.md`.

### Pastas opcionais: `/n8n` e `/vps-openclaw`

Para reduzir ambiguidade quando o time separar segredos por serviço na VPS (além de `/admin`):

| Pasta Infisical | Uso |
|-----------------|-----|
| **`/n8n`** | Variáveis **exclusivas** do container/serviço n8n no Coolify (ex.: `N8N_ENCRYPTION_KEY`, `WEBHOOK_URL`, `DB_*` se Postgres dedicado). Os **mesmos nomes** devem espelhar as Secrets do recurso no Coolify. |
| **`/vps-openclaw`** | Runtime do gateway OpenClaw (Buzz) na VPS: `OPENCLAW_CONFIG_DIR`, `OPENCLAW_WORKSPACE_DIR` (caminhos lógicos), API keys de modelos, **`ASANA_ACCESS_TOKEN`**, `ASANA_PROJECT_GIDS` (se o Buzz usar a skill Sandra), tokens GitHub para PRs/automação, e outras chaves que o gateway ler. |

**Regra:** manter **nomes idênticos** entre Coolify / `.env` na VPS e Infisical. O Admin e os scripts da raiz podem continuar a usar **`/admin`**; duplicar apenas o necessário em `/n8n` ou `/vps-openclaw` se a política de acesso Infisical exigir separação.

**Comandos (exemplos):**

```bash
infisical run --env=dev --path=/n8n -- env | grep N8N
infisical run --env=dev --path=/vps-openclaw -- env | grep -E 'OPENCLAW|ASANA|GITHUB'
```

Índice SSOT: `knowledge/00_GESTAO_CORPORATIVA/operacao/INDEX-n8n-openclaw-vps.md`.

## Import em lote (subir `.env.local` para o Infisical)

O Infisical **nao aceita** secret com valor vazio. O script `infisical-push-env-local.sh` **omite** linhas `KEY=` / `KEY=""` antes do `secrets set` e emite `AVISO` no terminal (ex.: `OPENAI_API_KEY` vazio). Preencha a chave no painel Infisical ou no `.env.local` quando for usar.

1. Dry-run (lista pastas e comandos):

```bash
./tools/scripts/infisical-push-env-local.sh --dry-run
```

2. Import real (ambiente `dev`; use `INFISICAL_ENV=staging` se necessario):

```bash
INFISICAL_ENV=dev ./tools/scripts/infisical-push-env-local.sh
```

3. Validar um app (ex.: Admin) — **sempre a partir da raiz do monorepo**:

```bash
pnpm admin:dev
# internamente: infisical run --env=dev --path=/admin -- pnpm --filter adventure-labs-admin dev
```

Se o Admin precisar tambem de secrets que estao **so** em `/monorepo`, duplique-as no Infisical em `/admin` ou ajuste o comando `admin:dev` na raiz (outro `--path`, conforme a doc do Infisical para o seu projeto).

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

Na **raiz** do repositorio (`infisical link` ja feito):

| App | Comando (raiz) | Path Infisical usado |
|-----|----------------|----------------------|
| Admin | `pnpm admin:dev` | `/admin` |
| xpostr | `pnpm xpostr:dev` | `/labs/xpostr` |
| Young (Vite) | `pnpm young:dev` | `/clientes/young-talents` |
| Benditta | `pnpm benditta:dev` | `/clientes/benditta` |

Dentro de cada app, `pnpm dev` continua disponivel **sem** Infisical (util para CI ou depuracao com `.env.local`).

Scripts de prazo / cron na raiz:

```bash
pnpm check-deadlines
# equivale a: infisical run --env=dev --path=/monorepo -- bash scripts/check-deadlines.sh
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
- `scripts/check-deadlines.sh` — na raiz: `pnpm check-deadlines`
