---
title: Ambiente de desenvolvimento — checklist Adventure OS
domain: conhecimento
tags: [dev, onboarding, devices, ambiente]
updated: 2026-03-21
---

# Ambiente de desenvolvimento — checklist

**Objetivo:** onboarding consistente sem **segredos** no repositório.

## Máquina local

- [ ] Node 22+ (ou versão alinhada ao projeto), `corepack enable`, **pnpm** na raiz (`pnpm install`).
- [ ] Clone com submodules: `git clone --recurse-submodules` ou `./scripts/setup.sh`.
- [ ] Symlink `apps/core/admin/context` → `knowledge` (o setup cria se aplicável).
- [ ] Infisical / env local conforme [`docs/INFISICAL_SYNC.md`](../../docs/INFISICAL_SYNC.md) — **não** commitar `.env`.

## O que não commitar

- `.env`, `.env.local`, refresh tokens, chaves API, exports com PII.

## Browser e contas

- Preferir **perfis** separados (pessoal vs cliente vs ads) — reduz risco de screenshot/login errado.
- Extensões: alinhar com política interna quando existir wiki *human-squad*.

## Devices / inventário (opcional)

- Tabela equipamento → owner → uso pode viver na wiki; **sem** números de série em público se não necessário.

## Servidores (ACORE Fase 4+)

- VPS/Coolify/n8n/Evolution — hostname referencial em runbooks; credenciais só vault.

## Referências

- [`README.md`](../../README.md) raiz  
- [`os-registry/INDEX.md`](os-registry/INDEX.md)  
- [`docs/ACORE_ROADMAP.md`](../../docs/ACORE_ROADMAP.md)
