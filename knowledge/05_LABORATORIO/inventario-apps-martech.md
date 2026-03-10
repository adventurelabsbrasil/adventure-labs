---
title: Inventário — Apps e repositórios Martech (Adventure Labs)
domain: laboratorio
tags: [inventario, apps, martech, repos]
updated: 2026-03-10
---

# Inventário — Apps e repositórios Martech (Adventure Labs)

Documento de referência para o Grove e para a equipe: quais aplicativos (SaaS/PWAs), ferramentas e repositórios fazem parte do portfólio martech da Adventure Labs. **A fonte única de verdade é a tabela `adv_apps` no Admin**, acessível em **Dashboard → Ativos (Sites/Apps)** (`/dashboard/apps`).

Ref.: [github-project-e-integracao.md](../00_GESTAO_CORPORATIVA/github-project-e-integracao.md), plano "Atualização plano e Apps no conhecimento", plano "Catálogo de Apps e Ativos".

---

## Onde ver e editar o catálogo

- **Lista com filtros:** **Admin** → menu **Ativos (Sites/Apps)** → `/dashboard/apps`. Filtros por **fase** (ideia, MVP, produção, manutenção), **tipo** (app, SaaS, ferramenta, landing, interno, outro), **cliente**, **projeto** e **busca por nome/slug**.
- **Detalhe de um ativo:** Clique no nome ou em "Ver detalhe" no card → `/dashboard/apps/[id]`. Exibe descrição, proprietário, responsável técnico, clientes/projetos vinculados, caminho no repo, links (GitHub, Vercel, Supabase, links úteis).
- **Editar:** Na lista, link "Editar" ou na página de detalhe o botão "Editar" → `/dashboard/apps/[id]/editar`.
- **Novo ativo:** Botão "Adicionar ativo" → `/dashboard/apps/novo`.

---

## Campos do catálogo (adv_apps)

| Campo | Uso |
|-------|-----|
| nome, slug, descricao | Identificação e resumo |
| tipo | Classificador: app, saas, tool, landing, internal, outro |
| phase | Fase: idea, mvp, production, maintenance |
| repo_path | Caminho no monorepo (ex.: `apps/admin`, `clients/01_lidera/lidera-dre`) |
| owner_email | Proprietário (negócio/gestor) |
| assignee_email | Responsável técnico / desenvolvedor |
| github_owner, github_repo, vercel_url, supabase_project_ref | Links Git, deploy e Supabase |
| links_uteis | JSONB: array de `{ label, url }` para docs, staging, etc. |
| N:N com adv_clients e adv_projects | Clientes e projetos associados |

---

## Objetivo

- Centralizar o conhecimento de que existem Admin, CRM Adventure, landing ELITE, Lidera DRE/Skills/Space, Young Talents, ferramentas (Dbgr, Xtractor, etc.).
- Permitir que o Grove e os agentes saibam onde cada app vive (repo_path, URL ao vivo, links).
- Evitar dependência de memória ou planilhas soltas.

---

## Inventário (template / referência)

O conteúdo vivo está no Admin. Para referência rápida em docs/context, segue template (atualizar conforme `adv_apps`):

| App | Tipo | Fase | Repo path | Observação |
|-----|------|------|-----------|------------|
| Admin | internal | production | apps/admin | Painel interno. Deploy Vercel, Supabase. |
| CRM Adventure | saas | production | apps/adventure | CRM de serviços. |
| Landing ELITE | landing | production | apps/elite | Captação de leads. |
| Lidera DRE, Skills, Space | saas/app | production | clients/01_lidera/... | Apps cliente Lidera. |
| Young Talents, Ranking Vendas | saas/app | production | clients/04_young/... | Banco de talentos, ranking. |
| Rose Portal Advocacia | app | production | clients/02_rose/... | Portal advocacia. |
| Dbgr, Xtractor, etc. | tool | mvp/production | tools/... | Ferramentas internas. |

---

## Manutenção

- **Admin:** Cadastrar/editar cada ativo em **Dashboard → Ativos**. Usar **tipo** e **fase** para classificadores; **repo_path** alinhado à taxonomia do repositório (`apps/`, `clients/`, `tools/`).
- **Seed inicial:** O arquivo `apps/admin/supabase/seed_catalogo_apps.sql` contém INSERTs condicionais para popular o catálogo (apps, clients, tools). Executar uma vez após aplicar as migrations (incluindo `20260310100001_adv_apps_catalogo_columns.sql`).
- **Este doc:** Atualizar quando houver novo app ou quando a lista no Admin for alterada, para o Grove ter referência em `/context`.
- **Fase futura (opcional):** Script que gera este markdown a partir de `adv_apps`; ou integração GitHub/Vercel para descoberta semimanual.

---

*Criado pelo Grove em 04/03/2026. Atualizado em 10/03/2026. Fonte de verdade: adv_apps no Admin.*
