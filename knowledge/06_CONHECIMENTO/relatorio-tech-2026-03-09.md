---
title: Relatório Tech — 09 de Março de 2026
domain: conhecimento
tags: [relatorio, tech, c-suite, crm, space, n8n, supabase]
updated: 2026-03-09
---

# Relatório Tech — 09 de Março de 2026

Resumo do que foi feito em termos de tecnologia para que o C-Suite e a equipe tenham visibilidade. Este documento é consumido pela API `/api/csuite/context-docs` e pelo workflow n8n (Build Context).

---

## Último final de semana (7 e 8 de março de 2026)

### C-Suite (n8n) — Versões V7, V8 e V9 (sábado 07/03)

- **V7:** Estrutura `n8n_workflows/csuite/` criada no monorepo admin; fluxo em `production/csuite-loop-v7.json`; Build Context com API `/api/csuite/context-docs` (retorno `{ text }`, até 8k chars); suporte a `titulo` em ideias (`adv_ideias`). Correções: resumo vazio no GitHub, parse de respostas Gemini, context-docs falhando em silêncio, validação robusta no Parse CEO Decision, fallbacks em getSafeOutput/getGeminiText. `pinData` removido do workflow de produção.
- **V8:** Nó **Validate Outputs1** entre CPO e Compile para validar outputs dos 5 C-Levels; `validationAudit` no Compile para rastreamento; logging quando C-Level retorna output inválido. Produção: `production/csuite-loop-v8.json`.
- **V9:** Retry em nós HTTP (`retryOnFail: true`, `maxTries: 3`, `waitBetweenTries: 2000`) para COO, CMO, CPO, CEO Grove e Generate Embeddings; CEO Grove Synthesis trocado para `gemini-2.5-flash` (redução de custo). Produção: `production/csuite-loop-v9.json`.

### Time Bank (Adventure) — Device/browser e migration (07/03)

- Migration **20260307000000_time_bank_entries_device_browser.sql**: novas colunas em `time_bank_entries` (`user_agent`, `browser`, `device_type`) para registrar dispositivo e navegador em cada batida de ponto.

### Base de conhecimento e plano n8n (07/03)

- **docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md** atualizado (estrutura de automações, agentes, skills e tools).
- **Frontmatter** adicionado em vários docs de `knowledge/` para ML/RAG: `MANUAL_TAXONOMIA_REPOSITORIO.md`, `arquitetura-agentic-csuite-skills.md`, `manual-drive-taxonomia.md`, `inventario-apps-martech.md`, `resumo-executivo-adventure-labs-2026.md`, `pipeline-propostas-2026-03.md`, `campanhas-entregas-2026-03.md`.
- **Auditoria de secrets:** execução do script com geração de resumo (data do relatório: 2026-03-07).

### Domingo 08/03

- Registros de ponto no Time Bank (ex.: entradas no CSV de exemplo) indicam uso em produção no fim de semana; nenhuma alteração de código específica documentada para domingo.

---

## 1. CRM (Adventure) — Prefixo `crm_` e tabela `crm_tasks`

- **Objetivo:** Isolar todas as tabelas do CRM no schema `public` com prefixo `crm_` (alinhado ao padrão `adv_` do Admin), evitando conflito com outras tabelas (ex.: `tasks` de lições).
- **Migration:** `20260309100000_crm_tables_rename_to_prefix.sql` — renomeação de tabelas (`users` → `crm_users`, `projects` → `crm_projects`, `project_users` → `crm_project_users`, `deals` → `crm_deals`, `contacts`, `companies`, `services`, `proposals`, `funnels`, `close_reasons`, etc.). FKs e funções RLS (`get_user_type`, `has_project_access`, `is_project_owner`) recriadas; apenas tabelas em `public` alteradas (evitando tocar em `auth.identities`).
- **App:** `db.ts`, `invites.ts`, `MembersPage.tsx` atualizados para usar `crm_*`. Scripts de seed e remoção de mockups atualizados.
- **Nova tabela:** `crm_tasks` criada (`20260310100000_crm_tasks.sql`) para tarefas por deal (project_id, deal_id, title, description, type, status, due_date, assigned_to, etc.). A tabela `public.tasks` permanece para lições (lesson_id, order_index).
- **Documentação:** `CRM_TABELAS_E_ROLES_VERIFICACAO.md`, script de diagnóstico `diagnostico_crm_tables_rls.sql`, inventário em `docs/SUPABASE_INVENTARIO_TABELAS.md`.

---

## 2. Lidera Space (LMS) — Prefixo `space_`

- **Objetivo:** Deixar a estrutura do LMS genérica e reutilizável para outros clientes (não só Lidera). Prefixo alterado de `lidera_` para `space_`.
- **Migration:** `20260311100000_space_tables_prefix.sql` (em `clients/01_lidera/lidera-space/supabase/migrations`) — renomeação: `users` → `space_users`, `programs` → `space_programs`, `modules` → `space_modules`, `lessons` → `space_lessons`, `notes` → `space_notes`, `progress` → `space_progress`. RLS e índices recriados de forma condicional (compatível com BD compartilhado).
- **App:** Front do Lidera Space atualizado para usar apenas tabelas `space_*` e RLS correspondente.
- **Documentação:** Inventário atualizado com grupo Space (LMS); seeds e docs do Lidera/Space ajustados.

---

## 3. C-Suite (n8n) — Founder Reports e V11 em produção

- **Integração:** O workflow C-Suite passou a **ler** os relatórios do founder (`adv_founder_reports`, últimos 7 dias) no Build Context. O Grove e os C-Levels recebem a seção "=== RELATÓRIOS DO FOUNDER (últimos 7 dias) ===" no contexto.
- **Versão em produção:** **V11** — *C-Suite Autonomous Loop - V11 (Fase 4: Paralelização + Histórico + Founder Reports)*. Arquivo: `apps/core/admin/n8n_workflows/C-Suite Autonomous Loop - V11 (Fase 4_ Paralelização + Histórico + Founder Reports).json`.
- **Ajustes:** Nó "Fetch Founder Reports1" com `alwaysOutputData: true` para não travar quando não houver relatórios; Build Context defensivo quando não há output.
- **Importação:** Script `import-to-railway.sh` atualizado para carregar credenciais de `GEMINI_CLI/.env` (N8N_HOST_URL, N8N_API_KEY). V11 importado no n8n (Railway) com sucesso.
- **Documentação:** `docs/CSuite_relatorios_founder.md`, `apps/core/admin/n8n_workflows/README.md` (V11 como versão de manutenção), `csuite/CHANGELOG.md` com entrada [11.0.0]. Referência ao manual de roles em `knowledge/README.md` e docs de verificação/alinhamento Supabase.

---

## 4. Registro de Ponto (Time Bank) — GMT-3 e dispositivo/navegador

- **Fuso horário:** Tratamento para exibição e edição sempre em **GMT-3 (America/Sao_Paulo)**. Utilitário em `src/features/timeBank/utils/timezone.ts`: `formatDateTimeGMT3`, `toDatetimeLocalGMT3`, `datetimeLocalGMT3ToISO`. TimeBankPage e RegistroPontoPage passaram a usar esses helpers; modal de edição no admin preenche e envia em GMT-3 (convertido para UTC no banco).
- **Dispositivo/navegador:** Novas colunas em `time_bank_entries`: `user_agent`, `browser`, `device_type`. Migration `20260307000000_time_bank_entries_device_browser.sql`. Edge functions clock-in/clock-out e API admin atualizadas para receber e retornar esses campos; front envia `getDeviceInfo()` em toda batida e exibe "Dispositivo / Navegador" na tabela admin.
- **Correções:** Ajustes em migrations (seed de locations sem depender de UNIQUE em `name`; typo `time_bank_locationsa` corrigido). `supabase db push` concluído com sucesso.

---

## 5. Monorepo e documentação

- **Repo adventure-labs:** Estrutura com submodules (admin, adventure, elite, finfeed, lidera-space, roseportaladvocacia, young-emp, ranking-vendas, young-talents, lidera-skills). Script `scripts/setup.sh` para init de submodules e symlink `apps/core/admin/context` → `../../../knowledge`.
- **Plano n8n:** Documento `docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md` com estrutura de automações, agentes, skills e tools; segurança, prioridades e faseamento.
- **Outros:** Manual do projeto Roles referenciado na base de conhecimento; auditoria de secrets (script + resumo commitável); frontmatter em knowledge para ML/RAG; packages compartilhados (ui, db, config) em estrutura inicial; unificação do registro de ponto no Admin (plano implementado: página `/dashboard/ponto`, geo, saldo, usos, admin editar registros, redirect no Adventure).

---

## 6. Deploy e Vercel

- **Documentação:** `docs/VERCEL_GITHUB_DEPLOY.md` — status da conexão dos projetos Vercel (admin, lideraspace, young-talents, roseportaladvocacia, elite, lidera-skills) com os repositórios GitHub para deploy automático no push. Incluída seção **Admin por cliente (subdomínio)** com link para `docs/ADMIN_POR_CLIENTE_SUBDOMINIO.md`.

---

## 7. Admin — Google Ads, Meta BM, credenciais e env por cliente (09/03)

### Integração Google Ads e Meta Business Manager

- **Segurança:** Allowlist no middleware (`ADMIN_ALLOWED_EMAILS`); apenas e-mails configurados acessam dashboard e APIs `/api/ads/*`, `/api/meta/*`. Acesso sem perfil em `adv_profiles` negado (redirect login). CLI pode chamar as APIs com header `x-admin-key` = `CRON_SECRET`.
- **Google Ads:** Lib `apps/core/admin/src/lib/google-ads.ts` (google-ads-api); env `GOOGLE_ADS_*`; rotas `GET/PATCH /api/ads/google/campaigns` e `campaigns/[id]`. Frontend em `/dashboard/ads` (aba Google Ads) com lista de campanhas e ações pausar/ativar.
- **Meta (Business Manager):** Lib `meta-business.ts` (Graph API v21, System User token); env `META_BM_*`; rotas `GET /api/meta/accounts`, `GET /api/meta/accounts/[id]/campaigns`, `PATCH /api/meta/campaigns/[id]`. Aba Meta no `/dashboard/ads` com seletor de conta e lista de campanhas.
- **CLI:** Script `apps/core/admin/scripts/ads-cli.mjs` para listar/pausar/ativar campanhas (Google e Meta) via APIs do Admin com `CRON_SECRET`.
- **Documentação:** `docs/ADS_META_ADMIN.md` (acesso, variáveis, APIs, CLI, uso com Cursor/Gemini); `docs/CREDENCIAIS_GOOGLE_E_META.md` (passo a passo para obter credenciais Google Cloud — Drive e Google Ads — e Meta BM; inclui correção para erro 403 access_denied ao adicionar usuários de teste na tela de consentimento OAuth). `.env.example` do admin atualizado com todas as variáveis e explicação de que `CRON_SECRET` é um valor inventado (ex.: `openssl rand -hex 32`).

### Admin por cliente (subdomínio e env por cliente)

- **Modelo:** Um subdomínio por cliente (ex.: `lidera.admin.adventurelabs.com.br`) = um projeto Vercel = um conjunto de variáveis de ambiente. As credenciais (Drive, Google Ads, Meta) ficam organizadas no Vercel daquele cliente e na pasta do cliente no repositório.
- **Template:** `docs/ADMIN_ENV_CLIENTE.env.template` — template completo de env por cliente (Supabase, allowlist, URL do subdomínio, Drive, Google Ads, Meta).
- **Pastas por cliente:** `clients/01_lidera/admin/`, `clients/02_rose/admin/`, `clients/04_young/admin/` — cada uma com `.env.example` (env de referência daquele cliente, com `NEXT_PUBLIC_APP_URL` já com o subdomínio) e `README.md` (instruções para Vercel e local).
- **Documentação:** `docs/ADMIN_POR_CLIENTE_SUBDOMINIO.md` — modelo (1 subdomínio = 1 Vercel project), passos para novo cliente (repo, Vercel, Supabase, local), resumo da organização. Referência adicionada em `docs/VERCEL_GITHUB_DEPLOY.md`.

---

## Resumo para o C-Suite

| Área            | O que foi feito |
|-----------------|-----------------|
| **Fim de semana 07–08/03** | C-Suite V7/V8/V9 (Build Context, Validate Outputs, Retry, CEO Flash); migration Time Bank device/browser; plano n8n e frontmatter em knowledge; auditoria de secrets. |
| **CRM**         | Tabelas com prefixo `crm_`; nova `crm_tasks`; app e seeds alinhados. |
| **Space (LMS)** | Prefixo `space_` para reuso multi-cliente; front conectado ao novo schema. |
| **C-Suite n8n** | V11 em produção com Founder Reports no contexto; import via CLI (GEMINI_CLI/.env). |
| **Time Bank**   | Horário em GMT-3 na UI; dispositivo/navegador gravados e exibidos. |
| **Monorepo**    | Submodules, setup.sh, plano n8n e docs de referência atualizados. |
| **Admin (09/03)** | Integração Google Ads e Meta BM (allowlist, libs, APIs, /dashboard/ads, CLI); docs de credenciais (Google e Meta) e correção 403; env por cliente (template, pastas clients/XX/admin, doc subdomínio + Vercel). |

Este relatório fica em `knowledge/06_CONHECIMENTO/` e é incluído no contexto que o workflow C-Suite (n8n) e a API `context-docs` entregam aos agentes.
