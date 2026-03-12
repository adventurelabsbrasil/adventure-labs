---
title: Registro — Consolidação GEMINI_CLI e raiz GitHub em 01_ADVENTURE_LABS
domain: gestao_corporativa
tags: [gemini, cli, workspace, monorepo, laboratório, cursor, conhecimento]
updated: 2026-03-12
---

# Registro — Consolidação GEMINI_CLI e raiz GitHub em 01_ADVENTURE_LABS

**Data:** 12/03/2026  
**Objetivo:** Unificar o workspace do Gemini CLI e os arquivos da raiz do GitHub dentro do repositório do laboratório, deixando **01_ADVENTURE_LABS** como raiz única de trabalho para Gemini CLI e Cursor AI.

---

## O que foi feito

### 1. Raiz do GitHub

| Ação | Detalhe |
|------|---------|
| **PLANO_MONOREPO_ADVENTURE_LABS.md** | Movido da raiz do GitHub para `01_ADVENTURE_LABS/PLANO_MONOREPO_ADVENTURE_LABS.md`. Referência em `docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md` permanece válida (`../../PLANO_MONOREPO_ADVENTURE_LABS.md`). |
| **Pasta GEMINI_CLI** | Conteúdo consolidado no lab; pasta na raiz reduzida a **apenas README.md** com redirecionamento para `01_ADVENTURE_LABS` e referências a `tools/n8n-scripts`, `workflows/n8n`, `docs/GEMINI_CLI_WORKSPACE.md`. |
| **.gitignore** (raiz) | Mantido na raiz; cobre `gh_*_macOS_*`, `.DS_Store`, `.env`, etc. |
| **gh_2.87.3_macOS_amd64 2** | Mantido na raiz; já ignorado pelo `.gitignore`. |

### 2. Conteúdo migrado para 01_ADVENTURE_LABS

| Origem | Destino no lab |
|--------|-----------------|
| Scripts n8n (Node.js) + package.json | **tools/n8n-scripts/** — scripts `.js`, `package.json`, `package-lock.json`, `.env.example`, `.gitignore`, README. |
| Workflows JSON (n8n) | **workflows/n8n/** — adicionados `account_manager_pipeline.json`, `notify_google_chat_node.json`, `n8n-csuite-autonomous-loop.json`, `csuite_workflow.json`. |
| Dump completo (all_workflows_dump.json) | **_internal/archive/n8n-dumps/** |
| adv_client_inbox_migration.sql | **apps/admin/supabase/migrations/20260316100000_adv_client_inbox.sql** (sem conflito com migrations existentes). |
| Relatórios Founder (relatorio_*.md, temp_admin_report_today.md) | **_internal/archive/relatorios-founder/** |
| Pasta API (GEMINI_CLI) | **_internal/archive/gemini-cli-API/** (apenas .gitattributes + README; repo vazio). |
| meus-workflows (backup) | **_internal/archive/gemini-cli-meus-workflows/** (JSONs; equivalentes já em workflows/n8n). |

### 3. Documentação criada no lab

| Documento | Conteúdo |
|-----------|----------|
| **docs/GEMINI_CLI_WORKSPACE.md** | Uso recomendado do Gemini CLI a partir de `01_ADVENTURE_LABS`; raiz de trabalho; referência a `knowledge/`, AGENTS.md, `.cursorrules`, `tools/n8n-scripts`. |
| **tools/n8n-scripts/README.md** | Propósito dos scripts, setup (`cp .env.example .env`, `npm install`), variáveis N8N_HOST_URL e N8N_API_KEY, comandos principais. |

### 4. Limpeza final (12/03/2026)

- Removido todo o conteúdo da pasta **GEMINI_CLI** na raiz do GitHub, exceto **README.md**.
- README da GEMINI_CLI atualizado: recomenda `cd 01_ADVENTURE_LABS` para Gemini CLI e Cursor.

---

## Decisões (alinhadas ao Grove e .cursorrules)

- **Raiz única de trabalho:** Todo trabalho (Cursor e Gemini CLI) deve partir de **01_ADVENTURE_LABS**.
- **Regra de sobrescrita:** Nenhum arquivo existente no lab foi sobrescrito; migrations e workflows foram adicionados apenas quando não havia conflito (conforme protocolo Grove).
- **Ferramentas:** Scripts n8n tratados como ferramenta interna em `tools/n8n-scripts`, não como app do monorepo.

---

## Referências para o C-Suite

- **Workspace Gemini CLI:** [docs/GEMINI_CLI_WORKSPACE.md](../../../docs/GEMINI_CLI_WORKSPACE.md)
- **Scripts n8n:** `01_ADVENTURE_LABS/tools/n8n-scripts/`
- **Workflows n8n:** `01_ADVENTURE_LABS/workflows/n8n/`
- **Plano monorepo:** `01_ADVENTURE_LABS/PLANO_MONOREPO_ADVENTURE_LABS.md`
- **Taxonomia e contexto:** `knowledge/` (00_GESTAO_CORPORATIVA a 99_ARQUIVO); Admin usa `apps/admin/context` (symlink para knowledge quando aplicável).

---

*Registro incluído na base de conhecimento para acesso do C-Suite (Grove, Ohno, Torvalds, Ogilvy, Buffett, Cagan).*
