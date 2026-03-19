-- Perfis de usuário: define nível de acesso (admin = acesso total; tarefas = só Tarefas + projetos permitidos).
CREATE TABLE IF NOT EXISTS adv_profiles (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_email TEXT NOT NULL UNIQUE,
  role TEXT NOT NULL DEFAULT 'tarefas' CHECK (role IN ('admin', 'tarefas')),
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_adv_profiles_user_email ON adv_profiles(user_email);

DROP TRIGGER IF EXISTS adv_profiles_updated_at ON adv_profiles;
CREATE TRIGGER adv_profiles_updated_at
  BEFORE UPDATE ON adv_profiles
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE adv_profiles ENABLE ROW LEVEL SECURITY;

CREATE POLICY adv_profiles_select ON adv_profiles FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_profiles_insert ON adv_profiles FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_profiles_update ON adv_profiles FOR UPDATE TO authenticated USING (true);

-- Acesso a projetos: quais usuários (por email) podem ver/editar tarefas de quais projetos.
-- Usado para usuários com role 'tarefas': só veem projetos listados aqui.
CREATE TABLE IF NOT EXISTS adv_project_members (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  project_id UUID NOT NULL REFERENCES adv_projects(id) ON DELETE CASCADE,
  user_email TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE(project_id, user_email)
);

CREATE INDEX IF NOT EXISTS idx_adv_project_members_user_email ON adv_project_members(user_email);
CREATE INDEX IF NOT EXISTS idx_adv_project_members_project_id ON adv_project_members(project_id);

ALTER TABLE adv_project_members ENABLE ROW LEVEL SECURITY;

CREATE POLICY adv_project_members_select ON adv_project_members FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_project_members_insert ON adv_project_members FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_project_members_delete ON adv_project_members FOR DELETE TO authenticated USING (true);
