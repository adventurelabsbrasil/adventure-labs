# DECISION LOG

## 2026-03-19 — Migração total para Supabase Auth + RLS multi-tenant dinâmico

- Concluímos a migração total de identidade/autenticação para Supabase Auth no `apps/admin`.
- Removemos as dependências de Clerk na camada de autenticação principal (`server/client/middleware` e rota protegida de relatório).
- Implementamos RLS dinâmico por membership de tenant nas tabelas `adv_crm_*`, substituindo o tenant UUID hardcoded.
- A nova política usa membership real em `adv_org_members` via `auth_user_email()` (derivado de `auth.uid()`), garantindo isolamento por tenant por design.
- Resultado: o sistema agora opera de forma autônoma na gestão de identidade e autorização multi-tenant.
