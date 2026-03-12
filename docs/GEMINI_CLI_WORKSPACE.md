---
title: Workspace recomendado — Gemini CLI
domain: laboratorio
tags: [gemini, cli, workspace, ia]
updated: 2026-03-11
---

# Uso do Gemini CLI com o Laboratório Adventure Labs

## Objetivo

Usar o **Gemini CLI** com o mesmo contexto do Cursor: uma única raiz de trabalho (**01_ADVENTURE_LABS**), com acesso a `knowledge/`, apps, clients, workflows e regras do Adventure Labs OS.

## Raiz de trabalho recomendada

Sempre que for rodar o Gemini CLI para trabalhar em código, contexto ou automações do laboratório:

```bash
cd /caminho/para/01_ADVENTURE_LABS
# ou, a partir da pasta GitHub:
cd 01_ADVENTURE_LABS
```

A partir daí, o Gemini terá acesso a:

- **knowledge/** — Base de conhecimento (taxonomia 00–99)
- **AGENTS.md** — Diretrizes para multi-agentes (Grove, C-Suite)
- **apps/admin/.cursorrules** — Regras do Adventure Labs OS
- **workflows/n8n/** — Workflows n8n versionados
- **tools/n8n-scripts/** — Scripts Node para API n8n (upload/export de workflows)

## Scripts auxiliares n8n

Se precisar importar/exportar workflows do n8n via linha de comando:

```bash
cd 01_ADVENTURE_LABS/tools/n8n-scripts
cp .env.example .env
# Editar .env com N8N_HOST_URL e N8N_API_KEY
npm install
node upload_workflow.js ../../workflows/n8n/NomeDoWorkflow.json
```

Ver [tools/n8n-scripts/README.md](../tools/n8n-scripts/README.md) para detalhes.

## Histórico

O workspace **GEMINI_CLI** (pasta na raiz do GitHub) foi consolidado dentro de 01_ADVENTURE_LABS em março/2026. Scripts n8n foram movidos para `tools/n8n-scripts/`; workflows e relatórios arquivados em `workflows/n8n/` e `_internal/archive/`.
