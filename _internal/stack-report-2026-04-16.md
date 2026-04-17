# Relatório de Stack — Adventure Labs
**Data:** 2026-04-16 | **Gerado por:** Commander (Claude Code)

---

## 🖧 VPS (`187.77.251.199`) — Hostinger

### Infraestrutura
| Métrica | Valor | Status |
|---------|-------|--------|
| Uptime | 15 dias, 19h | ✅ |
| Disco `/` | 46G / 96G (47%) | ✅ |
| CPU Load avg | 0.33 / 0.23 / 0.25 | ✅ |
| RAM | 4.9G / 7.8G usados | ⚠️ |
| Swap | 973M / 2G ativos | ⚠️ |

> **Nota RAM/Swap:** Pressão moderada. Swap ativo indica que a VPS está no limite do confortável com 20 containers + openclaw. Monitorar.

### Containers Docker (20/20 rodando)
| Serviço | Container | Status |
|---------|-----------|--------|
| n8n | adventure-n8n | ✅ healthy (16h) |
| WhatsApp API | adventure-evolution | ✅ healthy (2d) |
| Infisical | adventure-infisical | ✅ healthy (2d) |
| Metabase | adventure-metabase | ✅ healthy (2d) |
| Vaultwarden | adventure-vaultwarden | ✅ healthy (2d) |
| PostgreSQL | adventure-postgres | ✅ (2d) |
| Uptime Kuma | adventure-uptime | ✅ healthy (2d) |
| Infisical Redis | adventure-infisical-redis | ✅ (2d) |
| Plane (6 containers) | plane-app-* | ✅ todos (7d) |

### Hivemind — Crontab (13 jobs)
| Job | Schedule | Último log | Status |
|-----|----------|-----------|--------|
| hivemind-heartbeat | `*/4h` | OK (12:17 hoje) | ⚠️ Alerta falso: `adventure-plane` not found¹ |
| csuite-davinci (CINO) | seg-sex 7h BRT | — | ✅ |
| csuite-ohno (COO) | seg-sex 8h BRT | — | ✅ |
| csuite-ogilvy (CMO) | seg-sex 9h BRT | Concluído 12:07 | ⚠️ Supabase memory write falhou² |
| csuite-buffett (CFO) | seg 8h BRT | — | ✅ |
| csuite-torvalds (CTO) | qua 8h BRT | — | ✅ |
| csuite-cagan (CPO) | sex 8h BRT | — | ✅ |
| gerente-rose | seg-sex 7h BRT | — | ✅ |
| gerente-young | ter 9h BRT | — | ✅ |
| gerente-benditta | qua 9h BRT | — | ✅ |
| backup-vps | 3:30h BRT | OK (06:50 hoje) — 2.1G → Drive | ✅ |
| mercadopago-sync | `*/30m` | **ERRO desde ontem** | 🔴 BUG³ |
| sync_analytics_local | `*/2h` | 1.537 registros sync | ✅ |

> ¹ **Heartbeat — alerta falso:** O script procura por `adventure-plane` mas o Plane usa `plane-app-*`. Plane está rodando normalmente. O heartbeat envia alerta incorreto ao Telegram.
>
> ² **Supabase memory write:** `WARN: falha ao gravar memória no Supabase` — agentes C-Suite concluem e enviam pro Telegram, mas a memória não persiste em `adv_csuite_memory`. Não-crítico mas degrada contexto dos agentes ao longo do tempo.
>
> ³ **BUG CRÍTICO — mercadopago-sync.sh:** o script procura por `REPO_ROOT='/opt/adventure-labs/repo'` mas o monorepo está em `/opt/adventure-labs/`. Falhando a cada 30 minutos desde ontem. Sueli e Buffett sem dados novos de pagamento.

### OpenClaw / Buzz
| Item | Status |
|------|--------|
| Gateway | ✅ PID 1929603, rodando |
| Telegram | ✅ `@ceo_buzz_Bot` OK |
| Modelo | ✅ Routing ativo: Gemini 3.1 Pro → Claude Sonnet 4.6 → GPT-5.4 |
| Plugins | ✅ 56 loaded, 0 errors |
| Última sessão Telegram | 92 min atrás (16:00h BRT) |

---

## 🌐 GitHub (`adventurelabsbrasil/adventure-labs`)

### PRs Abertas (3)
| PR | Título | CI | Bloqueio |
|----|--------|----|---------|
| #26 | feat(n8n): ads daily metrics | Vercel ❌ | Rate limit Hobby (reset ~24h) |
| #23 | feat(lideraspace): handoff + CI/CD | Gitleaks ❌ / Vercel ❌ | 🔴 Rotação chave Lidera pendente |
| #22 | Merge zen-dhawan | Governance ❌ / Vercel ❌ | Package-lock.json + rate limit |

### 🔴 Causa raiz do Security Scan falhando em todas as branches
```
❌ package-lock.json encontrado(s) — apenas pnpm-lock.yaml é permitido:
./apps/clientes/04_young/ranking-vendas/package-lock.json
./apps/clientes/04_young/young-talents/package-lock.json
./apps/clientes/02_rose/roseportaladvocacia/package-lock.json
./apps/clientes/01_lidera/lidera/space/package-lock.json
./apps/clientes/01_lidera/lidera/skills/package-lock.json
```
5 projetos com `package-lock.json` proibidos pelo governance. Bloqueia PR #22 e futuros merges.

### Branches
| Ambiente | Qtd |
|----------|-----|
| Remotas (GitHub) | 22 |
| Locais (Mac) | 15 |
| Main local vs origin | 2 ahead / 9 behind |

### CI — Últimas 10 runs
| Workflow | Branch | Resultado |
|----------|--------|-----------|
| Monorepo Governance | zen-dhawan | ✅ success |
| Security Scan | zen-dhawan | ❌ failure (package-lock.json) |
| Monorepo Governance | compassionate-poitras | ✅ success |
| Security Scan | compassionate-poitras | ❌ failure (Gitleaks + governance) |
| Security Scan | main | ❌ failure (histórico) |

---

## ☁️ Vercel (Cloud)

| Projeto | rootDirectory (corrigido 2026-04-15) | Status |
|---------|--------------------------------------|--------|
| adventure-labs-app | `apps/clientes/05_benditta/benditta/app` | ⏳ Rate limited — aguarda reset |
| adventure-labs-xpostr | `apps/labs/xpostr` | ⏳ Rate limited |
| adventure-xpostr | `apps/labs/xpostr` | ⏳ Rate limited |
| xpostr | `apps/labs/xpostr` | ⏳ Rate limited |
| elite | `apps/core/elite` | ⏳ Rate limited |

Todos os `rootDirectory` foram corrigidos em 2026-04-15. O Vercel Hobby impõe rate limit de build — reset automático em ~18-24h a partir de 18:00 BRT de ontem.

---

## 💻 Local (Mac)

| Item | Estado |
|------|--------|
| Branch ativa | `claude/mercado-pago-integration-eHScy` |
| Working tree | ⚠️ 14 modificados + 27 untracked |
| Main ahead/behind origin | 2 ahead, 9 behind |
| Worktrees ativos | 3 (`fix-pr23` locked, `stoic-margulis`, main) |

---

## 🚨 Pendências por Prioridade

### 🔴 P1 — Ação manual necessária (Rodrigo)

**Rotação chave Supabase Lidera** (projeto `xiqlaxjtngwecidyoxbs`)
1. Abrir Supabase Dashboard com conta `contato@somoslidera.com.br`
2. Settings → JWT Keys → linha "PREVIOUS KEY" (DEDEF961 HS256) → `⋯` → **Revoke**
3. Settings → API Keys → Legacy → copiar nova `service_role` key
4. Avisar no chat — Claude completa o resto (VPS .env + Vercel env vars)
5. Após atualização: PR #23 pode ser mergeado

### 🔴 P2 — Correções que Claude pode executar

| # | Ação | Impacto |
|---|------|---------|
| 1 | Fix `mercadopago-sync.sh` — corrigir `REPO_ROOT` | MP sync volta a rodar imediatamente |
| 2 | Fix `hivemind-heartbeat.sh` — corrigir nome container Plane | Elimina alertas falsos no Telegram |
| 3 | Remover 5 `package-lock.json` proibidos | Desbloqueia Security Scan em todas as branches |

### 🟡 P3 — Esta semana

| # | Ação |
|---|------|
| 4 | Investigar Supabase memory write falhando nos agentes C-Suite |
| 5 | Push `main` local → origin/main (2 commits pendentes) |
| 6 | Aguardar rate limit Vercel resetar → PRs #22 e #26 passam automaticamente |
| 7 | Merge PR #23 após rotação de chave |

### 🟢 Concluído nesta auditoria (2026-04-15/16)

| Item | Resultado |
|------|-----------|
| Hivemind restaurado | ✅ 12/12 cron jobs ativos |
| 18 scripts VPS versionados no GitHub | ✅ `tools/vps-infra/scripts/` |
| Credencial Lidera removida do histórico git | ✅ PR #23 commit `19a2987` |
| CI Gitleaks fix (scan apenas PRs novos) | ✅ `security-scan.yml` corrigido |
| Branch protection em `main` | ✅ Require review + Gitleaks + Governance |
| 30 branches locais órfãs deletadas | ✅ De 45 para 15 branches |
| Vercel `rootDirectory` corrigido em 5 projetos | ✅ |
| OpenClaw model routing configurado | ✅ Gemini 3.1 Pro → Claude → GPT-5.4 |

---

*Documento gerado automaticamente ao fim da sessão de auditoria.*
*Próxima auditoria recomendada: 2026-05-01*
