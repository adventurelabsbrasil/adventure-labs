---
title: Playbook Operacional GTD-Lite no Asana (Comando Estelar Omnichannel)
domain: gestao_corporativa
tags: [asana, gtd, operacao, projetos, c-level]
updated: 2026-03-23
---

# Playbook Operacional GTD-Lite no Asana (Comando Estelar Omnichannel)

## Objetivo

Operar o Asana com inbox limpo, priorizacao clara e execucao conjunta de humanos + agentes, sem criar complexidade desnecessaria.

## Padrao de identidade operacional

- Nome oficial: `Comando Estelar Omnichannel`
- Nome curto: `Comando Estelar`
- Alias operacional: `ceo@adventurelabs.com.br`
- Assinatura padrao em automacoes:
  - `Origem: Comando Estelar Omnichannel | Alias: ceo@adventurelabs.com.br | Fluxo: <origem> | Execucao: <agente>`

## Niveis de projeto (governanca)

- `Core`: projetos estrategicos e operacao interna Adventure (owner executivo: Founder + CTO)
- `Clientes`: projetos por cliente ou multi-tenant (owner executivo: CPO + COO)
- `Labs`: testes, ideacao e experimentos (owner executivo: CTO + CPO)

## Etapas oficiais do Inbox (nomenclatura clean)

1. `Entrada`
2. `Triagem`
3. `Roteamento`
4. `Tratamento`

Equivalencia com o modelo anterior:

- `Entrada` = `01_InboxCaptura`
- `Triagem` = `02_TriagemHoje`
- `Roteamento` = etapa de envio para `Core/Clientes/Labs` (antes distribui entre P0/P1/P2/P3)
- `Tratamento` = execucao e acompanhamento (inclui praticas de P0/P1/P2/P3, bloqueios e conclusoes)

## GTD-Lite (mapeamento direto)

- Capturar -> `Entrada`
- Esclarecer/Organizar -> `Triagem`
- Organizar por destino -> `Roteamento`
- Engajar (Next Actions) -> `Tratamento`
- Waiting For / Bloqueios -> sinalizacao dentro de `Tratamento` (campo/status de bloqueio)
- Concluido/Referencia -> concluido no projeto destino

## Padrao Asana Free (tags + titulo curto)

Para evitar titulos longos e manter leitura humano + IA:

- Titulo curto: `Acao + contexto` (sem excesso de metadados)
- Classificacao por tags (fonte principal)

Tags recomendadas:

- Nivel: `core`, `clientes`, `labs`
- Cliente: `rose`, `young`, `lidera`, `benditta`
- Prioridade: `p0`, `p1`, `p2`, `p3`
- Tipo: `bug`, `feature`, `ops`, `infra`, `security`, `docs`, `campanha`, `experimento`
- Estado auxiliar: `bloqueado`, `aguardando-cliente`, `aguardando-aprovacao`

Regra de uso:

- Toda task nova deve ter no minimo: 1 tag de nivel + 1 tag de prioridade.
- Tasks de cliente devem ter tambem a tag do cliente.
- Router CLI prioriza tags; titulo vira fallback.

## Campos oficiais do Inbox (snapshot atual)

Projeto: `Inbox` (`1213744799182607`)

Colunas/secoes:

- `Entrada`
- `Triagem`
- `Roteamento`
- `Tratamento`

Campos customizados ativos:

- `Nível de Projeto` (enum): `Labs`, `Core`, `Cliente`
- `Cliente` (reference): referencia para projetos de cliente (ex.: `01_YOUNG`, `02_LIDERA`, `03_ROSE`, `05_BENDITTA`)
- `C-Suite` (enum): `Founder`, `Comando Estelar`, `CTO`, `CFO`, `CMO`, `COO`, `CPO`
- `Departamento` (multi_enum): `Produto`, `Comercial`, `Marketing`, `Operações`, `Tecnologia`, `Financeiro`, `Pessoas`, `Jurídico`

## Padrao de preenchimento (humano + IA)

Checklist minimo por task aberta:

- responsavel (`assignee`) definido
- `Nível de Projeto` definido
- `C-Suite` definido
- `Departamento` definido
- `due_on` definido (exceto backlog frio explicitamente acordado)

Regras de responsabilidade:

- Tarefas autonomas/operacionais de roteamento e organizacao: `Comando Estelar`
- Tarefas de execucao criativa/manual (ex.: canais e campanhas): owner humano da area

### Inbox: tarefas do `ceo@` nao devem poluir o `contato@`

- Utilizadores: **Comando Estelar** = alias operacional `ceo@adventurelabs.com.br`; **Adventure Labs** = `contato@adventurelabs.com.br` (conta que muitas vezes autentica a API / MCP).
- Quando o **assignee** for Comando Estelar (`ceo@`), **nao** manter `contato@` como **follower** por padrao — o Asana costuma adicionar o criador da API como seguidor, o que enche a **Inbox** do `contato@` sem necessidade.
- **Excecao:** Founder pedir explicitamente visibilidade do `contato@` naquela task.
- **Implementacao (API / MCP):** apos `create_tasks` ou updates, se `contato@` aparecer em followers, aplicar `remove_followers` com `contato@adventurelabs.com.br` (ou GID `1213725900473615` no workspace atual). Nao usar `add_followers` com `contato@` em tasks exclusivas do Grove/Comando Estelar.

Regras de prazo (padrao operacional):

- `P0/P1`: prazo curto e explicito na triagem
- `P2`: prazo semanal de consolidacao
- `P3`: prazo quinzenal/mensal, sem bloquear execucao critica

## Regra de triagem minima (obrigatoria)

Toda tarefa triada deve ter:

- prioridade tecnica `P0..P3`
- owner funcional
- nivel do projeto (`Core`, `Clientes`, `Labs`)
- proxima acao clara (se nao houver, converter em subtarefa)
- due date para `P0` e `P1`

Padrao de titulo recomendado:

- `[P1][CTO][Core][Infra] Revisar deploys do Vercel`
- `[P0][CMO][Clientes][Rose] Corrigir campanha Google Ads`

## Pipeline recomendado por contexto

### Inbox (captura global)

1. `Entrada`
2. `Triagem`
3. auto-roteamento para projeto destino
4. remover do Inbox apos roteamento

### Core

1. `BacklogCore`
2. `RefinoArquitetura`
3. `ProntoSprint`
4. `EmExecucao`
5. `EmValidacao`
6. `Bloqueado`
7. `Concluido`

### Clientes

1. `BacklogCliente`
2. `BriefingEscopo`
3. `AguardandoCliente`
4. `EmExecucao`
5. `EmHomologacaoCliente`
6. `Bloqueado`
7. `Concluido`

### Labs

1. `Ideias`
2. `Hipotese`
3. `Experimento`
4. `AnaliseResultados`
5. `EscalarParaCoreOuClientes`
6. `DescartarArquivar`

## Auto-roteamento MCP (Inbox Zero)

Ao entrar item no Inbox:

1. Classificar por `Cliente`, `TipoTrabalho`, `DestinoTecnico`, `PrioridadeTecnica`, `NivelProjeto`.
2. Se confianca alta, mover automaticamente para projeto correto.
3. Se confianca baixa, manter em `Triagem` para validacao humana.
4. Registrar comentario de auditoria com assinatura do Comando Estelar.

Observacao para o modelo atual:

- quando houver baixa confianca, manter em `Triagem`.

No modo Asana Free:

- O roteamento usa primeiro tags (`core/clientes/labs` e cliente), depois heuristica de titulo.

Automacao via CLI (router local):

- Dry-run: `pnpm asana:router:dry`
- Aplicar: `pnpm asana:router:apply`

Ordem de roteamento do script `tools/scripts/asana-inbox-router.mjs`:

1. Campo `Nível de Projeto` (Core / Labs / Cliente)
2. Campo `Cliente` (referência a projeto de cliente conhecido)
3. `C-Suite` com fallback conservador para Core (Founder, Comando Estelar, CTO, CFO, COO)
4. `Departamento` com fallback conservador para Core (Tecnologia, Financeiro)
5. Tags (`core` / `labs` / `clientes` + cliente)
6. Prefixos e texto do título + heurística Core

Pre-requisito:

- exportar `ASANA_ACCESS_TOKEN` no ambiente; ou
- exportar `ASANA_CLIENT_ID`, `ASANA_CLIENT_SECRET` e `ASANA_REFRESH_TOKEN` (router renova token automaticamente).

## Checklist diario (10-15 min)

- limpar `Entrada` ate zerar ou deixar apenas ambiguos
- revisar `Triagem` e decidir roteamento
- garantir que todo `P0` tenha owner e due
- atualizar bloqueios dentro de `Tratamento` (campo/status)
- fechar cards concluidos do dia

## Checklist semanal (30-45 min)

- revisar `P1` da semana e rebalancear capacidade
- revisar `P2/P3` para promover ou arquivar
- consolidar aprendizados de `Labs` para `Core` ou `Clientes`
- conferir alinhamento com `docs/BACKLOG.md` para engenharia comprometida
- revisar qualidade de dados (sem PII em notas publicas)

## Regras de escalonamento entre niveis

- `Labs -> Core`: quando experimento comprovar viabilidade tecnica/negocio
- `Core -> Clientes`: quando virar oferta ou pacote replicavel
- `Clientes -> Core`: quando padrao recorrente exigir produto/plataforma

## Limites para manter simplicidade

- evitar excesso de campos e tags no inicio
- no maximo 1 owner por task
- sempre definir a proxima acao antes de mover para execucao
- preferir subtarefas curtas a tarefas longas e vagas

## Ver também

- [`martech-mvp-war-room-2026-04.md`](martech-mvp-war-room-2026-04.md) — hub go-live Martech **01/04/2026** (DOD + GIDs).
- [`ritual-semanal-comando-estelar-acore.md`](ritual-semanal-comando-estelar-acore.md) — ritual semanal (~30 min): `pnpm check-deadlines`, BACKLOG, SESSION_LOG, registry.
