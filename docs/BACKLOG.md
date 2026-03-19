# BACKLOG — Governanca ACORE 1.0

Este arquivo e o espelho operacional das demandas de produto/engenharia vindas do GitHub e Asana.

## Regra obrigatoria de execucao

Antes de iniciar qualquer implementacao, registrar:

1. **ID da Issue** (GitHub/Asana)
2. **Prioridade tecnica** (`P0`, `P1`, `P2`, `P3`)

Sem esses dois campos, a feature nao entra em desenvolvimento.

## Escala de prioridade tecnica

- `P0` — falha critica de seguranca/producao; impacto imediato.
- `P1` — funcionalidade core com impacto alto no negocio.
- `P2` — melhoria relevante, sem bloqueio de operacao.
- `P3` — ajuste incremental, documentacao ou refino.

## Quadro de backlog

| Issue ID | Origem | Titulo | Prioridade tecnica | Status | Owner | Atualizado em |
|----------|--------|--------|--------------------|--------|-------|---------------|
| _preencher_ | GitHub/Asana | _preencher_ | P0/P1/P2/P3 | todo/in_progress/done | _preencher_ | AAAA-MM-DD |

## Fluxo padrao por feature

1. Registrar linha no quadro acima.
2. Validar escopo tecnico e riscos (RLS, auth, migrations, contratos de API).
3. Implementar.
4. Validar (type-check/lint/teste de sanidade).
5. Atualizar status no backlog.
