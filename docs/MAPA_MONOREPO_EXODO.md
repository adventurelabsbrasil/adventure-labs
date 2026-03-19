# Mapa do monorepo (taxonomia ACORE)

Atualizado em **2026-03**: clientes em `apps/clientes/`, apps internos em **`apps/core/`** e laboratório em **`apps/labs/`**.

## Workspace pnpm (`pnpm-workspace.yaml`)

| Padrão | Conteúdo |
|--------|----------|
| `apps/core/*` | Admin, Adventure, Elite (submódulos Git oficiais) |
| `apps/labs/*` | Finfeed, xpostr, WhatsApp worker (submódulos oficiais) |
| `apps/clientes/**/*` | Apps de clientes (`@cliente/*`) |
| `packages/*` | Libs compartilhadas (`@adventure-labs/*`, etc.) |
| `tools/*`, `agents/*` | Ferramentas e agentes |

## `apps/core/` (canônico)

| Caminho | Repo remoto (submódulo) |
|---------|-------------------------|
| `admin/` | `adventurelabsbrasil/admin` |
| `adventure/` | `adventurelabsbrasil/adventure` |
| `elite/` | `adventurelabsbrasil/elite` |

## `apps/labs/`

| Caminho | Repo remoto (submódulo) |
|---------|-------------------------|
| `finfeed/` | `adventurelabsbrasil/finfeed` |
| `xpostr/` | *(código local no monorepo pai)* |
| `whatsapp-worker/` | `adventurelabsbrasil/adv-zazu-whatsapp-worker` |

## `apps/clientes/`

| Caminho | Pacote pnpm |
|---------|-------------|
| `young-talents/plataforma/` | `@cliente/young-plataforma` |
| `lidera/space/` | `@cliente/lidera-space` |
| `lidera/skills/` | `@cliente/lidera-skills` |
| `lidera/flow/` | `@cliente/lidera-flow` (placeholder PLL) |
| `benditta/app/` | `@cliente/benditta-app` |

## Integração Admin ↔ Benditta

- O **Admin** usa **`@adventure-labs/benditta-meta-dashboard`** (`packages/`), não importa o app `@cliente/benditta-app` diretamente.

## Comandos úteis

```bash
pnpm admin:dev
pnpm xpostr:dev
pnpm benditta:dev
pnpm --filter @cliente/lidera-space dev
```

## Setup local

```bash
./scripts/setup.sh   # submódulos + symlink apps/core/admin/context → knowledge
```
