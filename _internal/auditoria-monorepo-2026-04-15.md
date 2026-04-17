# Auditoria Monorepo Adventure Labs
**Data:** 2026-04-15 | **Auditado por:** Claude Code  
**Escopo:** Local × GitHub × VPS (187.77.251.199)

---

## Executive Summary

O monorepo Adventure Labs opera em **3 ambientes desconectados** sem sincronização formal. O resultado é drift silencioso em todas as direções: código rodando em produção sem versionamento, cron jobs ausentes apesar de documentados, credenciais hardcoded em scripts críticos, e CI de segurança completamente morto. A infraestrutura funciona — mas sobre areia movediça.

**Health Score Geral: 2.5/10**

| Ambiente | Versão/Estado | Sync com GitHub | Credenciais seguras |
|----------|--------------|----------------|-------------------|
| GitHub (`main`) | `8ec1763` (2026-04-14) | — | ❌ CI falha (15+ runs) |
| Local (`main`) | 2 commits ahead + dirty | ❌ Push pendente | ⚠️ |
| VPS (`/opt/adventure-labs`) | Arquivos Apr 15 | ❌ NÃO é git repo | ❌ 4 scripts com credenciais hardcoded |

---

## 1. ESTADO LOCAL

**Diretório:** `/Users/ribasrodrigo91/Documents/GitHub/01_ADVENTURE_LABS`  
**Branch Atual:** `claude/mercado-pago-integration-eHScy`

### 1.1 Branches

| Métrica | Valor |
|---------|-------|
| Branches locais totais | **45** |
| Com upstream configurado | **8** (17%) |
| Branches órfãs (sem tracking) | **37** (83%) |
| Branches com código não mergeado | **8** |
| Tags semânticas | **0** |

**Branches críticas:**

| Branch | Posição | Situação |
|--------|---------|---------|
| `claude/setup-local-ai-brain-KbNZ4` | 1 ahead, 0 behind | **MERGE-READY** (fast-forward segura) |
| `claude/compassionate-poitras` | 10 ahead, 37 behind | Código não integrado há semanas |
| `railway-openclaw-split` | 1 ahead, **219 behind** | Provavelmente abandonada |
| 3 branches (elegant-spence, nice-nobel, wizardly-swartz) | 0 ahead, 51+ behind | Candidatas para deleção |

**Divergência main local:**
- Local `main`: **2 commits ahead de `origin/main`** — push não realizado
- Commits pendentes: handoff do protocolo /handoff + docs conversoes GTM

### 1.2 Working Tree

**14 arquivos modificados não staged:**

| Arquivo | Status | Observação |
|---------|--------|-----------|
| `.claude/memory/MEMORY.md` | Modified | Memory do Claude em estado sujo |
| `openclaw/MEMORY.md` | Modified | SSOT do Buzz diverge do VPS |
| `.cursor/mcp.json` | Modified | Config MCP alterada localmente |
| `apps/core/admin` | Submodule diverge | Branch remota `cursor/critical-bug-inspection-df17` |
| `apps/core/adventure` | Submodule diverge | Novos commits no heads/main |
| `apps/clientes/01_lidera/lidera/skills/public/*.{svg,png}` | **Deleted** (4 arquivos) | Assets deletados sem commit |
| `apps/clientes/05_benditta/README.md` | Modified | |
| `clients/02_rose/README.md` | Modified | |
| `clients/03_young/README.md` | Modified | |
| `supabase/.temp/cli-latest` | Modified | |

**27 arquivos/diretórios untracked notáveis:**
- `apps/clientes/01_lidera/lidera-space/` — submodule checkout pendente
- `apps/clientes/04_young/{docs/, elite/, meta-ads/}` — WIP não rastreado
- `apps/clientes/05_benditta/{benditta/, benditta-lp/}` — builds WIP
- `_internal/handoff-*.md` — handoffs recentes não commitados
- `.adventure_brain/` — brain local sem versão
- `knowledge/STACK_ADVENTURE_LABS.md` + `knowledge/STACK_ADVENTURE_LABS 2.md` — arquivo duplicado

### 1.3 Worktrees e Submodules

**Worktrees:**
- 5 ativos (cool-lewin, ecstatic-beaver, nice-wright, stoic-margulis + atual)
- **1 quebrado**: `serene-raman` → `"prunable gitdir file points to non-existent location"`

**Submodules com divergência:**
- `apps/core/admin` — HEAD aponta para branch remota diferente da esperada
- `apps/core/adventure` — commits locais não registrados no monorepo pai

**Stash:**
- 1 stash obsoleto: WIP on `main: a03b858` (commit antigo, possivelmente órfão)

---

## 2. ESTADO GITHUB

**Repositório:** `adventurelabsbrasil/adventure-labs`  
**Commit HEAD em main:** `8ec1763` (2026-04-14 14:54 UTC)

### 2.1 PRs Abertas — BLOQUEADAS

| PR | Título | Dias aberta | Problema |
|----|--------|-------------|---------|
| **#26** | feat(n8n): ads daily metrics ingestion | 1 | 5 Vercel FAILURES |
| **#23** | feat(lideraspace): handoff final + CI/CD | **6 dias** | **Gitleaks FAIL + 5 Vercel FAILURES + Security FAIL** |
| **#22** | Merge claude/zen-dhawan | **6 dias** | Governance FAIL + 5 Vercel FAILURES |

### 2.2 CI/CD — ESTADO CRÍTICO

| Workflow | Status | Tendência |
|---------|--------|----------|
| Security Scan (Gitleaks + GitGuardian) | ❌ **100% failure** | 15+ runs consecutivos falhando |
| Monorepo Governance | ⚠️ Falha ocasional | Falha em PRs #22 e #23 |
| Wiki Validation | ✅ Passando | — |

**Branch `main` não tem proteção configurada** — push direto permitido sem review.

### 2.3 Branches Remotas

| Branch | Última atividade | Status |
|--------|-----------------|--------|
| `main` | 2026-04-14 | ✅ |
| `claude/mercado-pago-integration-eHScy` | 2026-04-14 | ✅ Atual |
| `claude/setup-local-ai-brain-KbNZ4` | 2026-04-14 | ✅ Merge-ready |
| `claude/migrate-looker-supabase-1DHBz` | 2026-04-14 | ✅ Recente |
| `claude/automate-openclaw-login-j8CYA` | 2026-04-14 | ✅ Recente |
| `buzz/stack-glossary` | 2026-04-08 | ⚠️ Sem PR, Buzz criou diretamente |
| `claude/zen-dhawan` | 2026-04-07 | ⚠️ PR #22 bloqueada |
| `claude/benditta-meta-ads-campaign-cqkbW` | Data inválida | ❌ OBSOLETA — deletar |
| `claude/hardcore-goldberg` | 2026-04-01 | ❌ Merged + obsoleta |

### 2.4 Issues Abertas (11 total)

Todas as 11 issues abertas são do backlog Benditta (criadas 2026-03-19). Sem issues operacionais recentes.

### 2.5 Releases

**0 releases publicadas.** Sem versionamento semântico.

---

## 3. ESTADO VPS

**IP:** 187.77.251.199 | **OS:** Ubuntu | **Disco:** 43GB/96GB (45%) usados

### 3.1 Containers Docker — TODOS SAUDÁVEIS

| Serviço | Container | Status | Uptime |
|---------|-----------|--------|--------|
| N8n | adventure-n8n | ✅ healthy | 11 horas |
| Evolution API | adventure-evolution | ✅ healthy | 26 horas |
| Infisical | adventure-infisical | ✅ healthy | 26 horas |
| Metabase | adventure-metabase | ✅ healthy | 26 horas |
| Vaultwarden | adventure-vaultwarden | ✅ healthy | 26 horas |
| Postgres | adventure-postgres | ✅ running | 26 horas |
| Uptime Kuma | adventure-uptime | ✅ healthy | 26 horas |
| Infisical Redis | adventure-infisical-redis | ✅ running | 26 horas |
| Plane (7 containers) | plane-app-* | ✅ running | **6 dias** |

**Total: 20 containers. Todos operacionais.**

### 3.2 Crontab — DISCREPÂNCIA CRÍTICA

**Crontab real da VPS (root):**
```
0 */2 * * * python3 /opt/adventure-labs/scripts/sync_analytics_local.py
```

**CLAUDE.md documenta 12 agentes cron — NENHUM ESTÁ CONFIGURADO.**

| Agente (CLAUDE.md) | Cron documentado | Status real |
|--------------------|-----------------|------------|
| hivemind-heartbeat | `17 */4 * * *` | ❌ **NÃO EXISTE NO CRONTAB** |
| csuite-ohno | `3 11 * * 1-5` | ❌ NÃO EXISTE |
| csuite-ogilvy | `7 12 * * 1-5` | ❌ NÃO EXISTE |
| csuite-buffett | `13 11 * * 1` | ❌ NÃO EXISTE |
| csuite-torvalds | `17 11 * * 3` | ❌ NÃO EXISTE |
| csuite-cagan | `23 11 * * 5` | ❌ NÃO EXISTE |
| csuite-davinci | `27 10 * * 1-5` | ❌ NÃO EXISTE |
| gerente-rose | `33 10 * * 1-5` | ❌ NÃO EXISTE |
| gerente-young | `11 12 * * 2` | ❌ NÃO EXISTE |
| gerente-benditta | `19 12 * * 3` | ❌ NÃO EXISTE |
| backup-vps | `30 6 * * *` | ❌ NÃO EXISTE |
| mercadopago-sync | `*/30 * * * *` | ❌ NÃO EXISTE |

> **⚠️ ALERTA MÁXIMO:** O "hivemind" descrito em CLAUDE.md **não está rodando**. Os scripts existem em `/opt/adventure-labs/scripts/` mas não estão agendados no crontab. O único job automático na VPS é o `sync_analytics_local.py` a cada 2 horas.

### 3.3 Scripts VPS vs GitHub

**Em `/opt/adventure-labs/scripts/` — 11 scripts, maioria fora do GitHub:**

| Script | VPS | GitHub | Credenciais hardcoded |
|--------|-----|--------|----------------------|
| `adventure-agent.sh` | ✅ 4676b (Apr 9) | ❌ NÃO | ⛔ Anthropic key + Telegram token + Supabase key |
| `adventure_ops.sh` | ✅ 3915b (Apr 8) | ❌ NÃO | Verificar |
| `backup-vps.sh` | ✅ 7546b (Apr 9) | ❌ NÃO | ⛔ Telegram token hardcoded |
| `hivemind-heartbeat.sh` | ✅ 2627b (Apr 9) | ❌ NÃO | ⛔ Telegram token hardcoded |
| `hivemind-vps.sh` | ✅ 3123b (Apr 9) | ❌ NÃO | Verificar |
| `infisical-sync.sh` | ✅ 2582b (Apr 8) | ❌ NÃO | Verificar |
| `infisical-token-renew.sh` | ✅ 4074b (Apr 8) | ❌ NÃO | Verificar |
| `fin-agent.py` | ✅ 17074b (Apr 15) | ❌ NÃO | ⛔ DB password + Anthropic key hardcoded |
| `restore-vps.sh` | ✅ 3048b (Apr 12) | ❌ NÃO | Verificar |
| `sync_analytics_local.py` | ✅ 4263b (Apr 15) | ❌ NÃO | Verificar |
| `_env_gen.py` | ✅ 1788b (Apr 8) | ❌ NÃO | Verificar |

**Em `/opt/adventure-labs/scripts/agents/` — 9 scripts, 7 fora do GitHub:**

| Script | VPS | GitHub | Credenciais |
|--------|-----|--------|------------|
| `csuite-davinci.sh` | ✅ 2940b (Apr 9) | ✅ `tools/vps-infra/scripts/agents/` | ✅ Limpo (usa dispatcher) |
| `csuite-buffett.sh` | ✅ 730b (Apr 9) | ❌ NÃO | ✅ Limpo |
| `csuite-cagan.sh` | ✅ 668b (Apr 9) | ❌ NÃO | ✅ Limpo |
| `csuite-ogilvy.sh` | ✅ 623b (Apr 9) | ❌ NÃO | ✅ Limpo |
| `csuite-ohno.sh` | ✅ 554b (Apr 9) | ❌ NÃO | ✅ Limpo |
| `csuite-torvalds.sh` | ✅ 938b (Apr 9) | ❌ NÃO | ✅ Limpo |
| `gerente-benditta.sh` | ✅ 567b (Apr 9) | ❌ NÃO | ✅ Limpo |
| `gerente-rose.sh` | ✅ 632b (Apr 9) | ❌ NÃO | ✅ Limpo |
| `gerente-young.sh` | ✅ 615b (Apr 9) | ❌ NÃO | ✅ Limpo |

**Em GitHub mas NÃO encontrado na VPS:**
- `mercadopago-sync.sh` (em `tools/vps-infra/scripts/agents/`) → **não deployado na VPS**

### 3.4 OpenClaw Workspace

**Path VPS:** `/root/.openclaw/workspace/`

| Item | Estado |
|------|--------|
| É um git repo | ✅ Sim (commit: `690954b`) |
| MEMORY.md | Apr 15 13:13 — **MAS RECENTE QUE GITHUB** |
| SOUL.md | Apr 10 18:47 |
| AGENTS.md | Apr 9 17:20 |
| `01_ADVENTURE_LABS/` | Clone completo do monorepo dentro do workspace |
| `adventure-labs/` | Segunda cópia do monorepo |
| Staged não commitado | 20+ arquivos financeiros (DRE, extrato, OFX) |

**Divergência OpenClaw:**
- VPS `MEMORY.md` = Apr 15, 13:13 (mais recente)
- GitHub `openclaw/MEMORY.md` = modificado localmente mas não commitado

**Problema estrutural:** o workspace do Buzz (`/root/.openclaw/workspace/`) é um git repo **separado** do monorepo, com clone duplicado (`01_ADVENTURE_LABS/` e `adventure-labs/`) e arquivos financeiros sensíveis não versionados (extratos bancários, OFX, DRE).

### 3.5 Docker Compose

- VPS: `docker-compose.yml` atualizado **Apr 15** (mais recente que repo)
- Repo: `tools/vps-infra/docker-compose.yml` provavelmente desatualizado
- Serviços correspondentes: ✅ (n8n, metabase, postgres, redis, infisical, evolution, vaultwarden, uptime-kuma)
- Plane.so roda em docker compose separado (não no repo Adventure Labs)

---

## 4. INCONSISTÊNCIAS POR SEVERIDADE

### ⛔ CRÍTICO — Resolver esta semana

#### C1: Credenciais hardcoded em scripts VPS
Quatro scripts na VPS contêm chaves em texto puro:

| Script | Credencial exposta |
|--------|------------------|
| `adventure-agent.sh` | Anthropic API key (`sk-ant-api03-pKfX8c...`) + Telegram token + Supabase service key |
| `hivemind-heartbeat.sh` | Telegram bot token hardcoded |
| `backup-vps.sh` | Telegram bot token hardcoded |
| `fin-agent.py` | DB password (`AdVentureLabs25$`) + Anthropic API key |

**Ação:** Refatorar para usar `source /opt/adventure-labs/.env` (padrão já usado no `backup-vps.sh` mas inconsistente). Todas as chaves devem vir do `.env`, nunca hardcoded.

**Obs:** Esta é provavelmente a causa raiz das falhas do Gitleaks no GitHub — alguém tentou commitar esses scripts com credenciais expostas (PR #23).

#### C2: Os 12 agentes do hivemind NÃO estão agendados no crontab
CLAUDE.md descreve 12 agentes rodando automaticamente. **Nenhum dos 12 está configurado no crontab da VPS.** Os scripts existem, mas não são executados automaticamente. O hivemind como descrito **não existe em produção**.

**Ação:** Configurar os cron jobs listados no CLAUDE.md após verificar que cada script funciona. Usar `crontab -e` na VPS.

#### C3: 18 scripts VPS fora do controle de versão
Scripts críticos de produção existem apenas no servidor. Qualquer falha catastrófica da VPS resulta em perda total desses scripts.

**Ação:** Versionar no GitHub com credenciais substituídas por `${VARIAVEL}`.

#### C4: Security Scan CI com 100% falhas (15+ execuções)
O workflow de segurança do GitHub está morto. Nenhum scan de credenciais está funcionando nos merges.

**Ação:** Investigar o `.github/workflows/security-scan.yml`, corrigir a configuração do Gitleaks/GitGuardian.

---

### ⚠️ ALTO — Resolver este mês

#### A1: CLAUDE.md tem path errado para Young
Linha 33 (tabela de Clientes Ativos): `apps/clientes/03_young/` → deveria ser `apps/clientes/04_young/`

#### A2: `mercadopago-sync.sh` no GitHub mas NÃO na VPS
O script existe no repo (`tools/vps-infra/scripts/agents/`) mas não está deployado na VPS e não está no crontab. A integração Mercado Pago documentada no CLAUDE.md não está rodando.

#### A3: Main local 2 commits ahead de origin/main
Push pendente com 2 commits que deveriam estar no GitHub.

#### A4: Main sem branch protection no GitHub
Qualquer membro pode fazer push direto em main sem review ou CI passando.

#### A5: 3 PRs bloqueadas no GitHub
PR #22 (zen-dhawan, 6 dias), PR #23 (lideraspace, 6 dias com credencial exposta), PR #26 (n8n ads).

#### A6: OpenClaw MEMORY.md desincronizado
VPS tem versão mais recente (Apr 15). GitHub tem modificação local não commitada. Dois estados diferentes, nenhum é SSOT.

---

### 🟡 MÉDIO — Planejar nas próximas sprints

#### M1: 37 branches locais órfãs sem upstream
83% das branches locais não têm tracking configurado. Acumulam silenciosamente.

#### M2: Worktree `serene-raman` quebrada
`git worktree prune` resolve em segundos.

#### M3: OpenClaw workspace tem duplicação do monorepo
`/root/.openclaw/workspace/01_ADVENTURE_LABS/` e `adventure-labs/` são clones do monorepo. Ocupa espaço e cria confusão sobre qual é fonte de verdade.

#### M4: `clients/` vs `apps/clientes/` — duplicação de estrutura
Dois locais para contexto de clientes. `clients/` parece estar sendo abandonado (READMEs apenas).

#### M5: Stash obsoleto no local
`stash@{0}` referencia commit antigo de main. Provavelmente sem valor.

#### M6: `docker-compose.yml` VPS mais recente que repo
Arquivo atualizado Apr 15 na VPS mas o repo pode estar desatualizado.

#### M7: Sem versionamento semântico
0 tags/releases no GitHub. Impossível rastrear qual versão está em produção.

---

## 5. DIFF COMPARATIVO ENTRE AMBIENTES

### Sincronização de Código

```
GitHub main (8ec1763)
    │
    ├── + 2 commits ──→ Local main (116f7b5) ←─ [push pendente]
    │
    └── VPS /opt/adventure-labs/
            ├── NÃO é git repo
            ├── 18 scripts exclusivos (não no GitHub)
            ├── docker-compose.yml mais recente (Apr 15)
            └── sync_analytics_local.py mais recente (Apr 15)

OpenClaw (VPS /root/.openclaw/workspace/)
    ├── Git repo próprio (commit: 690954b)
    ├── MEMORY.md mais recente (Apr 15 13:13) vs GitHub (local modificado)
    └── 01_ADVENTURE_LABS/ → clone duplicado do monorepo
```

### Scripts por Ambiente

```
VPS agents/           GitHub agents/         Crontab VPS
csuite-buffett.sh     ❌                      ❌ não agendado
csuite-cagan.sh       ❌                      ❌ não agendado
csuite-davinci.sh     ✅ (sincronizado)       ❌ não agendado
csuite-ogilvy.sh      ❌                      ❌ não agendado
csuite-ohno.sh        ❌                      ❌ não agendado
csuite-torvalds.sh    ❌                      ❌ não agendado
gerente-benditta.sh   ❌                      ❌ não agendado
gerente-rose.sh       ❌                      ❌ não agendado
gerente-young.sh      ❌                      ❌ não agendado
❌ (não existe)       mercadopago-sync.sh     ❌ não agendado
```

---

## 6. PLANO DE REMEDIAÇÃO

### Prioridade 1 — Imediato (hoje/amanhã)

1. **Revogar credenciais expostas**
   - Rotacionar Anthropic API key usada nos scripts VPS
   - Rotacionar Telegram bot token se comprometido
   - Verificar se DB password `AdVentureLabs25$` foi exposta em commits históricos

2. **Configurar crontab VPS** (os 12 agentes)
   ```bash
   crontab -e  # na VPS
   ```
   Adicionar os 12 jobs conforme CLAUDE.md (após validar que scripts funcionam).

3. **Corrigir CLAUDE.md**: `03_young` → `04_young`

### Prioridade 2 — Esta semana

4. **Versionar scripts VPS no GitHub** (com credenciais substituídas por `${VARIAVEL}`)
   - Criar template `adventure-agent.sh.template` com `${ANTHROPIC_KEY}`, `${TELEGRAM_TOKEN}`, etc.
   - Copiar todos para `tools/vps-infra/scripts/`

5. **Deploy `mercadopago-sync.sh` na VPS**
   ```bash
   scp tools/vps-infra/scripts/agents/mercadopago-sync.sh root@187.77.251.199:/opt/adventure-labs/scripts/agents/
   chmod +x /opt/adventure-labs/scripts/agents/mercadopago-sync.sh
   # + adicionar ao crontab: */30 * * * *
   ```

6. **Resolver PRs bloqueadas:**
   - PR #23: remover credenciais do histórico de commits, rebase
   - PR #22: investigar governance failure
   - PR #26: verificar Vercel deployment failures

7. **`git worktree prune`** — remover worktree quebrada

### Prioridade 3 — Próximas sprints

8. **Implementar sync automático** GitHub → VPS via GitHub Actions (SSH deploy)
9. **Configurar branch protection** em `main` (require 1 review + Security Scan passando)
10. **Definir SSOT do OpenClaw:** o workspace VPS ou `openclaw/` do repo?
11. **Limpeza de branches:** deletar 37 órfãs sem código relevante
12. **Criar primeira tag** `v0.1.0` após estabilizar

---

## 7. RESPOSTA À PERGUNTA ORIGINAL: "Em que versão estamos?"

| Ambiente | Versão Efetiva | Última mudança relevante |
|----------|---------------|------------------------|
| **GitHub `main`** | `8ec1763` | 2026-04-14: task Sueli conciliação |
| **Local `main`** | 2 commits à frente | Handoff GTM/Ads não pushado |
| **VPS produção** | Sem versão (não é git) | docker-compose.yml Apr 15 + scripts Apr 9 |
| **OpenClaw VPS** | `690954b` | 2026-04-14: fin-agent DRE Dino |

**Resposta curta:** Não existe "uma versão". Cada ambiente evoluiu independentemente. O mais próximo de uma versão de produção é o GitHub `main` `8ec1763`, mas a VPS roda código que nem existe no GitHub (18+ scripts exclusivos). O hivemind descrito no CLAUDE.md **não está operacional** — os scripts existem mas nenhum está agendado no crontab.

---

*Auditoria gerada automaticamente por Claude Code em 2026-04-15.*
*Dados coletados via: git CLI local, gh CLI (GitHub API), SSH na VPS (187.77.251.199).*
