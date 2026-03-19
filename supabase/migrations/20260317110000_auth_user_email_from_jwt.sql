-- ============================================
-- auth_user_email(): fallback para JWT (Clerk)
-- ============================================
-- Com Clerk como IdP, auth.users pode não ter linha para auth.uid() (sub do JWT).
-- Esta migration faz auth_user_email() usar o claim "email" do JWT quando
-- não houver e-mail em auth.users. Requer claim "email" no session token do Clerk.
-- Ref.: docs/auth/CLERK_SUPABASE_JWT_RLS.md, Issue #118.
-- ============================================

CREATE OR REPLACE FUNCTION auth_user_email()
RETURNS TEXT AS $$
  SELECT COALESCE(
    (SELECT email FROM auth.users WHERE id = auth.uid()),
    auth.jwt()->>'email'
  );
$$ LANGUAGE SQL SECURITY DEFINER;
