---
title: Manual — Onde fica a documentação de agentes e skills
domain: conhecimento
tags: [agentes, skills, c-suite, documentação, grove, manual]
updated: 2026-03-21
---

# Manual — Onde fica a documentação de agentes e skills

Este arquivo é o **índice canônico** no monorepo: não existe um único PDF “manual de agentes”; a visão está distribuída entre a raiz, `knowledge/` e o submodule **apps/core/admin**. Use-o para onboarding (humanos, Founder, C-Suite) e para orientar IAs no Cursor.

**Adventure OS (descoberta ampla):** [`os-registry/INDEX.md`](os-registry/INDEX.md) + manuais [`docs/MANUAL_IA_ADVENTURE_OS.md`](../../docs/MANUAL_IA_ADVENTURE_OS.md) / [`docs/MANUAL_HUMANO_ADVENTURE_OS.md`](../../docs/MANUAL_HUMANO_ADVENTURE_OS.md).

---

## Ordem de leitura sugerida

1. **[os-registry/INDEX.md](os-registry/INDEX.md)** — mapa operacional do Adventure OS (MCPs, crons, storage, clientes…).
2. **[AGENTS.md](../../AGENTS.md)** (raiz) — diretrizes e estrutura.
3. **[arquitetura-agentic-csuite-skills.md](arquitetura-agentic-csuite-skills.md)** — arquitetura e fluxo.
4. **[apps/core/admin/agents/skills/README.md](../../apps/core/admin/agents/skills/README.md)** — catálogo de skills e como criar novas.

Complementos: manual da empresa, WorkOS, compilado para IA (abaixo).

---

## Documento principal de diretrizes (multi-agentes)

| Recurso | Caminho | Conteúdo |
|---------|---------|----------|
| **AGENTS.md** | [../../AGENTS.md](../../AGENTS.md) | Identidade (Grove, C-Suite), pacote de agente (AGENT, SOUL, USER, …), agente ≠ skill, onde buscar contexto, exemplos (Andon, gerentes de conta, benchmark), sigilo e validação. |

---

## Arquitetura (C-Suite + Skills + fluxo)

| Recurso | Caminho | Conteúdo |
|---------|---------|----------|
| **Arquitetura agêntica** | [arquitetura-agentic-csuite-skills.md](arquitetura-agentic-csuite-skills.md) | Camadas (C-Suite planeja / Skills executam), fluxo Founder → Grove → C-Level → Skill, onde cada camada vive (`apps/core/admin/agents/`, `apps/core/admin/agents/skills/`), agentes de apoio, template OpenClaw-aligned. |

*(Paths no doc de arquitetura usam `/agents/` como atalho relativo ao app Admin.)*

---

## Catálogo e como criar skills

| Recurso | Caminho | Conteúdo |
|---------|---------|----------|
| **README das skills** | [../../apps/core/admin/agents/skills/README.md](../../apps/core/admin/agents/skills/README.md) | Catálogo por owner (CTO, COO, CMO, CFO, CPO, contexto cliente), persona/email/role, estrutura de pasta, frontmatter. |
| **Template SKILL** | [../../apps/core/admin/agents/skills/_template/SKILL.md](../../apps/core/admin/agents/skills/_template/SKILL.md) | Modelo para nova skill. |

---

## Templates de agente

| Recurso | Caminho | Conteúdo |
|---------|---------|----------|
| **Template pacote** | [../../apps/core/admin/agents/_template_agent/](../../apps/core/admin/agents/_template_agent/) | AGENT.md, SOUL, USER, COMPANY, REDLINES, PERMISSIONS, VOICE, MEMORY, HEARTBEAT. |
| **Exemplo completo** | [../../apps/core/admin/agents/andon_asana/](../../apps/core/admin/agents/andon_asana/) | Agente de apoio Asana (referenciado no AGENTS.md). |

---

## Manual da empresa (contexto para humanos e IA)

| Recurso | Caminho | Conteúdo |
|---------|---------|----------|
| **MANUAL_ADVENTURE_LABS** | [../00_GESTAO_CORPORATIVA/MANUAL_ADVENTURE_LABS.md](../00_GESTAO_CORPORATIVA/MANUAL_ADVENTURE_LABS.md) | Visão da empresa; seções **2.2 C-Suite (agentes)** e **8. Para agentes IA** apontam para `knowledge/`, skills e AGENTS.md. |

---

## Admin / WorkOS (o que agentes precisam saber do app)

| Recurso | Caminho | Conteúdo |
|---------|---------|----------|
| **WorkOS Admin** | [workos-admin-contexto-agentes.md](workos-admin-contexto-agentes.md) | Contexto do Admin para agentes (stack); não substitui o doc de arquitetura agêntica. |

---

## Compilado para IA (estado + roadmap agregado)

| Recurso | Caminho | Conteúdo |
|---------|---------|----------|
| **Coleção docs para IA** | [../../docs/COLEÇÃO_DOCS_PARA_IA.md](../../docs/COLEÇÃO_DOCS_PARA_IA.md) | READMEs agregados (apps, workflows, tools, skills, agentes). |
| **Referência C-Suite** | [referencia-coleção-docs-para-ia.md](referencia-coleção-docs-para-ia.md) | Onde está o compilado e como regenerar (`./scripts/gerar-coleção-docs-para-ia.sh`). |

---

## Wiki GitHub (leitura navegável)

| Recurso | Caminho / URL | Conteúdo |
|---------|---------------|----------|
| **Wiki agêntica (GitHub)** | `https://github.com/adventurelabsbrasil/adventure-labs/wiki` | Versão navegável deste manual: Home, arquitetura e fluxo (Mermaid), C-Suite e Grove, agentes de apoio, skills por owner, automações e integrações. |
| **Fonte da wiki** | `wiki/` na raiz do monorepo | Arquivos Markdown que alimentam a Wiki. Sincronizados por `scripts/publish-github-wiki.sh` (ver `docs/WIKI_GITHUB_AGENTIC.md`). |

---

## Personas C-Level e Grove (delegação)

Arquivos em **[apps/core/admin/agents/](../../apps/core/admin/agents/)** (submodule): `grove_ceo.md`, `ohno_coo.md`, `torvalds_cto.md`, `ogilvy_cmo.md`, `buffett_cfo.md`, `cagan_cpo.md` — instruções de persona e delegação; complementam a arquitetura.

Pacotes de agentes nomeados (pastas com `AGENT.md`): mesmo diretório, ex.: `andon_asana/`, `benchmark_adventure/`, `gerente_rose/`, etc.

---

## Resumo

| Pergunta | Onde ir |
|----------|---------|
| Regras gerais e lista de agentes na raiz | [AGENTS.md](../../AGENTS.md) |
| Como funciona C-Suite vs Skill | [arquitetura-agentic-csuite-skills.md](arquitetura-agentic-csuite-skills.md) |
| Lista de skills e como criar | [apps/core/admin/agents/skills/README.md](../../apps/core/admin/agents/skills/README.md) |
| Índice único (este manual) | `knowledge/06_CONHECIMENTO/manual-agentes-e-skills.md` |
