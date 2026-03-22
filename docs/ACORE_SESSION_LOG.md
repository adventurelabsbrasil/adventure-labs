# ACORE — log de sessão (continuidade)

Registro operacional para handoff entre Human, CTO (Torvalds) e agentes. Atualizar ao fim de blocos grandes de trabalho.

---

## 2026-03-20 — Retoma plano (Adventure OS Fase 2)

### Feito nesta janela

| Tema | Resumo |
|------|--------|
| **Fase Adventure OS** | Confirmada **Fase 2 — Alinhamento** (Fase 1 base documental em grande parte feita); Fase 3 (execução n8n/crons novos) só com runbook + INDEX. |
| **Manual humano** | Nova secção *Rotina de chegada* (brain dump → Asana → BACKLOG → promote) em [`MANUAL_HUMANO_ADVENTURE_OS.md`](MANUAL_HUMANO_ADVENTURE_OS.md). |
| **Cursor** | Regra [`adventure-braindump-triage.mdc`](../.cursor/rules/adventure-braindump-triage.mdc) + referência no [`MANUAL_IA_ADVENTURE_OS.md`](MANUAL_IA_ADVENTURE_OS.md); entrada no [os-registry INDEX §3](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md). |
| **Plano unificado** | Bloco *Retomar no Cursor* (prompt copy-paste) em [`PLANO_ADVENTURE_OS_UNIFICADO.md`](PLANO_ADVENTURE_OS_UNIFICADO.md). |
| **Young P0 login** | `apps/clientes/young-talents/plataforma`: produção sem env Supabase → componente `SupabaseConfigMissing`; rotas `*` e `/candidate/*` com `RequireAuth` → `/login`; `LoginPage` com `safeReturnPath` + OAuth `redirectTo` alinhado; build `pnpm run build` OK. |
| **Young → produto interno** | ATS passa a ativo interno Adventure; SSOT monorepo; `docs/YOUNG_TALENTS_PRODUTO_INTERNO.md` + CHANGELOG; manuais humano/IA + INDEX; fluxo emergencial repo externo encerrado (rever ACL GitHub). |

### Próximos passos (human + agente)

| Tipo | Ação |
|------|------|
| **P0 sem VPS** | Validar Young Vercel + login; diagnóstico Rose Google Ads (envs Infisical); Legal no Asana (humano). |
| **Bloqueio infra** | P2 Hostinger VPS + Coolify + n8n estável 24h — só após contratar/preparar VPS (ACORE Fase 4). |
| **Fase 3 doc-first** | Antes de novo Schedule n8n: linha em INDEX + [`n8n-schedule.md`](../knowledge/00_GESTAO_CORPORATIVA/processos/n8n-schedule.md). |

### Onde paramos

- Retomada do programa **documentada** no repo; execução técnica dos P0 continua conforme [`BACKLOG.md`](BACKLOG.md).

---

## 2026-03-20 (noite)

### Feito nesta janela

| Tema | Resumo |
|------|--------|
| **Êxodo / taxonomia** | Apps canônicos em `apps/core/*`, labs em `apps/labs/*`, clientes em `apps/clientes/*`; script Infisical com `FOLDERS_MAP` + legado `apps/admin` / `apps/adventure`; scan resiliente (aviso se pasta ausente). |
| **Infisical** | Push em lote (`tools/scripts/infisical-push-env-local.sh`), filtro de chaves vazias, `infisical run` **só na raiz** (`pnpm admin:dev`, `young:dev`, etc.) com `--path`; doc `INFISICAL_SYNC.md`. |
| **Asana MCP** | Integração usada para backlog Rose, tarefas prioritárias, notas técnicas em `Consertar campanha Google Ads [Rose]`. |
| **Lucide / Admin** | `ContactRound` → `UserRound` em `nav-config.ts` (hydration); `lucide-react@latest`; limpeza `.next`. |
| **Google Ads** | Registro de Customer IDs: `docs/GOOGLE_ADS_CONTAS_REGISTRO.md`; mensagens de erro API orientam Infisical / `pnpm admin:dev`. |
| **Backlog / governança** | `docs/BACKLOG.md` preenchido; `scripts/check-deadlines.sh` (Bash 3.2). |

### Onde paramos

- **Admin** sobe com **`pnpm admin:dev`** na raiz (Infisical `--path=/admin`); Human reportou **~30 secrets** e dashboard em **http://localhost:3001** após ajustes (ícone + cache).
- **Monorepo** com submodule `apps/core/admin` e alterações em `pnpm-lock` alinhados a commits recentes.

### Pendências P0 / P1 (manhã seguinte e sequência)

| Item | Alvo | Notas |
|------|------|--------|
| **Teste Carla — Young Talents** | 2026-03-21 ~09:00 | Login pós-deploy Vercel; hotfix ~10 min se falhar. Ver [Verificação Young vs Vercel](#verificacao-young-talents-repo-vs-vercel) abaixo. |
| **Diagnóstico Rose — Google Ads (API)** | 2026-03-21 ~10:00 | Tarefa Asana `1213744799182618`; `GOOGLE_ADS_*` no Infisical; Customer ID Rose em `docs/GOOGLE_ADS_CONTAS_REGISTRO.md`. |
| **Hostinger VPS + Coolify** | 2026-03-21 ~14:00 | Tirar apps do MacBook; instalação Coolify (roadmap CTO). |

### Teste de sanidade (Martins)

**Pergunta:** *O deploy da Young Talents no Vercel já foi atualizado com o Supabase?*

**Resposta (Martins / registro técnico):**  
Não há como **confirmar o deploy** sem o painel Vercel (último build, commit, envs). Pelo **repositório** atual da plataforma (`apps/clientes/young-talents/plataforma`): auth é **Supabase** (`supabase.auth`, `VITE_SUPABASE_*`); **não** há Clerk no código; ver `CLERK_LEGACY.md`.  
Se a produção ainda quebrar login, hipóteses: deploy antigo, envs Vercel incompletas, ou redirect URL / RLS — **primeira ação:** comparar deploy com `main` do submodule e variáveis no Vercel.

### Verificação Young Talents (repo vs Vercel)

| Camada | Clerk (legado) | Supabase (atual no repo) |
|--------|----------------|---------------------------|
| **Código** | Não declarado (`CLERK_LEGACY.md`). | Sim: `src/supabase.js`, `App.jsx` (`getSession`, `onAuthStateChange`). |
| **Produção Vercel** | **Indeterminado daqui.** | Confirmar no dashboard: último deployment + `VITE_SUPABASE_URL` / `VITE_SUPABASE_ANON_KEY`. |

### Recado CTO (registro)

Roadmap humano sugerido para o dia seguinte: 09:00 café + teste Carla; 10:00 módulo Rose Google Ads; 14:00 Hostinger/Coolify.

---

## Como atualizar este arquivo

1. Copiar bloco `## YYYY-MM-DD`.
2. Preencher Feito / Onde paramos / Pendências.
3. Linkar `docs/BACKLOG.md` e tarefas Asana por GID quando existir.
