# Manual humano — Adventure OS

Guia curto para equipa Adventure: **onde começar** e **como não contornar o sistema**.

## Começar aqui

1. Resumo: [`PLANO_ADVENTURE_OS_UNIFICADO.md`](PLANO_ADVENTURE_OS_UNIFICADO.md)  
2. Índice mestre: [`knowledge/06_CONHECIMENTO/os-registry/README.md`](../knowledge/06_CONHECIMENTO/os-registry/README.md) → **[INDEX.md](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md)**  
3. Constituição e fases: [`ACORE_CONSTITUTION.md`](../ACORE_CONSTITUTION.md), [`ACORE_ROADMAP.md`](ACORE_ROADMAP.md)

## Rotina de chegada (brain dump + próximas ações)

Ordem sugerida **10–15 min** (alinha a [`PLANO_ADVENTURE_OS_UNIFICADO.md`](PLANO_ADVENTURE_OS_UNIFICADO.md) — doc antes de automação):

1. **Capturar** ideias soltas em [`docs/braindump/`](braindump/) (esboço; não é SSOT — ver [INDEX §19](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md)).
2. **Clarificar** (GTD): o que é lixo / adiar / delegar / executar; usar [`protocolo-grove-roteamento.md`](../knowledge/06_CONHECIMENTO/protocolo-grove-roteamento.md) se estiver vago.
3. **Compromissos concretos** → **uma tarefa no Asana** por item (projeto Tasks, data se aplicável).
4. O que for **trabalho técnico** → também linha em [`BACKLOG.md`](BACKLOG.md) (P0–P3) ou link na descrição da task Asana ([ADR-0001](adr/0001-fonte-verdade-tarefas-asana-backlog-adv-tasks.md)).
5. **Promover** 1× por semana (ou quando o dump encher): notas maduras → `knowledge/` ou wiki; artefacto novo (MCP, workflow) → atualizar [`os-registry/INDEX.md`](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md).

No **Cursor**, com `@docs/braindump/...` podes pedir triagem estruturada; a regra `.cursor/rules/adventure-braindump-triage.mdc` orienta o agente.

## Tenho uma tarefa

- **Operacional / dia a dia:** [Asana — projeto Tasks](https://app.asana.com/1/1213725900473628/project/1213744799182607) (captura e priorização).  
- **Virou engenharia:** registrar em [`BACKLOG.md`](BACKLOG.md) com prioridade P0–P3 e owner.  
- **Roteamento:** [`protocolo-grove-roteamento.md`](../knowledge/06_CONHECIMENTO/protocolo-grove-roteamento.md) (triagem GTD → WorkOS / C-Suite / técnico).

## Tenho um documento de negócio

Usar taxonomia [`knowledge/`](../knowledge/README.md) (00–99). Referência: [`MANUAL_TAXONOMIA_REPOSITORIO.md`](../knowledge/00_GESTAO_CORPORATIVA/MANUAL_TAXONOMIA_REPOSITORIO.md).

## Tenho algo técnico (deploy, RLS, runbook)

- Preferir [`docs/`](./) com nome claro.  
- **Atualizar** [`os-registry/INDEX.md`](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md) se o artefato for novo (MCP, workflow, app, etc.).  
- Avisar CTO em mudanças sensíveis.

## Young Talents / Adventure Talents (ATS)

- **Produto interno** da Adventure (comercializável após ajustes), com código canónico em `apps/clientes/young-talents/plataforma`.  
- Governança, SSOT e fim do fluxo emergencial no repo externo: [`YOUNG_TALENTS_PRODUTO_INTERNO.md`](YOUNG_TALENTS_PRODUTO_INTERNO.md) e [`young-talents/CHANGELOG.md`](young-talents/CHANGELOG.md).

## Drive vs Git

- **Git:** código, migrations, markdown de governança e runbooks sem segredos.  
- **Drive:** contratos, brand pesado, financeiro sensível — ver tiers no [INDEX §13](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md).  
- **Nunca** PII nem extratos no repositório.

## Decisão grande (arquitetura / SSOT)

Mudança **difícil de desfazer** (novo repo, mudar fonte da verdade de tarefas, fronteira tenant): considerar [ADR em `docs/adr/`](adr/README.md) + atualizar o [INDEX](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md).

## Regra de ouro

Não abrir **projeto ou tarefa persistente** (pasta nova, repo paralelo) sem **Asana** + encaixe em **taxonomia** ou **OS Registry**.

---

*Manual espelhado em [`MANUAL_IA_ADVENTURE_OS.md`](MANUAL_IA_ADVENTURE_OS.md) para agentes.*
