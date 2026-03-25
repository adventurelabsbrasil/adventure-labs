# BACKLOG — Governanca ACORE 1.0

Este arquivo e o espelho operacional das demandas de produto/engenharia vindas do GitHub e Asana.

## Captura Asana (projeto Tasks)

Fila e contexto operacional: [projeto **Tasks** no Asana](https://app.asana.com/1/1213725900473628/project/1213744799182607). O Git (`BACKLOG`, Roadmap) permanece SSOT para **engenharia** quando a tarefa está comprometida; detalhes e PII ficam no Asana. Ver também [`knowledge/06_CONHECIMENTO/os-registry/INDEX.md`](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md) §14. **Decisão canónica:** [ADR-0001 — Asana × BACKLOG × `adv_tasks`](adr/0001-fonte-verdade-tarefas-asana-backlog-adv-tasks.md).

## Prioridade Adventure OS (documentacao antes de automacoes)

Para **novas** integracoes agendadas (n8n Schedule, Vercel Cron, webhooks) ou fluxos que disparam sozinhos: primeiro **runbook ou linha no** [`os-registry/INDEX.md`](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md) + alinhamento a [`n8n-schedule.md`](../knowledge/00_GESTAO_CORPORATIVA/processos/n8n-schedule.md). Ver [`PLANO_ADVENTURE_OS_UNIFICADO.md`](PLANO_ADVENTURE_OS_UNIFICADO.md) (*Ordem de prioridade*). **Excecao:** `P0` seguranca ou producao que exija hotfix imediato — documentar em seguida no mesmo sprint.

## Snapshot operacional ACORE (2026-03-25)

- **P0 Vercel/Core (`1213786808148845`)**: continua `todo`, com execução humana em painel/DNS como caminho crítico.
- **Gate legal (`1213710771598087`)**: continua `todo`; bloqueio formal de go-live de mídia.
- **SDR Wizard (função + migrations)**: backend pronto e pendente de validação E2E com evidência anexada (roteiro em `knowledge/00_GESTAO_CORPORATIVA/operacao/asana/validacao-e2e-sdr-wizard-acore-2026-03.md`).
- **Critério de convergência da semana:** qualquer mudança de status P0 precisa refletir no mesmo dia em `BACKLOG`, `ACORE_ROADMAP` e `ACORE_SESSION_LOG`.

## Regra obrigatoria de execucao

Antes de iniciar qualquer implementacao, registrar:

1. **ID da Issue** (GitHub/Asana) — usar **GID numerico do Asana** quando ainda nao houver issue GitHub; depois pode-se prefixar `GH-` na mesma linha (coluna Notas).
2. **Prioridade tecnica** (`P0`, `P1`, `P2`, `P3`)

Sem esses dois campos, a feature nao entra em desenvolvimento.

Padrao de evidencias para frentes Security/RLS: usar a convencao `Branch/PR/Migration/Evidencias` definida em `docs/RELATORIO_ROLES_E_SECURITY_ADVISOR_ADVENTURELABSBRASIL.md` e refletida na task Asana `1213771341802660`.

## Escala de prioridade tecnica

- `P0` — falha critica de seguranca/producao; impacto imediato.
- `P1` — funcionalidade core com impacto alto no negocio.
- `P2` — melhoria relevante, sem bloqueio de operacao.
- `P3` — ajuste incremental, documentacao ou refino.

## Quadro de backlog

Colunas **Due (Asana)** e **Atualizado em** usam `AAAA-MM-DD`. A coluna **Agenda** espelha compromissos do CTO / Human (nao necessariamente due_on do Asana).

| Issue ID | Origem | Titulo | Prioridade tecnica | Status | Owner | Due (Asana) | Agenda | Atualizado em | Notas |
|----------|--------|--------|--------------------|--------|-------|-------------|--------|---------------|-------|
| 1213786808148845 | Asana | [P0][ACORE] Core na Vercel: Import GitHub monorepo (admin + adventure) + Infisical + DNS — playbook único | P0 | todo | **contato@** (assignee / painel / DNS) + **ceo@** follower (operacional / docs / agente) | 2026-03-30 | — | 2026-03-24 | **9 subtarefas** com due 24–30 mar (6× contato@ + 3× ceo@); ver tabela no playbook Git. Pai: Inbox **Entrada**; campos **Core / Founder / Tecnologia**. [Abrir no Asana](https://app.asana.com/1/1213725900473628/project/1213744799182607/task/1213786808148845). `knowledge/00_GESTAO_CORPORATIVA/operacao/asana/tarefa-acore-p0-vercel-infisical-github-2026-03.md`. **Triagem 2026-03-24:** carimbo ACORE nas notas Asana + `ACORE_SESSION_LOG`. |
| 1213744799182618 | Asana | Consertar campanha Google Ads [Rose] | P0 | em_validacao | Grove (ceo@ → Comando Estelar no Asana) | 2026-03-27 | 2026-03-21 10:00 | 2026-03-24 | Card atualizado no Asana (notas + dono). **Bancário** `21258319337` **PAUSED**. **Duas campanhas trabalhistas** diagnosticadas e editadas; **pendente** evidência de **impressões** + tarefa Asana agendada para **metrificar o anúncio** (anexar evidência no Asana). **Prioridade:** auxílio maternidade **Vercel** `23646258632` (CPC R$ 4,50 aplicado); `23628537292` como referência — insights → Vercel se performar melhor. Subtarefa P1 **`1213786030182857`** (due 2026-03-28) — [abrir no Asana](https://app.asana.com/1/1213725900473628/project/1213756022506822/task/1213786030182857). `docs/GOOGLE_ADS_CONTAS_REGISTRO.md`. **Triagem 2026-03-24:** carimbo ACORE nas notas Asana. |
| 1213786030182857 | Asana | Rose Google Ads — comparar Auxílio Maternidade (Vercel vs outra) e transferir insights | P1 | todo | Grove (ceo@ → Comando Estelar) | 2026-03-28 | — | 2026-03-24 | Subtarefa do P0 `1213744799182618`. [Link canónico Asana](https://app.asana.com/1/1213725900473628/project/1213756022506822/task/1213786030182857). Checklist no Asana: métricas 48–72h, termos de pesquisa, portar criativos/keywords se a não-Vercel ganhar. **Triagem ACORE 2026-03-24** no pai `1213744799182618`. |
| — | Operacional | Teste login Carla — Young Talents (Vercel) | — | fora_escopo_adventure | Young Empreendimentos | | — | 2026-03-23 | **Projeto finalizado; handoff concluído** para Young Empreendimentos. Validação pós-entrega é da cliente. Ver `docs/YOUNG_TALENTS_PROJETO_ENTREGUE.md` e `plataforma/docs/TROUBLESHOOTING_LOGIN.md` (histórico). |
| 1213756427711151 | Asana | Young — tela auth Google (marca/UI + criar conta) | P0 | fora_escopo_adventure | Young Empreendimentos | | — | 2026-03-23 | Projeto entregue/handover concluído para Young Empreendimentos; manter apenas histórico técnico no monorepo (`docs/YOUNG_TALENTS_PROJETO_ENTREGUE.md`). |
| 1213760496605730 | Asana | Young — Supabase/`/apply` aparentemente offline | P0 | fora_escopo_adventure | Young Empreendimentos | | — | 2026-03-23 | Projeto entregue/handover concluído para Young Empreendimentos; eventuais ajustes seguem governança da Young. |
| 1213757581639410 | Asana | Revisar deploys Vercel (todos os projetos) | P2 | todo | CTO / Human | | — | 2026-03-23 | Checklist deploys (core / labs / clientes ativos); matriz em `docs/VERCEL_MANUAL_VERSIONADO.md`. |
| 1213757581639410 | Asana | Manual versionado do Vercel (snapshot + matriz P0/P1/P2) | P2 | feito | CTO / Human | | — | 2026-03-23 | Entregue em `docs/VERCEL_MANUAL_VERSIONADO.md`; legado marcado como histórico em `docs/VERCEL_GITHUB_DEPLOY.md`; inclui template de snapshot pós-provisionamento P0. |
| 1213757581639410 | Asana | Vercel — preencher owners/domínios/repo canônico da matriz executiva | P2 | em_progresso | Founder / CTO | | — | 2026-03-23 | Matriz alinhada a repos reais (monorepo `adventurelabsbrasil/adventure-labs` + submódulos em `.gitmodules`); incluído **benditta**, mapa repo/root, checklist **Revisão periódica da carteira**. **Pendente:** domínios finais + coluna “Aprovado por” + tabela de revisão CLI (nomes projetos Vercel). Ver `docs/VERCEL_MANUAL_VERSIONADO.md`. |
| 1213775007158205 | Asana | Young Talents → correção de status para projeto entregue (propriedade Young Empreendimentos) | P2 | feito | Founder | | — | 2026-03-23 | Atualização documental: `docs/YOUNG_TALENTS_PROJETO_ENTREGUE.md`; CHANGELOG `docs/young-talents/CHANGELOG.md`; manuais + INDEX. Monorepo mantém histórico técnico/handoff. |
| 1213744799182607 | Asana | Inbox Zero via router por campos (Nível/Cliente/C-Suite/Departamento) | P1 | feito | Comando Estelar | 2026-03-23 | — | 2026-03-23 | `pnpm asana:router:apply` com `moved: 31`, `failed: 0`; pós-validação `pnpm asana:router:dry` com Inbox `0` tarefas abertas. Playbook atualizado em `knowledge/00_GESTAO_CORPORATIVA/operacao/asana/playbook-operacional-gtd-lite-comando-estelar.md`. |
| 1213710771598087 | Asana | Legal approval of campaign details (lote) | P0 | todo | Adventure Labs | 2026-03-26 | — | 2026-03-25 | Milestone no fluxo de vídeo; notas atualizadas (escalação Comando Estelar) para gate go-live 01/04 — designar aprovador + estado explícito. **Triagem 2026-03-24:** carimbo ACORE + ligação DOD war room `1213787130286682`. **Checkpoint 2026-03-25:** pendente registrar decisão final (`aprovado`/`ajustes`) no card para destravar mídia. |
| 1213709221981242 | Asana | Cronograma Editorial [Planejamento] (MVP Martech) | P1 | todo | Igor Ribas | 2026-03-20 | — | 2026-03-20 | Vista no Asana; Igor. |
| 1213709221981253 | Asana | Ficha tecnica do produto (MVP Martech) | P1 | todo | Adventure Labs | 2026-03-20 | — | 2026-03-20 | Vista no Asana. |
| 1213709221981331 | Asana | Esboco (Copy/Wireframes) (MVP Martech) | P1 | todo | Igor Ribas | 2026-03-20 | — | 2026-03-20 | Vista no Asana. |
| 1213709221981206 | Asana | Landing Page (MVP Martech 2026T2) | P1 | todo | Adventure Labs | | — | 2026-03-24 | Dev web; GitHub + adv_tasks. Ordem ACORE (após hub): GTM → Formulários → LP — ver playbook war room. |
| 1213741757711478 | Asana | Formularios (MVP Martech 2026T2) | P1 | todo | Adventure Labs (`contato@`) | 2026-03-30 | — | 2026-03-24 | Subtarefa de LP; owner fechado pelo Comando Estelar; stack Founder+CTO até 27/03 se aberto; DOD nas notas Asana. Ordem ACORE: após GTM no playbook war room. |
| 1213787130286682 | Asana | Martech MVP — War room go-live 01/04 (hub DOD + links) | P1 | todo | Comando Estelar | 2026-04-01 | — | 2026-03-24 | Task hub projeto Martech MVP; subtarefa smoke `1213787093513778`; playbook `knowledge/00_GESTAO_CORPORATIVA/operacao/asana/martech-mvp-war-room-2026-04.md`. **2026-03-24:** secção *Priorização ACORE* no playbook + subtarefas humanas GTM/GA4/Supabase/smoke. |
| 1213709221981281 | Asana | Tag Manager (MVP Martech 2026T2) | P1 | todo | Igor Ribas | 2026-03-23 | — | 2026-03-24 | GTM. Checklist técnico: `apps/core/adventure/docs/LANDINGPAGE_MARTECH_LEAD.md`. |
| — | CTO | Hostinger VPS + Coolify (migrar apps do Mac) | P2 | todo | Human | | 2026-03-21 14:00 | 2026-03-20 | Infra; fora do Asana ate criar tarefa. |
| — | Docs | Benditta — índice SSOT monorepo (`INDICE.md`) + `gerente_benditta` + skill `benditta-marcenaria-contexto` | P3 | feito | CPO / CTO | | — | 2026-03-23 | Governança Adventure OS; não substitui tarefas Asana de entrega. Ver `knowledge/04_PROJETOS_DE_CLIENTES/benditta/INDICE.md`, `apps/core/admin/agents/gerente_benditta/`, `os-registry/INDEX.md` §8.1 e §10. |
| 1213788734243886 | Asana | Projeto [Roadmap] WhatsApp → código: RAG & contexto operacional | P3 | roadmap_futuro | CTO / CPO | | — | 2026-03-24 | **Projeto** Asana (não é sprint atual): 8 tarefas estruturadas (RFC, LGPD, fontes, RLS, RAG vs contexto leve, n8n/scripts, agentes/Admin, piloto Benditta). [Abrir projeto](https://app.asana.com/1/1213725900473628/project/1213788734243886). `os-registry/INDEX.md` §14. |
| DRAFT-MARTECH-P0-001 | Asana (draft) | [P0][Martech] Painel de qualidade de lead por canal (lead > qualificado > venda) | P0 | todo | CTO + CMO | | — | 2026-03-24 | Pré-cadastro a partir de `knowledge/02_MARKETING/insights-martech/backlog-oportunidades-martech.md` (OPP-001). Criar card no Asana e substituir por GID oficial. |
| DRAFT-MARTECH-P0-002 | Asana (draft) | [P0][Martech] Playbook de contingência WhatsApp/Instagram/Webchat | P0 | todo | COO + CMO | | — | 2026-03-24 | Pré-cadastro a partir de `knowledge/02_MARKETING/insights-martech/backlog-oportunidades-martech.md` (OPP-002). Criar card no Asana e substituir por GID oficial. |
| DRAFT-MARTECH-P0-003 | Asana (draft) | [P0][Martech] Checklist padrão de tracking antes de publicar campanha | P0 | todo | CMO / Tráfego | | — | 2026-03-24 | Pré-cadastro a partir de `knowledge/02_MARKETING/insights-martech/backlog-oportunidades-martech.md` (OPP-003). Criar card no Asana e substituir por GID oficial. |

## Fluxo padrao por feature

1. Registrar linha no quadro acima.
2. Validar escopo tecnico e riscos (RLS, auth, migrations, contratos de API).
3. Implementar.
4. Validar (type-check/lint/teste de sanidade).
5. Atualizar status no backlog.

## Checagem de prazos (P0)

```bash
# Na raiz do monorepo; requer ASANA_ACCESS_TOKEN (ver docs/INFISICAL_SYNC.md)
pnpm check-deadlines
```

## Continuidade

- Sessao e handoff: [ACORE_SESSION_LOG.md](ACORE_SESSION_LOG.md)
- Roadmap por fases (Constituição + este quadro): [ACORE_ROADMAP.md](ACORE_ROADMAP.md)
