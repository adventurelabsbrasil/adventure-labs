-- =============================================================================
-- Young Talents — alinhar user_id em user_roles com auth.users (postgres / service)
-- Rode APÓS o diagnóstico 01. Ajuste o email se necessário.
-- =============================================================================
-- Corrige o caso mais comum: pré-cadastro com user_id NULL ou UUID antigo/errado.
-- =============================================================================

BEGIN;

-- Pré-visualização (opcional)
SELECT
  ur.id,
  ur.user_id AS antes,
  au.id AS depois_sugerido,
  ur.email,
  ur.role
FROM young_talents.user_roles ur
JOIN auth.users au ON lower(trim(au.email)) = lower(trim(ur.email))
WHERE lower(trim(ur.email)) = lower(trim('contato@adventurelabs.com.br'));

-- Aplicar alinhamento
UPDATE young_talents.user_roles ur
SET
  user_id = au.id,
  updated_at = now()
FROM auth.users au
WHERE lower(trim(au.email)) = lower(trim(ur.email))
  AND lower(trim(ur.email)) = lower(trim('contato@adventurelabs.com.br'))
  AND ur.user_id IS DISTINCT FROM au.id;

COMMIT;

-- Após isso, peça novo login (ou atualize raw_user_meta_data no auth) para
-- disparar o trigger sync_user_role_on_login, se existir.
