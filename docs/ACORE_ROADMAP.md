# ACORE 1.0 — roadmap por fases

Documento único de **etapas numeradas** espelhando a [ACORE_CONSTITUTION.md](../ACORE_CONSTITUTION.md) (baseline) e o quadro operacional [BACKLOG.md](BACKLOG.md).  
**Fonte da verdade para tarefas e datas:** [BACKLOG.md](BACKLOG.md) + Asana. **Handoff de sessão:** [ACORE_SESSION_LOG.md](ACORE_SESSION_LOG.md).

**Roadmap de produto Admin/CRM (Fase 2+):** [knowledge/00_GESTAO_CORPORATIVA/backlogs_roadmap/roadmap-admin-crm.md](../knowledge/00_GESTAO_CORPORATIVA/backlogs_roadmap/roadmap-admin-crm.md)

**Adventure OS:** base documental e registry **antes** de expandir automacoes — [PLANO_ADVENTURE_OS_UNIFICADO.md](PLANO_ADVENTURE_OS_UNIFICADO.md) (*Ordem de prioridade*); descoberta em [os-registry/INDEX.md](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md).

---

## Fase 0 — Baseline e governança

| Item | Estado | Evidência / notas |
|------|--------|-------------------|
| Constituição ACORE congelada | Feito | [ACORE_CONSTITUTION.md](../ACORE_CONSTITUTION.md) |
| Taxonomia monorepo (`apps/core`, `labs`, `clientes`, `packages`) | Feito | [.cursorrules](../.cursorrules) |
| BACKLOG com Issue ID + P0–P3 | Em evolução | [BACKLOG.md](BACKLOG.md) |
| Log de sessão para continuidade | Feito | [ACORE_SESSION_LOG.md](ACORE_SESSION_LOG.md) |
| Adventure OS — registry, manuais, protocolo Grove, prioridade doc → automação | Fase 2 alinhamento (ritual humano, braindump, prompt retomada, **pt-BR / inglês** em [`.cursor/rules/adventure-locale-pt-br.mdc`](../.cursor/rules/adventure-locale-pt-br.mdc)) | [PLANO_ADVENTURE_OS_UNIFICADO.md](PLANO_ADVENTURE_OS_UNIFICADO.md), [os-registry/README.md](../knowledge/06_CONHECIMENTO/os-registry/README.md), [ACORE_SESSION_LOG](ACORE_SESSION_LOG.md) |
| ADRs (decisões estruturais) | Em evolução | [docs/adr/README.md](adr/README.md) — [0001](adr/0001-fonte-verdade-tarefas-asana-backlog-adv-tasks.md), [0002](adr/0002-clients-submodule-vs-apps-clientes-workspace.md) aceites |

---

## Fase 1 — Segredos e desenvolvimento local

| Item | Estado | Evidência / notas |
|------|--------|-------------------|
| Infisical: documentação + push em lote + `--path` na raiz | Feito | [INFISICAL_SYNC.md](INFISICAL_SYNC.md), `tools/scripts/infisical-push-env-local.sh` |
| Apps sem `infisical run` embutido; raiz com `pnpm admin:dev`, etc. | Feito | `package.json` raiz + apps |
| Admin Next.js em dev com secrets injetados | Feito | Relatado em ACORE_SESSION_LOG |
| Checagem P0 vs Asana | Feito | `pnpm check-deadlines`, `scripts/check-deadlines.sh` |

---

## Fase 2 — Frontend em produção (Vercel)

| Item | Estado | Evidência / notas |
|------|--------|-------------------|
| Admin multi-tenant / deploys por cliente | Parcial | Ver [ADMIN_POR_CLIENTE_SUBDOMINIO.md](ADMIN_POR_CLIENTE_SUBDOMINIO.md) |
| Young Talents: código Supabase Auth | Feito | Plataforma em `apps/clientes/young-talents/plataforma` |
| Young: produção alinhada a migrations RLS (025/026) | Em validação | P0 BACKLOG — teste login; `clients/04_young/young-talents/supabase/migrations` |

---

## Fase 3 — Dados, Ads e operações (Supabase + integrações)

| Item | Estado | Evidência / notas |
|------|--------|-------------------|
| RLS + `tenant_id` em tabelas de cliente | Regra contínua | [.cursorrules](../.cursorrules) |
| Google Ads API no Admin (lista / status campanhas) | Parcial | Rotas `/api/ads/google/*`; P0 Rose — [BACKLOG](BACKLOG.md), [GOOGLE_ADS_CONTAS_REGISTRO.md](GOOGLE_ADS_CONTAS_REGISTRO.md) |
| Registro Customer IDs por conta | Feito | [GOOGLE_ADS_CONTAS_REGISTRO.md](GOOGLE_ADS_CONTAS_REGISTRO.md) |
| MVP Martech 2026T2 (LP, forms, GTM, editorial…) | Em aberto | P1 no [BACKLOG](BACKLOG.md) / Asana |
| Legal / compliance (aprovações campanha) | Em aberto | P0 Asana no BACKLOG |

---

## Fase 4 — Backend, bots e GitOps (Constituição §1)

| Item | Estado | Evidência / notas |
|------|--------|-------------------|
| n8n + Evolution API na VPS Hostinger | Pendente | Constituição; P2 BACKLOG — Coolify |
| Coolify na VPS; apps saindo do MacBook | Pendente | P2 BACKLOG; agenda CTO |
| GitHub → Coolify / Vercel (sem depender de SSH manual) | Parcial | Vercel em uso; VPS pipeline a fechar |

---

## Fase 5 — Cérebro (IA) e Fase 2 Admin (produto)

| Item | Estado | Evidência / notas |
|------|--------|-------------------|
| OpenRouter + Gemini nos fluxos aprovados | Contínuo | Workflows / Admin conforme features |
| Admin: Omie, KPIs dashboard, evoluções CRM | Backlog | [roadmap-admin-crm.md](../knowledge/00_GESTAO_CORPORATIVA/backlogs_roadmap/roadmap-admin-crm.md) |

---

## Mapa rápido: BACKLOG P0/P1/P2 → fase

| Prioridade (BACKLOG) | Fase ROADMAP principal |
|----------------------|-------------------------|
| P0 Rose Google Ads, Carla Young, Legal | Fase 2–3 |
| P1 MVP Martech | Fase 3 |
| P2 VPS + Coolify | Fase 4 |

---

## Manutenção deste ficheiro

1. Após marcos grandes, atualizar coluna **Estado** e notas.  
2. Não duplicar o quadro completo do BACKLOG — apenas orientar fases.  
3. Mudanças de arquitetura que contradizem a Constituição exigem **RFC ao CTO** (ver Constituição).
