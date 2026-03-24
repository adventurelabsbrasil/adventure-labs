-- ==============================================================================
-- 025: Corrige staff/admin quando user_roles.user_id está NULL ou divergente do auth,
--       match de email case-insensitive no trigger de sync, leitura do próprio role
--       via JWT, e revoga SELECT em public.user_roles para anon.
-- Depende: migrations até 024 aplicadas no projeto.
-- ==============================================================================

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
  'True se o usuário autenticado tem admin (ou editor+admin) em user_roles por user_id OU por email do JWT (case-insensitive). SECURITY DEFINER para contornar RLS na checagem.';

REVOKE ALL ON FUNCTION young_talents.has_privileged_role(text) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION young_talents.has_privileged_role(text) TO authenticated;

-- View pública: não expor roles para sessões anon
REVOKE SELECT ON public.user_roles FROM anon;

-- Trigger: alinhar por email sem depender de case exata
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
    INSERT INTO young_talents.user_roles AS ur (user_id, email, name, photo, role, created_at, last_login)
    VALUES (
      NEW.id,
      user_email,
      user_name,
      user_photo,
      'viewer',
      NOW(),
      NOW()
    )
    ON CONFLICT (email) DO UPDATE
    SET
      user_id = EXCLUDED.user_id,
      name = COALESCE(EXCLUDED.name, ur.name),
      photo = COALESCE(EXCLUDED.photo, ur.photo),
      last_login = NOW(),
      updated_at = NOW();

    RAISE NOTICE 'Criado/atualizado user_role para % (ID: %)', user_email, NEW.id;
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER SET search_path = young_talents, public;

COMMENT ON FUNCTION young_talents.sync_user_role_on_login() IS
  'Sincroniza user_roles no login; match de email com lower(trim) para evitar divergência de case.';

-- Leitura do próprio registro: uid OU email do JWT (evita subquery em auth.users na RLS)
DROP POLICY IF EXISTS "Usuários podem ler seu próprio role" ON young_talents.user_roles;
CREATE POLICY "Usuários podem ler seu próprio role"
  ON young_talents.user_roles
  FOR SELECT
  TO authenticated
  USING (
    user_id = auth.uid()
    OR (
      (auth.jwt() ->> 'email') IS NOT NULL
      AND lower(trim(email)) = lower(trim(auth.jwt() ->> 'email'))
    )
  );

DROP POLICY IF EXISTS "Admin pode ler todos os roles" ON young_talents.user_roles;
CREATE POLICY "Admin pode ler todos os roles"
  ON young_talents.user_roles
  FOR SELECT
  TO authenticated
  USING (
    young_talents.has_privileged_role('admin')
    OR young_talents.is_developer()
  );

DROP POLICY IF EXISTS "Apenas admin pode inserir roles" ON young_talents.user_roles;
CREATE POLICY "Apenas admin pode inserir roles"
  ON young_talents.user_roles
  FOR INSERT
  TO authenticated
  WITH CHECK (
    young_talents.has_privileged_role('admin')
    OR young_talents.is_developer()
  );

DROP POLICY IF EXISTS "Apenas admin pode atualizar roles" ON young_talents.user_roles;
CREATE POLICY "Apenas admin pode atualizar roles"
  ON young_talents.user_roles
  FOR UPDATE
  TO authenticated
  USING (
    young_talents.has_privileged_role('admin')
    OR young_talents.is_developer()
  );

DROP POLICY IF EXISTS "Apenas admin pode deletar roles" ON young_talents.user_roles;
CREATE POLICY "Apenas admin pode deletar roles"
  ON young_talents.user_roles
  FOR DELETE
  TO authenticated
  USING (
    young_talents.has_privileged_role('admin')
    OR young_talents.is_developer()
  );

-- 2. COMPANIES – incluir is_developer() em todas as políticas
DROP POLICY IF EXISTS "Admin e editor podem inserir companies" ON young_talents.companies;
DROP POLICY IF EXISTS "Admin e editor podem atualizar companies" ON young_talents.companies;
DROP POLICY IF EXISTS "Apenas admin pode deletar companies" ON young_talents.companies;

CREATE POLICY "Admin e editor podem inserir companies" ON young_talents.companies
  FOR INSERT TO authenticated
  WITH CHECK (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('editor')
  );
CREATE POLICY "Admin e editor podem atualizar companies" ON young_talents.companies
  FOR UPDATE TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('editor')
  );
CREATE POLICY "Apenas admin pode deletar companies" ON young_talents.companies
  FOR DELETE TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('admin')
  );

-- 3. CITIES
DROP POLICY IF EXISTS "Admin e editor podem inserir cities" ON young_talents.cities;
DROP POLICY IF EXISTS "Admin e editor podem atualizar cities" ON young_talents.cities;
DROP POLICY IF EXISTS "Apenas admin pode deletar cities" ON young_talents.cities;

CREATE POLICY "Admin e editor podem inserir cities" ON young_talents.cities
  FOR INSERT TO authenticated
  WITH CHECK (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('editor')
  );
CREATE POLICY "Admin e editor podem atualizar cities" ON young_talents.cities
  FOR UPDATE TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('editor')
  );
CREATE POLICY "Apenas admin pode deletar cities" ON young_talents.cities
  FOR DELETE TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('admin')
  );

-- 4. SECTORS
DROP POLICY IF EXISTS "Admin e editor podem inserir sectors" ON young_talents.sectors;
DROP POLICY IF EXISTS "Admin e editor podem atualizar sectors" ON young_talents.sectors;
DROP POLICY IF EXISTS "Apenas admin pode deletar sectors" ON young_talents.sectors;

CREATE POLICY "Admin e editor podem inserir sectors" ON young_talents.sectors
  FOR INSERT TO authenticated
  WITH CHECK (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('editor')
  );
CREATE POLICY "Admin e editor podem atualizar sectors" ON young_talents.sectors
  FOR UPDATE TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('editor')
  );
CREATE POLICY "Apenas admin pode deletar sectors" ON young_talents.sectors
  FOR DELETE TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('admin')
  );

-- 5. POSITIONS
DROP POLICY IF EXISTS "Admin e editor podem inserir positions" ON young_talents.positions;
DROP POLICY IF EXISTS "Admin e editor podem atualizar positions" ON young_talents.positions;
DROP POLICY IF EXISTS "Apenas admin pode deletar positions" ON young_talents.positions;

CREATE POLICY "Admin e editor podem inserir positions" ON young_talents.positions
  FOR INSERT TO authenticated
  WITH CHECK (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('editor')
  );
CREATE POLICY "Admin e editor podem atualizar positions" ON young_talents.positions
  FOR UPDATE TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('editor')
  );
CREATE POLICY "Apenas admin pode deletar positions" ON young_talents.positions
  FOR DELETE TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('admin')
  );

-- 6. JOBS (Vagas)
DROP POLICY IF EXISTS "Admin e editor podem inserir jobs" ON young_talents.jobs;
DROP POLICY IF EXISTS "Admin e editor podem atualizar jobs" ON young_talents.jobs;
DROP POLICY IF EXISTS "Apenas admin pode deletar jobs" ON young_talents.jobs;

CREATE POLICY "Admin e editor podem inserir jobs" ON young_talents.jobs
  FOR INSERT TO authenticated
  WITH CHECK (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('editor')
  );
CREATE POLICY "Admin e editor podem atualizar jobs" ON young_talents.jobs
  FOR UPDATE TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('editor')
  );
CREATE POLICY "Apenas admin pode deletar jobs" ON young_talents.jobs
  FOR DELETE TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('admin')
  );

-- 7. JOB_LEVELS
DROP POLICY IF EXISTS "Admin e editor podem inserir job_levels" ON young_talents.job_levels;
DROP POLICY IF EXISTS "Admin e editor podem atualizar job_levels" ON young_talents.job_levels;
DROP POLICY IF EXISTS "Apenas admin pode deletar job_levels" ON young_talents.job_levels;

CREATE POLICY "Admin e editor podem inserir job_levels" ON young_talents.job_levels
  FOR INSERT TO authenticated
  WITH CHECK (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('editor')
  );
CREATE POLICY "Admin e editor podem atualizar job_levels" ON young_talents.job_levels
  FOR UPDATE TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('editor')
  );
CREATE POLICY "Apenas admin pode deletar job_levels" ON young_talents.job_levels
  FOR DELETE TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('admin')
  );

-- 8. ACTIVITY_AREAS
DROP POLICY IF EXISTS "Admin e editor podem inserir activity_areas" ON young_talents.activity_areas;
DROP POLICY IF EXISTS "Admin e editor podem atualizar activity_areas" ON young_talents.activity_areas;
DROP POLICY IF EXISTS "Apenas admin pode deletar activity_areas" ON young_talents.activity_areas;

CREATE POLICY "Admin e editor podem inserir activity_areas" ON young_talents.activity_areas
  FOR INSERT TO authenticated
  WITH CHECK (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('editor')
  );
CREATE POLICY "Admin e editor podem atualizar activity_areas" ON young_talents.activity_areas
  FOR UPDATE TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('editor')
  );
CREATE POLICY "Apenas admin pode deletar activity_areas" ON young_talents.activity_areas
  FOR DELETE TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('admin')
  );

-- 9. APPLICATIONS
DROP POLICY IF EXISTS "Admin e editor podem gerenciar aplicações (Insert)" ON young_talents.applications;
DROP POLICY IF EXISTS "Admin e editor podem gerenciar aplicações (Update)" ON young_talents.applications;
DROP POLICY IF EXISTS "Apenas admin pode deletar aplicações" ON young_talents.applications;

CREATE POLICY "Admin e editor podem gerenciar aplicações (Insert)" ON young_talents.applications
  FOR INSERT TO authenticated
  WITH CHECK (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('editor')
  );
CREATE POLICY "Admin e editor podem gerenciar aplicações (Update)" ON young_talents.applications
  FOR UPDATE TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('editor')
  );
CREATE POLICY "Apenas admin pode deletar aplicações" ON young_talents.applications
  FOR DELETE TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('admin')
  );

-- 10. CANDIDATES – incluir is_developer() para dev poder gerenciar candidatos
DROP POLICY IF EXISTS "Admin e editor podem inserir candidatos" ON young_talents.candidates;
DROP POLICY IF EXISTS "Admin e editor podem atualizar candidatos" ON young_talents.candidates;
DROP POLICY IF EXISTS "Apenas admin pode deletar candidatos" ON young_talents.candidates;

CREATE POLICY "Admin e editor podem inserir candidatos" ON young_talents.candidates
  FOR INSERT TO authenticated
  WITH CHECK (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('editor')
  );
CREATE POLICY "Admin e editor podem atualizar candidatos" ON young_talents.candidates
  FOR UPDATE TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('editor')
  );
CREATE POLICY "Apenas admin pode deletar candidatos" ON young_talents.candidates
  FOR DELETE TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('admin')
  );

-- 11. ACTIVITY_LOG – desenvolvedor pode ler log (como admin)
DROP POLICY IF EXISTS "Admin pode ler activity_log" ON young_talents.activity_log;

CREATE POLICY "Admin pode ler activity_log"
  ON young_talents.activity_log
  FOR SELECT
  TO authenticated
  USING (
    young_talents.is_developer()
    OR young_talents.has_privileged_role('admin')
  );