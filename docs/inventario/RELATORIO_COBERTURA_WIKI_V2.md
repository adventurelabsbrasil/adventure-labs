# Relatório de Cobertura — Wiki Corporativa v2

## Total de entidades mapeadas por módulo

| modulo | entidades_mapeadas |
|---|---:|
| M01 | 18 |
| M02 | 16 |
| M03 | 21 |
| M04 | 20 |
| M05 | 16 |
| M06 | 15 |
| M07 | 20 |
| M08 | 14 |
| M09 | 14 |
| M10 | 14 |
| M11 | 13 |
| M12 | 13 |
| **Total** | **194** |

## Itens [PENDENTE] e [NÃO ENCONTRADO]

- M02: auth/middleware por rota admin [RESOLVIDO em 2026-03-26]
- M03: tenant_scope detalhado por tabela [RESOLVIDO em 2026-03-26]
- M04: fluxos auth por app [RESOLVIDO em 2026-03-26]
- M05: catálogo completo de owners de agentes/skills [RESOLVIDO em 2026-03-26]
- M06: matriz de webhooks com contrato de I/O [RESOLVIDO em 2026-03-26]
- M07: WorkOS/Stripe/Resend/Twilio/Slack/Discord/Notion/Airtable [TRATADO com evidência/N/A justificado]
- M08: VPS/SSH/POPs [RESOLVIDO em 2026-03-26]
- M11: metadados completos de ADR [RESOLVIDO em 2026-03-26]
- M12: pgvector/gems/ai templates [TRATADO: pgvector evidenciado; gems/aitemplates N/A justificado]

## Próximos passos (MVP+1)

1. Executar revisão quinzenal para manter `updated/version` e evitar regressão de cobertura.
2. Ajustar limiares de drift (V10.1/V10.2) por release conforme volume de mudanças.
3. Evoluir checks semânticos para M05/M09 com validação de cobertura por entidade.
---
title: Relatório de Cobertura — Wiki Corporativa v2
updated: 2026-03-26
version: 1.2.0
sources:
  - docs/WIKI_CORPORATIVO_INDEX.md
  - docs/inventario/_raw/RAW_DATA_v2.md
  - docs/inventario/M01-governanca-stack-taxonomia.md
  - docs/inventario/M02-apps-rotas-scripts-deploy.md
  - docs/inventario/M03-dados-banco-rls-migrations.md
  - docs/inventario/M04-auth-seguranca-envs-tenants.md
  - docs/inventario/M05-ia-agentes-skills-tools-mcps.md
  - docs/inventario/M06-workflows-automacoes-cronjobs.md
  - docs/inventario/M07-integracoes-terceiros-apis.md
  - docs/inventario/M08-infra-servidores-ci-cd.md
  - docs/inventario/M09-docs-conhecimento-guidelines.md
  - docs/inventario/M10-produto-gestao-roadmap.md
  - docs/inventario/M11-glossario-runbooks-adrs.md
  - docs/inventario/M12-contexto-ia-rags-prompts.md
---

# Relatório de Cobertura — Wiki Corporativa v2

## 1) Total de entidades mapeadas por módulo (snapshot)

| modulo | entidades_mapeadas | observacao |
|---|---:|---|
| M01 | 18 | contrato SSOT + ownership + taxonomia |
| M02 | 16 | apps core, rotas, scripts e fora do MVP |
| M03 | 21 | tabelas, RLS e escopo de migrations |
| M04 | 20 | envs, auth e tenants |
| M05 | 16 | agentes, skills, tools e MCPs |
| M06 | 15 | workflows, actions e cronjobs |
| M07 | 20 | integrações derivadas por env+package |
| M08 | 14 | infra, CI/CD e domínios |
| M09 | 14 | docs, guidelines e acervo histórico |
| M10 | 14 | produto, gestão e roadmap |
| M11 | 13 | glossário, runbooks e ADRs |
| M12 | 13 | contexto IA, RAG e prompts |
| **Total** | **194** | cobertura documental inicial do MVP |

## 2) Itens marcados como [PENDENTE] ou [NÃO ENCONTRADO]

| modulo | tipo | item | status |
|---|---|---|---|
| M02 | rotas/admin middleware | auth/middleware por rota App Router | [RESOLVIDO] |
| M03 | tenant_scope específico | granularidade por tabela em migrações críticas | [RESOLVIDO] |
| M04 | auth flow detalhado por app | documentação técnica de fluxo completo | [RESOLVIDO] |
| M05 | catálogo completo admin agents | owners e acionamentos principais | [RESOLVIDO] |
| M06 | webhook matrix | endpoint por endpoint com contrato I/O principal | [RESOLVIDO] |
| M07 | WorkOS/Stripe/etc | integrações sem evidência no recorte | [N/A JUSTIFICADO] |
| M08 | VPS/SSH/POPs | inventário infra avançada | [RESOLVIDO] |
| M11 | ADR metadata completa | datas/status/arquivo por ADR | [RESOLVIDO] |
| M12 | pgvector/gems/aitemplates | pgvector evidenciado + itens sem evidência tratados | [N/A JUSTIFICADO] |

## 3) Sugestões de próximos passos (MVP+1)

1. Integrar validação wiki em workflow automático de PR.
2. Incluir checks semânticos automatizados para endpoint coverage (M02/M06) e status de migrations (M03).
3. Rodar auditoria quinzenal de consistência entre INDEX, módulos e relatório de cobertura.

## 4) Rodada semântica aplicada (2026-03-26)

- M02: cobertura expandida para endpoints operacionais de `csuite` e `meta`.
- M03: status de `admin migrations` atualizado para evidência real (`ativo`).
- M06: matriz I/O ampliada com endpoints faltantes (`csuite`, `meta/accounts`, `meta/topics`).

## 5) Encerramento formal desta fase

- Plano de modulação da Wiki v2 **concluído** em 2026-03-26.
- Critérios de pronto atendidos: pendências tratadas (`evidenciado` ou `N/A justificado`), owners sem `TBD`, validação estrutural+semântica automatizada e workflow de PR ativo.
- Próxima revisão quinzenal sugerida: 2026-04-09.
