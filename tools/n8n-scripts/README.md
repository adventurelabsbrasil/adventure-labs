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
| `N8N_HOST_URL`  | URL base da instância n8n (ex.: Railway) |
| `N8N_API_KEY`   | API key do n8n (Settings → API)    |
