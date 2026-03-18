# Arquitetura híbrida — OpenClaw + Adventure Labs (oficial)

**Status:** 2026-03-17 — referência operacional após execução do plano híbrido.  
**Decisões registradas:** [OPENCLAW_HIBRIDO_DECISOES.md](./OPENCLAW_HIBRIDO_DECISOES.md) · **Metadados memória:** [ADV_CSUITE_MEMORY_METADATA.md](./ADV_CSUITE_MEMORY_METADATA.md) · **Auditoria tabelas:** [SUPABASE_ADV_CSUITE_AUDIT.md](./SUPABASE_ADV_CSUITE_AUDIT.md)

Este documento descreve a arquitetura para rodar o OpenClaw em modo **híbrido**:

- **Local** (MacBook): dev, filesystem do monorepo, Cursor.
- **Cloud** (Railway): 24/7, gateway, Zazu/n8n, sem acesso ao FS local.

Mantém:

- **Dados de negócio** em Supabase + Google Drive
- **Código** no monorepo + GitHub
- **Segurança:** Railway não enxerga o filesystem local do Mac

---

## 1. Diagrama de alto nível (texto)

> Frontend Admin (Vercel). Railway: n8n, Zazu worker, gateway OpenClaw.

```text
                          ┌───────────────────────────┐
                          │      Google Drive         │
                          │  - Second Brain           │
                          │  - Atividades diárias     │
                          └────────────┬──────────────┘
                                       │ (gog)
                 ┌─────────────────────▼─────────────────────┐
                 │                Supabase                   │
                 │  adv_csuite_memory, adv_founder_reports   │
                 │  adv_tasks, adv_ideias                    │
                 └────────────┬──────────────┬──────────────┘
                              │              │
         ┌────────────────────▼───┐      ┌───▼────────────────────┐
         │ OpenClaw LOCAL (Mac)   │      │ OpenClaw CLOUD (Railway) │
         │ FS monorepo + Cursor   │      │ 24/7, APIs / mensageria  │
         └────────────┬───────────┘      └──────────┬─────────────┘
                      │                             │
                      ▼                             ▼
            ┌──────────────────┐           ┌───────────────────────┐
            │ Founder / dev     │           │ n8n — C-Suite, Zazu   │
            └──────────────────┘           └──────────┬───────────────┘
                                                      │
                                                      ▼
                                            ┌─────────────────────┐
                                            │ Admin (Vercel)      │
                                            │ /relatorio,         │
                                            │ /csuite-diario      │
                                            └─────────────────────┘
```

---

## 2. Princípios de design

1. **Dados centralizados** — Memória C-Suite (`adv_csuite_memory`), relatórios founder (`adv_founder_reports`), tasks/ideias.
2. **Dual-write seletivo (Zazu, Andon)** — Zazu: POST `/api/csuite/founder-report` com `csuite_memory`. **Andon:** `POST /api/csuite/andon-asana-run` (cron, `x-admin-key`) busca Asana no servidor e grava **adv_founder_reports** + **adv_csuite_memory** (`source: ["asana"]`). Lara/outros podem permanecer só em founder_reports.
3. **Gateway cloud** — **Padrão:** template Railway [OpenClaw Complete Setup](https://railway.com/new/template/openclaw-complete-setup) + Volume `/data` — [tools/openclaw/RAILWAY.md](../tools/openclaw/RAILWAY.md). **Alternativa:** [tools/openclaw/openclaw-gateway-railway/](../tools/openclaw/openclaw-gateway-railway/README.md).
4. **Service role / OpenClaw** — Não expor `SUPABASE_SERVICE_ROLE_KEY` em tools do agente sem allowlist; preferir APIs Admin. Ver [SUPABASE_ROLES_MATRIZ_ACESSOS.md](./SUPABASE_ROLES_MATRIZ_ACESSOS.md) §2.1.1.
5. **Um gateway ativo por bot** — Telegram/WhatsApp: ou local ou cloud; ver [knowledge/00_GESTAO_CORPORATIVA/processos/openclaw-local-e-railway.md](../knowledge/00_GESTAO_CORPORATIVA/processos/openclaw-local-e-railway.md).

---

## 3. Implementação no repositório

| Item | Onde |
|------|------|
| POST founder-report + espelho memória | `apps/admin/src/app/api/csuite/founder-report/route.ts` |
| GET memória diária (JSON) | `apps/admin/src/app/api/csuite/daily-memory/route.ts` |
| UI memória diária | `/dashboard/csuite-diario` |
| Workflow Zazu (n8n) | `workflows/n8n/whatsapp_groups_agent/whatsapp-groups-daily-v1.json` |
| Andon Asana (API + n8n) | `apps/admin/.../api/csuite/andon-asana-run/route.ts` · `workflows/n8n/andon_asana/` |
| Grupos WhatsApp (env) | `apps/whatsapp-worker/.env.example` |
| Runner gateway opcional | `tools/openclaw/openclaw-gateway-railway/` |

**Republicar no n8n:** após pull, reimportar ou editar o workflow Zazu para incluir `csuite_memory` no body (já no JSON do repo).

---

## 4. Operação híbrida (local + cloud)

| Modo | Uso |
|------|-----|
| **Local** | Desenvolvimento, skills, docs no monorepo; mesmo tenant Adventure em escritas Supabase quando aplicável. |
| **Cloud** | Gateway 24/7; integrações n8n/Zazu; sem FS do Mac. |

**Consistência:** código → GitHub; dados estruturados → Supabase/Drive.

---

## 5. Checklist Railway (OpenClaw cloud)

- [ ] Template ou runner deployado; `PORT=8080`; Volume `/data`
- [ ] `GET /healthz` OK
- [ ] Domínio customizado (ex.: openclaw.adventurelabs.com.br), se desejado
- [ ] Apenas **um** processo com token do bot ativo (evitar conflito com gateway local)
