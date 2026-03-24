-- View pública para user_roles (app usa public por padrão)
CREATE OR REPLACE VIEW public.user_roles AS
SELECT id, user_id, email, name, photo, role, created_at, updated_at, last_login
FROM young_talents.user_roles;

GRANT SELECT ON public.user_roles TO authenticated;
GRANT SELECT ON public.user_roles TO anon;
