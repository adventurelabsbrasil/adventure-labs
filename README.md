# Adventure Labs — Estrutura + Submodules

Repositório que versiona a estrutura (knowledge, docs, .cursor) e referencia apps/clientes como **submodules**.

## Clone e setup

```bash
git clone --recurse-submodules <url-adventure-labs> 01_ADVENTURE_LABS
cd 01_ADVENTURE_LABS
./scripts/setup.sh
```

Ou, se já clonou sem `--recurse-submodules`:

```bash
./scripts/setup.sh
```

O script inicializa os submodules e cria o symlink `apps/admin/context -> ../../knowledge` (evita duplicação).

## Estrutura

```
01_ADVENTURE_LABS/
├── _internal/      # Vault (refs), archive (clones temp)
├── apps/           # Submodules: admin, adventure, elite, finfeed
├── clients/        # Submodules: lidera-space, roseportaladvocacia, young-emp, etc.
├── knowledge/      # Base de conhecimento (taxonomia 00–99)
├── packages/       # Pacotes compartilhados
├── tools/          # Ferramentas internas
├── workflows/      # Definições n8n
└── AGENTS.md       # Diretrizes para multi-agentes
```

**Submodules:** Cada app mantém seu próprio repo — funções específicas, deploy e histórico independentes.

## Início rápido

- **Admin:** `cd apps/admin && pnpm dev` (após `./scripts/setup.sh`)
- **Taxonomia:** `knowledge/00_GESTAO_CORPORATIVA/MANUAL_TAXONOMIA_REPOSITORIO.md`
- **Agentes:** `AGENTS.md`

## Segurança

Credenciais e dados sensíveis **nunca** no repositório. Ver `_internal/vault/README.md`.
