# ADRs — Architecture Decision Records

Registo de **decisões difíceis de reverter** (stack, fronteiras de produto, SSOT, tenant, onde vive cada tipo de artefato).

## Quando escrever

- Mudança que afeta **vários repos**, **RLS**, **topologia** (`clients/` vs `apps/clientes/`), ou **fonte da verdade** (Asana vs BACKLOG vs WorkOS).
- **Não** usar ADR para runbook operacional do dia — isso vai em `docs/` ou `knowledge/` e entra no [os-registry INDEX](../../knowledge/06_CONHECIMENTO/os-registry/INDEX.md).

## Formato sugerido

Ficheiro: `docs/adr/NNNN-titulo-curto.md` (ex. `0001-fonte-verdade-tarefas-asana-backlog.md`).

```markdown
# ADR NNNN — Título

## Status
Proposto | Aceite | Substituído por ADR-XXXX

## Contexto
## Decisão
## Consequências
```

## Índice

| ADR | Título | Status |
|-----|--------|--------|
| [0001](0001-fonte-verdade-tarefas-asana-backlog-adv-tasks.md) | Fonte da verdade: Asana, BACKLOG e `adv_tasks` | Aceite |
| [0002](0002-clients-submodule-vs-apps-clientes-workspace.md) | `clients/` (submodule) vs `apps/clientes/` (workspace) | Aceite |

## Ligações

- [PLANO_ADVENTURE_OS_UNIFICADO.md](../PLANO_ADVENTURE_OS_UNIFICADO.md) — ordem: documentação antes de automações  
- [BACKLOG.md](../BACKLOG.md)
- [Adventure Work OS](../../apps/core/adventure-work-os/README.md) — método operacional híbrido (Asana, `knowledge/`, triagem, gates); complementar a ADRs de SSOT.
