---
title: Relatório Tech — 10 de Março de 2026
domain: conhecimento
tags: [relatorio, tech, c-suite, admin, lidera-dre, lara, n8n, young-talents, pll, martech]
updated: 2026-03-10
---

# Relatório Tech — 10 de Março de 2026

Resumo do que foi feito em termos de tecnologia para que o C-Suite e a equipe tenham visibilidade. Este documento é consumido pela API `/api/csuite/context-docs` e pelo workflow n8n (Build Context).

**Escopo:** alterações no monorepo **01_ADVENTURE_LABS** e no submodule **apps/core/admin**, incluindo docs e base de conhecimento.

---

## 1. Admin (apps/core/admin) — Catálogo de Apps/Ativos, Sidebar e Estrutura

### Catálogo único de apps/ativos

- **Dashboard → Ativos (Sites/Apps)** (`/dashboard/apps`): catálogo único com **filtros** (fase, tipo, cliente, projeto, busca por nome/slug), **visão em tabela** e **página de detalhe** por ativo (`/dashboard/apps/[id]`).
- **Seed e documentação:** `seed_catalogo_apps.sql` para popular `adv_apps`; inventário atualizado em **knowledge/05_LABORATORIO/inventario-apps-martech.md** com fluxo, campos e manutenção (fonte de verdade: `adv_apps` no Admin).

### Sidebar e visão em tabela

- **Filtros em sidebar** com dropdowns (fase, tipo, cliente, etc.) e **visão em tabela** para listas de apps/ativos, alinhada ao padrão do dashboard.

### Estrutura do app Next.js

- **Refatoração:** unificação do app em `apps/core/admin` (removida duplicação `apps/core/admin/apps/core/admin`). Estrutura “achatada” para build e deploy corretos no Vercel.
- **Docs:** documento sobre **Root Directory vazio** quando o Vercel usa o repositório do admin (não monorepo), para evitar erros de build.

### Build e dependências

- **Fix:** adicionada dependência `google-ads-api` (fix build “module not found”).
- **pnpm:** `pnpm-lock.yaml` regenerado para `package.json` unificado (fix Vercel frozen-lockfile).

---

## 2. Lidera DRE — App multi-tenant com auth e roles

- **Escopo:** aplicativo de DRE (Demonstrativo de Resultados) para o cliente Lidera: lançamentos de receitas/despesas, categorias, DRE mensal/anual, export em PDF/XLS/CSV.
- **Supabase:** tabelas `dre_categorias`, `dre_subcategorias`, `dre_lancamentos`, `dre_organizacoes`, `dre_perfis`; lançamentos com `organizacao_id` e `created_by`.
- **Auth:** login, `ProtectedRoute`, `AuthContext` com perfil (admin/gestor). **Multi-tenant:** admin vê todas as organizações; gestor vê apenas a própria.
- **Admin:** página de administração com CRUD de organizações e usuários (role, org).
- **Docs:** passo a passo Supabase, primeiro admin, subdomínio Vercel (`lidera-dre.adventurelabs.com.br`). Repo: `clients/01_lidera/lidera-dre` (submodule).

---

## 3. Lidera PLL — Planilha CEF e contexto C-Suite

- **Entrega:** Planilha de gestão de estoque e lista de compras (Programa Lucro e Liberdade — PLL), 1 de 5 do pacote. Google Sheets + Apps Script; links da planilha e do script registrados.
- **Base de conhecimento:** criado **knowledge/04_PROJETOS_DE_CLIENTES/lidera-pll-planilha-cef-2026-03-10.md** e **cópia em knowledge/06_CONHECIMENTO/lidera-pll-planilha-cef-2026-03-10.md** para o C-Suite. Entregas por cliente atualizadas; **knowledge/README.md** com entrada na tabela Relatórios Tech.
- **Docs PLL:** adicionado link da conversa Gemini (apoio à planilha CEF) nos documentos do projeto.

---

## 4. Young Talents — Exportação de candidatos e C-Suite

- **Feature:** exportar lista filtrada de candidatos em **CSV**, **XLS (Excel)** e **PDF**, com seleção de colunas (modal com checkboxes e atalhos: Apenas contato, Padrão, Selecionar todos).
- **Locais:** Banco de Talentos e Relatórios; filtros da sidebar e filtros salvos respeitados.
- **Base de conhecimento:** **knowledge/06_CONHECIMENTO/young-talents-export-candidatos-2025-03-10.md** criado e **knowledge/README.md** atualizado na seção Relatórios Tech (C-Suite). Visível via `context-docs` e n8n Build Context.

---

## 5. Lara (Meta Ads) e n8n — Analyze, daily e Sueli

### API Lara Analyze

- **POST /api/lara/analyze:** recebe período (min_date, max_date); busca dados de `adv_meta_ads_daily`, contexto C-Suite (context-docs), memória Lara (`adv_lara_memory`); gera relatório analítico via Gemini (persona Lara + skills); retorna `{ title, content }` para envio ao Founder (ex.: POST /api/csuite/founder-report).
- **Workflow n8n:** nó **Lara Analyze** integrado ao fluxo; documentação em **NOS_DO_FLUXO.md** (meta_ads_agent) com notas nos nós.

### Meta Ads e rotas meta/daily

- Scripts n8n e rotas **meta/daily** atualizados para suportar o fluxo Lara e sincronização de dados Meta.

### Sueli (conciliação bancária)

- **GET /api/n8n/sueli-config:** retorna variáveis da Sueli (Omie, Google Chat, Google Sheets) para o n8n consumir via HTTP. Credenciais no Admin (Vercel); workflow só precisa de `CRON_SECRET` e `ADMIN_URL` no n8n. Acesso: header `x-admin-key` = `CRON_SECRET`.

---

## 6. Base de conhecimento e Relatórios Tech (C-Suite)

- **06_CONHECIMENTO:** incluídos/atualizados hoje: `lidera-pll-planilha-cef-2026-03-10.md`, `young-talents-export-candidatos-2025-03-10.md`, e **inventario-apps-martech.md** (05_LABORATORIO) com fluxo do catálogo e seed.
- **knowledge/README.md:** tabela **Relatórios Tech (C-Suite)** atualizada com os novos relatórios do dia; consumidos pela API `/api/csuite/context-docs` e pelo workflow n8n (Build Context).

---

## Resumo para o C-Suite

| Área | O que foi feito |
|------|-----------------|
| **Admin** | Catálogo único de apps/ativos com filtros, tabela e detalhe; seed e inventário martech; sidebar com dropdowns; estrutura Next.js unificada; fix build (google-ads-api, pnpm, Root Directory). |
| **Lidera DRE** | App DRE multi-tenant com auth (admin/gestor), lançamentos, categorias, DRE mensal/anual, export PDF/XLS/CSV; Supabase e docs (subdomínio Vercel). |
| **Lidera PLL** | Planilha CEF (estoque e compras) entregue; doc em 04 e cópia em 06_CONHECIMENTO para C-Suite; link Gemini nos docs. |
| **Young Talents** | Exportação de candidatos filtrados em CSV, XLS e PDF com seleção de colunas; doc em 06_CONHECIMENTO para C-Suite. |
| **Lara / n8n** | API /api/lara/analyze e nó Lara Analyze no workflow; NOS_DO_FLUXO.md; rotas meta/daily e scripts n8n atualizados. |
| **Sueli** | API /api/n8n/sueli-config para workflow n8n (config via HTTP). |
| **Conhecimento** | Relatórios PLL e Young Talents em 06_CONHECIMENTO; inventário martech atualizado; README com Relatórios Tech atualizados. |

Este relatório fica em `knowledge/06_CONHECIMENTO/` e é incluído no contexto que o workflow C-Suite (n8n) e a API `context-docs` entregam aos agentes.
