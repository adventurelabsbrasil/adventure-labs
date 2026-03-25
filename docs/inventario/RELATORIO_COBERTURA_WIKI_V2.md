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

- M02: auth/middleware por rota admin [PENDENTE]
- M03: tenant_scope detalhado por tabela [PENDENTE]
- M04: fluxos auth por app [PENDENTE]
- M05: catálogo completo de owners de agentes/skills [PENDENTE]
- M06: matriz de webhooks com contrato de I/O [PENDENTE]
- M07: WorkOS/Stripe/Resend/Twilio/Slack/Discord/Notion/Airtable [NÃO ENCONTRADO]
- M08: VPS/SSH/POPs [PENDENTE]/[NÃO ENCONTRADO]
- M11: metadados completos de ADR [PENDENTE]
- M12: pgvector/gems/ai templates [NÃO ENCONTRADO]

## Próximos passos (MVP+1)

1. Fazer varredura de rotas `apps/core/admin/src/app/**/route.ts` com método/auth/middleware por arquivo.
2. Fechar matriz de RLS por tabela com referência de policy e tenant_scope.
3. Criar inventário de infraestrutura avançada (VPS/SSH/domínios operacionais) no M08.
4. Substituir `owner: TBD` por responsáveis reais em todos os módulos.
5. Adicionar validação automatizada de frontmatter + colunas obrigatórias para os módulos M01-M12.
---
title: Relatório de Cobertura — Wiki Corporativa v2
updated: 2026-03-25
version: 1.0.0
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
| M02 | rotas/admin middleware | auth/middleware por rota App Router | [PENDENTE] |
| M03 | tenant_scope específico | granularidade por tabela em todas as migrações | [PENDENTE] |
| M04 | auth flow detalhado por app | documentação técnica de fluxo completo | [PENDENTE] |
| M05 | catálogo completo admin agents | varredura detalhada de owners e acionamentos | [PENDENTE] |
| M06 | webhook matrix | endpoint por endpoint com contrato I/O | [PENDENTE] |
| M07 | WorkOS/Stripe/etc | integrações não evidenciadas no recorte atual | [NÃO ENCONTRADO] |
| M08 | VPS/SSH/POPs | inventário infra avançada | [PENDENTE]/[NÃO ENCONTRADO] |
| M11 | ADR metadata completa | datas/status detalhados para todos ADRs | [PENDENTE] |
| M12 | pgvector/gems/aitemplates | catálogo explícito no repo | [NÃO ENCONTRADO] |

## 3) Sugestões de próximos passos (MVP+1)

1. Fechar rastreio de rotas `apps/core/admin/src/app/**/route.ts` e mapear auth/middleware por rota.
2. Completar matriz de RLS por tabela com referência direta de policy + `tenant_scope`.
3. Criar inventário de infraestrutura avançada (VPS/SSH/POPs/domains) em um anexo técnico do M08.
4. Padronizar owner real por módulo e por entidade crítica (hoje está `TBD` em boa parte do inventário).
5. Criar validação automatizada de frontmatter + colunas obrigatórias para módulos M01-M12.
