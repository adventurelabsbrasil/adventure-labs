# Issues e PRs — Estado para o C-Suite (não realertar)

**Objetivo:** Referência para o C-Suite: **não gerar avisos nem novas issues** sobre os itens abaixo; já resolvidos ou já tratados. Usar este documento para evitar feedback duplicado sobre temas encerrados.

**Última atualização:** 2026-03-13  
**Referência detalhada:** `apps/admin/docs/admin-issues-pendencias.md`, `apps/admin/docs/admin-issues-checklist-conclusao.md`

---

## Já resolvidos (não alertar)

- **Deploy Admin no Vercel** — concluído; issue #1 fechada.
- **Domínio admin.adventurelabs.com.br** — configurado; issue #2 fechada.
- **Permissões por responsável ou perfil (RLS)** — implementado em `20260308100001_adv_rls_by_role.sql`; issue #7 fechada.
- **Vincular tarefa a projeto (project_id)** — coluna, filtros e formulários em adv_tasks; issue #9 fechada.
- **Atribuições explícitas (select responsável, "Atribuir a mim")** — assignee_email, TEAM_EMAILS, exibição em cards; issue #10 fechada.
- **Registro de apps/repos no dashboard** — tabela adv_apps, menu Apps, `/dashboard/apps`; issue #13 fechada.

---

## Temas adiados / won't do (não reabrir como urgente)

- **Evolução tarefas: boards múltiplos tipo Trello** — abordagem adv_trello_* foi revertida (migration drop). Kanban atual usa list_slug em adv_tasks. Reavaliar desenho apenas se for retomado; issue #8 pode permanecer aberta como backlog ou ser fechada como "won't do".

---

## Backlog em aberto (não confundir com “crise”)

Estes itens **permanecem em backlog** por decisão; não devem ser tratados como bloqueadores não resolvidos:

- **#3** Validação com equipe (login, CRUD, Kanbans) — processo humano; fechar quando a validação for feita.
- **#4** Integração Omie — não implementado; backlog Fase 2.
- **#5** Integração Meta/Google Ads — parcial (Lara + tabelas); dashboard unificado em backlog.
- **#6** KPIs no dashboard (MRR, margem, ROAS, CPA) — não implementado; backlog.
- **#11** Navegação projeto ↔ tarefas — não implementado; backlog.
- **#12** Anexos e links em tarefas e projetos — não implementado; backlog.
- **#14** estado_schema_template — parcial; preenchimento contínuo em backlog.
- **#15** CRM mesmo app ou outro repo — decisão de arquitetura; fechar quando houver decisão.

Ao citar issues abertas, o C-Suite deve distinguir entre **ações já concluídas** (lista “Já resolvidos”) e **backlog conhecido** (lista acima), evitando recomendar novamente o fechamento ou “resolução urgente” dos itens já resolvidos.
