# ADR 0002 — Código de cliente: `clients/` (submodule) vs `apps/clientes/` (workspace pnpm)

## Status

**Aceite** (2026-03-22) — formaliza [MANUAL_TAXONOMIA_REPOSITORIO.md §4.3](../../knowledge/00_GESTAO_CORPORATIVA/MANUAL_TAXONOMIA_REPOSITORIO.md) e [.cursorrules](../../.cursorrules).

## Contexto

O monorepo admite duas formas de hospedar entregas ligadas a clientes:

- **`clients/NN_cliente/`** — repositórios **Git separados** como submodules (histórico e deploy por projeto).
- **`apps/clientes/nome-app/`** — pacotes **dentro** do `pnpm-workspace` quando a entrega é versionada no mesmo repo que `apps/core`, `packages/*`, etc.

Sem decisão explícita, surgem PRs na pasta errada, `pnpm install` no submodule, ou tentativas de importar código de `apps/clientes/` no Admin core (proibido pela topologia A.C.O.R.E.).

## Decisão

1. **`clients/NN_nome/`** é o **caminho padrão** para código de cliente com **repositório próprio** e ciclo de vida de deploy isolado.

2. **`apps/clientes/`** existe para apps de cliente que são **workspaces** do monorepo (ex.: entrega mantida na mesma árvore que ferramentas internas), conforme [`.cursorrules`](../../.cursorrules).

3. **`apps/core/admin`** (e restantes `apps/core/*`) **não importam** código-fonte de `apps/clientes/` — apenas **`packages/*`** quando houver partilha real.

4. **Nova entrega:** escolher `clients/` **salvo** decisão explícita (Founder/CTO) de usar `apps/clientes/`; em ambos os casos, atualizar [os-registry INDEX §9](../../knowledge/06_CONHECIMENTO/os-registry/INDEX.md).

## Consequências

- Onboarding: explicar **clone `--recurse-submodules`** para quem trabalha em `clients/`.
- CI e scripts na raiz cobrem `apps/*` workspaces; submodules em `clients/` têm CI **no repo do cliente**.
- O registry mantém a tabela **Drive ↔ `clients/`** separada desta decisão (prefixos Drive ≠ ordem `NN_` no Git).

## Referências

- [MANUAL_TAXONOMIA_REPOSITORIO.md §4.3](../../knowledge/00_GESTAO_CORPORATIVA/MANUAL_TAXONOMIA_REPOSITORIO.md)  
- [README.md](../../README.md) — clone e submodules  
- [ADR-0001](0001-fonte-verdade-tarefas-asana-backlog-adv-tasks.md) — independente, mas mesmo pacote de governança Adventure OS
