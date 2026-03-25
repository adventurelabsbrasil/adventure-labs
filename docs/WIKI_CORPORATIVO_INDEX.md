---

## title: Wiki Corporativo Adventure Labs — INDEX
owner: Torvalds (CTO)
updated: 2026-03-25
version: 1.0.0
status: ativo

# Wiki Corporativo Adventure Labs — INDEX

## Como funciona este inventário

- SSOT por domínio: cada módulo é dono de um tipo de informação.
- Leitura humano+máquina: tabelas padronizadas e campos fixos.
- Atualização localizada: cada alteração no código atualiza um único módulo dono.

## Tabela mestre de módulos


| modulo | titulo                            | owner          | ultima_atualizacao | status   | link                                                   |
| ------ | --------------------------------- | -------------- | ------------------ | -------- | ------------------------------------------------------ |
| M01    | Governança, stack e taxonomia     | Torvalds (CTO) | 2026-03-25         | ativo    | `docs/inventario/M01-governanca-stack-taxonomia.md`    |
| M02    | Apps, rotas, scripts e deploy     | Torvalds (CTO) | 2026-03-25         | rascunho | `docs/inventario/M02-apps-rotas-scripts-deploy.md`     |
| M03    | Dados, banco, RLS e migrations    | Torvalds (CTO) | 2026-03-25         | rascunho | `docs/inventario/M03-dados-banco-rls-migrations.md`    |
| M04    | Auth, segurança, envs e tenants   | Torvalds (CTO) | 2026-03-25         | rascunho | `docs/inventario/M04-auth-seguranca-envs-tenants.md`   |
| M05    | IA, agentes, skills, tools e MCPs | Torvalds (CTO) | 2026-03-25         | rascunho | `docs/inventario/M05-ia-agentes-skills-tools-mcps.md`  |
| M06    | Workflows, automações e cronjobs  | Torvalds (CTO) | 2026-03-25         | rascunho | `docs/inventario/M06-workflows-automacoes-cronjobs.md` |
| M07    | Integrações terceiras e APIs      | Torvalds (CTO) | 2026-03-25         | rascunho | `docs/inventario/M07-integracoes-terceiros-apis.md`    |
| M08    | Infra, servidores e CI/CD         | Torvalds (CTO) | 2026-03-25         | rascunho | `docs/inventario/M08-infra-servidores-ci-cd.md`        |
| M09    | Docs, conhecimento e guidelines   | Torvalds (CTO) | 2026-03-25         | rascunho | `docs/inventario/M09-docs-conhecimento-guidelines.md`  |
| M10    | Produto, gestão e roadmap         | Torvalds (CTO) | 2026-03-25         | rascunho | `docs/inventario/M10-produto-gestao-roadmap.md`        |
| M11    | Glossário, runbooks e ADRs        | Torvalds (CTO) | 2026-03-25         | rascunho | `docs/inventario/M11-glossario-runbooks-adrs.md`       |
| M12    | Contexto IA, RAGs e prompts       | Torvalds (CTO) | 2026-03-25         | rascunho | `docs/inventario/M12-contexto-ia-rags-prompts.md`      |


## Regras de contribuição (por PR)

- Atualizar somente o módulo SSOT dono da entidade alterada.
- Não duplicar tabelas entre módulos; referenciar o módulo proprietário.
- Manter frontmatter obrigatório em todos os módulos.
- Nunca inserir segredo ou valor real de env.
- Marcar `N/A`, `[PENDENTE]` ou `[NÃO ENCONTRADO]` quando faltar evidência.

## Referências canônicas

- `knowledge/06_CONHECIMENTO/os-registry/INDEX.md`
- `knowledge/00_GESTAO_CORPORATIVA/MANUAL_TAXONOMIA_REPOSITORIO.md`
- `docs/SUPABASE_INVENTARIO_TABELAS.md`
- `docs/inventario/_raw/RAW_DATA_v2.md`

## Mapeamento rápido de ownership


| entidade                                  | modulo_dono |
| ----------------------------------------- | ----------- |
| taxonomia, convenções, SSOT               | M01         |
| apps/rotas/scripts/deploy                 | M02         |
| schemas, tabelas, migrations, RLS         | M03         |
| auth, envs, tenants, segurança            | M04         |
| agentes, skills, tools, MCPs, modelos IA  | M05         |
| workflows, automações, cronjobs, webhooks | M06         |
| integrações e APIs de terceiros           | M07         |
| infraestrutura e pipelines                | M08         |
| documentação e acervo histórico           | M09         |
| gestão de produto e roadmap               | M10         |
| glossário operacional e ADRs              | M11         |
| prompts, RAG, guardrails de IA            | M12         |


