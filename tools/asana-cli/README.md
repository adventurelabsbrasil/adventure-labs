# Asana CLI (Adventure Labs)

Obter **`ASANA_ACCESS_TOKEN`** localmente, sem copiar PAT manualmente do site (fluxo OAuth). Alternativa: validar um PAT colado no terminal.

## 1) App OAuth na Asana (uma vez)

1. Abra [Developer Console](https://app.asana.com/0/developer-console) → **Create new app**.
2. Em **OAuth**, adicione **Redirect URL** (use **uma** das opções):
   - **OOB (recomendado se o app já usa isso):** `urn:ietf:wg:oauth:2.0:oob` — após login, o Asana **mostra o código na página** ([fluxo OAuth OOB](https://developers.asana.com/docs/oauth)).
   - **Localhost:** `http://127.0.0.1:47823/callback` — redireciona de volta para o CLI.
3. Copie **Client ID** e **Client secret**.

## 2) Configurar CLI

```bash
cd tools/asana-cli
cp .env.example .env
# edite .env com ASANA_OAUTH_CLIENT_ID e ASANA_OAUTH_CLIENT_SECRET
```

## 3) Login OAuth

**OOB** (redirect `urn:ietf:wg:oauth:2.0:oob` — igual à URL com `client_id=…&redirect_uri=urn%3A…`):

```bash
node asana-login.mjs oauth-oob --write-admin-env
```

Abre o navegador; depois de autorizar, **copie o código** que o Asana exibe e cole no terminal.

**Localhost** (redirect `http://127.0.0.1:47823/callback`):

```bash
node asana-login.mjs oauth --write-admin-env
```

**Atenção:** o comando precisa de **espaço** entre `asana-login.mjs` e `oauth` (não `asana-login.mjsoauth`).

Ao concluir, o terminal mostra `ASANA_ACCESS_TOKEN=...`.

Anexa `ASANA_ACCESS_TOKEN` em `apps/admin/.env.local` (crie o arquivo se não existir).

**Nota:** token OAuth da Asana **pode expirar** (horas). Para **cron 24/7 no Vercel**, o mais estável é criar um **Personal Access Token** em Asana → Settings → Apps → **Personal access tokens** e colar com o comando abaixo (não expira como OAuth).

## 4) Validar PAT (opcional)

```bash
node asana-login.mjs pat
```

Cole o PAT; se válido, imprime o usuário e pode usar `--write-admin-env`.

## Variáveis no Vercel (Andon)

- `ASANA_ACCESS_TOKEN` — valor obtido aqui (OAuth ou PAT).
- `ASANA_PROJECT_GIDS` — GIDs dos projetos, vírgula.
- `CRON_SECRET` — já existente.

Teste: `cd apps/admin && pnpm test:andon`.

## Teste: listar tarefas + criar tarefa para o Igor

Usa o mesmo `ASANA_ACCESS_TOKEN` do Admin (lê `apps/admin/.env.local`). Projeto: primeiro GID de `ASANA_PROJECT_GIDS` ou `ASANA_TEST_PROJECT_GID`.

```bash
cd tools/asana-cli
pnpm run test:igor-task:dry    # só lista + acha Igor
pnpm run test:igor-task        # cria tarefa atribuída ao Igor
```

Opcional: `IGOR_MATCH=igor` (padrão), `ASANA_TEST_TASK_NAME=...`, `--project=GID`.

## Backlog: card com links FigJam + Google Doc (marketing)

Cria uma tarefa **sem assignee** (a menos que defina `ASANA_MARKETING_ASSIGNEE_GID`) com links para o plano de mídia (lançamento Assessoria Martech): Google Doc, dois boards FigJam (claim), e path do markdown em `knowledge/02_MARKETING/`.

Requer `ASANA_ACCESS_TOKEN` válido (renove com `pnpm run login:oob:write` ou PAT se expirou).

```bash
cd tools/asana-cli
pnpm run create:marketing-artifact:dry   # preview do payload
pnpm run create:marketing-artifact       # cria no primeiro projeto de ASANA_PROJECT_GIDS
```

Sobrescrever corpo: `ASANA_MARKETING_NOTES='...'`. URLs padrão podem ser ajustadas com `ASANA_MARKETING_GDOC_URL`, `ASANA_MARKETING_FIGJAM_CONNECTION_URL`, `ASANA_MARKETING_FIGJAM_GANTT_URL`, `ASANA_MARKETING_MD_PATH`.
