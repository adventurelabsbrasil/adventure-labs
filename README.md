# Adventure Labs — Monorepo

Repositório privado da Adventure Labs. Contém aplicações, projetos de clientes, base de conhecimento e ferramentas internas.

## Estrutura

```
01_ADVENTURE_LABS/
├── _internal/      # Vault (refs), archive (clones temp)
├── apps/           # Apps internos — cada um = repo separado
├── clients/        # Apps de clientes — cada um = repo separado
├── knowledge/      # Base de conhecimento (taxonomia 00–99)
├── packages/       # Pacotes compartilhados
├── tools/          # Ferramentas internas (xtractor, dbgr, etc.)
├── workflows/      # Definições n8n, automações
└── AGENTS.md       # Diretrizes para multi-agentes
```

**Versionamento:** Cada app (admin, adventure, lidera-space, etc.) mantém seu próprio repositório Git — funções específicas, deploy e histórico independentes.

## Início rápido

- **Admin (Adventure Labs OS):** `cd apps/admin && pnpm dev`
- **Taxonomia:** Ver `knowledge/00_GESTAO_CORPORATIVA/MANUAL_TAXONOMIA_REPOSITORIO.md`
- **Agentes:** Ver `AGENTS.md`

## Segurança

Credenciais e dados sensíveis **nunca** no repositório. Ver `_internal/vault/README.md`. Clones temporários arquivados em `_internal/archive/`.
