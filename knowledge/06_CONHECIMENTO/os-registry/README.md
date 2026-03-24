---
title: OS Registry — Adventure OS
domain: conhecimento
tags: [os-registry, ssot, adventure-os, descoberta]
updated: 2026-03-22
---

# OS Registry — índice operacional do Adventure OS

**Prioridade:** documentação, diretrizes e organização do repositório **antes** de expandir automações (n8n/Vercel). Ver [docs/PLANO_ADVENTURE_OS_UNIFICADO.md](../../../docs/PLANO_ADVENTURE_OS_UNIFICADO.md) — secção *Ordem de prioridade*.

Este diretório é o **registro de descoberta** do **Adventure OS**: um único lugar para perguntar *onde está X*, *quem mantém* e *qual documento ler primeiro* — em alinhamento com **ACORE** (stack e fases).

- **Stack e filosofia** continuam em [`ACORE_CONSTITUTION.md`](../../../ACORE_CONSTITUTION.md) (raiz).
- **Fases e entregas** em [`docs/ACORE_ROADMAP.md`](../../../docs/ACORE_ROADMAP.md).
- **Backlog técnico** em [`docs/BACKLOG.md`](../../../docs/BACKLOG.md) + captura operacional no **Asana** (projeto Tasks — ver [`INDEX.md`](INDEX.md)).

## Leitura obrigatória (onboarding)

| Ordem | Recurso |
|-------|---------|
| 1 | **[INDEX.md](INDEX.md)** — mapa mestre por domínio |
| 2 | **[protocolo-grove-roteamento.md](../protocolo-grove-roteamento.md)** — canal único, GTD, distribuição WorkOS / C-Suite / técnico |
| 3 | [`docs/MANUAL_HUMANO_ADVENTURE_OS.md`](../../../docs/MANUAL_HUMANO_ADVENTURE_OS.md) — fluxo humano |
| 4 | [`docs/MANUAL_IA_ADVENTURE_OS.md`](../../../docs/MANUAL_IA_ADVENTURE_OS.md) — fluxo agentes / Cursor |
| 5 | [`AGENTS.md`](../../../AGENTS.md) — diretrizes multi-agente |

## Como contribuir

- Ao adicionar **MCP**, **workflow n8n**, **CLI**, **app**, **skill** ou **runbook** novo: atualize **`INDEX.md`** na secção certa (mesmo que seja um stub com link).
- PRs que introduzem artefatos rastreáveis: checklist **“Atualizei o OS Registry?”**
- Não colocar **segredos** nem **PII** neste diretório — apenas nomes de variáveis e ponteiros.

## Fase 2 (depois da base estável)

- Manifestos YAML opcionais: pasta [`manifests/`](manifests/README.md).
- Script opcional: [`tools/scripts/validate-registry-links.sh`](../../../tools/scripts/validate-registry-links.sh).

*Isto é **metadado e validação**, não substitui a regra “doc + INDEX antes de novo cron/webhook em produção”.*

## Diagramas

Exports Mermaid ou figuras para wiki: [`diagrams/`](diagrams/README.md).
