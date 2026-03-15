# Relatório diário — 11 de março de 2026

**Destinatários:** C-Suite, base de conhecimento  
**Escopo:** Atividades realizadas no Cursor (01_ADVENTURE_LABS e repositórios relacionados) na data de 11/03/2026.

---

## 1. Resumo executivo

No dia 11/03/2026 foram tratados **clientes (Rose, Young Talents)**, **Admin (UI, identidade, Trello e remoção)**, **automação Meta Ads (Lara)** e **organização do workspace (GEMINI_CLI)**. Houve commits no repositório pai (adventure-labs) e no submodule Admin; entregas principais: landing Auxílio-Maternidade em produção, sidebar e identidade visual do Admin, fluxo Lara Meta Ads (com ajustes de credenciais n8n), segurança/UX Young Talents e consolidação do GEMINI_CLI no laboratório.

---

## 2. Entregas por área

### 2.1 Cliente Rose — Landing Auxílio-Maternidade

- **Cópia do site** do auxílio-maternidade para `clients/02_rose/sites/auxilio-maternidade`, sem Google Tag Manager, pronta para subdomínio.
- **Imagens** do site antigo integradas (hero, logo, foto Dra. Rose, rodapé); **telefone** padronizado: +55 51 99660-5387 em todos os links.
- **Responsividade** com orientação CTO/CMO: design tokens, tipografia fluida, CTA fixo no mobile, safe area.
- **Redesign como landing** em 8 seções: Hero (foto Dra. Rose mantida), Nossos Serviços (6 itens), Missão e Galeria, Sobre o Escritório, Por que nos escolher, Prova Social (depoimento Mariana S.), Nossa Equipe, Rodapé com formulário (Nome, WhatsApp, situação atual).
- **Diretrizes de marca:** paleta #0A0E1A (fundo) e #D4883C (CTAs), Playfair Display + Montserrat, botão flutuante WhatsApp.
- **Ajustes posteriores:** remoção da seção “Nossa missão”; CTA “Conheça nossa trajetória” apontando para WhatsApp; troca de foto do escritório por tema auxílio-maternidade; “Nossa Equipe” substituída por “Outras especialidades”; endereço e paleta conforme anexos.
- **Deploy:** Landing publicada no Vercel em **auxiliomaternidade.roseportaladvocacia.com.br** (commit no repositório pai).

**Arquivos principais:** `clients/02_rose/sites/auxilio-maternidade/` (index.html, styles.css, README, images).

---

### 2.2 App Admin — UI, identidade e Trello

- **Sidebar em dois painéis:** implementada conforme referência (mini bar de ícones + painel principal com título, busca placeholder e navegação por grupos). Arquivos: `nav-config.ts`, `mini-sidebar.tsx`, `main-sidebar.tsx`, `client-sidebar-wrapper.tsx`; layout do dashboard atualizado.
- **Identidade visual Adventure Labs:** tema global (Deep Space Blue #031445, Bold Venture Red #DA0028), tipografia Space Grotesk, tokens semânticos em sidebars e login; slogan “Bold Moves. Smart Growth.” na página de login; estados de sucesso/concluído e saldo com tokens (success/destructive). Build quebrou por falta de `nav-config.ts` e `client-sidebar-wrapper.tsx` no commit — corrigido e enviado.
- **Clone Trello (boards/listas/cards):** implementado em `/dashboard/tools/trello` com prefixo `adv_trello_*`, APIs CRUD e drag-and-drop (@dnd-kit). Item “Boards (Trello)” adicionado ao menu (Dia a Dia). Ajuste de slugify (regex compatível com target ES do Vercel) para build. **Decisão posterior:** remoção completa da feature Trello (código, nav, tipos e migration de drop das tabelas `adv_trello_*`). Tarefas atuais (`adv_tasks`) permanecem como solução; sem “Boards (Trello)” no menu.

**Commits (admin):** brand identity, fix nav-config/client-sidebar-wrapper, Trello clone, slugify fix, remoção Trello (migration `20260313100000_drop_adv_trello.sql`).

---

### 2.3 Meta Ads — Lara (n8n + Admin)

- **Workflow “Lara — Meta Ads Sync (v1)”** testado; primeiro relatório automático registrado (ex.: resumo 2026-03-10). Discussão sobre incluir no fluxo uma tool/skill/agente de **análise** (além do registro de dados).
- **Erros tratados:**  
  - `N8N_BLOCK_ENV_ACCESS_IN_NODE`: workflow alterado para **não usar** `$env`; URL fixa do Admin e autenticação apenas por credencial **HTTP Header Auth** (Header Name: `x-admin-key`, Value: CRON_SECRET).  
  - Header inválido: uso de “Admin API (x-admin-key)” como **Header Name** em vez de nome da credencial; corrigido para Header Name = `x-admin-key`.  
  - 404 ao chamar `/api/meta/accounts`: rota existe no código; indicado verificar Root Directory / build do Admin no Vercel para garantir que as rotas de API sejam servidas.  
  - 502 no nó “POST Lara Analyze”: falha no serviço de análise (400); tratado como melhoria/backlog (tool/skill de análise).
- **Configuração:** passo a passo de credenciais (CRON_SECRET, ADMIN_URL no n8n; META_BM_SYSTEM_USER_TOKEN e META_APP_ID no Vercel/Admin). Esclarecido que um único token Meta no Admin puxa todas as contas às quais o System User tem acesso; não é necessário configurar “por conta”. Dados do teste vão para o **Supabase do Admin** (adv_meta_ads_daily, adv_founder_reports).
- **Documentação:** guia de credenciais n8n atualizado (CONFIGURAR_CREDENCIAIS_N8N.md), incluindo cenário com env bloqueado.

---

### 2.4 Young Talents — Segurança e UX

- **Problema:** Visitantes em adventurelabs.com.br/young-talents caíam no login do CRM (Adventure) e criavam usuários no Supabase adventurelabsbrasil; na raiz do Young Talents (youngempreendimentos.adventurelabs.com.br) o primeiro contato era a tela de login.
- **Plano (agentes Grove, Torvalds, Cagan, Ohno):** Workstreams Adventure, Young Talents, documentação e registro (tarefa + issues).
- **Implementado:**  
  - **Adventure:** rota explícita `/young-talents` com página informativa e links (candidato → youngempreendimentos.../apply; equipe → youngempreendimentos.../). Catch-all `path: '*'` passando a redirecionar para **/** (home pública) em vez de `/login`.  
  - **Young Talents:** `PUBLIC_PATHS` com `'/'`; rota `/` com redirecionamento condicional: usuário logado → `/dashboard`, não logado → `/apply`. Remoção de useEffect redundante que forçava ida para /apply.  
  - **Documentação:** `apps/admin/context/04_PROJETOS_DE_CLIENTES/young_talents_arquitetura_urls_auth.md` e seção no README do Young Talents (URLs, Auth, fluxos).  
  - **Supabase (Young Talents):** Site URL e Redirect URLs conferidos (apenas domínio youngempreendimentos.adventurelabs.com.br; sem adventurelabs.com.br).
- **Registro:** migration de seed da tarefa em `adv_tasks` (Young Talents security/UX); duas issues criadas no repositório adventure-labs (#1 Adventure rota/young-talents e catch-all, #2 Young Talents landing raiz e rotas públicas). Definido que as issues de desenvolvimento do Admin ficam no repositório **admin**, não no adventure-labs.

---

### 2.5 Workspace — GEMINI_CLI em 01_ADVENTURE_LABS

- **Plano:** Consolidar pasta GEMINI_CLI e arquivos da raiz do GitHub dentro de 01_ADVENTURE_LABS; laboratório como raiz única para Cursor e Gemini CLI.
- **Implementado:**  
  - PLANO_MONOREPO_ADVENTURE_LABS.md movido para a raiz de 01_ADVENTURE_LABS.  
  - `tools/n8n-scripts` criado (scripts JS, package.json, .env.example, README).  
  - Workflows n8n migrados/arquivados (evitando duplicata com workflows existentes); all_workflows_dump em _internal/archive/n8n-dumps.  
  - Migration adv_client_inbox em apps/admin/supabase/migrations.  
  - Relatórios e temp em _internal/archive/relatorios-founder.  
  - API/ e meus-workflows arquivados em _internal/archive.  
  - `docs/GEMINI_CLI_WORKSPACE.md` com uso recomendado (raiz 01_ADVENTURE_LABS).  
  - GEMINI_CLI/README.md de redirecionamento.

---

### 2.6 Admin — Issues e tarefas

- **Análise de issues** do repositório **adventurelabsbrasil/admin**: conferência issue a issue com o código; documento `admin-issues-checklist-conclusao.md` com status e recomendação (fechar ou manter).
- **Fechadas no GitHub (admin):** #7 Permissões RLS, #9 Vincular tarefa a projeto, #10 Atribuições explícitas, #13 Registro de apps/repos (já implementadas no código).
- **Supabase:** Não há comando na CLI do Supabase para executar SQL arbitrário no remoto; script `mark_tasks_done.sql` e migration `20260315100000_mark_resolved_tasks_done.sql` criados para marcar tarefas resolvidas (ex.: Young Talents); execução manual via Dashboard (SQL Editor) ou psql.
- **Pendências registradas:** navegação projeto ↔ tarefas, anexos e links, evolução boards (revertida), Fase 2 (Omie, Ads, KPIs), documentação estado_schema_template. Tabela do checklist com link para cada issue no GitHub (#) para facilitar execução manual.
- **Plano:** Criado plano para resolver as issues abertas (exceto go-live já resolvidas), com referência a planos existentes quando aplicável.

---

## 3. Commits no repositório (11/03/2026)

No repositório **01_ADVENTURE_LABS** (adventure-labs), commits do dia:

| Commit     | Descrição |
|-----------|-----------|
| 9d39895   | feat(rose): landing Auxílio-Maternidade + deploy Vercel (auxiliomaternidade.roseportaladvocacia.com.br) |
| 454689e   | chore: update admin submodule (Trello clone) |
| 55016e7   | chore: update admin submodule (slugify fix for Vercel build) |
| 3656600   | chore: update submodules (Young Talents security/UX, n8n C-Suite) |

Arquivos impactados: `clients/02_rose/sites/auxilio-maternidade/*`, `apps/admin` (referência do submodule), `apps/adventure`, `clients/04_young/young-talents`.

---

## 4. Base de conhecimento — referências

- **Lara / Meta Ads:** `apps/admin/n8n_workflows/meta_ads_agent/README.md`, `CONFIGURAR_CREDENCIAIS_N8N.md`, `docs/ADS_META_ADMIN.md, docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md`.
- **Young Talents / segurança:** `apps/admin/context/04_PROJETOS_DE_CLIENTES/young_talents_arquitetura_urls_auth.md`, `young_talents_tarefa_github_checklist.md`.
- **Admin / issues:** `apps/admin/docs/admin-issues-checklist-conclusao.md`, `admin-issues-pendencias.md`, `supabase/scripts/mark_tasks_done.sql`.
- **Rose / Auxílio-Maternidade:** `clients/02_rose/sites/auxilio-maternidade/README.md`.
- **Gemini CLI:** `docs/GEMINI_CLI_WORKSPACE.md`, `GEMINI_CLI/README.md`.

---

## 5. Próximos passos sugeridos (a partir do dia)

- **Lara:** Resolver 404 de `/api/meta/accounts` em produção (configuração Vercel/Admin); evoluir nó de análise (POST Lara Analyze) para reduzir 502.
- **Admin:** Aplicar script/migration de marcação de tarefas concluídas no Supabase (SQL Editor ou psql); seguir plano de resolução das issues abertas.
- **Young Talents:** Garantir deploy das alterações (rota /young-talents no Adventure e fluxo da raiz no Young Talents); criar tarefa e vincular issues no Admin conforme checklist, se ainda não feito.

---

*Documento gerado para relatório diário e base de conhecimento. Data de referência: 11/03/2026.*

**Acesso founder e C-Suite:** Cópia na base de conhecimento do Admin em `context/00_RELATORIOS_DIARIOS/RELATORIO_DIARIO_2026-03-11.md`. O script `sync-context-docs.mjs` (build do Admin) copia `context/` para `public/context-docs/`; a API `GET /api/csuite/context-docs` expõe esse conteúdo ao C-Suite e aos fluxos n8n.
