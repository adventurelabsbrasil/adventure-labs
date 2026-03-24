-- =============================================================================
-- Young Talents — verificação pós-025 (e opcionalmente pós-026)
-- =============================================================================

-- A) Funções esperadas
SELECT p.proname, pg_get_function_identity_arguments(p.oid) AS args
FROM pg_proc p
JOIN pg_namespace n ON n.oid = p.pronamespace
WHERE n.nspname = 'young_talents'
  AND p.proname IN ('sync_user_role_on_login', 'is_developer', 'has_privileged_role')
ORDER BY p.proname;

-- B) Alinhamento user_id ↔ auth (troque o email)
SELECT
  ur.user_id AS role_user_id,
  au.id AS auth_user_id,
  ur.role,
  (ur.user_id IS NOT DISTINCT FROM au.id) AS user_id_alinhado
FROM young_talents.user_roles ur
JOIN auth.users au ON lower(trim(au.email)) = lower(trim(ur.email))
WHERE lower(trim(ur.email)) = lower(trim('contato@adventurelabs.com.br'));

-- C) anon não deve ter privilégios em public.user_roles (após 026: zero linhas)
SELECT grantee, privilege_type
FROM information_schema.role_table_grants
WHERE table_schema = 'public'
  AND table_name = 'user_roles'
  AND grantee = 'anon'
ORDER BY privilege_type;
