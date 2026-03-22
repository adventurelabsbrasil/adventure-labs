---
title: OS Registry — INDEX mestre
domain: conhecimento
tags: [registry, index, ssot]
updated: 2026-03-22
---

# OS Registry — INDEX mestre

**Uso:** humanos e agentes começam aqui para localizar artefatos. Secções podem estar em **stub** (só link); expandir em PRs.

---

## 0. Programa Adventure OS (entrada)

| Recurso | Caminho |
|---------|---------|
| Plano resumido (repo) | [`docs/PLANO_ADVENTURE_OS_UNIFICADO.md`](../../../docs/PLANO_ADVENTURE_OS_UNIFICADO.md) |
| Plano completo (Cursor) | `.cursor/plans/monorepo_ssot_e_workos_05dfe44f.plan.md` (máquina local) |
| Manual humano | [`docs/MANUAL_HUMANO_ADVENTURE_OS.md`](../../../docs/MANUAL_HUMANO_ADVENTURE_OS.md) |
| Manual IA | [`docs/MANUAL_IA_ADVENTURE_OS.md`](../../../docs/MANUAL_IA_ADVENTURE_OS.md) |
| Protocolo Grove | [`protocolo-grove-roteamento.md`](../protocolo-grove-roteamento.md) |
| Este registry | [`README.md`](README.md) |

---

## 1. Governança ACORE

| Artefato | Caminho |
|----------|---------|
| Constituição (stack) | [`ACORE_CONSTITUTION.md`](../../../ACORE_CONSTITUTION.md) |
| Roadmap fases 0–5 | [`docs/ACORE_ROADMAP.md`](../../../docs/ACORE_ROADMAP.md) |
| Backlog técnico | [`docs/BACKLOG.md`](../../../docs/BACKLOG.md) |
| Session log | [`docs/ACORE_SESSION_LOG.md`](../../../docs/ACORE_SESSION_LOG.md) |

---

## 2. Política wiki × knowledge × docs × COLEÇÃO

**Regra:** uma **fonte canônica por tipo**; wiki e `COLEÇÃO` são **navegação ou resumo**, não lugar de cadastrar MCP/skill novo pela primeira vez.

| Superfície | Papel | Caminho |
|------------|-------|---------|
| **knowledge/** | SSOT narrativa / taxonomia 00–99 | [`knowledge/README.md`](../../README.md) |
| **docs/** | Runbooks, ADRs, deploy, guias técnicos | [`docs/`](../../../docs/) |
| **wiki/** | Condensado + onboarding navegável | [`wiki/Home.md`](../../../wiki/Home.md), [`wiki/README.md`](../../../wiki/README.md) (mapa + backlog árvore) |
| **COLEÇÃO_DOCS_PARA_IA** | Compilado pesado; pode derivar drift | [`docs/COLEÇÃO_DOCS_PARA_IA.md`](../../../docs/COLEÇÃO_DOCS_PARA_IA.md) |
| **OS Registry** | Índice máquina-humano; **primeiro cadastro** de novo artefato | aqui |

**Anti-drift:** ao promover conteúdo novo, atualizar **este INDEX**; depois opcionalmente wiki/COLEÇÃO.

---

## 3. Rules, Cursor, AGENTS

| Recurso | Caminho |
|---------|---------|
| AGENTS.md | [`AGENTS.md`](../../../AGENTS.md) |
| .cursorrules (topologia monorepo) | [`.cursorrules`](../../../.cursorrules) |
| Regras Cursor | [`.cursor/rules/`](../../../.cursor/rules/) |
| Idioma pt-BR (prosa/docs) × inglês (código) | [`.cursor/rules/adventure-locale-pt-br.mdc`](../../../.cursor/rules/adventure-locale-pt-br.mdc) |
| Triagem braindump (Grove, Asana, BACKLOG) | [`.cursor/rules/adventure-braindump-triage.mdc`](../../../.cursor/rules/adventure-braindump-triage.mdc) |
| Security sensitives | [`.cursor/rules/security-sensitives.mdc`](../../../.cursor/rules/security-sensitives.mdc) |

---

## 4. Skills e agentes (Admin)

| Recurso | Caminho |
|---------|---------|
| Manual agentes/skills | [`manual-agentes-e-skills.md`](../manual-agentes-e-skills.md) |
| Arquitetura C-Suite | [`arquitetura-agentic-csuite-skills.md`](../arquitetura-agentic-csuite-skills.md) |
| Catálogo skills | [`apps/core/admin/agents/skills/README.md`](../../../apps/core/admin/agents/skills/README.md) |
| Pacotes agente | [`apps/core/admin/agents/`](../../../apps/core/admin/agents/) |
| Template agente | [`apps/core/admin/agents/_template_agent/`](../../../apps/core/admin/agents/_template_agent/) |

**Benchmark (Ogilvy/Cagan):** `benchmark_adventure`, `benchmark_clientes`, `benchmark_conteudo` — ver [`AGENTS.md`](../../../AGENTS.md).

---

## 5. WorkOS (Admin produto)

| Recurso | Caminho |
|---------|---------|
| Contexto WorkOS p/ agentes | [`workos-admin-contexto-agentes.md`](../workos-admin-contexto-agentes.md) |
| App Admin | [`apps/core/admin/`](../../../apps/core/admin/) |

*Tarefas internas / `adv_*`: dados em Supabase com RLS — não substituir migrations Git.*

---

## 6. Workflows n8n

| Recurso | Caminho |
|---------|---------|
| Pasta canónica JSON | [`workflows/n8n/`](../../../workflows/n8n/) |
| Plano n8n / automações | [`docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md`](../../../docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md) |
| Cursor workflows | [`docs/CURSOR_WORKFLOWS.md`](../../../docs/CURSOR_WORKFLOWS.md) |

---

## 7. MCP, CLI, comandos

| Recurso | Caminho |
|---------|---------|
| Config MCP (local, não commitar secrets) | [`.cursor/mcp.json`](../../../.cursor/mcp.json) |
| Doc MCP | [`docs/MCP_CONFIG.md`](../../../docs/MCP_CONFIG.md) |
| Scripts raiz / tools | [`tools/scripts/`](../../../tools/scripts/), [`tools/`](../../../tools/) |
| pnpm workspaces | [`pnpm-workspace.yaml`](../../../pnpm-workspace.yaml) |
| Typecheck/lint/test monorepo | `./tools/scripts/typecheck-workspaces.sh`, `lint-workspaces.sh`, `test-workspaces.sh` |

---

## 8. Apps, stack, workspaces

| Área | Caminho | Notas |
|------|---------|--------|
| Core | [`apps/core/`](../../../apps/core/) | admin, adventure, elite (submodules) |
| Labs | [`apps/labs/`](../../../apps/labs/) | experimentos |
| Clientes (workspace) | [`apps/clientes/`](../../../apps/clientes/) | apps `@cliente/*` no monorepo |
| Packages | [`packages/`](../../../packages/) | `@adventure/*` |
| Plano monorepo | [`PLANO_MONOREPO_ADVENTURE_LABS.md`](../../../PLANO_MONOREPO_ADVENTURE_LABS.md) |
| Mapa êxodo | [`docs/MAPA_MONOREPO_EXODO.md`](../../../docs/MAPA_MONOREPO_EXODO.md) |

### 8.1 Portfólio produto (visão → repo)

Mapa **aspiracional** (estratégia / braindump) → onde o código está hoje. Renomeações: RFC ao CTO + atualizar esta tabela.

| Visão (nome) | Onde no monorepo | Notas |
|--------------|------------------|-------|
| WorkOS / Admin (omni interno) | [`apps/core/admin/`](../../../apps/core/admin/) | `adv_*`, C-Suite, multitenant |
| Adventure Sales (CRM) | `apps/core/adventure` (submodule) | Produto comercial; detalhe no Roadmap |
| Adventure Talents (ATS) | App: [`apps/clientes/young-talents/plataforma/`](../../../apps/clientes/young-talents/plataforma/) · espelho: [`clients/04_young/young-talents/`](../../../clients/04_young/young-talents/) | **Produto interno** Adventure (ativo comercializável); SSOT código no monorepo — [`docs/YOUNG_TALENTS_PRODUTO_INTERNO.md`](../../../docs/YOUNG_TALENTS_PRODUTO_INTERNO.md), [`docs/young-talents/CHANGELOG.md`](../../../docs/young-talents/CHANGELOG.md) |
| Adventure Compass (dashboards mkt) | *roadmap / a definir* | **stub** — não confundir com módulos atuais do Admin |
| Programa ELITE | `apps/core/elite` (submodule) | Produto interno |

---

## 9. `clients/` × `apps/clientes/` (decisão canónica)

| Destino | Quando usar |
|---------|-------------|
| **`clients/NN_nome/`** | Repositório **Git separado** (submodule): projeto do cliente com histórico próprio. |
| **`apps/clientes/nome-app/`** | App **dentro do workspace pnpm** sem repo próprio; entrega versionada no monorepo. |
| **Admin core** | **Não** importa código-fonte de `apps/clientes/` — só `packages/*` partilhado ([`.cursorrules`](../../../.cursorrules)). |

Detalhe: [`MANUAL_TAXONOMIA_REPOSITORIO.md` §4.3](../../00_GESTAO_CORPORATIVA/MANUAL_TAXONOMIA_REPOSITORIO.md).

**Crosswalk Google Drive `04_PROJETOS_DE_CLIENTES` ↔ pastas `clients/`** — a ordem numérica **do Drive não segue** a ordem do monorepo:

| Prefixo típico no Drive | Pasta no Git (`clients/`) |
|-------------------------|---------------------------|
| `01_YOUNG` | `04_young` |
| `02_LIDERA` | `01_lidera` |
| `03_ROSE` | `02_rose` |
| `04_SPEED` | `03_speed` |
| `05_BENDITTA` | `05_benditta` |
| `06_ALTEMIR COSTA` | **Sem pasta em `clients/`** — só Drive / contrato comercial; *não* tratar como submodule no monorepo até existir decisão explícita |
| `07_CAPCLEAR` | `06_capclear` |

Antes de scripts ou agentes cruzarem pastas: confirmar nomes atuais no Drive. Processo: [`fluxo-drive-para-contexto.md`](../../00_GESTAO_CORPORATIVA/processos/fluxo-drive-para-contexto.md).

- **ADR-0002** (norma formal desta secção): [`0002-clients-submodule-vs-apps-clientes-workspace.md`](../../../docs/adr/0002-clients-submodule-vs-apps-clientes-workspace.md)

---

## 10. Clientes / tenants (procedimento)

- Mapa humano: [`clients/`](../../../clients/) + README por pasta cliente.
- **`tenant_id` / RLS:** documentar **procedimento** nos runbooks do produto (ex. [`wiki/Young-Talents-ATS-Seguranca.md`](../../../wiki/Young-Talents-ATS-Seguranca.md)); **nunca** valores reais neste INDEX.

---

## 11. Database, RLS, migrations

| Recurso | Caminho |
|---------|---------|
| Migrations raiz Supabase | [`supabase/migrations/`](../../../supabase/migrations/) |
| Migrations por cliente | ex.: `clients/.../supabase/migrations/` — ver repo do cliente |
| Git / submodules | [`docs/FASE_6_GIT_E_REPOSITORIO.md`](../../../docs/FASE_6_GIT_E_REPOSITORIO.md) |
| Auditoria secrets | [`scripts/audit-secrets.sh`](../../../scripts/audit-secrets.sh) |
| Infisical | [`docs/INFISICAL_SYNC.md`](../../../docs/INFISICAL_SYNC.md) |

---

## 12. Segurança, LGPD, financeiro

| Tópico | Caminho |
|--------|---------|
| Baseline técnica | [security-sensitives.mdc](../../../.cursor/rules/security-sensitives.mdc), [`AGENTS.md`](../../../AGENTS.md) |
| Guideline LGPD + IA + repo | [`lgpd-dados-pessoais-repositorio-e-ia.md`](../../00_GESTAO_CORPORATIVA/guidelines/lgpd-dados-pessoais-repositorio-e-ia.md) |

**Financeiro:** extratos/OFX/conciliações **fora** do Git; integrações Omie/n8n/Sueli em [`workflows/n8n/`](../../../workflows/n8n/) com credenciais só env/Infisical; owner de **política** documental CFO (Buffett); superfície técnica CTO.

---

## 13. Storage (tiers)

| Tier | O quê | Exemplos |
|------|-------|----------|
| **1 — Git** | Código, migrations versionadas, md governança | `apps/`, `packages/`, `workflows/n8n/*.json`, `docs/`, `knowledge/` |
| **2 — WorkOS / Supabase** | Dados multitenant, estado app, `adv_*` | Postgres + RLS |
| **3 — Drive / Asana / email** | Binários, fila GTD, conversas | Google Drive, projeto **Tasks** Asana |
| **Vault** | Só ponteiros | [`_internal/vault/README.md`](../../../_internal/vault/README.md) |

Brainstorms: preferir [`docs/braindump/`](../../../docs/braindump/) ou `knowledge/99_arquivo/` com prefixo; não misturar com runbooks P0.

### 13.1 Google Drive (espelho e operação)

| Tópico | Nota |
|--------|------|
| **Taxonomia** | Pastas `00_`…`06_`, `99_` alinhadas a [`knowledge/README.md`](../../README.md); pasta operacional **`Adventure/`** complementa (benchmark, clientes, financeiro, mídia, planejamento, RH…). |
| **Acesso** | Tipicamente **rclone** com remote local (ex. `mydrive:`) — config **não** no Git. |
| **Sensível** | Contratos, financeiro, PII: **só Drive** com permissões por squad; registry e Git têm **ponteiros**, não cópias. |
| **Crosswalk clientes** | Ver §9 acima. |

---

## 14. GTD, Asana, BACKLOG, email

| Recurso | Caminho / nota |
|---------|----------------|
| **Asana — projeto Tasks** | [Abrir no Asana](https://app.asana.com/1/1213725900473628/project/1213744799182607) — captura e priorização; **não** SSOT técnica |
| **ADR-0001** (Asana × BACKLOG × `adv_tasks`) | [`0001-fonte-verdade-tarefas-asana-backlog-adv-tasks.md`](../../../docs/adr/0001-fonte-verdade-tarefas-asana-backlog-adv-tasks.md) |
| Backlog engenharia | [`docs/BACKLOG.md`](../../../docs/BACKLOG.md) |
| **contato@** política | Secção 14.1 abaixo |

### 14.1 Email contato@adventurelabs.com.br

1. Triagem humana ou pipeline ([`tools/xtractor`](../../../tools/xtractor)) — OAuth fora do Git.
2. Só **resumos** ou **links** entram em Git (`BACKLOG`, `knowledge/`, Asana).
3. **Não** colar corpo de email com PII em Markdown versionado.

---

## 15. Crons e schedules (agenda única)

| Doc | Caminho |
|-----|---------|
| **Agenda mestra (BRT)** | [`n8n-schedule.md`](../../00_GESTAO_CORPORATIVA/processos/n8n-schedule.md) |
| Plano n8n (referência) | [`docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md`](../../../docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md) |
| OpenClaw | [`openclaw/AGENTS.md`](../../../openclaw/AGENTS.md) |

**Segredo:** `CRON_SECRET` / headers admin — só Infisical; nunca no repo.

**Horário humano** (overlap squads): apontar wiki/RH quando existir; distinto de horário de **jobs**.

---

## 16. Deploys e infra

| Recurso | Caminho |
|---------|---------|
| Vercel + GitHub | [`docs/VERCEL_GITHUB_DEPLOY.md`](../../../docs/VERCEL_GITHUB_DEPLOY.md) |
| ACORE Fase 4 (VPS/Coolify) | [`docs/ACORE_ROADMAP.md`](../../../docs/ACORE_ROADMAP.md) |

---

## 17. Ambiente local, devices, browser, servidores

| Recurso | Caminho |
|---------|---------|
| Checklist ambiente (stub) | [`ambiente-dev-adventure-os.md`](../ambiente-dev-adventure-os.md) |

*Sem números de série ou segredos; alinhar a Fase 4 ACORE para VPS.*

---

## 18. Reports e relatórios tech

| Padrão | Caminho |
|--------|---------|
| Relatórios versionados | `knowledge/06_CONHECIMENTO/relatorio-tech-*.md` |
| Coleção / referência IA | [`referencia-coleção-docs-para-ia.md`](../referencia-coleção-docs-para-ia.md) |

Distinguir relatório **Git** vs artefacto **gerado** (DB/PDF no Drive).

---

## 19. Braindump (não SSOT)

| Recurso | Uso |
|---------|-----|
| Company Brain Dump | [`docs/braindump/Company Brain Dump .md`](../../../docs/braindump/Company%20Brain%20Dump%20.md) — **esboço**; promover para `knowledge/` / wiki / este INDEX *(ficheiro com espaços no nome)* |

---

## 20. Células martech (stub)

| Célula | Owner C-Level | Autonomia (alvo) |
|--------|---------------|------------------|
| Performance / paid media | CMO + ops | Alta; gate humano em orçamento/campanha |
| Conteúdo / editorial | CMO | Rascunho auto; publicação com revisão |
| Marketing ops / automação | COO | Runbooks Git; mudanças prod via PR |
| Analytics / BI | CMO / dados | Leitura/alertas; escrita mínima |
| CRM / lifecycle | CPO | RLS rigoroso; auditoria |
| Stack martech / SaaS | CMO / CFO | Pesquisa; compra humana |

---

## 21. Taxonomia expandida de dimensões

| Recurso | Caminho |
|---------|---------|
| Matriz famílias × ancoragem | [`dimensoes-adventure-os.md`](../dimensoes-adventure-os.md) |

---

## 22. Integrações de projeto / canais / bots

- Pipelines tipo Asana → Canva / TikTok: documentar em workflow ou skill quando existir; linkar aqui.
- Superfície: WhatsApp/Telegram/GChat — [`workflows/n8n/`](../../../workflows/n8n/), OpenClaw, Evolution (VPS).

---

## 23. Observabilidade (stub)

- Vercel logs, Railway, Supabase logs — runbooks em `docs/` quando existirem; owner CTO.

---

## 24. ADRs, incident response (recomendado)

| Recurso | Caminho |
|---------|---------|
| Pasta ADR + formato | [`docs/adr/README.md`](../../../docs/adr/README.md) |
| Alternativa | `knowledge/06_CONHECIMENTO/adr/` — só se a decisão for puramente de conhecimento |

- **Incident response:** runbook VPS/API em `docs/` — linkar aqui quando existir.

---

## 25. Identidade e cultura

| Recurso | Caminho |
|---------|---------|
| IDENTITY (repo) | [`docs/IDENTITY.md`](../../../docs/IDENTITY.md) |

---

## 26. Manifests fase 2

| Recurso | Caminho |
|---------|---------|
| README manifests | [`manifests/README.md`](manifests/README.md) |

---

*Manutenção: cada PR que adiciona artefato rastreável deve tocar secção relevante deste INDEX.*
