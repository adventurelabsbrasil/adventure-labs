-- Opcional / housekeeping: alinhar adv_profiles.id ao auth.users.id do Mateus.
--
-- Contexto:
-- - adv_profiles.id é PK com DEFAULT gen_random_uuid() — NÃO é, por schema, o mesmo que auth.users.id.
-- - O Admin (getAuthProfile, RLS) usa user_email, não adv_profiles.id.
-- - time_bank_employees.id foi criado igual ao UUID do Auth por convenção no fluxo legado do relógio-ponto.
--
-- Esta migração só altera a linha do Mateus para os UUIDs informados pela operação.
-- Segurança: falha se o UUID de Auth já existir em outro adv_profiles.

DO $$
DECLARE
  v_auth_id uuid := '361fde84-1312-46d5-911e-95b48086ec0a'::uuid;
  v_old_profile_id uuid := 'ccb755fd-2e98-40f1-aefc-5066ef50b8c4'::uuid;
  v_email text := 'mateuslepocs@gmail.com';
  v_n int;
BEGIN
  IF EXISTS (
    SELECT 1 FROM public.adv_profiles
    WHERE id = v_auth_id AND lower(trim(user_email)) <> lower(trim(v_email))
  ) THEN
    RAISE EXCEPTION 'adv_profiles: UUID % já está em uso por outro e-mail', v_auth_id;
  END IF;

  UPDATE public.adv_profiles
  SET id = v_auth_id
  WHERE lower(trim(user_email)) = lower(trim(v_email))
    AND id = v_old_profile_id;

  GET DIAGNOSTICS v_n = ROW_COUNT;
  IF v_n = 0 THEN
    RAISE NOTICE 'Nenhuma linha atualizada (e-mail ou id antigo já divergentes — verificar dados).';
  END IF;
END $$;
