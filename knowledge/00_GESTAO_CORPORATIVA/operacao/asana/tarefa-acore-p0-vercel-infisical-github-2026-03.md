# Tarefa Asana — ACORE P0: Vercel + GitHub + Infisical + local

**Objetivo:** uma única tarefa no Asana com **onde paramos**, **o que falta** e **quem faz o quê** (Founder `contato@` vs operacional agente/Comando Estelar `ceo@`), para reduzir confusão entre GitHub, Vercel, Infisical e máquina local.

**Tarefa criada no Asana (2026-03-23):** GID **`1213786808148845`** — [abrir no Asana](https://app.asana.com/1/1213725900473628/project/1213744799182607/task/1213786808148845). Projeto **Inbox**, secção **Entrada**; **due** 2026-03-30; campos: **Nível de Projeto** = Core, **C-Suite** = Founder, **Departamento** = Tecnologia; **assignee** Adventure Labs (`contato@`); **follower** Comando Estelar (`ceo@`).

## Status de execução (checkpoint 2026-03-25)

- Estado do card pai no BACKLOG: `todo` (bloqueio operacional em painel Vercel/DNS).
- Critério de evidência mantido: output de `projects ls`, status `Ready` dos 2 projetos, domínios HTTPS e smoke.
- Próxima atualização obrigatória: ao concluir subtarefas de 2026-03-26 a 2026-03-30 (import, env, DNS e smoke).

---

## Como criar no Asana (2 minutos) — legado / duplicar

1. Abrir o projeto **[Tasks / Inbox](https://app.asana.com/1/1213725900473628/project/1213744799182607)** (ou secção de captura que usam).
2. **Nova tarefa** — colar o **Título** e o **Corpo** da secção seguinte (ou anexar este arquivo no comentário).
3. **Assignee principal (human / decisão / DNS / contas):** utilizador Asana associado a **`contato@adventurelabs.com.br`** (Founder).
4. **Colaborador ou co-assignee (operacional, scripts, CLI, atualizar docs após outputs):** **`ceo@adventurelabs.com.br`** (*Comando Estelar* no Asana), alinhado aos cards P0 existentes (ex. Rose Ads).
5. **Prioridade:** P0 (infra Core).
6. **Due sugerido:** +7 dias a partir de hoje (ajustar).
7. **Após criar:** copiar o **GID** da URL da tarefa e colar em comentário neste arquivo + linha em `docs/BACKLOG.md` (coluna Issue ID).

**Links úteis no repo**

| Recurso | Caminho |
|--------|---------|
| Plano A (P0 primeiro; Lidera `/space` depois) | [`.cursor/plans/acore-p0-vercel-lidera-lms.md`](../../../../.cursor/plans/acore-p0-vercel-lidera-lms.md) |
| Manual Vercel (checklist P0, snapshot, tabela revisão) | [`docs/VERCEL_MANUAL_VERSIONADO.md`](../../../../docs/VERCEL_MANUAL_VERSIONADO.md) |
| Infisical + mapa `/admin` | [`docs/INFISICAL_SYNC.md`](../../../../docs/INFISICAL_SYNC.md) |
| Chaves Admin (nomes) | [`apps/core/admin/.env.example`](../../../../apps/core/admin/.env.example) |
| Log de sessão | [`docs/ACORE_SESSION_LOG.md`](../../../../docs/ACORE_SESSION_LOG.md) |

---

## Título sugerido (colar no Asana)

`[P0][ACORE] Core na Vercel: Import GitHub monorepo (admin + adventure) + Infisical + DNS — playbook único`

---

## Corpo sugerido (colar na descrição da tarefa Asana)

### Contexto / onde paramos

- **Decisão:** opção **A** — só **P0 Core** agora: dois projetos na Vercel via **Import GitHub** do repo **`adventurelabsbrasil/adventure-labs`**, roots **`apps/core/admin`** e **`apps/core/adventure`**, branch **`main`**. **Lidera LMS `/space`** vem **depois** (não misturar neste card).
- **Problema comum:** o assistente da Vercel pode sugerir root errado (ex.: `apps/core/adventure-work-os`). **Corrigir manualmente** para `apps/core/admin` no projeto Admin e `apps/core/adventure` no projeto Site.
- **CLI já validada (local):** `npx vercel --version` → 50.35.0; `whoami` / time → **adventurelabsbrasil** / Adventure Labs. Próximo comando útil: `npx vercel projects ls` (preencher matriz no manual).
- **Segredos:** fonte da verdade **Infisical** (pasta **`/admin`**); Vercel Production = **espelho** dos mesmos **nomes** de variável — **não** commitar valores no Git.
- **Documentação** no monorepo já atualizada (manual Vercel, plano `.cursor/plans/`, política CLI). Falta **execução humana** no painel + **evidências** no manual após deploy.

### RACI (Asana)

| Faixa | Responsável |
|--------|-------------|
| **Human / Founder** (`contato@`) | Aprovar nomes de projeto; Import no dashboard; DNS/domínios na Vercel/registro; decidir se algo bloqueia go-live; smoke test manual “olho humano”; aprovar checklist final. |
| **Operacional / IA / Comando Estelar** (`ceo@`) | Manter playbook; após Founder colar outputs (`projects ls`, erros de build), sugerir ajustes de build/root/env; atualizar `VERCEL_MANUAL_VERSIONADO.md` + `ACORE_SESSION_LOG.md` + `BACKLOG` com GID e status; repetir comandos CLI quando pedido. |

### Checklist — GitHub

- [ ] Repo **`adventurelabsbrasil/adventure-labs`** acessível pela integração GitHub da Vercel (org `adventurelabsbrasil`).
- [ ] Branch de produção **`main`** com código que deve ir para deploy.

### Checklist — Vercel (projeto 1 — Admin)

- [ ] **Add project → Import** do monorepo `adventure-labs`.
- [ ] **Root Directory:** `apps/core/admin` (não `adventure-work-os`).
- [ ] **Production branch:** `main`.
- [ ] **Environment Variables (Production):** espelhar do Infisical `/admin` (ver `.env.example` + tabela mínima em `docs/INFISICAL_SYNC.md`).
- [ ] **Domains:** `admin.adventurelabs.com.br` + DNS conforme Vercel.
- [ ] Deploy **Ready**; smoke: rotas críticas + auth (Clerk conforme `.env.example`).

### Checklist — Vercel (projeto 2 — Site adventure)

- [ ] **Segundo Import** do **mesmo** repo.
- [ ] **Root Directory:** `apps/core/adventure`.
- [ ] **Production branch:** `main`.
- [ ] Envs se o app exigir (ver projeto quando submódulo presente).
- [ ] **Domains:** apex `adventurelabs.com.br` (e subpaths/rotas conforme manual).
- [ ] Deploy **Ready**; smoke: home + LPs se aplicável.

### Checklist — Infisical

- [ ] Secrets do Admin na pasta **`/admin`**, ambiente alinhado a **prod** (ou fluxo que espelham para Vercel prod).
- [ ] Nenhum secret com valor vazio (Infisical rejeita; ver `infisical-push-env-local.sh`).
- [ ] Opcional: `vercel env add` ou integração Infisical→Vercel se configurada — senão **copiar manualmente** para o painel Vercel.

### Checklist — Local (máquina do Founder / dev)

- [ ] Comandos CLI **um por linha** (não usar vírgulas nem travessão `—` no terminal):
  - `npx vercel --version`
  - `npx vercel whoami`
  - `npx vercel teams ls`
  - `npx vercel projects ls`
- [ ] `pnpm admin:dev` na raiz se usar Infisical para dev (ver `INFISICAL_SYNC.md`).

### Checklist — Documentação (pós-sucesso ou pós-bloqueio)

- [ ] Duplicar bloco **Template — Snapshot pós-provisionamento P0** em `docs/VERCEL_MANUAL_VERSIONADO.md` com data e saída de `projects ls`.
- [ ] Preencher **tabela de revisão** (nomes exatos dos projetos na Vercel).
- [ ] Linha em `docs/ACORE_SESSION_LOG.md` + `docs/BACKLOG.md` com **GID desta tarefa** e status.

### Critério de conclusão

Dois projetos ligados ao GitHub, roots corretos, prod **Ready**, domínios HTTPS ok, envs mínimas para não quebrar build/login, snapshot no manual atualizado.

### Acompanhamento Comando Estelar (plano ceo@ — 2026-03-23)

- **Semanal (ou até checklist verde):** pedir status ao assignee **contato@** nas subtarefas de painel/DNS; registrar bloqueio no comentário da tarefa pai se houver stall.
- **Ao fechar P0:** confirmar que **Founder/CTO** preencheram snapshot em `docs/VERCEL_MANUAL_VERSIONADO.md` + linha em `docs/ACORE_SESSION_LOG.md` (subtarefa ceo@ `1213786808260148`).
- **Ritmo:** alinhar ao [`ritual-semanal-comando-estelar-acore.md`](ritual-semanal-comando-estelar-acore.md) (`pnpm check-deadlines` quando houver token).

---

## Subtarefas criadas no Asana (delegação + deadlines)

Tarefa pai: **`1213786808148845`**. *Opcional:* nas subtarefas **[ceo@]**, remover **contato@** como seguidor no Asana (playbook Inbox — evitar ruído no My Tasks do Founder).

### contato@ (Adventure Labs) — execução painel / DNS / validação

| Due | GID | Título |
|-----|-----|--------|
| 2026-03-24 | 1213786798476384 | Pré-check: integração GitHub na Vercel + repo adventure-labs acessível |
| 2026-03-26 | 1213786798543120 | Vercel: Import monorepo → projeto Admin (Root `apps/core/admin`) |
| 2026-03-27 | 1213786808307569 | Vercel: segundo Import → Site adventure (Root `apps/core/adventure`) |
| 2026-03-28 | 1213786843296614 | Vercel: Environment Variables Production (espelho Infisical `/admin`) |
| 2026-03-29 | 1213786798624236 | DNS + domínios admin + apex (HTTPS) |
| 2026-03-30 | 1213786762910221 | Smoke test humano + critério de conclusão P0 |

### ceo@ (Comando Estelar) — apoio técnico + documentação no repo

| Due | GID | Título |
|-----|-----|--------|
| 2026-03-28 | 1213786808189884 | Apoio técnico: logs build Vercel, Root, pnpm/monorepo |
| 2026-03-30 | 1213786808260148 | Documentação: snapshot P0 + tabela revisão + ACORE_SESSION_LOG |
| 2026-03-30 | 1213786808183351 | BACKLOG: fechar linha P0 + estado matriz após evidências |

---

## GID desta tarefa Asana

`1213786808148845`

---

*Última atualização documental: 2026-03-23 (incl. acompanhamento Comando Estelar / plano ceo@). Mantido em `knowledge/00_GESTAO_CORPORATIVA/operacao/asana/` para versionamento junto ao monorepo.*
