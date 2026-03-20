# BACKLOG — Governanca ACORE 1.0

Este arquivo e o espelho operacional das demandas de produto/engenharia vindas do GitHub e Asana.

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

Colunas **Due (Asana)** e **Atualizado em** usam `AAAA-MM-DD`. Deixe Due vazio quando o prazo vier so da API; o script `scripts/check-deadlines.sh` consulta o Asana para linhas `P0`.

| Issue ID | Origem | Titulo | Prioridade tecnica | Status | Owner | Due (Asana) | Atualizado em | Notas |
|----------|--------|--------|--------------------|--------|-------|-------------|---------------|-------|
| 1213744799182618 | Asana | Consertar campanha Google Ads [Rose] | P0 | todo | Lead Vibe-Coder | | 2026-03-19 | Tracking/LP/codigo: P0. Senao, reclassificar para P2 operacao. |
| 1213710771598087 | Asana | Legal approval of campaign details (lote) | P0 | todo | Adventure Labs | 2026-03-19 | 2026-03-19 | Varias subtarefas iguais no Asana; GID representativo. Compliance / desbloqueio de veiculacao. |
| 1213709221981206 | Asana | Landing Page (MVP Martech 2026T2) | P1 | todo | Adventure Labs | | 2026-03-19 | Desenvolvimento web — alinhar issue GitHub + adv_tasks (Torvalds). |
| 1213741757711478 | Asana | Formularios (MVP Martech 2026T2) | P1 | todo | TBD | | 2026-03-19 | Captura / forms — dev. |
| 1213709221981281 | Asana | Tag Manager (MVP Martech 2026T2) | P1 | todo | Igor Ribas | 2026-03-23 | 2026-03-19 | GTM / tags — dev + configuracao. |

## Fluxo padrao por feature

1. Registrar linha no quadro acima.
2. Validar escopo tecnico e riscos (RLS, auth, migrations, contratos de API).
3. Implementar.
4. Validar (type-check/lint/teste de sanidade).
5. Atualizar status no backlog.

## Checagem de prazos (P0)

```bash
# Na raiz do monorepo; requer ASANA_ACCESS_TOKEN (ver docs/INFISICAL_SYNC.md)
./scripts/check-deadlines.sh
```
