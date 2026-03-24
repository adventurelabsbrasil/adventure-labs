-- ==============================================================================
-- 028: ATS — leitura só para staff (admin/editor/viewer cadastrado); sem auto user_roles
-- Depende: 025 (has_privileged_role, políticas de escrita), 027 (is_developer seguro).
-- ==============================================================================

-- 1) has_privileged_role: nível 'viewer' = admin, editor ou viewer (somente leitura ATS)
CREATE OR REPLACE FUNCTION young_talents.has_privileged_role(p_min_role text)
RETURNS boolean
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path = young_talents, public
AS $func$
  SELECT EXISTS (
    SELECT 1
    FROM young_talents.user_roles ur
    WHERE
      (
        (p_min_role = 'admin' AND ur.role = 'admin')
        OR (p_min_role = 'editor' AND ur.role IN ('admin', 'editor'))
        OR (p_min_role = 'viewer' AND ur.role IN ('admin', 'editor', 'viewer'))
      )
      AND (
        ur.user_id = auth.uid()
        OR (
          (auth.jwt() ->> 'email') IS NOT NULL
          AND lower(trim(ur.email)) = lower(trim(auth.jwt() ->> 'email'))
        )
      )
  );
$func$;

COMMENT ON FUNCTION young_talents.has_privileged_role(text) IS
  'admin | editor | viewer (viewer = leitura ATS). JWT email ou user_id. p_min_role: admin, editor, viewer.';

-- 2) Formulário público: checar duplicidade de e-mail sem expor a base (RPC em public)
CREATE OR REPLACE FUNCTION public.public_candidate_email_exists(p_email text)
RETURNS boolean
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path = young_talents, public
AS $func$
  SELECT EXISTS (
    SELECT 1
    FROM young_talents.candidates c
    WHERE p_email IS NOT NULL
      AND length(trim(p_email)) > 0
      AND lower(trim(c.email)) = lower(trim(p_email))
      AND c.deleted_at IS NULL
  );
$func$;

COMMENT ON FUNCTION public.public_candidate_email_exists(text) IS
  'Usado pelo /apply: retorna se já existe candidato ativo com o e-mail, sem listar dados.';

REVOKE ALL ON FUNCTION public.public_candidate_email_exists(text) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.public_candidate_email_exists(text) TO anon;
GRANT EXECUTE ON FUNCTION public.public_candidate_email_exists(text) TO authenticated;

-- 3) anon não deve ler tabela candidates (só INSERT via RLS)
REVOKE SELECT ON young_talents.candidates FROM anon;

-- 4) Cidades: leitura pública para o formulário (dados não sensíveis; app usa schema young_talents)
GRANT SELECT ON young_talents.cities TO anon;
DROP POLICY IF EXISTS "Anon pode ler cities (formulário público)" ON young_talents.cities;
CREATE POLICY "Anon pode ler cities (formulário público)"
  ON young_talents.cities
  FOR SELECT
  TO anon
  USING (true);

-- 5) Remover SELECT aberto para authenticated — substituir por staff
DROP POLICY IF EXISTS "Authenticated read companies" ON young_talents.companies;
DROP POLICY IF EXISTS "Authenticated read cities" ON young_talents.cities;
DROP POLICY IF EXISTS "Authenticated read sectors" ON young_talents.sectors;
DROP POLICY IF EXISTS "Authenticated read positions" ON young_talents.positions;
DROP POLICY IF EXISTS "Authenticated read jobs" ON young_talents.jobs;
DROP POLICY IF EXISTS "Authenticated read job_levels" ON young_talents.job_levels;
DROP POLICY IF EXISTS "Authenticated read activity_areas" ON young_talents.activity_areas;
DROP POLICY IF EXISTS "Usuários autenticados podem ler candidatos" ON young_talents.candidates;
DROP POLICY IF EXISTS "Authenticated read applications" ON young_talents.applications;

CREATE POLICY "Staff pode ler companies"
  ON young_talents.companies FOR SELECT TO authenticated
  USING (young_talents.is_developer() OR young_talents.has_privileged_role('viewer'));

CREATE POLICY "Staff pode ler cities"
  ON young_talents.cities FOR SELECT TO authenticated
  USING (young_talents.is_developer() OR young_talents.has_privileged_role('viewer'));

CREATE POLICY "Staff pode ler sectors"
  ON young_talents.sectors FOR SELECT TO authenticated
  USING (young_talents.is_developer() OR young_talents.has_privileged_role('viewer'));

CREATE POLICY "Staff pode ler positions"
  ON young_talents.positions FOR SELECT TO authenticated
  USING (young_talents.is_developer() OR young_talents.has_privileged_role('viewer'));

CREATE POLICY "Staff pode ler jobs"
  ON young_talents.jobs FOR SELECT TO authenticated
  USING (young_talents.is_developer() OR young_talents.has_privileged_role('viewer'));

CREATE POLICY "Staff pode ler job_levels"
  ON young_talents.job_levels FOR SELECT TO authenticated
  USING (young_talents.is_developer() OR young_talents.has_privileged_role('viewer'));

CREATE POLICY "Staff pode ler activity_areas"
  ON young_talents.activity_areas FOR SELECT TO authenticated
  USING (young_talents.is_developer() OR young_talents.has_privileged_role('viewer'));

CREATE POLICY "Staff pode ler candidates"
  ON young_talents.candidates FOR SELECT TO authenticated
  USING (young_talents.is_developer() OR young_talents.has_privileged_role('viewer'));

CREATE POLICY "Staff pode ler applications"
  ON young_talents.applications FOR SELECT TO authenticated
  USING (young_talents.is_developer() OR young_talents.has_privileged_role('viewer'));

-- 6) activity_log: só staff insere (evita spam de sessões órfãs)
DROP POLICY IF EXISTS "Autenticado pode inserir activity_log" ON young_talents.activity_log;
CREATE POLICY "Staff pode inserir activity_log"
  ON young_talents.activity_log
  FOR INSERT
  TO authenticated
  WITH CHECK (young_talents.is_developer() OR young_talents.has_privileged_role('viewer'));

-- 7) sync_user_role_on_login: não criar linha viewer automaticamente
CREATE OR REPLACE FUNCTION young_talents.sync_user_role_on_login()
RETURNS TRIGGER AS $$
DECLARE
  user_email TEXT;
  user_name TEXT;
  user_photo TEXT;
  existing_role RECORD;
BEGIN
  user_email := NEW.email;
  user_name := COALESCE(
    NEW.raw_user_meta_data->>'full_name',
    NEW.raw_user_meta_data->>'name',
    NEW.raw_user_meta_data->>'display_name',
    NULL
  );
  user_photo := COALESCE(
    NEW.raw_user_meta_data->>'avatar_url',
    NEW.raw_user_meta_data->>'picture',
    NULL
  );

  SELECT * INTO existing_role
  FROM young_talents.user_roles
  WHERE lower(trim(email)) = lower(trim(user_email))
  LIMIT 1;

  IF existing_role IS NOT NULL THEN
    UPDATE young_talents.user_roles
    SET
      user_id = NEW.id,
      name = COALESCE(user_name, existing_role.name),
      photo = COALESCE(user_photo, existing_role.photo),
      last_login = NOW(),
      updated_at = NOW()
    WHERE id = existing_role.id;

    RAISE NOTICE 'Sincronizado user_role para % (ID: %)', user_email, NEW.id;
  ELSE
    RAISE NOTICE 'Ignorando sync user_roles: nenhum cadastro para %. Cadastre em Usuários ou via admin.', user_email;
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER SET search_path = young_talents, public;

COMMENT ON FUNCTION young_talents.sync_user_role_on_login() IS
  'Atualiza user_roles só se já existir linha (admin/Edge Function). Não cria viewer automático.';
