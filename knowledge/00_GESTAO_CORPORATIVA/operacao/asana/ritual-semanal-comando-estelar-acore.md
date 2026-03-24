# Ritual semanal — Comando Estelar + ACORE (~30 min)

**Dono:** Comando Estelar (`ceo@`) — humano ou agente seguindo este runbook.  
**Frequência sugerida:** toda **segunda-feira** (BRT) ou véspera de marco grande (ex.: go-live Martech).

## Objetivo

Manter **P0/P1** visíveis, **BACKLOG** e **SESSION_LOG** honestos, e **registry** sem automações órfãs ([`docs/PLANO_ADVENTURE_OS_UNIFICADO.md`](../../../../docs/PLANO_ADVENTURE_OS_UNIFICADO.md)).

## Checklist (ordem fixa)

1. **Prazos Asana** — Na raiz do monorepo, com `ASANA_ACCESS_TOKEN` configurado ([`docs/INFISICAL_SYNC.md`](../../../../docs/INFISICAL_SYNC.md)):
   ```bash
   pnpm check-deadlines
   ```
   Se o token não estiver disponível, abrir o projeto **Tasks** no Asana e revisar manualmente cartões com `due` na semana.

2. **BACKLOG** — Ler [`docs/BACKLOG.md`](../../../../docs/BACKLOG.md): linhas **P0** e **P1**; anotar o que mudou (status, dono, data).

3. **SESSION_LOG** — Acrescentar bloco curto em [`docs/ACORE_SESSION_LOG.md`](../../../../docs/ACORE_SESSION_LOG.md):
   - **Feito** (3 bullets máx.)
   - **Próximos** (3 bullets máx.)
   - **Bloqueios** (quem destrava)

4. **OS Registry** — Se na semana entrou **MCP novo**, **workflow n8n**, **cron** ou integração semelhante: garantir **uma linha** em [`knowledge/06_CONHECIMENTO/os-registry/INDEX.md`](../../../06_CONHECIMENTO/os-registry/INDEX.md) (ou PR aberto com essa linha). Sem doc → não considerar automação “adotada”.

5. **Inbox / GTD** — Se houver captura nova: aplicar [`playbook-operacional-gtd-lite-comando-estelar.md`](playbook-operacional-gtd-lite-comando-estelar.md) (triagem mínima: prioridade, owner, nível Core/Cliente/Labs, due para P0/P1).

## Ligação com outros playbooks

| Tema | Documento |
|------|-----------|
| P0 Vercel Core | [`tarefa-acore-p0-vercel-infisical-github-2026-03.md`](tarefa-acore-p0-vercel-infisical-github-2026-03.md) |
| Martech 01/04 | [`martech-mvp-war-room-2026-04.md`](martech-mvp-war-room-2026-04.md) |
| Roteamento Grove | [`../../../06_CONHECIMENTO/protocolo-grove-roteamento.md`](../../../06_CONHECIMENTO/protocolo-grove-roteamento.md) |

---

*Instaurado em 2026-03-23 (execução plano ceo@).*
