# Snapshots Asana (Andon)

Esta pasta recebe **apenas** exportações/resumos gerados pelo agente **Andon** (skill `asana-csuite-ingest`), salvo exceção aprovada pelo Founder.

## Triagem manual (MCP / Grove)

Ficheiros `triagem-projeto-tasks-YYYY-MM-DD.md`: snapshot de leitura do projeto **Tasks** no Asana, alinhado a BACKLOG/ACORE/ADR-0001 (não substituem o Andon).

## Playbook operacional (GTD-Lite)

Para operação diária de gestão de projetos no Asana (Inbox, Core, Clientes, Labs), usar:

- [`playbook-operacional-gtd-lite-comando-estelar.md`](./playbook-operacional-gtd-lite-comando-estelar.md)
- [`manual-inventario-asana-projetos-campos-agentes-2026-03.md`](./manual-inventario-asana-projetos-campos-agentes-2026-03.md)
- Seções de referência rápida:
  - `Campos oficiais do Inbox (snapshot atual)`
  - `Padrao de preenchimento (humano + IA)`

## Estrutura macro de projetos (2026-03)

Para reduzir granularidade e manter gestão por setor/departamento, a operação passa a usar estes projetos macro além de `Marketing`, `Labs`, `ACORE — Plano & roadmap` e projetos por cliente:

- `06_CORPORATIVO_FINANCEIRO_ADMIN`
- `07_CORPORATIVO_OPERACOES_PESSOAS`
- `08_CORPORATIVO_ESTRATEGIA_PRODUTO`

Critério:

- demandas financeiras e administrativas -> `06_CORPORATIVO_FINANCEIRO_ADMIN`
- operações internas, pessoas e rotinas -> `07_CORPORATIVO_OPERACOES_PESSOAS`
- estratégia transversal e evolução de produto/negócio -> `08_CORPORATIVO_ESTRATEGIA_PRODUTO`

## Guia rápido de roteamento (1 linha)

- financeiro, bancos, notas, faturas, cartões, certificados -> `06_CORPORATIVO_FINANCEIRO_ADMIN`
- operação interna, escritório, rotinas, acessos, banco de horas -> `07_CORPORATIVO_OPERACOES_PESSOAS`
- estratégia, direção, expansão, decisões transversais -> `08_CORPORATIVO_ESTRATEGIA_PRODUTO`
- backlog técnico, infraestrutura, segurança, automações, n8n, Vercel -> `ACORE — Plano & roadmap`
- campanhas, tráfego, conteúdo, LP, mídia e performance -> `Marketing`
- experimentos, P&D, ideias de laboratório, novas frentes -> `Labs`
- demandas de execução por conta -> projeto do cliente (`01_YOUNG`, `02_LIDERA`, `03_ROSE`, `05_BENDITTA`)
- item sem contexto claro ou sem evidência suficiente -> `Inbox` (triagem obrigatória antes de executar)

## Checklist de triagem diária (5 minutos)

1. Abrir `Inbox` e filtrar tarefas abertas (não concluídas).
2. Deduplicar rapidamente:
   - se houver duplicata clara, manter a canônica e arquivar a duplicata com comentário curto.
3. Classificar cada item em um destino:
   - `ACORE — Plano & roadmap`, `Marketing`, `Labs`, projeto de cliente, `06`, `07` ou `08`.
4. Definir responsável (`assignee`) e prazo mínimo:
   - hoje, esta semana, ou data explícita.
5. Preencher campos de organização:
   - `Nível de Projeto`, `C-Suite` e `Departamento` (quando aplicável).
6. Remover da `Inbox` após mover para o projeto correto.
7. Encerrar o ritual:
   - confirmar `Inbox` zerada de tarefas abertas sem destino.

### Regra operacional

- Não iniciar execução de tarefa que ainda esteja sem projeto definido.
- Se faltar contexto, comentar na tarefa com a pergunta objetiva e manter em `Inbox` até decisão.

## Convenção

- Arquivos sugeridos: `snapshot-YYYY-MM-DD.md`
- Frontmatter e seções: ver `apps/core/admin/agents/andon_asana/VOICE.md` e o SKILL da skill.

## Conflitos

Seguir regra de sobrescrita da Adventure Labs antes de substituir um snapshot existente.

## Automação

**Ativo:** `POST /api/csuite/andon-asana-run` (cron n8n + `CRON_SECRET`) grava `adv_founder_reports` + `adv_csuite_memory`. Ver `workflows/n8n/andon_asana/README.md` e `docs/ADV_CSUITE_MEMORY_METADATA.md`.
