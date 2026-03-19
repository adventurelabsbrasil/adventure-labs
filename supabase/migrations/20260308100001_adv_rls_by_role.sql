-- ============================================
-- RLS por role do Admin (adv_*): admin vs tarefas
-- ============================================
-- Restringe acesso às tabelas adv_projects, adv_tasks e adv_task_time_entries
-- conforme adv_profiles.role e adv_project_members (role 'tarefas' só vê seus projetos).
-- Idempotente: DROP POLICY IF EXISTS antes de cada CREATE.
-- ============================================

-- Email do usuário autenticado (para cruzar com adv_profiles.user_email)
CREATE OR REPLACE FUNCTION auth_user_email()
RETURNS TEXT AS $$
  SELECT email FROM auth.users WHERE id = auth.uid();
$$ LANGUAGE SQL SECURITY DEFINER;

-- Role do usuário no Admin: 'admin' ou 'tarefas' (default 'admin' se não houver perfil)
CREATE OR REPLACE FUNCTION get_adv_profile_role()
RETURNS TEXT AS $$
  SELECT COALESCE(
    (SELECT role FROM adv_profiles WHERE user_email = auth_user_email()),
    'admin'
  );
$$ LANGUAGE SQL SECURITY DEFINER;

-- True se o usuário tem role admin no Admin
CREATE OR REPLACE FUNCTION is_adv_admin()
RETURNS BOOLEAN AS $$
  SELECT get_adv_profile_role() = 'admin';
$$ LANGUAGE SQL SECURITY DEFINER;

-- True se o usuário (tarefas) pode acessar o projeto (id ou project_id)
CREATE OR REPLACE FUNCTION adv_can_access_project(project_id_val UUID)
RETURNS BOOLEAN AS $$
  SELECT is_adv_admin()
  OR (
    get_adv_profile_role() = 'tarefas'
    AND EXISTS (
      SELECT 1 FROM adv_project_members
      WHERE project_id = project_id_val
        AND user_email = auth_user_email()
    )
  );
$$ LANGUAGE SQL SECURITY DEFINER;

-- ============================================
-- ADV_PROJECTS: admin vê todos; tarefas só projetos em adv_project_members
-- ============================================

DROP POLICY IF EXISTS adv_projects_select ON adv_projects;
CREATE POLICY adv_projects_select ON adv_projects FOR SELECT TO authenticated
  USING (adv_can_access_project(id));

DROP POLICY IF EXISTS adv_projects_insert ON adv_projects;
CREATE POLICY adv_projects_insert ON adv_projects FOR INSERT TO authenticated
  WITH CHECK (is_adv_admin());

DROP POLICY IF EXISTS adv_projects_update ON adv_projects;
CREATE POLICY adv_projects_update ON adv_projects FOR UPDATE TO authenticated
  USING (adv_can_access_project(id));

DROP POLICY IF EXISTS adv_projects_delete ON adv_projects;
CREATE POLICY adv_projects_delete ON adv_projects FOR DELETE TO authenticated
  USING (is_adv_admin());

-- ============================================
-- ADV_TASKS: admin vê todos; tarefas só tarefas de projetos permitidos (ou sem projeto)
-- ============================================

DROP POLICY IF EXISTS adv_tasks_select ON adv_tasks;
CREATE POLICY adv_tasks_select ON adv_tasks FOR SELECT TO authenticated
  USING (
    is_adv_admin()
    OR (get_adv_profile_role() = 'tarefas' AND (
      adv_tasks.project_id IS NULL
      OR adv_can_access_project(adv_tasks.project_id)
    ))
  );

DROP POLICY IF EXISTS adv_tasks_insert ON adv_tasks;
CREATE POLICY adv_tasks_insert ON adv_tasks FOR INSERT TO authenticated
  WITH CHECK (
    is_adv_admin()
    OR (get_adv_profile_role() = 'tarefas' AND (
      adv_tasks.project_id IS NULL
      OR adv_can_access_project(adv_tasks.project_id)
    ))
  );

DROP POLICY IF EXISTS adv_tasks_update ON adv_tasks;
CREATE POLICY adv_tasks_update ON adv_tasks FOR UPDATE TO authenticated
  USING (
    is_adv_admin()
    OR (get_adv_profile_role() = 'tarefas' AND (
      adv_tasks.project_id IS NULL
      OR adv_can_access_project(adv_tasks.project_id)
    ))
  );

DROP POLICY IF EXISTS adv_tasks_delete ON adv_tasks;
CREATE POLICY adv_tasks_delete ON adv_tasks FOR DELETE TO authenticated
  USING (
    is_adv_admin()
    OR (get_adv_profile_role() = 'tarefas' AND (
      adv_tasks.project_id IS NULL
      OR adv_can_access_project(adv_tasks.project_id)
    ))
  );

-- ============================================
-- ADV_TASK_TIME_ENTRIES: mesmo critério por project_id
-- ============================================

DROP POLICY IF EXISTS adv_task_time_entries_select ON adv_task_time_entries;
CREATE POLICY adv_task_time_entries_select ON adv_task_time_entries FOR SELECT TO authenticated
  USING (
    is_adv_admin()
    OR (get_adv_profile_role() = 'tarefas' AND (
      adv_task_time_entries.project_id IS NULL
      OR adv_can_access_project(adv_task_time_entries.project_id)
    ))
  );

DROP POLICY IF EXISTS adv_task_time_entries_insert ON adv_task_time_entries;
CREATE POLICY adv_task_time_entries_insert ON adv_task_time_entries FOR INSERT TO authenticated
  WITH CHECK (
    is_adv_admin()
    OR (get_adv_profile_role() = 'tarefas' AND (
      adv_task_time_entries.project_id IS NULL
      OR adv_can_access_project(adv_task_time_entries.project_id)
    ))
  );

DROP POLICY IF EXISTS adv_task_time_entries_update ON adv_task_time_entries;
CREATE POLICY adv_task_time_entries_update ON adv_task_time_entries FOR UPDATE TO authenticated
  USING (
    is_adv_admin()
    OR (get_adv_profile_role() = 'tarefas' AND (
      adv_task_time_entries.project_id IS NULL
      OR adv_can_access_project(adv_task_time_entries.project_id)
    ))
  );

DROP POLICY IF EXISTS adv_task_time_entries_delete ON adv_task_time_entries;
CREATE POLICY adv_task_time_entries_delete ON adv_task_time_entries FOR DELETE TO authenticated
  USING (
    is_adv_admin()
    OR (get_adv_profile_role() = 'tarefas' AND (
      adv_task_time_entries.project_id IS NULL
      OR adv_can_access_project(adv_task_time_entries.project_id)
    ))
  );

-- ============================================
-- ADV_PROJECT_MEMBERS: apenas admin pode inserir/remover membros
-- (SELECT permanece para todos autenticados, para getAuthProfile e equipe)
-- ============================================

DROP POLICY IF EXISTS adv_project_members_insert ON adv_project_members;
CREATE POLICY adv_project_members_insert ON adv_project_members FOR INSERT TO authenticated
  WITH CHECK (is_adv_admin());

DROP POLICY IF EXISTS adv_project_members_delete ON adv_project_members;
CREATE POLICY adv_project_members_delete ON adv_project_members FOR DELETE TO authenticated
  USING (is_adv_admin());
