# Integração Google Ads e Meta Business Manager — Admin

Este documento descreve a integração das contas **Google Ads** e **Meta (Business Manager)** com o painel Admin da Adventure Labs, incluindo restrição de acesso, variáveis de ambiente, APIs e uso via CLI ou Cursor/Gemini.

## Acesso restrito

- **Allowlist:** Apenas os e-mails configurados em `ADMIN_ALLOWED_EMAILS` (ex.: `contato@adventurelabs.com.br`, `rodrigo.ribas1991@gmail.com`) podem acessar o dashboard e as rotas de Ads/Meta. Se a variável estiver vazia, qualquer usuário com perfil em `adv_profiles` pode acessar.
- **Perfil obrigatório:** Usuários precisam ter uma linha em `adv_profiles`; caso contrário, o acesso ao dashboard é negado (redirecionamento para login).
- **Frontend:** O item de menu "Ads (Google & Meta)" só é exibido para usuários cujo e-mail está na allowlist.

## Variáveis de ambiente

Configurar em `apps/core/admin/.env.local` (ou Vercel). Todas as variáveis abaixo são **somente servidor** (não usar `NEXT_PUBLIC_`).

| Variável | Obrigatório | Descrição |
|----------|-------------|-----------|
| `ADMIN_ALLOWED_EMAILS` | Não | E-mails permitidos para dashboard e APIs Ads/Meta, separados por vírgula. Ex.: `contato@adventurelabs.com.br,rodrigo.ribas1991@gmail.com` |
| `CRON_SECRET` | Para CLI | Usado como chave para chamadas da CLI (header `x-admin-key`). |
| **Google Ads** | | |
| `GOOGLE_ADS_CLIENT_ID` | Sim* | Client ID OAuth do GCP (tipo Aplicativo da Web). |
| `GOOGLE_ADS_CLIENT_SECRET` | Sim* | Client Secret. |
| `GOOGLE_ADS_DEVELOPER_TOKEN` | Sim* | Developer Token aprovado no Google Ads. |
| `GOOGLE_ADS_REFRESH_TOKEN` | Sim* | Refresh token com escopo `https://www.googleapis.com/auth/adwords` (offline). |
| `GOOGLE_ADS_CUSTOMER_ID` | Sim* | ID da conta (MCC ou anunciante), ex.: `123-456-7890`. Registro interno por cliente: [GOOGLE_ADS_CONTAS_REGISTRO.md](GOOGLE_ADS_CONTAS_REGISTRO.md). |
| **Meta** | | |
| `META_BM_SYSTEM_USER_TOKEN` | Sim* | Token do System User do Business Manager. |
| `META_APP_ID` | Não | ID do app (opcional). |
| `META_APP_SECRET` | Não | Recomendado para gerar `appsecret_proof` nas chamadas. |
| `GEMINI_API_KEY` | Para Lara | Usada por POST /api/lara/analyze para gerar o relatório analítico (Lara + skills). Sem ela, a análise retorna 503. |

\* Obrigatório apenas para usar as funcionalidades correspondentes (Google Ads ou Meta).

## Como obter credenciais

**Guia completo passo a passo:** [CREDENCIAIS_GOOGLE_E_META.md](CREDENCIAIS_GOOGLE_E_META.md) — inclui Google Cloud (Drive ler/escrever), Google Ads e Meta Business Manager / Meta Ads, com tela a tela.

Resumo rápido:

### Google (Drive e Ads)

- **Google Cloud Console:** criar projeto, ativar Drive API (e Google Ads API se usar Ads), criar credenciais OAuth (Aplicativo da Web) com redirect `https://developers.google.com/oauthplayground`.
- **OAuth 2.0 Playground:** usar suas credenciais; autorizar escopo Drive (`https://www.googleapis.com/auth/drive`) para ler/escrever; trocar código por tokens e copiar o **refresh_token** → `GOOGLE_REFRESH_TOKEN`. Para Ads: escopo `https://www.googleapis.com/auth/adwords` → `GOOGLE_ADS_REFRESH_TOKEN`.
- **Google Ads:** Developer Token em Ferramentas e configurações → API Center; Customer ID no canto da interface.

**Importante:** Tela de consentimento OAuth em "Em produção" para o refresh token não expirar em 7 dias.

### Meta (Business Manager)

- Criar/vinculare um **App** em [developers.facebook.com](https://developers.facebook.com) ao Business Manager.
- Em **Configurações do negócio** → **Usuários** → **Contas do sistema**: criar System User, atribuir contas de anúncios, **Gerar novo token** com permissões `ads_management` e `business_management` → token = `META_BM_SYSTEM_USER_TOKEN`.
- Para produção: App em modo "Ao vivo" e Business verification quando exigido pela Meta.

## APIs do Admin

Base URL: mesma do Admin (ex.: `https://admin.adventurelabs.com.br` ou `http://localhost:3001`).

**Autenticação:** sessão Supabase (cookie) no browser, ou header `x-admin-key: <CRON_SECRET>` para scripts/CLI.

### Google Ads

- `GET /api/ads/google/campaigns` — Lista campanhas.
- `PATCH /api/ads/google/campaigns/:id` — Body: `{ "status": "ENABLED" | "PAUSED" }`.

### Meta

- `GET /api/meta/accounts` — Lista contas de anúncios do BM.
- `GET /api/meta/accounts/:id/campaigns` — Lista campanhas da conta (`:id` = `act_XXXXX` ou `XXXXX`).
- `GET /api/meta/accounts/:id/insights` — Insights (métricas) da conta. Query: `date_preset` (ex.: `yesterday`, `last_7d`) ou `since`/`until`. Usado pelo workflow **Lara** para sync diário.
- `PATCH /api/meta/campaigns/:id` — Body: `{ "status": "ACTIVE" | "PAUSED" }`.
- `GET /api/meta/mapping` — Lista mapeamento conta → cliente/Adventure (`adv_client_meta_accounts`). Usado pela Lara para `owner_type`.
- `POST /api/meta/mapping` — Body: `{ meta_account_id, account_name?, client_id?, owner_type }`. Upsert do mapeamento.
- `GET /api/meta/daily` — Estatísticas de `adv_meta_ads_daily` (distinct_dates, min_date, max_date) para a Lara decidir se gera relatório.
- `POST /api/meta/daily` — Body: `{ rows: [{ date, account_id, account_name?, client_id?, owner_type, spend?, impressions?, clicks?, conversions? }] }`. Persiste métricas diárias (Lara).
- `POST /api/meta/topics` — Body: `{ account_id, owner_type, topic, source? }` ou `{ rows: [...] }`. Insere em `adv_meta_ads_topics` (tópicos por conta).

### Lara (analista de marketing)

- `GET /api/lara/memory` — Lista memória da Lara (`adv_lara_memory`). Query: `account_id?`, `owner_type?`, `limit?`.
- `POST /api/lara/memory` — Body: `{ content, metadata? }`. Insere contexto (campanha/dado/relatório).
- `POST /api/lara/analyze` — Body: `{ min_date, max_date, distinct_dates?, title? }`. Busca dados de `adv_meta_ads_daily` no período, gera relatório analítico via Gemini (persona Lara + skills relatorio-kpis-campanhas e analise-performance-canal) e retorna `{ title, content }`. Usado pelo nó **Lara Analyze** do workflow antes de POST /api/csuite/founder-report. Requer `GEMINI_API_KEY` no Admin.

## Uso da CLI

O script `apps/core/admin/scripts/ads-cli.mjs` chama as APIs acima usando o header `x-admin-key`.

Variáveis: `ADMIN_URL` (default `http://localhost:3001`), `CRON_SECRET` (obrigatório).

```bash
# Da raiz do monorepo ou de apps/core/admin
export ADMIN_URL=https://admin.adventurelabs.com.br
export CRON_SECRET=seu_cron_secret

# Google Ads: listar campanhas
node apps/core/admin/scripts/ads-cli.mjs google campaigns

# Google Ads: pausar / ativar campanha
node apps/core/admin/scripts/ads-cli.mjs google pause CAMPAIGN_ID
node apps/core/admin/scripts/ads-cli.mjs google enable CAMPAIGN_ID

# Meta: listar contas
node apps/core/admin/scripts/ads-cli.mjs meta accounts

# Meta: listar campanhas de uma conta
node apps/core/admin/scripts/ads-cli.mjs meta campaigns act_123456789

# Meta: pausar / ativar campanha
node apps/core/admin/scripts/ads-cli.mjs meta pause CAMPAIGN_ID
node apps/core/admin/scripts/ads-cli.mjs meta enable CAMPAIGN_ID
```

## Uso com Cursor AI ou Gemini

- **Não inclua tokens** (refresh token, System User token, etc.) em prompts ou em código versionado.
- Para ações de gestão (listar campanhas, pausar, ativar), use:
  1. **APIs do Admin:** chame as rotas acima com autenticação (por exemplo, via script que usa `CRON_SECRET` e `ADMIN_URL`).
  2. **CLI:** execute o script `ads-cli.mjs` com as variáveis de ambiente configuradas localmente.

Assim, os tokens permanecem apenas no servidor (env) ou no ambiente local do desenvolvedor, e Cursor/Gemini só orquestram chamadas às APIs ou à CLI.
