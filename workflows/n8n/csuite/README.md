# C-Suite Autonomous Loop — Versionamento

Workflows n8n do C-Suite Autonomous Loop, versionados dentro do monorepo admin.

## Estrutura

```
csuite/
├── production/           # Fluxo em produção (fonte de verdade)
│   ├── csuite-loop-v9.json   # V9 — Fase 3 (Retry + CEO Flash)
│   ├── csuite-loop-v8.json   # V8 — Fase 2 (Validate + Audit)
│   └── csuite-loop-v7.json   # V7 — base
├── staging/              # Testes antes de promover para production
├── development/          # Features em desenvolvimento
├── archive/              # Versões antigas e backups
├── CHANGELOG.md          # Histórico de versões
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

Com `N8N_API_URL` e `N8N_API_TOKEN` em `apps/admin/.env.local`:

```bash
./scripts/n8n/import-to-railway.sh
# ou com arquivo específico:
./scripts/n8n/import-to-railway.sh n8n_workflows/csuite/production/csuite-loop-v9.json
```

Token: n8n → **Settings** → **API** → **Create an API key**. Ver [n8n-railway-e-admin.md](../../context/00_GESTAO_CORPORATIVA/processos/n8n-railway-e-admin.md).

### Via interface

1. Abra o n8n
2. **Create** → **Import workflow**
3. Selecione `production/csuite-loop-v9.json` (ou v8/v7)
4. Configure credenciais: Postgres (Supabase), Gemini API, GitHub
5. Execute e valide

## GitHub: issues em todos os repos

Os nós **GitHub API Tool** (usados pelos C-Levels) consultam a **Search API** (`/search/issues?q=org:adventurelabsbrasil+is:issue+state:open`) para listar issues de **todos os repositórios** da organização, não só do repo admin. A criação de issues (nó "Create an issue") continua no repo configurado no nó (ex.: admin).

## Documentação

- [docs/n8n-csuite-workflow-documentacao.md](../../docs/n8n-csuite-workflow-documentacao.md) — Arquitetura e manutenção
- [context/99_ARQUIVO/CLAUDE/N8N_ANÁLISE/](../../context/99_ARQUIVO/CLAUDE/N8N_ANÁLISE/) — Análise de bugs e otimizações
