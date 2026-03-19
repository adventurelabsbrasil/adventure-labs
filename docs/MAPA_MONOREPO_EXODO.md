# Mapa do monorepo (Æxodo — apps de clientes)

Atualizado em **2026-03** após mover apps de `clients/*` e `apps/benditta-dashboard` para `apps/clientes/*`.

## Workspace pnpm (`pnpm-workspace.yaml`)

| Padrão | Conteúdo |
|--------|----------|
| `apps/*` | Admin, Adventure, xpostr, finfeed, etc. + pasta `clientes/` (sem `package.json` na raiz de `clientes`) |
| `apps/clientes/**/*` | Cada app de cliente com `package.json` próprio |
| `packages/*` | Libs compartilhadas (`@adventure-labs/*`, etc.) |
| `tools/*`, `agents/*` | Ferramentas internas (mantidas no workspace) |

## Apps de clientes (`apps/clientes/`)

| Caminho | Pacote pnpm | Origem |
|---------|-------------|--------|
| `young-talents/plataforma/` | `@cliente/young-plataforma` | `clients/04_young/young-talents` |
| `lidera/space/` | `@cliente/lidera-space` | `clients/01_lidera/lidera-space` |
| `lidera/skills/` | `@cliente/lidera-skills` | `clients/01_lidera/lidera-skills` |
| `lidera/flow/` | `@cliente/lidera-flow` | *Placeholder* — código legado “Lidera Flow” (PLL) a incorporar |
| `benditta/app/` | `@cliente/benditta-app` | `apps/benditta-dashboard` |

## O que permaneceu em `clients/`

- Artefatos por cliente que **não** são app versionado como workspace (CSV, READMEs, `lidera-dre`, Rose, etc.).
- Índice Young: `clients/04_young/README.md` aponta para a plataforma em `apps/clientes/`.

## Integração com o Admin

- O **Admin** consome Benditta via **`@adventure-labs/benditta-meta-dashboard`** (`packages/benditta-meta-dashboard`), **não** via import do app `@cliente/benditta-app`.

## Comandos úteis

```bash
pnpm benditta:dev    # @cliente/benditta-app (porta 3002)
pnpm --filter @cliente/lidera-space dev
pnpm --filter @cliente/lidera-skills dev
pnpm --filter @cliente/young-plataforma dev
```
