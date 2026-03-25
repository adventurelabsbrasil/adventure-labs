---
module: M01
title: Governança, stack e taxonomia
ssot: true
owner: Torvalds (CTO)
updated: 2026-03-25
version: 1.0.0
apps_scope: [admin, adventure, monorepo]
review_sla: por PR + quinzenal
sources:
  - knowledge/06_CONHECIMENTO/os-registry/INDEX.md
  - knowledge/00_GESTAO_CORPORATIVA/MANUAL_TAXONOMIA_REPOSITORIO.md
  - docs/inventario/_raw/RAW_DATA_v2.md
---

# M01 — Governança, stack e taxonomia

## Contrato SSOT do inventário

- Lei 1: uma única SSOT por domínio de documentação.
- Lei 2: estrutura legível por humano e máquina (campos fixos, enums fechados).
- Lei 3: atualização localizada (uma mudança atualiza um módulo dono).

## Matriz de ownership dos módulos

| modulo | dominio_ssot | tipo_conteudo | atualiza_quando |
|---|---|---|---|
| M01 | governança e taxonomia | regras e contrato | mudança de regra, topologia ou padrão |
| M02 | apps/rotas/scripts/deploy | catálogo operacional de apps | novo app, rota, script ou mudança de runtime |
| M03 | dados/rls/migrations | schemas/tabelas/policies | nova migration, alteração de RLS |
| M04 | auth/segurança/envs/tenants | controle de acesso e envs | mudança de provider, auth flow, env key |
| M05 | IA/agentes/skills/tools/mcps | superfícies agentic | novo agente/skill/tool/mcp |
| M06 | workflows/automações/cronjobs | automação e gatilhos | novo workflow, trigger ou cron |
| M07 | integrações/APIs terceiras | dependências externas | novo serviço externo ou credencial de integração |
| M08 | infra/servidores/ci-cd | execução e entrega | mudança de pipeline/deploy/provedor |
| M09 | docs/knowledge/guidelines | base documental e acervo | novo guideline/doc/estrutura de conhecimento |
| M10 | produto/gestão/roadmap | governança de portfólio | mudança de prioridade, backlog e roadmap |
| M11 | glossário/runbooks/adrs | operação e linguagem comum | novo ADR/runbook/termo |
| M12 | contexto IA/rags/prompts | contexto de IA e prompts | mudança de prompt-base, RAG, guardrail IA |

## Taxonomia oficial do repositório

| entidade | padrao | exemplo | status |
|---|---|---|---|
| domínio de conhecimento | `NN_nome` | `00_GESTAO_CORPORATIVA` | ativo |
| projeto/app | kebab-case | `young-talents`, `lidera-space` | ativo |
| migration SQL | `YYYYMMDDHHMMSS_descricao.sql` | `20260324140000_sdr_wizard_leads.sql` | ativo |
| documentação de módulo | `MXX-*.md` | `M03-dados-banco-rls-migrations.md` | ativo |
| arquivo sensível | não versionar | `.env`, tokens, credenciais | regra obrigatória |

## Convenção canônica de nomes (anti-drift)

| entidade | nome_canônico | aliases_aceitos | observacao |
|---|---|---|---|
| app Lidera Space (slug) | `lidera-space` | `lidera/space` (somente path legado) | usar `lidera-space` em textos e tabelas |
| app Young Talents (slug) | `young-talents` | `young-talents-` (histórico), `young_talents` (apenas schema SQL) | usar `young-talents` para app/path |

## Stack macro do monorepo

| tecnologia | versão | camada | uso | onde_aplica | status |
|---|---|---|---|---|---|
| Next.js | N/A | frontend/fullstack | apps core e cliente | `apps/core/admin`, `apps/core/elite`, clientes | ativo |
| React + Vite | N/A | frontend | apps de cliente e labs | `apps/core/adventure`, `apps/clientes/**`, `apps/labs/**` | ativo |
| Supabase Postgres + RLS | N/A | dados | banco transacional multi-tenant | `supabase/`, `apps/**/supabase` | ativo |
| pnpm workspaces | N/A | build/workspace | gestão de pacotes monorepo | raiz do monorepo | ativo |
| n8n | N/A | automação | workflows operacionais | `workflows/n8n` | ativo |

## Regras de contribuição (governança)

- Todo PR que altera estrutura, auth, dados ou automação deve atualizar o módulo SSOT correspondente.
- Não duplicar tabelas de inventário entre módulos; usar link para módulo dono.
- Itens sem evidência no código devem usar `a mapear` ou `não evidenciado no escopo atual`.
- Campo de env `valor` deve ser sempre `[oculto]` ou `••••••`.

## Entidades adicionais obrigatórias do programa

| grupo | cobertura_modulo | status_atual |
|---|---|---|
| Clients, Tenants, Companies, Users | M04 e M10 | em mapeamento |
| Agents, Skills, Tools, MCPs, CLIs | M05 | em mapeamento |
| Workflows, Cronjobs, Webhooks | M06 | em mapeamento |
| Servers, Deploys, Git, SSH, VPS | M08 | em mapeamento |
| Roadmaps, Backlogs, Reports, Plans | M10 | em mapeamento |
| RAGs, Prompts, Models, Guardrails | M12 | em mapeamento |
| Files/Storage/Artefacts | M09 | em mapeamento |

## Como atualizar este módulo

- Gatilho de atualização:
  - mudança de padrão de nomenclatura;
  - mudança de regra SSOT;
  - alteração na topologia do monorepo.
- Checklist:
  - validar matriz de ownership M01-M12;
  - validar regras de taxonomia e segurança;
  - validar stack macro e status.
- Módulo pai:
  - `docs/WIKI_CORPORATIVO_INDEX.md`

## Cobertura e fora de escopo

- Cobre: contrato global, taxonomia e governança.
- Não cobre: inventário detalhado de rotas, tabelas, envs e integrações (delegado para M02-M08, M12).
