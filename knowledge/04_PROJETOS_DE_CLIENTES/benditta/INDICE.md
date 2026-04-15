---
title: Benditta Marcenaria — índice canónico (repo + ops)
domain: projetos_clientes
tags: [benditta, cliente, meta, dashboard, ssot]
updated: 2026-03-24
---

# Benditta Marcenaria — índice canónico

**Fonte única** para localizar código, documentação operacional e próximos passos técnicos do cliente **Benditta** no monorepo Adventure Labs.  
Drive Google (prefixo típico **`05_BENDITTA`**) ↔ pasta Git [`clients/05_benditta`](../../../clients/05_benditta) — ver [os-registry §9](../../06_CONHECIMENTO/os-registry/INDEX.md).

**Produto comercial:** Linha Essencial (tráfego Meta; criativos e crono editorial dependem de validação com a cliente.)

## Leia nesta ordem (entrada rápida)

1. [BRIEF_OPERACIONAL_BENDITTA_LINHA_ESSENCIAL.md](./BRIEF_OPERACIONAL_BENDITTA_LINHA_ESSENCIAL.md)
2. [CONTEXTO_LINHA_ESSENCIAL.md](./CONTEXTO_LINHA_ESSENCIAL.md)
3. [RELATORIO_META_LINHA_ESSENCIAL_FASE_1_2026-03.md](./RELATORIO_META_LINHA_ESSENCIAL_FASE_1_2026-03.md)

**Contexto editorial + conversas grupo (Drive):** [CONTEXTO_LINHA_ESSENCIAL.md](./CONTEXTO_LINHA_ESSENCIAL.md) — narrativa do arranque, checklist de campanha e síntese das conversas (o export bruto fica no Drive, não no Git).

**Agente de conta (Adventure OS):** [`gerente_benditta`](../../../apps/core/admin/agents/gerente_benditta/) (owner Cagan / CPO). Skill de contexto: [`benditta-marcenaria-contexto`](../../../apps/core/admin/agents/skills/benditta-marcenaria-contexto/SKILL.md).

---

## Código e artefatos versionados

| O quê | Caminho |
|-------|---------|
| App Next.js (`@cliente/benditta-app`, porta dev típica **3002**) | [`apps/clientes/benditta/app`](../../../apps/clientes/benditta/app) |
| Pacote UI/métricas reutilizável no Admin | [`packages/benditta-meta-dashboard`](../../../packages/benditta-meta-dashboard) |
| Rotas Admin — dashboard + tabela | [`apps/core/admin/src/app/dashboard/benditta/`](../../../apps/core/admin/src/app/dashboard/benditta/) |
| Navegação Admin (menu) | [`apps/core/admin/src/app/dashboard/nav-config.ts`](../../../apps/core/admin/src/app/dashboard/nav-config.ts) (entrada **Benditta (Meta)**) |
| CSV público de referência (exemplo) | `apps/core/admin/public/benditta/BM-202603-MetaReport.csv` |
| Espelho / notas em `clients/` | [`clients/05_benditta/README.md`](../../../clients/05_benditta/README.md) |

**Regra de importação:** o Admin **não** importa código de `apps/clientes/*`; só [`@adventure-labs/benditta-meta-dashboard`](../../../packages/benditta-meta-dashboard) ([`.cursorrules`](../../../.cursorrules)).

---

## Operação local e segredos

| O quê | Como |
|-------|------|
| Dev com Infisical | Na raiz: `pnpm benditta:dev` — injeta `--path=/clientes/benditta` ([`package.json`](../../../package.json) raiz) |
| Mapa Infisical | [`docs/INFISICAL_SYNC.md`](../../../docs/INFISICAL_SYNC.md) — pasta `/clientes/benditta` para `apps/clientes/benditta/app/.env.local` |
| Triagem Asana → projeto cliente | [`tools/scripts/asana-inbox-router.mjs`](../../../tools/scripts/asana-inbox-router.mjs) (tags / título `benditta`) |

---

## Deploy e domínio (alvo)

| Tópico | Referência |
|--------|------------|
| Subdomínio alvo (lista humana) | [`docs/ADMIN_POR_CLIENTE_SUBDOMINIO.md`](../../../docs/ADMIN_POR_CLIENTE_SUBDOMINIO.md) — `benditta.adventurelabs.com.br` |
| Matriz Vercel / revisão de projetos | [`docs/VERCEL_MANUAL_VERSIONADO.md`](../../../docs/VERCEL_MANUAL_VERSIONADO.md) |
| Plano P0 Core (não bloqueia evolução Benditta) | [`docs/ACORE_ROADMAP.md`](../../../docs/ACORE_ROADMAP.md), [`.cursor/plans/acore-p0-vercel-lidera-lms.md`](../../../.cursor/plans/acore-p0-vercel-lidera-lms.md) |

---

## Roadmap técnico (issues / GitHub)

- [Benditta — GitHub Project e issues (pós-MVP)](../benditta-github-project-e-issues.md) (Meta API, Supabase `adv_*` + RLS, design tokens, etc.)

---

## Checklist — nova app ou repositório no mesmo cliente

1. **Workspace:** criar pasta sob [`apps/clientes/benditta/<nome-app>/`](../../../apps/clientes/benditta/) com `package.json` e nome `@cliente/...`.
2. **Admin:** não acople o app diretamente; extraia UI compartilhada para [`packages/`](../../../packages/) se o core precisar consumir.
3. **Infisical:** mapear `.env.local` em [`tools/scripts/infisical-push-env-local.sh`](../../../tools/scripts/infisical-push-env-local.sh) se o path não cair no padrão documentado em [`docs/INFISICAL_SYNC.md`](../../../docs/INFISICAL_SYNC.md).
4. **Subrepo próprio:** seguir [ADR-0002](../../../docs/adr/0002-clients-submodule-vs-apps-clientes-workspace.md); registrar em `clients/05_benditta/` se aplicável.
5. **Supabase / dados:** toda tabela multitenant com `tenant_id` e RLS ([`.cursorrules`](../../../.cursorrules)).

---

## Documentos relacionados (`knowledge/`)

Manutenção: ao criar doc novo centrado em Benditta, **adicione uma linha** aqui.

| Área | Documento |
|------|-----------|
| Padrão de documentação operacional de cliente | [`clients/_template/CLIENT_OPERACIONAL.md`](../../../clients/_template/CLIENT_OPERACIONAL.md) |
| Brief operacional (marca, oferta, ICP e playbook) | [BRIEF_OPERACIONAL_BENDITTA_LINHA_ESSENCIAL.md](./BRIEF_OPERACIONAL_BENDITTA_LINHA_ESSENCIAL.md) |
| **Conceito, persona e estratégia da Linha Essencial** | [CONCEITO_LINHA_ESSENCIAL.md](./CONCEITO_LINHA_ESSENCIAL.md) |
| Linha Essencial — contexto + Drive + campanhas | [CONTEXTO_LINHA_ESSENCIAL.md](./CONTEXTO_LINHA_ESSENCIAL.md) |
| Relatório cliente Meta (fase 1) + plano de retomada | [RELATORIO_META_LINHA_ESSENCIAL_FASE_1_2026-03.md](./RELATORIO_META_LINHA_ESSENCIAL_FASE_1_2026-03.md) |
| **Campanha Meta Fase 2 (Abr/2026) — para validar com a cliente** | [CAMPANHA_META_LINHA_ESSENCIAL_FASE2_2026-04.md](./CAMPANHA_META_LINHA_ESSENCIAL_FASE2_2026-04.md) |
| **Mensagem WhatsApp Lisa (quinzena abr/mai)** | [MENSAGEM_WHATS_QUINZENA_ABR_LISA_2026-04.md](./MENSAGEM_WHATS_QUINZENA_ABR_LISA_2026-04.md) |
| Perfil comportamental Lisa + dinâmica do grupo | [PERFIL_COMPORTAMENTAL_LISA.md](./PERFIL_COMPORTAMENTAL_LISA.md) |
| GitHub / issues | [benditta-github-project-e-issues.md](../benditta-github-project-e-issues.md) |
| Entregas (snapshot) | [entregas-por-cliente-2026-03.md](../entregas-por-cliente-2026-03.md) § Benditta |
| Marketing / campanhas | [campanhas-entregas-2026-03.md](../../02_MARKETING/campanhas-entregas-2026-03.md) § Benditta |
| Operação / ações | [acoes-prioritarias-2026-03.md](../../00_GESTAO_CORPORATIVA/operacao/acoes-prioritarias-2026-03.md) |
| Indicadores | [relatorio-indicadores-gerais-2026.md](../../00_GESTAO_CORPORATIVA/operacao/relatorio-indicadores-gerais-2026.md) |
| Resumo executivo | [resumo-executivo-adventure-labs-2026.md](../../00_GESTAO_CORPORATIVA/resumo-executivo-adventure-labs-2026.md) |
| DRE | [relatorio-dre-jan-mar-2026.md](../../00_GESTAO_CORPORATIVA/operacao/relatorio-dre-jan-mar-2026.md) |
| Asana / GTD | [playbook-operacional-gtd-lite-comando-estelar.md](../../00_GESTAO_CORPORATIVA/operacao/asana/playbook-operacional-gtd-lite-comando-estelar.md) |
| Manual empresa (contacto comercial) | [MANUAL_ADVENTURE_LABS.md](../../00_GESTAO_CORPORATIVA/MANUAL_ADVENTURE_LABS.md) |
| WhatsApp grupos | [whatsapp-grupos-resumo-diario-cpo.md](../../00_GESTAO_CORPORATIVA/processos/whatsapp-grupos-resumo-diario-cpo.md) |
| Backlog ideias Admin | [backlog-ideias-admin.md](../../00_GESTAO_CORPORATIVA/backlogs_roadmap/backlog-ideias-admin.md) |
| Arquivo (histórico) | [202601_Atividades.md](../../99_ARQUIVO/202601_Atividades.md), [BrainDump.md](../../99_ARQUIVO/BrainDump.md) |

---

## Mapa monorepo (resumo)

- Visão geral de pastas: [`docs/MAPA_MONOREPO_EXODO.md`](../../../docs/MAPA_MONOREPO_EXODO.md) (Integração Admin ↔ Benditta).
