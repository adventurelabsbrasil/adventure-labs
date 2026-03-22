# BACKLOG — Governanca ACORE 1.0

Este arquivo e o espelho operacional das demandas de produto/engenharia vindas do GitHub e Asana.

## Captura Asana (projeto Tasks)

Fila e contexto operacional: [projeto **Tasks** no Asana](https://app.asana.com/1/1213725900473628/project/1213744799182607). O Git (`BACKLOG`, Roadmap) permanece SSOT para **engenharia** quando a tarefa está comprometida; detalhes e PII ficam no Asana. Ver também [`knowledge/06_CONHECIMENTO/os-registry/INDEX.md`](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md) §14. **Decisão canónica:** [ADR-0001 — Asana × BACKLOG × `adv_tasks`](adr/0001-fonte-verdade-tarefas-asana-backlog-adv-tasks.md).

## Prioridade Adventure OS (documentacao antes de automacoes)

Para **novas** integracoes agendadas (n8n Schedule, Vercel Cron, webhooks) ou fluxos que disparam sozinhos: primeiro **runbook ou linha no** [`os-registry/INDEX.md`](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md) + alinhamento a [`n8n-schedule.md`](../knowledge/00_GESTAO_CORPORATIVA/processos/n8n-schedule.md). Ver [`PLANO_ADVENTURE_OS_UNIFICADO.md`](PLANO_ADVENTURE_OS_UNIFICADO.md) (*Ordem de prioridade*). **Excecao:** `P0` seguranca ou producao que exija hotfix imediato — documentar em seguida no mesmo sprint.

## Regra obrigatoria de execucao

Antes de iniciar qualquer implementacao, registrar:

1. **ID da Issue** (GitHub/Asana) — usar **GID numerico do Asana** quando ainda nao houver issue GitHub; depois pode-se prefixar `GH-` na mesma linha (coluna Notas).
2. **Prioridade tecnica** (`P0`, `P1`, `P2`, `P3`)

Sem esses dois campos, a feature nao entra em desenvolvimento.

## Escala de prioridade tecnica

- `P0` — falha critica de seguranca/producao; impacto imediato.
- `P1` — funcionalidade core com impacto alto no negocio.
- `P2` — melhoria relevante, sem bloqueio de operacao.
- `P3` — ajuste incremental, documentacao ou refino.

## Quadro de backlog

Colunas **Due (Asana)** e **Atualizado em** usam `AAAA-MM-DD`. A coluna **Agenda** espelha compromissos do CTO / Human (nao necessariamente due_on do Asana).

| Issue ID | Origem | Titulo | Prioridade tecnica | Status | Owner | Due (Asana) | Agenda | Atualizado em | Notas |
|----------|--------|--------|--------------------|--------|-------|-------------|--------|---------------|-------|
| 1213744799182618 | Asana | Consertar campanha Google Ads [Rose] | P0 | todo | Lead Vibe-Coder | | 2026-03-21 10:00 | 2026-03-22 | Diagnostico API + Infisical `GOOGLE_ADS_*`; CID Rose em GOOGLE_ADS_CONTAS_REGISTRO. Próximo passo técnico após retoma do plano. |
| — | Operacional | Teste login Carla — Young Talents (Vercel) | P0 | em_validacao | Human / Carla | | 2026-03-21 09:00 | 2026-03-22 | Hotfix repo já no Git; **Redeploy Vercel** + teste humano. Ver `plataforma/docs/TROUBLESHOOTING_LOGIN.md`. |
| — | Governanca | Young Talents → produto interno Adventure (SSOT monorepo) | P2 | feito | Founder | | — | 2026-03-21 | Doc: `docs/YOUNG_TALENTS_PRODUTO_INTERNO.md`; CHANGELOG `docs/young-talents/CHANGELOG.md`; manuais + INDEX. Repo externo `adventurelabsbrasil/young-talents` — rever permissões no GitHub. |
| 1213710771598087 | Asana | Legal approval of campaign details (lote) | P0 | todo | Adventure Labs | 2026-03-19 | — | 2026-03-20 | Varias subtarefas; compliance. Revalidar se prazo deslizou no Asana. |
| 1213709221981242 | Asana | Cronograma Editorial [Planejamento] (MVP Martech) | P1 | todo | Igor Ribas | 2026-03-20 | — | 2026-03-20 | Vista no Asana; Igor. |
| 1213709221981253 | Asana | Ficha tecnica do produto (MVP Martech) | P1 | todo | Adventure Labs | 2026-03-20 | — | 2026-03-20 | Vista no Asana. |
| 1213709221981331 | Asana | Esboco (Copy/Wireframes) (MVP Martech) | P1 | todo | Igor Ribas | 2026-03-20 | — | 2026-03-20 | Vista no Asana. |
| 1213709221981206 | Asana | Landing Page (MVP Martech 2026T2) | P1 | todo | Adventure Labs | | — | 2026-03-20 | Dev web; GitHub + adv_tasks. |
| 1213741757711478 | Asana | Formularios (MVP Martech 2026T2) | P1 | todo | TBD | | — | 2026-03-20 | Captura / forms. |
| 1213709221981281 | Asana | Tag Manager (MVP Martech 2026T2) | P1 | todo | Igor Ribas | 2026-03-23 | — | 2026-03-20 | GTM. |
| — | CTO | Hostinger VPS + Coolify (migrar apps do Mac) | P2 | todo | Human | | 2026-03-21 14:00 | 2026-03-20 | Infra; fora do Asana ate criar tarefa. |

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
