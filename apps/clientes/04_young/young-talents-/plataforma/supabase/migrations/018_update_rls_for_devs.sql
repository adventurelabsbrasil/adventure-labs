-- Atualizar políticas RLS para permitir que desenvolvedores também gerenciem usuários
-- Desenvolvedores são identificados por email específico

-- Lista de emails de desenvolvedores (pode ser expandida conforme necessário)
-- Estes emails terão permissões de admin mesmo sem registro em user_roles
CREATE OR REPLACE FUNCTION young_talents.is_developer()
RETURNS BOOLEAN AS $$
BEGIN
  RETURN EXISTS (
    SELECT 1 FROM auth.users
    WHERE id = auth.uid()
    AND email IN (
      'dev@local',
      'dev@adventurelabs.com.br',
      'developer@adventurelabs.com.br'
    )
  );
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Atualizar política de SELECT para incluir desenvolvedores
DROP POLICY IF EXISTS "Admin pode ler todos os roles" ON young_talents.user_roles;
CREATE POLICY "Admin pode ler todos os roles"
  ON young_talents.user_roles
  FOR SELECT
  TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM young_talents.user_roles ur
      WHERE ur.user_id = auth.uid()
      AND ur.role = 'admin'
    )
    OR young_talents.is_developer()
  );

-- Atualizar política de INSERT para incluir desenvolvedores
DROP POLICY IF EXISTS "Apenas admin pode inserir roles" ON young_talents.user_roles;
CREATE POLICY "Apenas admin pode inserir roles"
  ON young_talents.user_roles
  FOR INSERT
  TO authenticated
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM young_talents.user_roles
      WHERE user_roles.user_id = auth.uid()
      AND user_roles.role = 'admin'
    )
    OR young_talents.is_developer()
  );

-- Atualizar política de UPDATE para incluir desenvolvedores
DROP POLICY IF EXISTS "Apenas admin pode atualizar roles" ON young_talents.user_roles;
CREATE POLICY "Apenas admin pode atualizar roles"
  ON young_talents.user_roles
  FOR UPDATE
  TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM young_talents.user_roles
      WHERE user_roles.user_id = auth.uid()
      AND user_roles.role = 'admin'
    )
    OR young_talents.is_developer()
  );

-- Atualizar política de DELETE para incluir desenvolvedores
DROP POLICY IF EXISTS "Apenas admin pode deletar roles" ON young_talents.user_roles;
CREATE POLICY "Apenas admin pode deletar roles"
  ON young_talents.user_roles
  FOR DELETE
  TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM young_talents.user_roles
      WHERE user_roles.user_id = auth.uid()
      AND user_roles.role = 'admin'
    )
    OR young_talents.is_developer()
  );

-- Comentário explicativo
COMMENT ON FUNCTION young_talents.is_developer() IS 
  'Verifica se o usuário autenticado é um desenvolvedor baseado em seu email. Desenvolvedores têm permissões de admin.';
