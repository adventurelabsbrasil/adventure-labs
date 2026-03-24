-- ==============================================================================
-- 026: View public.user_roles — remover qualquer privilégio restante do role anon.
-- A 025 já revogou SELECT; em alguns projetos o anon ainda tinha INSERT/UPDATE/DELETE
-- (grants manuais ou migrações antigas), o que é desnecessário e arriscado: a escrita
-- na view afeta young_talents.user_roles sob RLS, mas não se deve expor DML ao anon.
-- ==============================================================================

REVOKE ALL PRIVILEGES ON TABLE public.user_roles FROM anon;
