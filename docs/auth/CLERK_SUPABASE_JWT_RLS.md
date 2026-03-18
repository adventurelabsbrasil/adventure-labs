# Clerk → Supabase JWT e RLS (Admin)

Como o Admin usa **Clerk** como IdP e **Supabase** com RLS por role (`adv_profiles`, `adv_project_members`), o banco precisa do **e-mail do usuário** para aplicar as políticas. Este doc descreve o fluxo e a solução.

---

## Fluxo atual

1. Usuário faz login no Admin via **Clerk** (ex.: Google).
2. O app chama `createClient()` em `apps/admin/src/lib/supabase/server.ts`, que obtém o **JWT da sessão Clerk** (`getToken()` ou template `supabase`) e envia no header `Authorization` para o Supabase.
3. O **Supabase** está configurado com Clerk como **Third-party provider** (Authentication → Providers). Ele valida o JWT do Clerk e usa:
   - `auth.uid()` = claim `sub` do JWT (ID do usuário no Clerk)
   - **Não** cria linha em `auth.users` automaticamente (Clerk é o dono da identidade).
4. As políticas RLS do Admin usam a função **`auth_user_email()`** para cruzar com `adv_profiles.user_email`. Se essa função retornar `NULL`, `get_adv_profile_role()` faz `COALESCE(..., 'admin')` e **todos** seriam tratados como admin (falha de segurança).

---

## Problema

A migration original define:

```sql
CREATE OR REPLACE FUNCTION auth_user_email()
RETURNS TEXT AS $$
  SELECT email FROM auth.users WHERE id = auth.uid();
$$ LANGUAGE SQL SECURITY DEFINER;
```

Com **Clerk**, não há linha em `auth.users` para `auth.uid()` (que é o `sub` do Clerk). Logo `auth_user_email()` retorna **NULL** e o RLS não consegue restringir por e-mail.

---

## Solução

1. **Clerk:** Incluir o claim **`email`** no session token (já documentado em [CLERK_SETUP.md](./CLERK_SETUP.md) — Session token, claim `email` = `{{user.primary_email_address}}`).
2. **Supabase:** Alterar `auth_user_email()` para usar o e-mail do **JWT** quando `auth.users` não tiver o usuário (migration `20260317110000_auth_user_email_from_jwt.sql`):

   ```sql
   CREATE OR REPLACE FUNCTION auth_user_email()
   RETURNS TEXT AS $$
     SELECT COALESCE(
       (SELECT email FROM auth.users WHERE id = auth.uid()),
       auth.jwt()->>'email'
     );
   $$ LANGUAGE SQL SECURITY DEFINER;
   ```

   Assim: se existir usuário em `auth.users` (ex.: sync futura), usa esse e-mail; senão, usa o claim `email` do JWT do Clerk.

3. **Opcional (Clerk JWT template "supabase"):** No Clerk Dashboard → JWT Templates, criar template **supabase** com o **signing key do Supabase** (Settings → API) e incluir o claim `email` no payload. O app já tenta `getToken({ template: "supabase" })` antes do token padrão.

---

## Checklist

- [ ] Clerk: claim `email` no session token (Clerk Dashboard → Sessions → Customize session token).
- [ ] Migration `20260317110000_auth_user_email_from_jwt.sql` aplicada no Supabase do Admin.
- [ ] Tabela `adv_profiles` com linhas para cada usuário (e-mail = mesmo do Clerk).
- [ ] `adv_project_members` preenchido para usuários com role `tarefas`.

---

## Referências

- [CLERK_SETUP.md](./CLERK_SETUP.md) — Session token e integração Supabase.
- [plano-acao-issue-118-admin-rls-meta-lp.md](../../knowledge/00_GESTAO_CORPORATIVA/operacao/plano-acao-issue-118-admin-rls-meta-lp.md) — Checklist da issue #118.
