-- Permitir user_id NULL temporariamente para pré-cadastro de usuários
-- Isso permite que admins adicionem usuários antes do primeiro login com Google

-- Remover constraint NOT NULL de user_id
ALTER TABLE young_talents.user_roles 
  ALTER COLUMN user_id DROP NOT NULL;

-- Ajustar foreign key para permitir NULL
-- A constraint de foreign key já permite NULL por padrão, mas vamos garantir
ALTER TABLE young_talents.user_roles
  DROP CONSTRAINT IF EXISTS user_roles_user_id_fkey;

ALTER TABLE young_talents.user_roles
  ADD CONSTRAINT user_roles_user_id_fkey 
  FOREIGN KEY (user_id) 
  REFERENCES auth.users(id) 
  ON DELETE CASCADE;

-- Atualizar política RLS para permitir leitura quando user_id é NULL mas email corresponde
DROP POLICY IF EXISTS "Usuários podem ler seu próprio role" ON young_talents.user_roles;
CREATE POLICY "Usuários podem ler seu próprio role"
  ON young_talents.user_roles
  FOR SELECT
  TO authenticated
  USING (
    user_id = auth.uid() 
    OR (user_id IS NULL AND email = (SELECT email FROM auth.users WHERE id = auth.uid()))
  );

-- Comentário explicativo
COMMENT ON COLUMN young_talents.user_roles.user_id IS 
  'ID do usuário no auth.users. Pode ser NULL temporariamente quando usuário é pré-cadastrado antes do primeiro login.';
