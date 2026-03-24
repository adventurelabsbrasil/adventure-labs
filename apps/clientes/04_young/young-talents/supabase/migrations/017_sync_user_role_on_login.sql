-- Função para sincronizar user_roles quando usuário faz login
-- Sincroniza user_id, name, photo e last_login automaticamente

CREATE OR REPLACE FUNCTION young_talents.sync_user_role_on_login()
RETURNS TRIGGER AS $$
DECLARE
  user_email TEXT;
  user_name TEXT;
  user_photo TEXT;
  existing_role RECORD;
BEGIN
  -- Obter dados do usuário autenticado
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

  -- Buscar registro existente em user_roles por email
  SELECT * INTO existing_role
  FROM young_talents.user_roles
  WHERE email = user_email
  LIMIT 1;

  IF existing_role IS NOT NULL THEN
    -- Atualizar registro existente
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
    -- Criar novo registro com role padrão 'viewer'
    -- Apenas se o usuário não tiver role pré-cadastrado
    INSERT INTO young_talents.user_roles (user_id, email, name, photo, role, created_at, last_login)
    VALUES (
      NEW.id,
      user_email,
      user_name,
      user_photo,
      'viewer', -- Role padrão para novos usuários
      NOW(),
      NOW()
    )
    ON CONFLICT (email) DO UPDATE
    SET
      user_id = NEW.id,
      name = COALESCE(user_name, user_roles.name),
      photo = COALESCE(user_photo, user_roles.photo),
      last_login = NOW(),
      updated_at = NOW();
    
    RAISE NOTICE 'Criado novo user_role para % (ID: %)', user_email, NEW.id;
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Criar trigger após inserção/atualização em auth.users
-- O trigger será executado quando um usuário faz login pela primeira vez ou atualiza seus dados
DROP TRIGGER IF EXISTS sync_user_role_trigger ON auth.users;
CREATE TRIGGER sync_user_role_trigger
  AFTER INSERT OR UPDATE ON auth.users
  FOR EACH ROW
  WHEN (NEW.email IS NOT NULL)
  EXECUTE FUNCTION young_talents.sync_user_role_on_login();

-- Comentário explicativo
COMMENT ON FUNCTION young_talents.sync_user_role_on_login() IS 
  'Sincroniza automaticamente dados do usuário (user_id, name, photo, last_login) em user_roles quando usuário faz login ou atualiza perfil. Se não existir registro, cria com role padrão viewer.';
