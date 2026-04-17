# Memory Index

- [Stack Completa Adventure Labs](project_stack_inventory.md) — Inventário completo de ferramentas, serviços e devices (confirmado Apr 2026)
- [Plano BHAG/Northstar perdido](project_lost_plan_bhag.md) — Contexto sobre documento estratégico perdido na limpeza da Library, precisa reconstrução

## Sessão 2026-04-17 — Estado final (tarde)

**7 PRs mergeadas hoje:** #23, #22, #26, #28, #29, #30, #31

**Decisões de arquitetura:**
- `_internal/` é SSOT rastreada em git — NÃO gitignore
- `adventure_knowledge` (Supabase pgvector) = destino para docs estratégicos fora do git
- `security-scan.yml` e `monorepo-governance.yml` usam mesmo script — sem políticas duplicadas
- Beelink T4 Pro = nó edge AI always-on (`ssh beelink`, Docker + Node + Claude Code instalados)
- Issues GitHub = canal de rastreamento de pendências para Buzz e C-Suite
- `_internal/projetos-arquivados/` = destino para projetos desativados com docs de revival

**Issues abertas (rastreamento ativo):**
- #32 — Rate limit Vercel Benditta (aguardar 24h)
- #33 — Recuperar acesso Infisical (Rodrigo)
- #34 — Credenciais Meta/Google Ads no n8n (Rodrigo + Igor)

**Handoff completo:** `_internal/handoff-2026-04-17.md`
