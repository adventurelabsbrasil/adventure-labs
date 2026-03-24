-- =============================================================================
-- Young Talents — diagnóstico auth + user_roles (rodar no SQL Editor como postgres)
-- Projeto Supabase: Young Talents (ref ttvwfocuftsvyziecjeu)
-- =============================================================================
-- Objetivo: explicar "tenho admin na tabela mas não consigo usar o painel" — em
-- geral: user_id em young_talents.user_roles NULL ou diferente de auth.users.id,
-- ou política RLS que só aceita user_id = auth.uid() sem fallback por email.
-- =============================================================================

-- 1) Conta em auth (troque o email se precisar)
SELECT
  id,
  email,
  email_confirmed_at IS NOT NULL AS email_confirmed,
  banned_until,
  deleted_at,
  last_sign_in_at,
  created_at
FROM auth.users
WHERE lower(trim(email)) = lower(trim('contato@adventurelabs.com.br'));

-- 2) Linha(s) em user_roles (schema real) — pode haver duplicata conceitual se
--    alguém criou linha na view vs schema; o app usa public.user_roles (view).
SELECT
  id,
  user_id,
  email,
  role,
  last_login,
  updated_at
FROM young_talents.user_roles
WHERE lower(trim(email)) = lower(trim('contato@adventurelabs.com.br'))
ORDER BY updated_at DESC;

-- 3) Join: alinhamento user_id ↔ auth
SELECT
  ur.id AS role_row_id,
  ur.user_id AS role_user_id,
  au.id AS auth_user_id,
  ur.email AS role_email,
  au.email AS auth_email,
  ur.role,
  (ur.user_id IS NOT DISTINCT FROM au.id) AS user_id_alinhado
FROM young_talents.user_roles ur
FULL OUTER JOIN auth.users au
  ON lower(trim(au.email)) = lower(trim(ur.email))
WHERE lower(trim(coalesce(ur.email, au.email, ''))) = lower(trim('contato@adventurelabs.com.br'));

-- 4) Políticas RLS atuais em young_talents.user_roles
SELECT
  polname,
  polcmd,
  polroles::regrole[] AS roles,
  pg_get_expr(polqual, polrelid) AS using_expr,
  pg_get_expr(polwithcheck, polrelid) AS with_check_expr
FROM pg_policy
WHERE polrelid = 'young_talents.user_roles'::regclass
ORDER BY polname;

-- 5) Grants na view pública (anon não deveria ter SELECT em produção)
SELECT
  table_schema,
  table_name,
  grantee,
  privilege_type
FROM information_schema.role_table_grants
WHERE table_schema = 'public'
  AND table_name = 'user_roles'
ORDER BY grantee, privilege_type;

-- 6) Funções relevantes (definição resumida)
SELECT
  p.proname,
  pg_get_function_identity_arguments(p.oid) AS args
FROM pg_proc p
JOIN pg_namespace n ON n.oid = p.pronamespace
WHERE n.nspname = 'young_talents'
  AND p.proname IN (
    'sync_user_role_on_login',
    'is_developer',
    'has_privileged_role'
  )
ORDER BY p.proname;
