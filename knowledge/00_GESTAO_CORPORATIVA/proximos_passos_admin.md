# Próximos passos — Área Admin

Documento de referência para o Grove e para o Founder. Atualizado conforme o MVP entra em uso.

**GitHub:** Para não perder o que é planejado aqui, use o [projeto e os issues no GitHub](github-project-e-integracao.md): criar projeto no repo, abrir issues a partir dos templates em `.github/ISSUE_TEMPLATE/` e adicionar ao board. O sistema poderá depois consultar projetos/issues para contexto e sugestões.

## Estado atual (MVP em uso)

- Login (Google + e-mail/senha), middleware com Supabase SSR.
- Dashboard: Home, Clientes, **Projetos** (landing → Internos ou Externos/Clientes), **Tarefas**, Plano do dia, Ações prioritárias, Relatório / Brain dump, **Apps / Repositórios** (registro de apps martech: GitHub, Vercel, Supabase).
- **Projetos:** Uma entrada no menu. Dentro, escolha Internos ou Externos (Clientes); em cada um há três vistas: **Tabela** (principal), Kanban e Lista.
- CRUD de clientes e projetos; etapas briefing → implementação → execução → relatório.
- **Tarefas:** Três vistas da mesma base (adv_tasks): **Kanban**, **Lista** e **Tabela**. Filtro por status e por lista (Geral, Plano do dia, Ações prioritárias). Campos `list_slug` e `assignee_email`. Link "Criar tarefa a partir deste relatório" no detalhe do relatório.
- **Plano do dia e Ações prioritárias:** São listas de tarefas (adv_tasks com `list_slug` = 'plano-do-dia' e 'acoes-prioritarias'), com responsabilidade do Founder; mesmas vistas (Kanban, Lista, Tabela). Opcional: `NEXT_PUBLIC_FOUNDER_EMAIL` para pré-preencher responsável ao criar tarefa nessas listas.
- **Cenário atual (estrutura de dados):**
  - Clientes com **tipo** (fixo / pontual). Ver [cenario_atual_clientes_planos.md](cenario_atual_clientes_planos.md).
  - Catálogo **adv_products** (programa, plano_assessoria, microsaas) e vínculo **product_id** em projetos.
  - **adv_program_sessions** para aulas/webinars (ex.: LOTEADORA ELITE, terça 16h).
  - Migration: `supabase/migrations/20250302100000_adv_cenario_atual.sql`. Seed: `context/99_ARQUIVO/seed-cenario-atual.sql`.
- Deploy: local (porta 3001) e preparado para Vercel.

---

## 1. Go-live (prioridade imediata) — concluído

Checklist detalhado: [go-live-admin-checklist.md](checklists_config/go-live-admin-checklist.md).

- [x] **Deploy no Vercel**  
  - Root Directory: `apps/core/admin`.  
  - Env: `NEXT_PUBLIC_SUPABASE_URL`, `NEXT_PUBLIC_SUPABASE_ANON_KEY`.  
  - Redirect URL no Supabase: `https://admin.adventurelabs.com.br/auth/callback`.

- [x] **Domínio**  
  - Adicionar `admin.adventurelabs.com.br` no projeto Vercel e configurar CNAME. (Online.)

- [ ] **Validação com a equipe**  
  - Rodrigo, Igor e Mateus testam login (Google), criação de cliente/projeto e uso dos dois Kanbans.  
  - Ajustes rápidos de UX ou bugs conforme feedback.

---

## 2. Refino do MVP (curto prazo)

- **Feedback visual**  
  Toasts ou mensagens de sucesso/erro em criar/editar cliente e projeto.

- **Validação**  
  Campos obrigatórios e formato (ex.: CNPJ) nos formulários.

- **Loading**  
  Estados de carregamento em listas e ao salvar.

- **Permissões (opcional)**  
  Se fizer sentido: RLS ou regras por responsável (assignee) ou por perfil (ex.: designer só vê seus projetos). No MVP atual, toda a equipe vê tudo.

- **Ações prioritárias**  
  Página no dashboard espelha o checklist de ações do Founder (fonte: `context/00_GESTAO_CORPORATIVA/acoes-prioritarias-*.md`). Reforçar uso da área Admin para controle de tarefas (Kanban + projetos + ações).

---

## 3. Fase 2 (médio prazo)

Conforme [contexto_admin_equipe.md](contexto_admin_equipe.md):

- **Integrações**  
  Omie (financeiro), Meta/Google Ads (campanhas e métricas).

- **CRM Adventure Sales**  
  Definir se fica no mesmo app ou em outro repositório; não bloqueia o admin atual.

- **KPIs no dashboard**  
  Blueprint: MRR, Margem de Lucro, CAC, LTV (agência); ROAS, CPA, CPL, CVR (clientes). Dados podem vir das integrações ou entrada manual no início.

- **Clone interno tipo Trello (gestão de tarefas avançada)**  
  Evolução do MVP de Tarefas: boards com listas (colunas) e cards = tarefas; Kanban com arrastar-e-soltar; alternância de visualização **Kanban** ↔ **Tabela** ↔ **Lista**; múltiplos boards (ex.: por cliente, interno, ações prioritárias). Dados podem continuar em `adv_tasks` com novos campos (board_id, list_id, position) ou modelo ampliado conforme desenho.

---

## 4. Manutenção contínua

- Manter [estado_schema_template.md](../../supabase/docs/estado_schema_template.md) atualizado após mudanças no Supabase.
- Novas tabelas `adv_*` sempre via migrations em `supabase/migrations/`.
- Documentar decisões de produto e permissões em `contexto_admin_equipe.md`.
- Atualizar [cenario_atual_clientes_planos.md](cenario_atual_clientes_planos.md) quando mudar mapa de clientes, planos ou calendário do programa (ex.: LOTEADORA ELITE).
