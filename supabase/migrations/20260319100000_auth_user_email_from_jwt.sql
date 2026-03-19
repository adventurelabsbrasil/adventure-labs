-- ============================================
-- auth_user_email() compatível com Clerk (third-party)
-- ============================================
-- Com Clerk como IdP, não há linhas em auth.users para usuários Clerk.
-- RLS deve usar o claim "email" do JWT (session token do Clerk).
-- Garantir no Clerk Dashboard: Customize session token → email = {{user.primary_email_address}}
-- ============================================

CREATE OR REPLACE FUNCTION auth_user_email()
RETURNS TEXT AS $$
  SELECT coalesce(auth.jwt() ->> 'email', '')::text;
$$ LANGUAGE SQL SECURITY DEFINER;
