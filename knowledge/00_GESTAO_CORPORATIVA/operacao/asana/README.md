# Snapshots Asana (Andon)

Esta pasta recebe **apenas** exportações/resumos gerados pelo agente **Andon** (skill `asana-csuite-ingest`), salvo exceção aprovada pelo Founder.

## Convenção

- Arquivos sugeridos: `snapshot-YYYY-MM-DD.md`
- Frontmatter e seções: ver `apps/core/admin/agents/andon_asana/VOICE.md` e o SKILL da skill.

## Conflitos

Seguir regra de sobrescrita da Adventure Labs antes de substituir um snapshot existente.

## Automação

**Ativo:** `POST /api/csuite/andon-asana-run` (cron n8n + `CRON_SECRET`) grava `adv_founder_reports` + `adv_csuite_memory`. Ver `workflows/n8n/andon_asana/README.md` e `docs/ADV_CSUITE_MEMORY_METADATA.md`.
