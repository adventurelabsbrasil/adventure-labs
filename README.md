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
├── clients/        # Submodules: lidera-space, lidera-skills, roseportaladvocacia, young-emp, etc.
├── knowledge/      # Base de conhecimento (taxonomia 00–99)
├── packages/       # Pacotes compartilhados
├── tools/          # Ferramentas internas
├── workflows/      # Definições n8n
└── AGENTS.md       # Diretrizes para multi-agentes
```

**Submodules:** Cada app mantém seu próprio repo — funções específicas, deploy e histórico independentes.

## Dependências

O monorepo usa **pnpm** (workspaces em `apps/*`, `packages/*`, `tools/*`). Na raiz:

```bash
pnpm install
```

Se **pnpm** não estiver instalado: `npm install -g pnpm` ou [instalar o pnpm](https://pnpm.io/installation). Para instalar só o Admin sem pnpm, entre na pasta do app e use npm:

```bash
cd apps/admin && npm install
```

**Problemas comuns**

- **nvm + .npmrc:** Se aparecer "globalconfig and/or prefix ... incompatible with nvm", rode uma vez: `nvm use --delete-prefix v22.19.0 --silent` (ou a versão do Node que você usa).
- **npm error "reading 'matches'":** É um bug conhecido do npm. Use **pnpm**: ative com Node 22+ com `corepack enable`, depois `pnpm install` na raiz:
  ```bash
  corepack enable
  pnpm install
  ```
  Ou instale o pnpm: `npm install -g pnpm` (após corrigir o nvm/npmrc) e rode `pnpm install` na raiz do monorepo.

## Início rápido

- **Admin:** `cd apps/admin && pnpm dev` (ou `npm run dev` após `npm install` em `apps/admin`)
- **Taxonomia:** `knowledge/00_GESTAO_CORPORATIVA/MANUAL_TAXONOMIA_REPOSITORIO.md`
- **Agentes:** `AGENTS.md`

## Segurança

Credenciais e dados sensíveis **nunca** no repositório. Ver `_internal/vault/README.md`.

- **Auditoria de secrets:** `./scripts/audit-secrets.sh --report` (relatório em `_internal/`)
