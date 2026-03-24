# Adventure Labs — Estrutura + Submodules

Repositório principal da Adventure Labs (governança, conhecimento, automações e apps/workspaces). Parte dos apps é mantida como **submodules** em `apps/core/*`, enquanto apps de cliente em `apps/clientes/*` podem viver no próprio workspace pnpm.

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

O script inicializa os submodules e cria o symlink `apps/core/admin/context -> ../../../knowledge` (evita duplicação).

## Estrutura

```
01_ADVENTURE_LABS/
├── _internal/      # Vault (refs), archive (clones temp)
├── apps/           # Core/labs/clientes (misto: submodules + workspaces locais)
├── clients/        # Submodules de clientes por pasta NN_nome (quando aplicável)
├── knowledge/      # Base de conhecimento (taxonomia 00–99)
├── packages/       # Pacotes compartilhados
├── tools/          # Ferramentas internas
├── workflows/      # Definições n8n
└── AGENTS.md       # Diretrizes para multi-agentes
```

**Submodules:** Alguns apps mantêm repo próprio (ex.: `apps/core/admin`, `apps/core/adventure`, `apps/core/elite`).

## Dependências

O monorepo usa **pnpm** (workspaces em `apps/core/*`, `apps/labs/*`, `apps/clientes/**/*`, `packages/*`, `tools/*`). Na raiz:

```bash
pnpm install
```

Se **pnpm** não estiver instalado: `npm install -g pnpm` ou [instalar o pnpm](https://pnpm.io/installation). Para instalar só o Admin sem pnpm, entre na pasta do app e use npm:

```bash
cd apps/core/admin && npm install
```

**Problemas comuns**

- **nvm + .npmrc:** Se aparecer "globalconfig and/or prefix ... incompatible with nvm", rode uma vez: `nvm use --delete-prefix v22.19.0 --silent` (ou a versão do Node que você usa).
- **npm error "reading 'matches'":** É um bug conhecido do npm. Use **pnpm**: ative com Node 22+ com `corepack enable`, depois `pnpm install` na raiz:
  ```bash
  corepack enable
  pnpm install
  ```
  Ou instale o pnpm: `npm install -g pnpm` (após corrigir o nvm/npmrc) e rode `pnpm install` na raiz do monorepo.

## Adventure OS (ACORE + registry + canal único)

- **Índice mestre:** `knowledge/06_CONHECIMENTO/os-registry/INDEX.md`
- **Manuais:** `docs/MANUAL_HUMANO_ADVENTURE_OS.md` · `docs/MANUAL_IA_ADVENTURE_OS.md`
- **Resumo do programa:** `docs/PLANO_ADVENTURE_OS_UNIFICADO.md`
- **Governança:** `ACORE_CONSTITUTION.md` · `docs/ACORE_ROADMAP.md` · `docs/BACKLOG.md`

### Nota de governança (Young Talents)

- O app `apps/clientes/young-talents/plataforma` é um projeto de cliente entregue (propriedade Young Empreendimentos), mantido no monorepo para histórico técnico e handoff.
- O projeto Supabase do Young Talents está compartilhado com a Adventure Labs para suporte e diagnóstico quando necessário.

## Início rápido

- **Admin:** `cd apps/core/admin && pnpm dev` (ou `npm run dev` após `npm install` em `apps/core/admin`)
- **Taxonomia:** `knowledge/00_GESTAO_CORPORATIVA/MANUAL_TAXONOMIA_REPOSITORIO.md`
- **Agentes:** `AGENTS.md`

## Segurança

Credenciais e dados sensíveis **nunca** no repositório. Ver `_internal/vault/README.md`.

- **Auditoria de secrets:** `./scripts/audit-secrets.sh --report` (relatório em `_internal/`)
