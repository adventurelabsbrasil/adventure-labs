# n8n-scripts

Scripts Node.js para interagir com a API do n8n (export/import de workflows, análise, cleanup). Ferramenta interna do laboratório Adventure Labs.

## Contexto

Estes scripts foram consolidados a partir do workspace GEMINI_CLI para `01_ADVENTURE_LABS/tools/n8n-scripts`. O contexto de uso é o monorepo — workflows versionados ficam em `../../workflows/n8n/`.

## Setup

```bash
cd 01_ADVENTURE_LABS/tools/n8n-scripts
cp .env.example .env
# Edite .env com N8N_HOST_URL e N8N_API_KEY (nunca commitar .env)
npm install
```

## Scripts principais

- **upload_workflow.js** — Envia um JSON de workflow para o n8n: `node upload_workflow.js ../../workflows/n8n/NomeDoWorkflow.json`
- **get_workflow.js** / **get_csuite_workflow.js** — Baixam workflow(s) da API e salvam em arquivo.
- **analyze_n8n.js**, **cleanup_n8n.js** — Análise e limpeza de workflows na instância.
- **create_*.js** — Scripts de criação/importação em lote (create_cleanup, create_idea_engine, create_v2, create_v3, create_v6).

## Variáveis de ambiente

| Variável        | Descrição                          |
|-----------------|------------------------------------|
| `N8N_HOST_URL`  | URL base da instância n8n (sem barra no final) |
| `N8N_API_KEY`   | API key do n8n (Settings → API)    |

**Aliases (Infisical `/admin`):** o script também aceita `N8N_API_URL` e `N8N_API_TOKEN` (mesmo papel que `N8N_HOST_URL` / `N8N_API_KEY`).

### Erro 404 `Application not found` (Railway)

Se o upload mostrar URL tipo `https://n8n-production-....up.railway.app` e retornar **404**, o valor de `N8N_API_URL` no Infisical está apontando para uma instância **antiga ou desligada**. Atualize no Infisical (path `/admin`):

- `N8N_API_URL` = URL base da instância ativa (ex.: `https://n8n.adventurelabs.com.br`)
- `N8N_API_TOKEN` = API key gerada **nessa mesma** instância (Settings → API)

Depois rode de novo:

```bash
infisical run --env=dev --path=/admin -- node upload_workflow.js "../../workflows/n8n/..."
```

### Erro 401

Token inválido para a URL usada: gere nova API key no n8n correto e atualize `N8N_API_TOKEN` no Infisical.

### Erro 400 `additional properties` / `active is read-only`

O JSON exportado pela UI do n8n inclui `pinData`, `meta`, `versionId`, `active`, etc. O **POST** `/api/v1/workflows` não aceita o arquivo inteiro. O script `upload_workflow.js` já envia só `name`, `nodes`, `connections`, `settings` e `staticData` (se existir). Se ainda falhar, copie a mensagem de erro do n8n.

### Erro 400 `request.body.settings should NOT have additional properties`

O **POST** de criação pode rejeitar chaves em `settings` que a UI exporta (ex.: `executionVersionId`, `executionOrder`). Para upload via CLI, use `"settings": {}` no JSON ou deixe o editor aplicar após import pela UI.

### Instância (Coolify / VPS)

Use no Infisical a URL pública do n8n no Hostinger (ex.: `https://n8n.adventurelabs.com.br`) e o token da **mesma** instância. Railway legado não é mais usado.

### Nós com “?” e workflow que não ativa / não publica

- **IDs de nós:** cada nó no JSON exportado deve usar **UUID** (formato `xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx`). IDs inventados tipo `schedule-001` fazem o editor não resolver o tipo do nó e mostram **?** em vermelho.
- **Reimportar pela UI:** *Import from File* no canvas costuma aplicar migração de schema; depois *Save* e *Publish* (n8n 2.x).
- **Instância:** se **todos** os workflows mostram **?**, verifique imagem Docker, atualização incompleta ou `NODES_EXCLUDE` / lista de nós desativados.

### “Install this node” / HTTP Request “not installed”

- A instância pode não suportar o **`typeVersion`** do export (ex.: **4.2** num n8n mais antigo). No canvas, apague o nó e adicione **HTTP Request** novo a partir da paleta (o n8n escolhe a versão certa) ou no JSON use **`typeVersion: 3`** e **`authentication: "none"`** quando usar cabeçalhos manuais (Bearer + `ASANA_ACCESS_TOKEN`).
- Para **atualizar** um workflow existente via API, o **PUT** `/api/v1/workflows/:id` aceita só campos editáveis (`name`, `nodes`, `connections`, `settings`, `staticData`) — não envie `id`, `active`, `tags`, `createdAt`, etc.
