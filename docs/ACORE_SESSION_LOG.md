# ACORE — log de sessão (continuidade)

Registro operacional para handoff entre Human, CTO (Torvalds) e agentes. Atualizar ao fim de blocos grandes de trabalho.

---

## 2026-04-15 — Automação acesso OpenClaw Dashboard (Mac + iPhone, via Tailscale)

**Branch:** `claude/automate-openclaw-login-j8CYA`
**Módulo SSOT:** M08 (infra) + M05 (IA/agentes)
**Artefatos:** `scripts/buzz-dashboard.sh`, `scripts/vps-tailscale-setup.sh`, `docs/OPENCLAW_DASHBOARD_AUTOMATION.md`

### Problema original
Acesso manual ao dashboard OpenClaw levava ~2min e 5 passos: login Hostinger → terminal web → `openclaw dashboard` → copiar comando SSH → colar no Mac → copiar URL+token → abrir Chrome. Dependência 100% do MacBook. Sem acesso pelo iPhone.

### Feito
- **Mac:** comando `buzz` funcional (alias pra `buzz-dashboard.sh` em `~/bin/`). Cache de token em `~/.config/buzz/token` (chmod 600). Auto-detecta rota: direto via Tailscale > SSH tunnel fallback.
- **VPS:** Tailscale já estava instalado e os 3 nodes (Mac, iPhone, VPS) já estavam na mesma tailnet (`tailf7a1ad.ts.net`). Nenhuma instalação nova foi necessária — só configuração.
- **Gateway OpenClaw:** tentativa `bind=tailnet` via `openclaw.json` funcionou tecnicamente (porta abriu em `100.122.165.119:18789`), mas bloqueada pelo novo requisito de **secure context** da Control UI v2026.4.12. Revertido pra `bind=loopback` como estado estável.
- **Config:** `openclaw.json → gateway.controlUi.allowedOrigins` expandido com hostname+FQDN+IP da tailnet (mantidos para quando HTTPS estiver disponível).
- **Documentação:** `docs/OPENCLAW_DASHBOARD_AUTOMATION.md` consolidado com descobertas reais (ver seção "Execução 2026-04-15").

### Descobertas técnicas registradas
1. Flag `--bind` do OpenClaw aceita modo (`loopback|lan|tailnet|auto|custom`), não IP.
2. Token do dashboard é **persistente** — mora em `openclaw.json`, não rotaciona.
3. Control UI v2026.4.12 exige HTTPS ou localhost (secure context). `http://hostinger:18789` é bloqueado.
4. `tailscale up` via sessão SSH da tailnet recusa alterações; usar `tailscale set` em vez disso.
5. Sintaxe nova do `tailscale serve`: `tailscale serve --bg <backend>` (sem `https:443 /`).
6. Gateway expõe no unit file systemd uma `OPENROUTER_API_KEY` em plain text → rotacionar e mover pra EnvironmentFile.

### Estado atual (end-of-session)
- ✅ **Mac:** `buzz` abre dashboard em 3s via SSH tunnel Tailscale → `localhost:18789` (secure context OK)
- ⏳ **iPhone:** bloqueado. Precisa HTTPS via Tailscale Serve. Requisito: ativar HTTPS Certificates em https://login.tailscale.com/admin/dns
- ✅ **Gateway:** `bind=loopback`, porta pública 18789 não exposta, acesso só por tunnel/tailnet

### Onde paramos
Usuário (founder) precisa ativar **HTTPS Certificates** no admin Tailscale. Depois rodar o script `buzz-vps-serve.sh` (gerado na conversa, não commitado — reaproveitar da branch) que configura `tailscale serve --bg http://127.0.0.1:18789` e adiciona origin HTTPS.

### Próximos
- **Founder:** ativar HTTPS Certificates no admin Tailscale (1 clique) → destrava iPhone.
- **Claude:** após HTTPS habilitado, atualizar `buzz-dashboard.sh` para preferir URL HTTPS (`https://hostinger.tailf7a1ad.ts.net/`) quando disponível. Commitar `scripts/buzz-vps-serve.sh` no repo.
- **Claude:** rotacionar `OPENROUTER_API_KEY` + mover pra EnvironmentFile (follow-up de segurança).
- **PR:** abrir da branch `claude/automate-openclaw-login-j8CYA` pra `main` quando founder autorizar.

### Bloqueios
- HTTPS Certificates no admin Tailscale — ação manual humana pendente.

---

## 2026-04-09 — Nova tabela adv_ads_daily_metrics (ad-level granularity)

### Feito

- **`adv_ads_daily_metrics`** criada no Supabase (`adventurelabsbrasil` / `ftctmseyrqhckutpfdeq`) via `apply_migration`.
- Migration versionada no monorepo: `supabase/migrations/20260409100000_adv_ads_daily_metrics.sql`.
- Colunas: id, date, client, account_id, account_name, campaign_name, adset_name, ad_name, objective, impressions, reach, clicks, spend, conversations, leads, created_at.
- **UNIQUE constraint** em `(date, account_id, campaign_name, adset_name, ad_name)` — idempotência garantida.
- Índices em date, client e account_id. RLS habilitado.
- Complementa `adv_campaign_metrics_daily` (campaign-level) com granularidade de **anúncio**.

### Onde paramos

- Tabela criada e live no Supabase. **RLS policies** ainda não foram adicionadas — definir conforme uso (n8n service_role vs dashboard autenticado).
- Migration no monorepo está na worktree `claude/dreamy-booth` — precisa de merge para `main`.

### Próximos

- **Buzz/n8n:** configurar automação que popula `adv_ads_daily_metrics` com dados de Meta Ads e/ou Google Ads.
- **RLS policies:** adicionar quando o padrão de acesso estiver definido (service_role para ingestão, read para dashboards).
- **Merge:** PR da worktree `claude/dreamy-booth` → `main` com esta migration.

### Bloqueios

- Nenhum.

---

## 2026-03-25 — Diagnóstico consolidado ACORE + próximos passos (execução)

### Feito

- **Sincronização documental ACORE:** `ACORE_ROADMAP`, `BACKLOG` e este `ACORE_SESSION_LOG` alinhados em um checkpoint único de execução.
- **Plano de ação por prioridade fechado:** P0 (Vercel Core + legal + validação SDR), P1 (runbook Martech/cadência), P2 (infra Fase 4 e stage-gate).
- **Asana governança:** manual de inventário atualizado com diretrizes explícitas de **redundância de projetos/campos** para reduzir retrabalho em triagem.
- **Martech operação:** runbook unificado Canva/Figma atualizado com comando oficial e checklist de publicação.
- **SDR Wizard:** critério E2E documentado com roteiro de evidências para cenários `anon` e `authenticated`.

### Próximos

- **P0 Vercel Core (`1213786808148845`):** executar subtarefas humanas (import + env + DNS + smoke) e publicar snapshot final no manual Vercel.
- **Gate legal (`1213710771598087`):** registrar aprovador e estado final no Asana para remover bloqueio de go-live.
- **SDR E2E:** anexar evidências de payload/insert/consulta no Asana + atualizar linha no BACKLOG.
- **Cadência semanal:** repetir checkpoint de convergência (`ROADMAP/BACKLOG/SESSION_LOG`) no ritual do Comando Estelar.

### Bloqueios

- **Execução de painel Vercel e DNS** continua dependente de ação humana da conta `contato@`.
- **Gate legal** segue como bloqueio formal para publicação de mídia enquanto status Asana estiver `todo`.

---

## 2026-03-24 — Execução plano «Prioridades Asana ACORE» (triagem P0, Martech hub, ritual)

### Feito

- **Triagem P0 no Asana:** carimbo `[2026-03-24] Triagem ACORE` nas notas das tarefas **Vercel Core** `1213786808148845`, **Rose Google Ads** `1213744799182618`, **Legal** milestone `1213710771598087` (gate Martech / mídia paga).
- **Martech MVP:** secção *Priorização ACORE (ordem de execução)* no playbook [`martech-mvp-war-room-2026-04.md`](../knowledge/00_GESTAO_CORPORATIVA/operacao/asana/martech-mvp-war-room-2026-04.md) — hub `1213787130286682`, ordem GTM → Formulários → LP, link técnico `apps/core/adventure/docs/LANDINGPAGE_MARTECH_LEAD.md`.
- **BACKLOG:** coluna *Atualizado em* nas linhas P0/P1 tocadas pela triagem (2026-03-24).
- **Ritual:** `pnpm check-deadlines` na raiz (ver bloco *Checagem prazos* abaixo). **Registry:** nenhuma automação nova nesta sessão — sem alteração em `os-registry/INDEX.md`.

### Próximos

- **contato@ / Founder:** checklist subtarefas P0 Vercel; evidências Rose na subtarefa `1213786030182857`; estado legal explícito em `1213710771598087`.
- **Martech:** subtarefas humanas sob hub `1213787130286682` (GTM Publish, smoke, migration Supabase) conforme doc técnico.
- **Semanal:** repetir `pnpm check-deadlines` + 3 bullets SESSION_LOG na segunda (BRT) ou véspera de marco.

### Bloqueios

- **P0 Vercel:** inalterado — execução humana conta Vercel/DNS (`1213786808148845`).

### Checagem prazos (`pnpm check-deadlines`)

Rodado em **2026-03-23** (America/Sao_Paulo): *nenhum P0 do BACKLOG com due_on hoje (API Asana)* — comando via `infisical run` + `scripts/check-deadlines.sh`.

---

## 2026-03-23 — Plano ceo@: Martech war room, Legal/Forms, Rose Ads, P0 Vercel RACI, ritual semanal

### Feito

- **Asana — Martech MVP:** task hub **War room go-live 01/04** (`1213787130286682`) + subtarefa **Smoke E2E** (`1213787093513778`); assignee Comando Estelar no hub; links nos notes para pilares (LP, GTM, forms, editorial, esboço, ficha, legal).
- **Asana — compliance:** milestone Legal `1213710771598087` — `due_on` **2026-03-26**, notas com escalação e próxima ação (aprovador + estado).
- **Asana — formulários:** `1213741757711478` — owner **Adventure Labs**, `due_on` **2026-03-30**, notas com DOD e decisão de stack até 27/03.
- **Asana — Rose Google Ads:** P0 `1213744799182618` + subtarefa P1 `1213786030182857` — bloco **Comando Estelar** com cobrança de evidência 48–72h e decisão escrita + resumo no pai.
- **Git:** playbooks `knowledge/00_GESTAO_CORPORATIVA/operacao/asana/martech-mvp-war-room-2026-04.md` e `ritual-semanal-comando-estelar-acore.md`; **BACKLOG** e **os-registry/INDEX** atualizados com GIDs e links.

### Próximos

- **Founder / contato@:** executar smoke `1213787093513778` até 31/03; checklist P0 Vercel (`1213786808148845`) no painel; anexar métricas Rose no Asana.
- **Comando Estelar:** primeira volta do **ritual semanal** (`ritual-semanal-comando-estelar-acore.md`) — `pnpm check-deadlines` rodado em 2026-03-23 (nenhum P0 com due hoje na API Asana; repetir semanalmente).
- **CTO / Human:** após deploy P0 Core, snapshot em `docs/VERCEL_MANUAL_VERSIONADO.md` (já solicitado no playbook P0).

### Bloqueios

- **P0 Vercel:** depende de Import GitHub + envs + DNS na conta **contato@** — ceo@ só acompanha; ver `knowledge/.../tarefa-acore-p0-vercel-infisical-github-2026-03.md`.

---

## 2026-03-23 — Playbook único Asana: P0 Vercel + GitHub + Infisical (RACI contato@ / ceo@)

### Feito

- **Documento:** `knowledge/00_GESTAO_CORPORATIVA/operacao/asana/tarefa-acore-p0-vercel-infisical-github-2026-03.md` — playbook versionado no Git.
- **Tarefa Asana criada via MCP** (`project-0-01_ADVENTURE_LABS-asana`): GID **`1213786808148845`** — [link](https://app.asana.com/1/1213725900473628/project/1213744799182607/task/1213786808148845). Projeto **Inbox** (`1213744799182607`), secção **Entrada**; **due_on** 2026-03-30; **Nível de Projeto** = Core; **C-Suite** = Founder; **Departamento** = Tecnologia; **assignee** Adventure Labs (`contato@`); **follower** Comando Estelar (`ceo@`). Campo **Cliente** vazio (tarefa Core interna).
- **BACKLOG:** linha atualizada com GID e link.
- **Subtarefas (MCP):** 6 com **assignee contato@** (due 2026-03-24 … 2026-03-30) + 3 com **assignee ceo@** (apoio build due 2026-03-28; docs + BACKLOG due 2026-03-30). Detalhe e GIDs no playbook `knowledge/00_GESTAO_CORPORATIVA/operacao/asana/tarefa-acore-p0-vercel-infisical-github-2026-03.md`.

### Pendências

- Execução humana do checklist nas subtarefas + snapshot no manual após deploy.

---

## 2026-03-23 — Plano ACORE: CLI, grafia Lidera, gateway rewrites, P0 Core

### Feito

- **Vercel CLI / inventário:** política no `docs/VERCEL_MANUAL_VERSIONADO.md` — usar `npx vercel` (`whoami`, `teams ls`, `projects ls`, APIs listadas) como fonte primária de nomes de projeto e domínios; Founder só para **nome comercial** quando a CLI não bastar; nota para ambientes sem sessão Vercel.
- **Cliente Lidera:** grafia **Lidera** (não “Lídera”) alinhada em `VERCEL_MANUAL_VERSIONADO.md`, `ADMIN_POR_CLIENTE_SUBDOMINIO.md` e entradas históricas deste log.
- **Lidera — roteamento:** decisão **projeto porta + `vercel.json` rewrites** documentada no manual (exemplo com placeholders + notas `basePath`/raiz).
- **Tabela de revisão:** instrução para preencher coluna de nome do projeto a partir da CLI/API.
- **Snapshot:** bloco *2026-03-23 — Atualização* no histórico do manual — P0 Core continua pendente de **Import duplo** + envs + domínios + smoke test até haver projetos na conta.

### Pendências

- Executar **Import** GitHub dos projetos P0 (`admin`, `adventure`) e, em seguida, colar output de `projects ls` no manual (tabela de revisão + template pós-P0).
- Provisionar apps Lidera (space/skills/flow) e projeto **porta** com rewrites; registrar URLs finais no snapshot.

---

## 2026-03-23 — Mapa Core / Cliente / Labs + Altemir (Founder)

### Feito

- **Core:** apps/sites do core business Adventure (`apps/core/*`). **Cliente:** entregas por marca — lista **Lidera, Rose, Benditta, Capclear, Speed, Young, Altemir** + subdomínios; **Labs:** construção/MVP com possível promoção a Core. Documentado em `docs/VERCEL_MANUAL_VERSIONADO.md` (*Mapa trilogia*); carteira e notas Labs/Core atualizadas; `altemir.adventurelabs.com.br` + checklist; `ADMIN_POR_CLIENTE_SUBDOMINIO.md` alinhado.

---

## 2026-03-23 — Lidera: três repos, um subdomínio (confirmação Founder)

### Feito

- **Space**, **Skills** e **Flow** = **apps com repos diferentes**; **compartilham** `lidera.adventurelabs.com.br` com paths `/space`, `/skills`, `/flow`. Manual Vercel (secção Lidera, mapa repos, matrizes, checklist) atualizado; `lidera-flow` como repo dedicado `adventurelabsbrasil/lidera-flow` *(confirmar slug no GitHub)*.

---

## 2026-03-23 — Vercel: Core WorkOS vs site vs Lidera paths (Q&A Founder)

### Feito

| Tema | Resumo |
|------|--------|
| **Taxonomia** | Secção *Projeto Core vs site vs projetos de cliente*: `admin.*` = Core **WorkOS**; `adventure` = site (home + `/landing`, `/landingpage` martech + Elite LP por rotas). |
| **Lidera** | Três produtos no mesmo host: `/space` (LMS), `/skills` (RH, entregue), `/flow` (finanças, entregue); tabela + matrizes + checklist. |
| **lidera-flow** | Incluído na carteira e matriz; nota repo/deploy a validar (workspace vs submódulo). |
| **Admin doc** | `ADMIN_POR_CLIENTE_SUBDOMINIO.md`: distinção `admin.*` Core vs tenant `{{cliente}}.*`. |

---

## 2026-03-23 — Vercel padrão tenant + Elite no site (Q&A Founder)

### Feito

| Tema | Resumo |
|------|--------|
| **Subdomínios cliente** | Padrão `benditta`, `young`, `lidera`, `rose`, `capclear`, `speed` → `*.adventurelabs.com.br` como entrada do ambiente org (tenant); visão: só apps/dashboards/integrações permitidos. |
| **Multitenant** | Referência a RLS/`tenant_id` e [`ADMIN_POR_CLIENTE_SUBDOMINIO.md`](ADMIN_POR_CLIENTE_SUBDOMINIO.md). |
| **Elite** | LP integrada no **mesmo projeto/deploy** que o site `adventure`; gestão por **rotas/slugs** (sem projeto Vercel dedicado Elite). |
| **Doc** | `docs/VERCEL_MANUAL_VERSIONADO.md`: nova secção padrão tenant, matrizes/checklist/P0 alinhados; Rose/Capclear/Speed no checklist como futuro. |
| **Admin × subdomínio** | `docs/ADMIN_POR_CLIENTE_SUBDOMINIO.md` alinhado: tabela de slugs, padrão `{cliente}.adventurelabs.com.br`, nota sobre legado `*.admin.*`, refs ao manual Vercel. |

### Pendências

- **Lidera — routing:** resolvido na documentação: **projeto porta** em `lidera.adventurelabs.com.br` com **rewrites** para os três deployments (+ validar `basePath` nos apps). Ver `docs/VERCEL_MANUAL_VERSIONADO.md` (*Lidera — projeto porta*).
- Refactor opcional: mover conteúdo de `apps/core/elite` para rotas em `apps/core/adventure`.

---

## 2026-03-23 — Vercel Q&A Founder (branch `main`, domínios, clientes = submódulo)

### Feito

| Tema | Resumo |
|------|--------|
| **Branch** | Produção **`main`** para Core no monorepo (exceções a documentar por app). |
| **Domínios Core** | `admin.adventurelabs.com.br`; site `adventurelabs.com.br/`; Elite em path `adventurelabs.com.br/elite` (nota: rewrites vs app único no manual). |
| **Clientes** | Preferência **repo do submódulo** + Root **`.`** (Young, Lidera). **Benditta** mantém monorepo (sem submódulo). |
| **Doc** | `docs/VERCEL_MANUAL_VERSIONADO.md` atualizado (matrizes, checklist, tabela revisão). |

---

## 2026-03-23 — Vercel Q&A Founder (Core: monorepo + roots)

### Feito

| Tema | Resumo |
|------|--------|
| **Decisão deploy** | Admin, Elite e Adventure: projeto Vercel alvo ligado ao **monorepo** `adventurelabsbrasil/adventure-labs` com Root `apps/core/admin`, `apps/core/elite`, `apps/core/adventure`. |
| **Produto** | Admin com **WorkOS**; Elite e Adventure como **landings / site**. |
| **Evolução** | Convenção desejada futura: `apps/core/sites/elite` e `apps/core/sites/adventure` — pasta `sites/` ainda inexistente no repo. |
| **Doc** | `docs/VERCEL_MANUAL_VERSIONADO.md`: secção *Decisão Founder*, matriz inicial, matriz executiva, checklist aprovação, tabela de revisão alinhadas. |

### Pendências

- **Domínios finais:** preencher na matriz executiva + checklist de aprovação.
- **Build monorepo:** validar na Vercel comando/install pnpm com submódulos presentes no clone.

---

## 2026-03-23 — Vercel governança (item 2 macro): matriz + checklist revisão

### Feito

| Tema | Resumo |
|------|--------|
| **Repos canônicos** | Documentado monorepo `adventurelabsbrasil/adventure-labs` e mapa de submódulos (`admin`, `elite`, `adventure`, `young-talents`, `lidera-space`, `lidera-skills`) em `docs/VERCEL_MANUAL_VERSIONADO.md`. |
| **Estratégia deploy** | Tabela *Vercel → repo do submódulo* vs *monorepo + Root Directory* + referência [ADR-0002](adr/0002-clients-submodule-vs-apps-clientes-workspace.md). |
| **Matriz executiva** | Colunas de repo/root corrigidas; inclusão **benditta** (`apps/clientes/benditta/app` no monorepo). |
| **Checklist de aprovação** | Valores propostos alinhados aos repos reais; linhas admin/elite/adventure/young/lidera/benditta. |
| **Checklist revisão deploys** | Nova secção com passos CLI e tabela para preencher nomes de projeto Vercel vs esperado. |

### Onde paramos

- Documentação pronta para **preenchimento humano**: domínios finais, “Aprovado por”, e uma passagem de `vercel projects ls` na tabela de revisão.
- Snapshot 2026-03-23 (lista vazia) mantém-se até próximo provisionamento ou nova auditoria CLI.

### Pendências

| Prioridade | Ação | Dono |
|------------|------|------|
| **P2** | Completar domínios + aprovações na matriz / checklist de aprovação | Founder / CTO |
| **P2** | Rodar revisão periódica e preencher tabela (nomes reais Vercel) | CTO / Human |

---

## 2026-03-23 — Checkpoint macro (confirmação Founder: Young + Rose)

### Feito

| Tema | Resumo |
|------|--------|
| **Young Talents** | Projeto **finalizado**; **handoff concluído** para **Young Empreendimentos**. Continuidade operacional/produto fora do escopo P0 Adventure; monorepo mantém histórico técnico (`docs/YOUNG_TALENTS_PROJETO_ENTREGUE.md`). |
| **Rose — Google Ads** | **Duas campanhas** diagnosticadas e **editadas**; próximo passo é **evidência de impressões** e cumprimento da **tarefa Asana** [P1 `1213786030182857`](https://app.asana.com/1/1213725900473628/project/1213756022506822/task/1213786030182857) (metrificação / comparar Vercel vs outra). Evidências no Asana; não versionar PII no Git. |
| **Documentação** | `docs/BACKLOG.md`, `docs/ACORE_ROADMAP.md` e este log alinhados ao checkpoint. |

### Onde paramos

- **Rose** P0 `1213744799182618` permanece `em_validacao` no BACKLOG até métricas/impressões confirmadas + metrificação registrada.
- **Young:** linhas de backlog em `fora_escopo_adventure` / handoff; sem ação técnica Adventure na fila P0.

### Pendências imediatas

| Prioridade | Ação | Dono |
|------------|------|------|
| **P0** | Rose: coletar impressões + executar [P1 `1213786030182857`](https://app.asana.com/1/1213725900473628/project/1213756022506822/task/1213786030182857); atualizar card P0 | Founder / Marketing + Agente |
| **P0** | Legal campanhas `1213710771598087` — revalidar prazo no Asana | Human / Compliance |
| **P2** | Matriz executiva Vercel (owners, domínios, repo canônico) | Founder / CTO |

---

## 2026-03-23 — P0 Rose Google Ads (diagnóstico + alinhamento de negócio)

### Feito

| Tema | Resumo |
|------|--------|
| **Acesso técnico restabelecido** | Credenciais `GOOGLE_ADS_*` validadas via Infisical (`/admin`, env `dev`), incluindo OAuth refresh token funcional. |
| **Diagnóstico direto na API Google Ads** | Leitura D0: 3 campanhas com `0 impr.` na conta Rose (`1677226456`). |
| **Correção de rumo (Founder)** | **Direito Bancário** não é prioridade de entrega: campanha `[Tráfego] - [Pesquisa] - [Direito Bancário]` (`21258319337`) **deve ficar pausada**; repausada via API em 2026-03-23 — verificação `PAUSED` / `CAMPAIGN_PAUSED`. |
| **Foco P0** | Diagnóstico **crítico e rigoroso** nas campanhas de **direito trabalhista** (linha auxílio maternidade / pesquisa associada), ex.: IDs `23628537292`, `23646258632` — lances, termos, segmentação RS/BR, orçamento, elegibilidade. |
| **Demais leituras D0** | Campanhas trabalhistas já em `ENABLED/ELIGIBLE` na amostra analisada; anúncios `APPROVED` onde aplicável; sem negativas bloqueantes na leitura inicial. |
| **Campanha `23646258632` (Auxílio Maternidade Vercel)** | Diagnóstico: lances R$ 0,01 bloqueavam leilão. **Correção API 2026-03-23:** CPC máx. **R$ 4,50** no grupo `195753400524` + **35** keywords; amostra confirma `effective_cpc_bid_micros` = `4_500_000`. Próximo passo: após impressões estáveis, baixar lances com monitoramento. Scripts: `apply-rose-search-cpc-bump.mjs`, `diag-rose-campaign.mjs`; doc: `GOOGLE_ADS_CONTAS_REGISTRO.md`. |
| **Asana** | P0 `1213744799182618`: descrição com decisões (Bancário pausado; prioridade Vercel; CPC R$ 4,50); **assignee** `ceo@adventurelabs.com.br` → utilizador *Comando Estelar*; **due** 2026-03-27. Criada subtarefa P1 **`1213786030182857`** (comparar `23646258632` vs `23628537292`, transferir insights), due **2026-03-28**, mesmo assignee — [link Asana](https://app.asana.com/1/1213725900473628/project/1213756022506822/task/1213786030182857). |
| **Auditoria operacional** | BACKLOG + `GOOGLE_ADS_CONTAS_REGISTRO.md` + este log atualizados. |

### Onde paramos

- P0 Rose em `em_validacao` no BACKLOG.
- Próxima checagem D+1 (24h) nas campanhas **trabalhistas** (não Direito Bancário).

### Pendências imediatas

| Prioridade | Ação | Dono |
|------------|------|------|
| **P0** | Revalidar métricas D+1 das campanhas **trabalhistas** no Google Ads + Admin | Human + Agente |
| **P0** | Se persistir `0 impr.`, auditoria profunda: lances, termos de pesquisa, segmentação, orçamento — com aprovação Marketing | Igor + Founder |
| **Governança** | Atualizar status final no Asana e BACKLOG após D+1 | Human + Agente |

---

## 2026-03-23 — Asana Inbox Zero (router por campos)

### Feito

| Tema | Resumo |
|------|--------|
| **Estrutura Asana validada** | Inbox com seções `Entrada`, `Triagem`, `Roteamento`, `Tratamento` e campos `Nível de Projeto`, `Cliente` (reference), `C-Suite`, `Departamento`. |
| **Roteador evoluído** | `tools/scripts/asana-inbox-router.mjs` atualizado para priorizar **campos customizados** antes de tags/título: `Nível de Projeto` → `Cliente` (reference) → `C-Suite`/`Departamento` (fallback) → tags → título. |
| **Reorganização em lote** | Tarefas abertas do Inbox atualizadas com owner/due/campos obrigatórios para operação humano + IA. |
| **Aplicação concluída** | Execução `pnpm asana:router:apply` concluída com `moved: 31`, `failed: 0`. Validação posterior com `pnpm asana:router:dry` retornou `Tarefas abertas no Inbox: 0`. |
| **Documentação operacional** | Playbook Asana atualizado com snapshot de campos e ordem oficial de roteamento. |

### Onde paramos

- Inbox operacional zerado via roteamento automático.
- Base pronta para foco em execução de **P0** (Rose Google Ads — validação/métricas, Legal/compliance), conforme checkpoint ACORE; Young fora do escopo Adventure.

### Pendências imediatas

| Prioridade | Ação | Dono |
|------------|------|------|
| **P0** | Young Talents removido do escopo operacional Adventure (projeto entregue / handover concluído) | Registrado (sem ação) |
| **P0** | Consolidar diagnóstico e correção da campanha Rose (`1213744799182618`) | Human + Marketing/Tech |
| **P0** | Validar pendências de legal/compliance (`1213710771598087`) | Human / Compliance |
| **Governança** | Atualizar `BACKLOG.md` com status final dos P0 após validação humana | Human + Agente |

---

## 2026-03-23 — Vercel baseline + manual versionado

### Feito

| Tema | Resumo |
|------|--------|
| **Auditoria Vercel CLI** | Verificação da conta `adventurelabsbrasil` com `npx vercel`: versão CLI, identidade, teams, projetos, deployments e domínios. Snapshot atual retornou listas vazias (`projects`, `deployments`, `domains`). |
| **Manual canônico** | Criado `docs/VERCEL_MANUAL_VERSIONADO.md` com governança A.C.O.R.E., rotina de auditoria e histórico de snapshots. |
| **Legado controlado** | `docs/VERCEL_GITHUB_DEPLOY.md` reclassificado como **histórico** para evitar uso como estado atual. |
| **Execução futura** | Incluída matriz inicial de provisionamento (P0/P1/P2), carteira completa (core/clientes/labs), checklist operacional P0 e template pronto de snapshot pós-provisionamento. |
| **Painel executivo** | Adicionada `Matriz executiva de provisionamento` com owner de negócio/técnico, repo canônico, domínio alvo e status por projeto. |
| **Gate formal** | Instituído `Checklist de aprovação (itens provisórios)` no manual Vercel, com `Aprovado por` + data antes de mover projeto para `Em provisionamento`. |

### Onde paramos

- Base documental Vercel alinhada ao monorepo e pronta para registrar próximos provisionamentos.
- Próximo checkpoint: criar projetos P0 (`admin`, `elite`) e preencher snapshot real no manual.

### Pendências imediatas

| Prioridade | Ação | Dono |
|------------|------|------|
| **P0** | Provisionar `admin` e `elite` na Vercel com `Root Directory` explícito | CTO / Human |
| **P1** | Validar domínios finais por app e atualizar matriz | Founder / CTO |
| **Governança** | Confirmar repo canônico por app quando houver divergência repo dedicado vs monorepo | Founder |
| **Governança** | Preencher owners e domínios finais da matriz executiva Vercel | Founder / CTO |

---

## 2026-03-23 — Correção de governança (Young Talents)

### Feito

| Tema | Resumo |
|------|--------|
| **Status oficial** | Young Talents classificado como **projeto de cliente entregue**, sob propriedade da **Young Empreendimentos** (não produto interno Adventure). |
| **Docs atualizados** | `docs/YOUNG_TALENTS_PROJETO_ENTREGUE.md`, `docs/MANUAL_HUMANO_ADVENTURE_OS.md`, `docs/young-talents/CHANGELOG.md`, `knowledge/06_CONHECIMENTO/os-registry/INDEX.md`, `docs/BACKLOG.md`, `clients/04_young/young-talents/README.md`. |
| **Fluxo** | Monorepo Adventure mantém histórico técnico/handoff; novas evoluções estratégicas do produto seguem governança da Young Empreendimentos. |

### Nota operacional

- Quando houver suporte pontual, registrar no `BACKLOG.md` e no `docs/young-talents/CHANGELOG.md`, sem reclassificar o projeto como produto interno.

---

## 2026-03-22 — Triagem projeto Asana Tasks (MCP)

### Feito

| Tema | Resumo |
|------|--------|
| **Leitura MCP** | `get_tasks` no projeto `1213744799182607` (~46 tarefas abertas + concluídas recentes). |
| **Documento** | [triagem-projeto-tasks-2026-03-22.md](../knowledge/00_GESTAO_CORPORATIVA/operacao/asana/triagem-projeto-tasks-2026-03-22.md) — buckets P0/P1/epics/hábitos, duplicata Rose Ads, gaps de custom fields/secções. |
| **BACKLOG** | Linhas novas: Young auth `1213756427711151`, Young `/apply` `1213760496605730`, Vercel `1213757581639410`; nota de duplicata em Rose Ads. |

### Ação humana urgente (fora do Git)

- **Segurança:** tarefa concluída LIDERA / integração email (`1213744799182610`) tinha **senhas em notas** no Asana — **notas redigidas via MCP** nesta sessão. **Rotacionar** credenciais na hospedagem/webmail (exposição histórica possível); daqui em diante só Infisical/vault.
- **PII:** tarefa convite Rose `1213756427711153` — não replicar dados pessoais no repositório.
- **Asana:** mesclar `1213763696747095` → `1213744799182618`; preencher ou arquivar tarefa vazia `1213760496605734`; criar custom fields + secções conforme doc de triagem.

---

## 2026-03-22 — Retoma plano (checkpoint)

### Posição (Adventure OS + ACORE)


| Eixo             | Estado                                                                                                                               |
| ---------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| **Adventure OS** | **Fase 2 — Alinhamento** (Fase 3 = automações novas só com runbook + INDEX + `n8n-schedule.md`).                                     |
| **ACORE**        | Fases 0–1 estáveis; **Fase 2** (Vercel / Young em validação); **Fase 3** (Ads, Martech P1); **Fase 4** VPS/Coolify depende de infra. |


### Feito desde a última retoma (referência)


| Tema       | Resumo                                                                                                                                                                                                                                             |
| ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Idioma** | Regra Cursor `[adventure-locale-pt-br.mdc](../.cursor/rules/adventure-locale-pt-br.mdc)` (`alwaysApply`): **pt-BR** para prosa/docs; **inglês** na camada de programação. Referências em `.cursorrules`, `AGENTS.md`, manuais humano/IA, INDEX §3. |


### Próximos passos (ordem sugerida)


| Prioridade     | Ação                                                  | Dono / notas                                                                             |
| -------------- | ----------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| **P0**         | **Rose — Google Ads** (`1213744799182618`)            | Infisical `GOOGLE_ADS_*` + diagnóstico rotas Admin; ver `GOOGLE_ADS_CONTAS_REGISTRO.md`. |
| **P0**         | **Young — login produção**                            | Redeploy Vercel + envs; teste humano; BACKLOG já `em_validacao`.                         |
| **P0**         | **Legal campanhas** (`1213710771598087`)              | Humano / compliance; revalidar prazo no Asana.                                           |
| **P1**         | MVP Martech (várias linhas Asana)                     | Igor / equipe conforme BACKLOG.                                                          |
| **P2**         | VPS Hostinger + Coolify                               | Só após contratar/preparar máquina.                                                      |
| **Governança** | Rever ACL do repo `adventurelabsbrasil/young-talents` | Humano (doc `YOUNG_TALENTS_PROJETO_ENTREGUE.md`).                                         |


### Onde paramos

- Plano retomado; execução técnica segue `[BACKLOG.md](BACKLOG.md)`. Prompt copy-paste: `[PLANO_ADVENTURE_OS_UNIFICADO.md](PLANO_ADVENTURE_OS_UNIFICADO.md)` (*Retomar no Cursor*).

---

## 2026-03-20 — Retoma plano (Adventure OS Fase 2)

### Feito nesta janela


| Tema                        | Resumo                                                                                                                                                                                                                                                        |
| --------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Fase Adventure OS**       | Confirmada **Fase 2 — Alinhamento** (Fase 1 base documental em grande parte feita); Fase 3 (execução n8n/crons novos) só com runbook + INDEX.                                                                                                                 |
| **Manual humano**           | Nova secção *Rotina de chegada* (brain dump → Asana → BACKLOG → promote) em `[MANUAL_HUMANO_ADVENTURE_OS.md](MANUAL_HUMANO_ADVENTURE_OS.md)`.                                                                                                                 |
| **Cursor**                  | Regra `[adventure-braindump-triage.mdc](../.cursor/rules/adventure-braindump-triage.mdc)` + referência no `[MANUAL_IA_ADVENTURE_OS.md](MANUAL_IA_ADVENTURE_OS.md)`; entrada no [os-registry INDEX §3](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md).     |
| **Plano unificado**         | Bloco *Retomar no Cursor* (prompt copy-paste) em `[PLANO_ADVENTURE_OS_UNIFICADO.md](PLANO_ADVENTURE_OS_UNIFICADO.md)`.                                                                                                                                        |
| **Young P0 login**          | `apps/clientes/young-talents/plataforma`: produção sem env Supabase → componente `SupabaseConfigMissing`; rotas `*` e `/candidate/*` com `RequireAuth` → `/login`; `LoginPage` com `safeReturnPath` + OAuth `redirectTo` alinhado; build `pnpm run build` OK. |
| **Young → status entregue** | ATS classificado como projeto entregue para Young Empreendimentos; histórico técnico no monorepo; `docs/YOUNG_TALENTS_PROJETO_ENTREGUE.md` + CHANGELOG; manuais humano/IA + INDEX.                                                              |


### Próximos passos (human + agente)


| Tipo                 | Ação                                                                                                                            |
| -------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| **P0 sem VPS**       | Validar Young Vercel + login; diagnóstico Rose Google Ads (envs Infisical); Legal no Asana (humano).                            |
| **Bloqueio infra**   | P2 Hostinger VPS + Coolify + n8n estável 24h — só após contratar/preparar VPS (ACORE Fase 4).                                   |
| **Fase 3 doc-first** | Antes de novo Schedule n8n: linha em INDEX + `[n8n-schedule.md](../knowledge/00_GESTAO_CORPORATIVA/processos/n8n-schedule.md)`. |


### Onde paramos

- Retomada do programa **documentada** no repo; execução técnica dos P0 continua conforme `[BACKLOG.md](BACKLOG.md)`.

---

## 2026-03-20 (noite)

### Feito nesta janela


| Tema                     | Resumo                                                                                                                                                                                                        |
| ------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Êxodo / taxonomia**    | Apps canônicos em `apps/core/*`, labs em `apps/labs/*`, clientes em `apps/clientes/*`; script Infisical com `FOLDERS_MAP` + legado `apps/admin` / `apps/adventure`; scan resiliente (aviso se pasta ausente). |
| **Infisical**            | Push em lote (`tools/scripts/infisical-push-env-local.sh`), filtro de chaves vazias, `infisical run` **só na raiz** (`pnpm admin:dev`, `young:dev`, etc.) com `--path`; doc `INFISICAL_SYNC.md`.              |
| **Asana MCP**            | Integração usada para backlog Rose, tarefas prioritárias, notas técnicas em `Consertar campanha Google Ads [Rose]`.                                                                                           |
| **Lucide / Admin**       | `ContactRound` → `UserRound` em `nav-config.ts` (hydration); `lucide-react@latest`; limpeza `.next`.                                                                                                          |
| **Google Ads**           | Registro de Customer IDs: `docs/GOOGLE_ADS_CONTAS_REGISTRO.md`; mensagens de erro API orientam Infisical / `pnpm admin:dev`.                                                                                  |
| **Backlog / governança** | `docs/BACKLOG.md` preenchido; `scripts/check-deadlines.sh` (Bash 3.2).                                                                                                                                        |


### Onde paramos

- **Admin** sobe com `**pnpm admin:dev`** na raiz (Infisical `--path=/admin`); Human reportou **~30 secrets** e dashboard em **[http://localhost:3001](http://localhost:3001)** após ajustes (ícone + cache).
- **Monorepo** com submodule `apps/core/admin` e alterações em `pnpm-lock` alinhados a commits recentes.

### Pendências P0 / P1 (manhã seguinte e sequência)


| Item                                    | Alvo              | Notas                                                                                                                                   |
| --------------------------------------- | ----------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| **Teste Carla — Young Talents**         | 2026-03-21 ~09:00 | Login pós-deploy Vercel; hotfix ~10 min se falhar. Ver [Verificação Young vs Vercel](#verificacao-young-talents-repo-vs-vercel) abaixo. |
| **Diagnóstico Rose — Google Ads (API)** | 2026-03-21 ~10:00 | Tarefa Asana `1213744799182618`; `GOOGLE_ADS_`* no Infisical; Customer ID Rose em `docs/GOOGLE_ADS_CONTAS_REGISTRO.md`.                 |
| **Hostinger VPS + Coolify**             | 2026-03-21 ~14:00 | Tirar apps do MacBook; instalação Coolify (roadmap CTO).                                                                                |


### Teste de sanidade (Martins)

**Pergunta:** *O deploy da Young Talents no Vercel já foi atualizado com o Supabase?*

**Resposta (Martins / registro técnico):**  
Não há como **confirmar o deploy** sem o painel Vercel (último build, commit, envs). Pelo **repositório** atual da plataforma (`apps/clientes/young-talents/plataforma`): auth é **Supabase** (`supabase.auth`, `VITE_SUPABASE_`*); **não** há Clerk no código; ver `CLERK_LEGACY.md`.  
Se a produção ainda quebrar login, hipóteses: deploy antigo, envs Vercel incompletas, ou redirect URL / RLS — **primeira ação:** comparar deploy com `main` do submodule e variáveis no Vercel.

### Verificação Young Talents (repo vs Vercel)


| Camada              | Clerk (legado)                     | Supabase (atual no repo)                                                                    |
| ------------------- | ---------------------------------- | ------------------------------------------------------------------------------------------- |
| **Código**          | Não declarado (`CLERK_LEGACY.md`). | Sim: `src/supabase.js`, `App.jsx` (`getSession`, `onAuthStateChange`).                      |
| **Produção Vercel** | **Indeterminado daqui.**           | Confirmar no dashboard: último deployment + `VITE_SUPABASE_URL` / `VITE_SUPABASE_ANON_KEY`. |


### Recado CTO (registro)

Roadmap humano sugerido para o dia seguinte: 09:00 café + teste Carla; 10:00 módulo Rose Google Ads; 14:00 Hostinger/Coolify.

---

## Como atualizar este arquivo

1. Copiar bloco `## YYYY-MM-DD`.
2. Preencher Feito / Onde paramos / Pendências.
3. Linkar `docs/BACKLOG.md` e tarefas Asana por GID quando existir.

