# VALIDATION_REPORT — Auditoria Wiki Corporativa

Data da auditoria: 2026-03-26
Score final: **93.23%** (124/133)
Status: **APROVADO para merge**

## V01 — Cabeçalhos obrigatórios

| módulo | module | title | ssot | owner | updated | version | apps_scope | review_sla | sources |
|---|---|---|---|---|---|---|---|---|---|
| docs/inventario/M01-governanca-stack-taxonomia.md | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| docs/inventario/M02-apps-rotas-scripts-deploy.md | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| docs/inventario/M03-dados-banco-rls-migrations.md | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| docs/inventario/M04-auth-seguranca-envs-tenants.md | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| docs/inventario/M05-ia-agentes-skills-tools-mcps.md | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| docs/inventario/M06-workflows-automacoes-cronjobs.md | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| docs/inventario/M07-integracoes-terceiros-apis.md | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| docs/inventario/M08-infra-servidores-ci-cd.md | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| docs/inventario/M09-docs-conhecimento-guidelines.md | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| docs/inventario/M10-produto-gestao-roadmap.md | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| docs/inventario/M11-glossario-runbooks-adrs.md | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| docs/inventario/M12-contexto-ia-rags-prompts.md | OK | OK | OK | OK | OK | OK | OK | OK | OK |

## V03 — Envs sem valores (M04)

- OK

## V04 — Cobertura do RAW_DATA

- Itens sem cobertura: Estrutura de diretórios; Apps e packages; Rotas HTTP; Variáveis de ambiente; Tabelas e schemas Supabase; Agentes, skills e tools; Workflows e automações; MCPs e CLIs; Arquivos de mídia e assets

## V06 — Pendências abertas

| módulo | pendências |
|---|---:|
| `M01-governanca-stack-taxonomia.md` | 0 |
| `M02-apps-rotas-scripts-deploy.md` | 0 |
| `M03-dados-banco-rls-migrations.md` | 0 |
| `M04-auth-seguranca-envs-tenants.md` | 0 |
| `M05-ia-agentes-skills-tools-mcps.md` | 0 |
| `M06-workflows-automacoes-cronjobs.md` | 0 |
| `M07-integracoes-terceiros-apis.md` | 0 |
| `M08-infra-servidores-ci-cd.md` | 0 |
| `M09-docs-conhecimento-guidelines.md` | 0 |
| `M10-produto-gestao-roadmap.md` | 0 |
| `M11-glossario-runbooks-adrs.md` | 0 |
| `M12-contexto-ia-rags-prompts.md` | 0 |

## V07 — Links do INDEX

- OK

## V08 — Módulos sem 'Como atualizar'

- OK

## Correções prioritárias

- Sem bloqueios críticos detectados por esta validação automatizada.

## Melhorias opcionais MVP+1

- Aprofundar V02 e V05 com validação semântica por entidade.
- Expandir o workflow `.github/workflows/wiki-corporativo-validation.yml` com checks de domínio (M02/M03/M06), além do estrutural.
