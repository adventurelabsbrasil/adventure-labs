# Projeto GitHub e integração com o sistema

Documento de referência para: (1) criar e manter o **GitHub Project** do repositório Admin com os issues planejados; (2) **integração futura** do Admin/Grove com a API do GitHub para ler projetos e issues e usar como contexto para sugestões.

Ref.: [proximos_passos_admin.md](proximos_passos_admin.md), [roadmap-admin-crm.md](backlogs_roadmap/roadmap-admin-crm.md), [go-live-admin-checklist.md](checklists_config/go-live-admin-checklist.md), [backlog-ideias-admin.md](backlogs_roadmap/backlog-ideias-admin.md).

---

## Triangulação: Cursor → Issue → Tarefa no Admin (só desenvolvimento/TI)

A triangulação aplica-se a **tarefas de desenvolvimento/sistema** (código, migrations, integrações, bugs, features do app). Cada uma deve existir em: (1) contexto/compromisso no Cursor, (2) **Issue no GitHub**, (3) **Tarefa no Admin** (`adv_tasks` com tipo "Desenvolvimento (TI)" e campos Issue do GitHub preenchidos). Tarefas **operacionais** (criadas no front ou por agents não-dev) ficam apenas em adv_tasks, sem issue.

- **Fluxo recomendado (dev):** Criar a issue no GitHub; ao criar a tarefa no Admin, escolher tipo "Desenvolvimento (TI)" e preencher os campos **Issue do GitHub** (número, owner, repo). O detalhe da tarefa e as listagens exibem o link para a issue.
- **Prioridades e backlog:** Ver [backlog-ideias-admin.md](backlogs_roadmap/backlog-ideias-admin.md) para ideias organizadas por prioridade e revisão periódica.

---

## 1. Criar o GitHub Project (manual)

### 1.1 Criar o projeto

1. No repositório **Adventure Labs / admin** (ou na organização), abra a aba **Projects**.
2. Clique em **New project** → escolha **Board** (ou **Table** se preferir).
3. Nome sugerido: **"Admin & CRM — Backlog e entregas"** (ou "Adventure Labs OS — Backlog").
4. Defina as colunas do board, por exemplo:
   - **Backlog**
   - **A fazer**
   - **Em progresso**
   - **Em revisão**
   - **Concluído**

### 1.2 Conectar ao repositório

- Em **Settings** do projeto: adicione o repositório **admin** como fonte de dados.
- Assim, os **issues** abertos neste repo podem ser adicionados ao projeto (por link manual ou por regras de automação).

### 1.3 Criar os issues (templates ou CLI)

- **Pela interface:** Os templates em [.github/ISSUE_TEMPLATE/](../../.github/ISSUE_TEMPLATE/) (Bug, Feature, Tarefa/Doc, Issue genérico) aparecem em **New Issue** quando o branch default do repositório contém a pasta `.github/ISSUE_TEMPLATE`. Se não aparecerem (ex.: org com templates próprios), use a CLI abaixo.
- **Pela CLI (recomendado para criar a lista de sugeridos):** No clone do repositório, com [GitHub CLI](https://cli.github.com/) instalada e autenticada (`gh auth login`), rode:
  ```bash
  ./scripts/create-github-issues.sh
  ```
  O script cria as labels necessárias, cria os 15 issues sugeridos (go-live, fase 2, produto, doc) e imprime a URL de cada um. Para **adicionar cada issue ao projeto** já criado, informe o número do projeto e o owner (ex.: org ou usuário):
  ```bash
  GITHUB_PROJECT_NUMBER=2 GITHUB_OWNER=AdventureLabs ./scripts/create-github-issues.sh
  ```
  (O número do projeto aparece na URL do board, ex.: `.../projects/2`.) Para poder adicionar itens ao projeto via CLI, autorize o escopo: `gh auth refresh -s project`.

---

## 2. Issues iniciais sugeridos (para não perder o que foi planejado)

Abaixo, itens extraídos dos docs de planejamento para criar como **issues** e colocar no projeto. Copie/cole o título e a descrição ao criar cada issue; depois adicione ao board na coluna desejada.

### Go-live (prioridade imediata)

| Título sugerido | Descrição (corpo do issue) | Labels sugeridas |
|-----------------|----------------------------|-------------------|
| [ ] Deploy Admin no Vercel | Root: `apps/admin`. Env: `NEXT_PUBLIC_SUPABASE_URL`, `NEXT_PUBLIC_SUPABASE_ANON_KEY`. Redirect URL no Supabase: `https://admin.adventurelabs.com.br/auth/callback`. Ref.: go-live-admin-checklist.md | infra, go-live |
| [ ] Configurar domínio admin.adventurelabs.com.br | CNAME no DNS; adicionar domínio no projeto Vercel. Ref.: go-live-admin-checklist.md | infra, go-live |
| [ ] Validação com equipe (login, CRUD, Kanbans) | Rodrigo, Igor e Mateus testam login (Google), clientes, projetos, tarefas, plano do dia, ações, relatório. Ref.: go-live-admin-checklist.md | go-live, validação |

### Fase 2 / Refino

| Título sugerido | Descrição (corpo do issue) | Labels sugeridas |
|-----------------|----------------------------|-------------------|
| [ ] Integração Omie (financeiro) | Conectar Admin ao Omie para dados financeiros. Ref.: roadmap-admin-crm.md | enhancement, fase-2 |
| [ ] Integração Meta/Google Ads (campanhas, métricas) | Campanhas e métricas no dashboard. Ref.: roadmap-admin-crm.md | enhancement, fase-2 |
| [ ] KPIs no dashboard (MRR, margem, ROAS, CPA) | Blueprint: MRR, Margem, CAC, LTV; por cliente: ROAS, CPA, CPL, CVR. Dados manuais até integrações. Ref.: roadmap-admin-crm.md | enhancement, fase-2 |
| [ ] Permissões por responsável ou perfil (RLS) | Opcional: designer só vê seus projetos; regras por assignee. Ref.: proximos_passos_admin.md | enhancement, segurança |
| [ ] Evolução tarefas: boards múltiplos, drag-and-drop | Kanban com listas/colunas; múltiplos boards (por cliente, interno, ações). Ref.: roadmap, plano frontend | enhancement, fase-2 |

### Produto / UX

| Título sugerido | Descrição (corpo do issue) | Labels sugeridas |
|-----------------|----------------------------|-------------------|
| [ ] Vincular tarefa a projeto (project_id em adv_tasks) | Campo opcional "Projeto" em criar/editar tarefa; filtro por projeto nas vistas. Ref.: .cursor/plans frontend | enhancement |
| [ ] Atribuições explícitas (select responsável, "Atribuir a mim") | Lista fixa da equipe; exibir nome/avatar em cards. Ref.: plano frontend | enhancement |
| [ ] Navegação projeto ↔ tarefas (detalhe do projeto) | Bloco "Tarefas deste projeto" na página do projeto; link criar tarefa vinculada. Ref.: plano frontend | enhancement |
| [ ] Anexos e links em tarefas e projetos | adv_task_attachments, adv_project_attachments; Storage Supabase; RLS. Ref.: plano frontend | enhancement |
| [ ] Registro de apps/repos (GitHub + Supabase) no dashboard | Tabela adv_apps; menu "Apps / Repositórios"; links para repo e Supabase. Ref.: plano frontend | enhancement |

### Documentação / Processo

| Título sugerido | Descrição (corpo do issue) | Labels sugeridas |
|-----------------|----------------------------|-------------------|
| [ ] Manter estado_schema_template e migrations documentadas | Após mudanças no Supabase, atualizar estado_schema_template.md. Ref.: proximos_passos_admin.md | documentation |
| [ ] Definir se CRM fica no mesmo app ou outro repo | Decisão de arquitetura; não bloqueia Admin. Ref.: roadmap-admin-crm.md | documentation, decisão |

---

## 3. Integração: sistema consultando GitHub (projetos e issues)

Objetivo: o **Admin** e/ou o **Grove** poderem consultar projetos e issues do GitHub para **analisar contexto e dar sugestões** (ex.: próximos passos, itens atrasados, resumo do backlog).

### 3.1 Escopo da integração

- **Ler** (read-only):
  - **Issues** do repositório (abertas/fechadas, labels, assignees, título, corpo).
  - **GitHub Projects (v2)** do repo ou da organização: itens do board (issues vinculadas), status/colunas, campos customizados.
- **Não escrever** no MVP: apenas consumo de dados para contexto e exibição (e.g. widget no dashboard, ou contexto injetado para o Grove).

### 3.2 APIs a usar

- **REST — Issues:**  
  `GET /repos/{owner}/{repo}/issues` (state=open|closed, labels, assignee, etc.).  
  Doc: [GitHub REST API - Issues](https://docs.github.com/en/rest/issues/issues#list-repository-issues).

- **REST — Projects v2:**  
  - Listar projetos da org: `GET /orgs/{org}/projects` (Projects v2 pode exigir GraphQL ou endpoints específicos; ver abaixo).  
  - Itens de um projeto: `GET /orgs/{org}/projects/{project_number}/items` (requer token com escopo adequado).  
  Doc: [GitHub REST - Projects items](https://docs.github.com/en/rest/projects/items).

- **GraphQL (alternativa para Projects v2):**  
  - Query `organization.projectsV2`, `projectV2.items` com `content` (Issue, PullRequest).  
  - Escopo do token: `read:project`, `repo` (para issues do repo).

### 3.3 Segurança e ambiente

- **Token:** `GITHUB_TOKEN` (ou `ADVENTURELABS_GITHUB_TOKEN`) com escopos **read-only**: `repo` (issues do repo), `read:project` (projects v2). Guardar como variável de ambiente no **servidor** (Vercel/backend).
- **Nunca** expor o token no frontend; usar **Server Action** ou **API Route** (Next.js) que chama a API do GitHub e devolve apenas os dados necessários (ex.: lista de issues abertas, itens do board).

### 3.4 Onde usar no sistema

- **Dashboard Admin:** bloco opcional "Backlog GitHub" ou "Próximos passos" com issues abertas (e, quando disponível, itens do projeto) com link para o GitHub.
- **Grove / C-Suite:** ao gerar resumos ou "próximos passos", incluir no contexto as issues abertas e o estado do projeto (ex.: coluna "A fazer", "Em progresso") para sugerir prioridades e evitar perda de contexto.

### 3.5 Dados úteis para contexto

- Títulos e labels das issues abertas.
- Status/coluna do projeto (se o issue estiver no board).
- Assignee e datas (created_at, updated_at) para "o que está parado".
- Opcional: corpo das issues (resumo ou trecho) para sugestões mais ricas — cuidado com tamanho do contexto.

### 3.6 Implementação (feita)

- **Código:** `apps/admin/src/lib/github.ts` (fetch issues), `apps/admin/src/app/dashboard/backlog-github-block.tsx` (bloco no Painel), `apps/admin/src/app/api/github/issues/route.ts` (API).
- **Variáveis de ambiente (servidor):**
  - `GITHUB_TOKEN` — token com escopo `repo` (read). **Não** usar `NEXT_PUBLIC_` (nunca expor no client).
  - `GITHUB_REPO_OWNER` — dono do repositório (ex.: `AdventureLabs` ou seu usuário).
  - `GITHUB_REPO_NAME` — nome do repo (ex.: `admin`).
- **Onde configurar:** Vercel → Project → Settings → Environment Variables; local: `.env.local` na raiz de `apps/admin` (ou do monorepo conforme seu setup).
- **Dashboard:** Na página Início do Admin aparece o bloco **Backlog GitHub** com as issues abertas e link para o GitHub.
- **API para contexto / Grove:**
  - `GET /api/github/issues` — retorna JSON `{ ok, issues }` ou `{ ok: false, error }`.
  - `GET /api/github/issues?format=summary` — retorna texto plano com resumo das issues (para injetar em contexto de agente).
- **Grove:** Para incluir o backlog no contexto, usar a URL do app (ex.: `https://admin.adventurelabs.com.br/api/github/issues?format=summary`) ou ler o doc [github-project-e-integracao.md](github-project-e-integracao.md) e este bloco 3.6.

---

## 4. Manutenção

- **Issues:** sempre que algo for discutido no chat ou em doc e virar compromisso, abrir um **issue** e adicionar ao **Project** para não se perder.
- **Tarefa no Admin:** para tarefas do projeto Admin, criar também uma tarefa em **Tarefas** do Admin e vincular à issue (campos GitHub no formulário), para histórico e dashboards.
- **Backlog e priorização:** revisar [backlog-ideias-admin.md](backlog-ideias-admin.md) periodicamente (ex.: a cada 2–4 semanas) para decidir o que sobe de prioridade ou desce para incubação.
- **Labels:** usar labels consistentes (ex.: `go-live`, `fase-2`, `enhancement`, `documentation`, `bug`) para filtros e para a futura integração.
- **Este doc:** atualizar quando houver novos endpoints ou variáveis (ex.: integração com GitHub Projects v2 para colunas do board).

---

*Criado pelo Grove em 03/03/2026. Atualizar conforme projeto e integração evoluírem.*
