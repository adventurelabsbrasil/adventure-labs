# Governanca de Lockfiles no Monorepo

## Objetivo

Definir politica explicita para coexistencia de `pnpm-lock.yaml` (raiz) e `package-lock.json` em workspaces legados/especificos.

## Regra oficial

- `pnpm-lock.yaml` na raiz permanece como lockfile principal do monorepo.
- `package-lock.json` so pode existir nos caminhos da allowlist abaixo.
- Qualquer novo `package-lock.json` fora da allowlist falha no gate `governance:check`.

## Allowlist atual (2026-03-31)

- `package-lock.json`
- `apps/clientes/01_lidera/lidera-dre/package-lock.json`
- `apps/clientes/01_lidera/lidera/skills/package-lock.json`
- `apps/clientes/01_lidera/lidera/space/package-lock.json`
- `apps/clientes/01_lidera/lideraspacev1/package-lock.json`
- `apps/clientes/02_rose/roseportaladvocacia/package-lock.json`
- `apps/clientes/04_young/ranking-vendas/package-lock.json`
- `apps/clientes/04_young/young-talents-/plataforma/package-lock.json`
- `apps/clientes/04_young/young-talents/package-lock.json`
- `apps/labs/minha-app/package-lock.json`
- `tools/dbgr/package-lock.json`
- `tools/n8n-scripts/package-lock.json`
- `tools/openclaw/openclaw-gateway-railway/package-lock.json`
- `tools/railway-openclaw/clawdbot-railway-template/package-lock.json`
- `tools/whatsapp-web/package-lock.json`

## Processo para alteracao

1. Validar necessidade tecnica do `package-lock.json` no workspace.
2. Atualizar allowlist em `tools/scripts/check-repo-governance.sh`.
3. Atualizar este documento com contexto da decisao.
4. Executar `npm run governance:check`.
