# Playbook de Uso do OpenClaw — Adventure Labs

## Missão do OpenClaw na Adventure Labs

O OpenClaw deve operar como:

- copiloto técnico diário
- roteador de contexto
- guardião de consistência
- orquestrador de fluxos de engenharia
- ponte entre código, documentação, automação e operação

Em termos simples: ele não serve apenas para abrir chat com IA. Ele existe para navegar, entender, validar, organizar e acelerar o sistema operacional da Adventure Labs.

## Princípios de operação

### 1. Trabalhar sempre com o domínio certo

Antes de agir, classificar a demanda:

- **M01** — governança, stack, taxonomia
- **M02** — apps, rotas, scripts, deploy
- **M03** — dados, banco, RLS, migrations
- **M05** — IA, agentes, skills, tools, MCPs
- **M06** — workflows, automações, cronjobs
- **M08** — infra, servidores, CI/CD

Regra: toda tarefa começa perguntando **qual módulo SSOT é dono disso**.

### 2. Não operar só no código

Na Adventure Labs, o contexto está distribuído entre:

- `apps/`
- `packages/`
- `docs/`
- `knowledge/`
- `workflows/`
- `tools/`
- `supabase/`

Então o OpenClaw deve navegar o sistema inteiro, não apenas o diretório do app.

### 3. Atualização localizada

Se uma mudança afeta:

- banco → olhar M03
- automação → olhar M06
- deploy → olhar M08
- agente/skill → olhar M05
- estrutura/nomenclatura → olhar M01

Evitar mudanças soltas sem atualizar o módulo SSOT correspondente.

## Casos de uso prioritários

### 1. Copiloto técnico diário

Usar o OpenClaw para:

- entender rapidamente um app ou pacote
- mapear impacto de uma mudança
- localizar onde vive determinada feature
- revisar riscos antes de editar
- sugerir plano de implementação
- organizar commits e PRs
- validar consistência arquitetural

Exemplos de prompts:

- `Buzz, mapeie o impacto desta branch`
- `Buzz, onde vive a lógica de leads SDR?`
- `Buzz, isso toca M03 ou só M02?`
- `Buzz, revise riscos de RLS antes desta alteração`
- `Buzz, resuma este app antes de eu mexer`

### 2. Guardião de consistência

Usar o OpenClaw para checar:

- se uma mudança deveria atualizar a wiki/SSOT
- se está faltando migration
- se houve drift de nome canônico
- se há duplicação entre docs
- se app, workflow e infra estão coerentes

Exemplos:

- `Buzz, esta mudança exige atualizar qual módulo da wiki?`
- `Buzz, detecte inconsistências de nomenclatura`
- `Buzz, veja se faltou documentação dessa automação`

### 3. Navegação operacional do monorepo

Usar o OpenClaw como mapa inteligente para:

- localizar apps, packages e tools
- diferenciar core, labs e clientes
- encontrar scripts de validação
- identificar qual superfície lida com qual domínio

Exemplos:

- `Buzz, me dê o mapa do app Rose`
- `Buzz, quais packages compartilhados impactam os clientes?`
- `Buzz, onde estão as automações relacionadas a WhatsApp?`

### 4. Operação de dados e Supabase

Usar para:

- revisar migrations
- entender schemas e tabelas
- checar RLS
- avaliar tenant scope
- mapear dependências entre app e banco

Exemplos:

- `Buzz, revise esta migration`
- `Buzz, quais tabelas este fluxo toca?`
- `Buzz, há risco de vazamento multi-tenant aqui?`
- `Buzz, me explique a topologia de dados desse app`

### 5. Agentes, skills e automações

Usar para:

- entender agentes existentes
- localizar skills
- mapear workflows n8n
- conectar IA, automação e operação
- criar novas skills para domínios recorrentes

Exemplos:

- `Buzz, mapeie os agentes e skills em uso`
- `Buzz, explique o papel do Grove neste contexto`
- `Buzz, quais workflows suportam a operação diária?`
- `Buzz, crie uma skill para triagem de incidentes`

### 6. Fluxo GitHub e engenharia

Usar para:

- revisar branch
- preparar commit
- revisar impacto de PR
- montar checklist pré-merge
- acompanhar mudanças que exigem documentação ou migration

Exemplos:

- `Buzz, resuma o que mudou nesta branch`
- `Buzz, prepare uma mensagem de commit limpa`
- `Buzz, monte o checklist pré-PR`
- `Buzz, quais domínios da wiki preciso atualizar junto?`

## Fluxo operacional recomendado

### Etapa 1 — Classificar a demanda

Toda tarefa entra em uma categoria:

- exploração
- implementação
- revisão
- incidente
- documentação
- automação
- deploy/infra

### Etapa 2 — Identificar superfícies afetadas

Perguntas-chave:

- quais apps?
- quais packages?
- quais tabelas?
- quais workflows?
- quais docs SSOT?
- qual pipeline ou deploy?

### Etapa 3 — Verificar impactos cruzados

Exemplos:

- app + banco
- workflow + API externa
- skill + docs + tool
- deploy + env + domínio

### Etapa 4 — Executar com validação

Antes de concluir mudanças maiores, priorizar:

- typecheck
- lint
- testes
- revisão de documentação
- revisão de SSOT

Scripts prioritários do monorepo:

- `./tools/scripts/typecheck-workspaces.sh`
- `./tools/scripts/lint-workspaces.sh`
- `./tools/scripts/test-workspaces.sh`

### Etapa 5 — Fechar o ciclo

Ao finalizar uma mudança, validar:

- o código está coerente?
- o módulo SSOT foi atualizado?
- migration, documentação ou pipeline também precisam mudar?
- o commit ou PR está inteligível?

## Onde olhar primeiro em cada cenário

### Se o problema for “não sei onde isso vive”

Olhar:

- `knowledge/06_CONHECIMENTO/os-registry/INDEX.md`
- `AGENTS.md`
- M01

### Se o problema for app ou script

Olhar:

- M02
- `apps/core/*`
- `apps/clientes/*`
- `apps/labs/*`

### Se for banco, migration, RLS ou tenant

Olhar:

- M03
- `supabase/migrations/`
- `apps/**/supabase/`

### Se for skill, agente, tool, MCP ou IA

Olhar:

- M05
- `.cursor/agents/`
- `apps/core/admin/agents/skills/`
- `tools/`

### Se for workflow, cron, webhook, bot, WhatsApp ou n8n

Olhar:

- M06
- `workflows/n8n`
- `.github/workflows`
- workers e labs relevantes

### Se for deploy, CI/CD, domínio, servidor ou runtime

Olhar:

- M08
- documentação de deploy
- `.github/workflows`
- Vercel / Railway / Supabase

## Rotinas recomendadas de uso do OpenClaw

### Rotina diária de engenharia

Boas chamadas do dia a dia:

- `Buzz, me dê contexto deste app antes de eu mexer`
- `Buzz, revise impacto desta alteração`
- `Buzz, me diga os riscos antes de eu commitar`
- `Buzz, onde isso toca banco, automação ou infra?`

Objetivo: reduzir tempo perdido em navegação e evitar mudanças cegas.

### Rotina pré-PR

Antes de abrir PR:

- resumir mudanças
- identificar domínios afetados
- validar scripts principais
- revisar se SSOT precisa atualização
- checar migrations, env, automação e deploy

Prompt ideal:

- `Buzz, rode um checklist pré-PR para esta branch`

### Rotina de incidente

Quando algo quebra:

- localizar superfície
- classificar domínio
- avaliar blast radius
- propor plano de triagem
- apontar logs, configs e docs relevantes

Prompts ideais:

- `Buzz, faça triagem deste incidente`
- `Buzz, isso é M03, M06 ou M08?`

### Rotina de onboarding e context switch

Quando entrar num projeto ou cliente:

- pedir mapa do app
- dependências relevantes
- tabelas e integrações tocadas
- automações relacionadas
- principais riscos

Prompts ideais:

- `Buzz, faça o briefing técnico do projeto Rose`
- `Buzz, me dê o mapa operacional do xpostr`

## Como tirar o melhor proveito no monorepo

### 1. Fazer perguntas compostas

O OpenClaw é mais útil quando a pergunta cruza camadas.

Exemplos:

- `essa mudança de app exige migration?`
- `esse workflow depende de qual tabela e qual env?`
- `esse deploy impacta qual cliente e qual domínio?`
- `onde essa integração aparece no código e nas automações?`

### 2. Pedir planos antes de execução grande

Para tarefas relevantes como refactor, migrations, reorganização, novos fluxos de automação ou integração externa, usar:

- `Buzz, monte o plano`

antes de:

- `Buzz, execute`

### 3. Usar o OpenClaw como memória operacional do repo

Em vez de decorar nomes de apps, caminhos, responsabilidades e fluxos, consultar o OpenClaw como navegador do terreno.

## O que vale configurar ou melhorar a seguir

### Prioridade 1 — Alinhar o OpenClaw ao contexto ideal do repo

O próprio repositório sugere relevância da camada `openclaw/` na raiz do monorepo. Vale alinhar esse workspace para ampliar integração entre painel, memória, repositório e operação.

### Prioridade 2 — Criar skills de alto retorno

Skills prioritárias sugeridas:

- `repo-map`
- `supabase-guard`
- `workflow-locator`
- `pre-pr-checklist`
- `client-context`

### Prioridade 3 — Formalizar o playbook no repositório

Este documento cumpre essa função e deve evoluir conforme o uso real amadurecer.

## Prompts-modelo para o dia a dia

### Navegação

- `Buzz, onde vive X neste monorepo?`
- `Buzz, me dê o mapa operacional deste app`
- `Buzz, quais packages impactam isso?`

### Banco

- `Buzz, revise esta migration`
- `Buzz, quais tabelas e policies esse fluxo toca?`
- `Buzz, há risco de tenant leakage?`

### Automação

- `Buzz, quais workflows estão ligados a esse processo?`
- `Buzz, mapeie os gatilhos e saídas desta automação`

### Agentes e skills

- `Buzz, quais skills existentes já cobrem isso?`
- `Buzz, vale criar uma nova skill para esse fluxo?`

### Engenharia

- `Buzz, faça checklist pré-PR`
- `Buzz, resuma o impacto desta branch`
- `Buzz, me ajude a quebrar isso em commits limpos`

### Incidente

- `Buzz, faça a triagem`
- `Buzz, onde eu devo olhar primeiro?`
- `Buzz, qual o raio de impacto?`

## Mandamentos operacionais

- começar pela classificação do domínio
- localizar o SSOT dono
- verificar impactos cruzados
- não separar código de documentação e operação
- tratar migration e RLS como parte do produto
- validar antes de concluir
- atualizar o módulo certo quando a mudança exigir

## Ordem de evolução recomendada

1. usar este playbook como referência operacional
2. alinhar o workspace/contexto do OpenClaw ao monorepo
3. criar 3 a 5 skills de alto retorno
4. incorporar o uso no fluxo diário de engenharia
5. usar o OpenClaw como ponte entre código, dados, docs, automações e infra
