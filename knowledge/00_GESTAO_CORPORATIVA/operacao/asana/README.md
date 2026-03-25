# Snapshots Asana (Andon)

Esta pasta recebe **apenas** exportações/resumos gerados pelo agente **Andon** (skill `asana-csuite-ingest`), salvo exceção aprovada pelo Founder.

## Triagem manual (MCP / Grove)

Ficheiros `triagem-projeto-tasks-YYYY-MM-DD.md`: snapshot de leitura do projeto **Tasks** no Asana, alinhado a BACKLOG/ACORE/ADR-0001 (não substituem o Andon).

## Playbook operacional (GTD-Lite)

Para operação diária de gestão de projetos no Asana (Inbox, Core, Clientes, Labs), usar:

- [`playbook-operacional-gtd-lite-comando-estelar.md`](./playbook-operacional-gtd-lite-comando-estelar.md)
- [`manual-inventario-asana-projetos-campos-agentes-2026-03.md`](./manual-inventario-asana-projetos-campos-agentes-2026-03.md)
- Seções de referência rápida:
  - `Campos oficiais do Inbox (snapshot atual)`
  - `Padrao de preenchimento (humano + IA)`

## Convenção

- Arquivos sugeridos: `snapshot-YYYY-MM-DD.md`
- Frontmatter e seções: ver `apps/core/admin/agents/andon_asana/VOICE.md` e o SKILL da skill.

## Conflitos

Seguir regra de sobrescrita da Adventure Labs antes de substituir um snapshot existente.

## Automação

**Ativo:** `POST /api/csuite/andon-asana-run` (cron n8n + `CRON_SECRET`) grava `adv_founder_reports` + `adv_csuite_memory`. Ver `workflows/n8n/andon_asana/README.md` e `docs/ADV_CSUITE_MEMORY_METADATA.md`.
