# Memory Index

- [Stack Completa Adventure Labs](project_stack_inventory.md) — Inventário completo de ferramentas, serviços e devices (confirmado Apr 2026)
- [Plano BHAG/Northstar perdido](project_lost_plan_bhag.md) — Contexto sobre documento estratégico perdido na limpeza da Library, precisa reconstrução

## Sessão 2026-04-17 — Estado atual

**5 PRs mergeadas hoje:** #23 (LideraSpace), #22 (zen-dhawan infra), #26 (n8n ads), #28 (SSOT docs), #29 (CI fix)

**Decisões de arquitetura:**
- `_internal/` é SSOT rastreada em git — NÃO gitignore
- `adventure_knowledge` (Supabase pgvector) = destino para docs estratégicos fora do git
- `security-scan.yml` e `monorepo-governance.yml` usam mesmo script — sem políticas duplicadas
- Novo device: **Beelink T4 Pro** (`100.110.39.45`) na Tailnet, SSH key instalada

**Pendências P1:**
- Fix `mercadopago-sync.sh` REPO_ROOT (Sueli/Buffett sem dados MP)
- Fix `hivemind-heartbeat.sh` nome container Plane
- Atualizar `SUPABASE_SERVICE_ROLE_KEY` Lidera na VPS + Vercel

**Handoff completo:** `_internal/handoff-2026-04-17.md`
