# C-Suite Autonomous Loop — Versionamento

Workflows n8n do C-Suite Autonomous Loop, versionados dentro do monorepo admin.

**Fluxo ativo no n8n:** O que está em produção costuma ser o **V11** (Fase 4: Paralelização + Histórico + Founder Reports). O arquivo fica em **`workflows/n8n/C-Suite Autonomous Loop - V11 (Fase 4_ Paralelização + Histórico + Founder Reports).json`** (pasta raiz do n8n, não em `csuite/production/`). A **V12** foi criada a partir do V11 com: nomes normalizados (sem sufixo "1"), Fetch GitHub Issues New, pauta CTO e Post CTO Pauta; arquivo: **`workflows/n8n/C-Suite Autonomous Loop - V12 (Fase 4_ Paralelização + Histórico + Founder Reports + Pauta CTO).json`**.

## Estrutura

```
csuite/
├── production/           # Fluxo em produção (fonte de verdade)
│   ├── csuite-loop-v10.json  # V10 — Pauta CTO + issues novas + nomes normalizados
│   ├── csuite-loop-v9.json   # V9 — Fase 3 (Retry + CEO Flash)
│   ├── csuite-loop-v8.json   # V8 — Fase 2 (Validate + Audit)
│   └── csuite-loop-v7.json   # V7 — base
├── staging/              # Testes antes de promover para production
├── development/          # Features em desenvolvimento
├── archive/              # Versões antigas e backups
├── CHANGELOG.md          # Histórico de versões
├── PLANO_CTO_PAUTA_ISSUES_V10.md  # Plano da V10 (nomes, executor, skills)
└── README.md             # Este arquivo
```

## Fluxo de trabalho

1. **Alterar fluxo:** Editar no n8n → Exportar JSON → Salvar em `development/nome-feature.json` ou `staging/`
2. **Testar:** Importar de staging no n8n, executar, validar
3. **Promover para produção:** Copiar para `production/csuite-loop-v7.json` (ou nova versão)
4. **Commit:** `git add n8n_workflows/csuite/` + mensagem Conventional Commits
5. **Arquivar:** Versões antigas → `archive/vX-backup.json`

## Importar no n8n

### Via CLI (API REST — n8n no Railway)

Com `N8N_API_URL` e `N8N_API_TOKEN` em `apps/core/admin/.env.local`:

```bash
./scripts/n8n/import-to-railway.sh
# ou com arquivo específico:
./scripts/n8n/import-to-railway.sh n8n_workflows/csuite/production/csuite-loop-v10.json
```

Token: n8n → **Settings** → **API** → **Create an API key**. Ver [n8n-railway-e-admin.md](../../context/00_GESTAO_CORPORATIVA/processos/n8n-railway-e-admin.md).

### Via interface

1. Abra o n8n
2. **Create** → **Import workflow**
3. Selecione `production/csuite-loop-v10.json` (ou v9/v8/v7)
4. Configure credenciais: Postgres (Supabase), Gemini API, GitHub
5. Execute e valide

## GitHub: issues em todos os repos

Os nós **GitHub API Tool** (usados pelos C-Levels) consultam a **Search API** (`/search/issues?q=org:adventurelabsbrasil+is:issue+state:open`) para listar issues de **todos os repositórios** da organização, não só do repo admin. A criação de issues (nó "Create an issue") continua no repo configurado no nó (ex.: admin).

## V10 — Pauta CTO e issues novas

Na **V10** (csuite-loop-v10.json):

- **Nomes normalizados:** Todos os nós que tinham sufixo "1" foram renomeados (ex.: Build Context1 → Build Context, CTO Agent Torvalds1 → CTO Agent Torvalds).
- **Fetch GitHub Issues New:** Nó HTTP Request que busca issues **abertas criadas nas últimas 24h** (`created:>=YYYY-MM-DD`) da org adventurelabsbrasil. Roda em paralelo ao Fetch Context Docs (ambos acionados pelo Schedule). Requer credencial GitHub (ex.: mesmo token do GitHub API Tool).
- **Merge for Build + Limit Memory One:** O output de Fetch Vector Memory é limitado a 1 item e mesclado com o de Fetch GitHub Issues New para que o Build Context rode uma vez com acesso a ambos.
- **Build Context:** Inclui no `contextCTO` a seção **"ISSUES NOVAS (últimas 24h) org:adventurelabsbrasil"** (lista repo, #número, título, link).
- **CTO Agent Torvalds:** Instrução (system message) para montar a **Pauta do dia** (bugs e melhorias) e indicar que a execução de cada item deve ser delegada à skill **cto-executar-item-pauta** no Cursor; cada item vira PR para o Founder aprovar.
- **Post CTO Pauta (opcional):** Envia POST para `/api/csuite/founder-report` com título "CTO Pauta — YYYY-MM-DD" e conteúdo = relatório do CTO, persistindo em `adv_founder_reports`. Requer variável `CRON_SECRET` no n8n (mesmo valor do Admin).

**Executor no fluxo:** O CTO não executa código. As skills **cto-pauta-issues-diaria** e **cto-executar-item-pauta** (em `apps/core/admin/agents/skills/`) são o contrato de execução: o CTO delega a execução dos itens da pauta; cada item resulta em PR para o Founder aprovar. Ver [PLANO_CTO_PAUTA_ISSUES_V10.md](PLANO_CTO_PAUTA_ISSUES_V10.md).

## V12 (a partir do V11 ativo)

A **V12** está em **`workflows/n8n/C-Suite Autonomous Loop - V12 (Fase 4_ Paralelização + Histórico + Founder Reports + Pauta CTO).json`** (mesma pasta do V11). Inclui tudo da V11 mais:

- **Nomes normalizados:** todos os nós sem sufixo "1".
- **Fetch GitHub Issues New**, **Limit Memory One**, **Merge for Build:** issues novas (últimas 24h) da org alimentam o Build Context.
- **Build Context:** seção "ISSUES NOVAS (últimas 24h) org:adventurelabsbrasil" no contextCTO.
- **CTO Agent Torvalds:** system message com Pauta do dia e delegação à skill cto-executar-item-pauta (PR para Founder).
- **Post CTO Pauta:** POST da pauta do CTO para `adv_founder_reports` (requer CRON_SECRET no n8n).

Para usar: importar o JSON da V12 no n8n, configurar credenciais (incluindo GitHub para Fetch GitHub Issues New) e ativar no lugar do V11.

## Documentação

- [docs/n8n-csuite-workflow-documentacao.md](../../docs/n8n-csuite-workflow-documentacao.md) — Arquitetura e manutenção
- [context/99_ARQUIVO/CLAUDE/N8N_ANÁLISE/](../../context/99_ARQUIVO/CLAUDE/N8N_ANÁLISE/) — Análise de bugs e otimizações
