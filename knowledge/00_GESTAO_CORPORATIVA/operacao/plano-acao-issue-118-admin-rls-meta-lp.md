# Plano de ação — Issue #118 (P0: Admin RLS, Meta Ads KPIs & LP Martech)

Checklist de acompanhamento da issue mestra do repositório Admin. Ref.: [GitHub #118](https://github.com/adventurelabsbrasil/admin/issues/118).

---

## 1. Desbloquear Admin App (Roles/RLS) — 48h

### Feito no código (monorepo)
- [x] **RLS por role** já em produção: `adv_projects`, `adv_tasks`, `adv_task_time_entries`, `adv_project_members` (migration `20260308100001_adv_rls_by_role.sql`).
- [x] **RLS para adv_clients** adicionado: role `tarefas` só vê clientes dos projetos em que é membro (migration `20260317100000_adv_clients_rls_by_role.sql`). **Ação:** rodar migration no Supabase do Admin (ou aplicar via deploy).
- [x] **Middleware** restringe rotas por role `tarefas` (dashboard) e allowlist de e-mail.
- [x] **Auth profile** (Clerk + Supabase): `getAuthProfile()` usa `adv_profiles.user_email` e `adv_project_members`; fallback para e-mail via API Clerk quando necessário.

### Pendente (operacional)
- [ ] Garantir que **Supabase aceite JWT do Clerk** (custom JWT ou sync auth.users) para que `auth_user_email()` nas políticas RLS retorne o e-mail. Se o projeto usa apenas Clerk e não popula `auth.users`, avaliar função que leia e-mail do JWT (ex.: claim customizado).
- [ ] **Seed/verificar** `adv_profiles`: Rodrigo (admin), Igor e Mateus (admin ou tarefas conforme definido) com `user_email` igual ao do Clerk.
- [ ] **adv_project_members**: cadastrar Igor e Mateus nos projetos que devem enxergar (se role for `tarefas`).
- [ ] **Onboarding 15 min** com Igor e Mateus: login, fluxo de tarefas, cliente e projeto; canal `#admin-feedback` criado e comunicado.
- [ ] Migrar **pelo menos um workflow** do Trello para o Admin (ex.: gestão de tarefas diárias).

---

## 2. Corrigir integridade de dados Meta Ads e rastreamento de conversão — 72h

### Responsáveis
- **Mateus Scopel** (execução, auditoria relatórios).
- **Rodrigo** (integração técnica, Pixel/API se necessário).
- **Igor** (supervisão/validação conforme definido).

### Critérios de aceite
- [ ] Relatórios Meta Ads (ex.: conta Lara) **sem lacunas** de dados para períodos ativos (spend, impressões, cliques, conversões).
- [ ] **Rastreamento de conversão** configurado e testado (ex.: lead, formulário de contato) onde aplicável.
- [ ] Processo de **monitoramento diário** da integridade (checklist ou alerta n8n) definido.

### Referências
- Issue #5 (Integração Meta/Google Ads).
- APIs/rotas existentes no Admin: `/api/meta/`, `/api/ads/` (verificar se há CRON ou n8n puxando dados).

---

## 3. Iniciar desenvolvimento da Landing Page Martech — 96h

### Objetivo
Landing page dedicada aos serviços de **Assessoria Martech** da Adventure Labs (aquisição de leads qualificados).

### Entregas (96h)
- [ ] **Wireframe e estrutura de conteúdo** aprovados (Igor: design e conteúdo; Rodrigo: validação).
- [ ] **Início da implementação** técnica (stack: Next.js/Vercel ou conforme padrão do monorepo).
- [ ] **Definição de prazo** para lançamento completo da LP.

### Escopo mínimo (sugestão)
- Hero: proposta de valor Martech (tráfego, dados, automação).
- Serviços ou cases resumidos.
- CTA principal (contato/agendamento).
- Formulário ou link para captação de lead.

### Local no repositório
- Documentar decisão: mesmo app Admin (rota pública) ou app/site separado (ex.: `marketing.adventurelabs.com.br`). Ver issue #15 (CRM/app/repo).

---

## Próximos passos após 96h

- Reunião de follow-up: revisar status dos três pilares e ajustar prioridades.
- Consolidar feedback do canal `#admin-feedback` em backlog do Admin (issues ou adv_tasks).
- Atualizar este doc com datas de conclusão e links (LP, relatórios Meta, etc.).

---

*Criado pelo Grove em 17/03/2026. Atualizar conforme avanço do plano.*
