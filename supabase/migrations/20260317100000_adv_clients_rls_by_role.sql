-- ============================================
-- RLS para adv_clients por role (admin vs tarefas)
-- ============================================
-- Ref.: Issue #118. Admin vê todos os clientes; role 'tarefas' só vê clientes
-- que possuem ao menos um projeto em adv_project_members para esse usuário.
-- Cria as funções auxiliares se ainda não existirem (idempotente com 20260308100001).
-- ============================================

-- Funções usadas pelas políticas (CREATE OR REPLACE = idempotente)
CREATE OR REPLACE FUNCTION auth_user_email()
RETURNS TEXT AS $$
  SELECT COALESCE(
    (SELECT email FROM auth.users WHERE id = auth.uid()),
    auth.jwt()->>'email'
  );
$$ LANGUAGE SQL SECURITY DEFINER;

CREATE OR REPLACE FUNCTION get_adv_profile_role()
RETURNS TEXT AS $$
  SELECT COALESCE(
    (SELECT role FROM adv_profiles WHERE user_email = auth_user_email()),
    'admin'
  );
$$ LANGUAGE SQL SECURITY DEFINER;

CREATE OR REPLACE FUNCTION is_adv_admin()
RETURNS BOOLEAN AS $$
  SELECT get_adv_profile_role() = 'admin';
$$ LANGUAGE SQL SECURITY DEFINER;

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
-- Políticas adv_clients
-- ============================================

DROP POLICY IF EXISTS adv_clients_select ON adv_clients;
CREATE POLICY adv_clients_select ON adv_clients FOR SELECT TO authenticated
  USING (
    is_adv_admin()
    OR (
      get_adv_profile_role() = 'tarefas'
      AND EXISTS (
        SELECT 1
        FROM adv_projects p
        INNER JOIN adv_project_members m ON m.project_id = p.id AND m.user_email = auth_user_email()
        WHERE p.client_id = adv_clients.id
      )
    )
  );

DROP POLICY IF EXISTS adv_clients_insert ON adv_clients;
CREATE POLICY adv_clients_insert ON adv_clients FOR INSERT TO authenticated
  WITH CHECK (is_adv_admin());

DROP POLICY IF EXISTS adv_clients_update ON adv_clients;
CREATE POLICY adv_clients_update ON adv_clients FOR UPDATE TO authenticated
  USING (
    is_adv_admin()
    OR (
      get_adv_profile_role() = 'tarefas'
      AND EXISTS (
        SELECT 1
        FROM adv_projects p
        INNER JOIN adv_project_members m ON m.project_id = p.id AND m.user_email = auth_user_email()
        WHERE p.client_id = adv_clients.id
      )
    )
  );

DROP POLICY IF EXISTS adv_clients_delete ON adv_clients;
CREATE POLICY adv_clients_delete ON adv_clients FOR DELETE TO authenticated
  USING (is_adv_admin());
