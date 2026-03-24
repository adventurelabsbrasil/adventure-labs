-- =============================================================================
-- RLS: Corrige recursão infinita em dre_perfis
-- Erro: "infinite recursion detected in policy for relation dre_perfis"
-- As políticas usam (SELECT ... FROM dre_perfis) e ao avaliar RLS em dre_perfis
-- dispara nova leitura de dre_perfis → recursão.
-- Solução: funções SECURITY DEFINER que leem dre_perfis sem passar pelo RLS.
-- =============================================================================

-- Retorna true se o usuário atual tem role 'admin' em dre_perfis.
CREATE OR REPLACE FUNCTION public.dre_is_admin()
RETURNS boolean
LANGUAGE plpgsql
STABLE
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  RETURN EXISTS (
    SELECT 1 FROM public.dre_perfis
    WHERE user_id = auth.uid()
    AND role = 'admin'
  );
EXCEPTION
  WHEN OTHERS THEN
  RETURN FALSE;
END;
$$;

COMMENT ON FUNCTION public.dre_is_admin() IS
  'Usado nas políticas RLS para evitar recursão. Lê dre_perfis com privilégios do owner.';

-- Retorna organizacao_id do usuário atual em dre_perfis.
CREATE OR REPLACE FUNCTION public.dre_get_my_organizacao_id()
RETURNS uuid
LANGUAGE plpgsql
STABLE
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  RETURN (SELECT organizacao_id FROM public.dre_perfis WHERE user_id = auth.uid() LIMIT 1);
EXCEPTION
  WHEN OTHERS THEN
  RETURN NULL;
END;
$$;

COMMENT ON FUNCTION public.dre_get_my_organizacao_id() IS
  'Usado nas políticas RLS para evitar recursão. Lê dre_perfis com privilégios do owner.';

GRANT EXECUTE ON FUNCTION public.dre_is_admin() TO authenticated;
GRANT EXECUTE ON FUNCTION public.dre_get_my_organizacao_id() TO authenticated;

-- -----------------------------------------------------------------------------
-- dre_organizacoes: trocar subquery por funções
-- -----------------------------------------------------------------------------
DROP POLICY IF EXISTS "dre_org_admin_all" ON public.dre_organizacoes;
CREATE POLICY "dre_org_admin_all" ON public.dre_organizacoes
  FOR ALL USING (public.dre_is_admin())
  WITH CHECK (public.dre_is_admin());

DROP POLICY IF EXISTS "dre_org_gestor_select" ON public.dre_organizacoes;
CREATE POLICY "dre_org_gestor_select" ON public.dre_organizacoes
  FOR SELECT USING (id = public.dre_get_my_organizacao_id());

-- -----------------------------------------------------------------------------
-- dre_perfis: trocar subquery por funções; gestor vê própria linha por user_id
-- -----------------------------------------------------------------------------
DROP POLICY IF EXISTS "dre_perfis_admin_select" ON public.dre_perfis;
CREATE POLICY "dre_perfis_admin_select" ON public.dre_perfis
  FOR SELECT USING (public.dre_is_admin());

DROP POLICY IF EXISTS "dre_perfis_admin_update" ON public.dre_perfis;
CREATE POLICY "dre_perfis_admin_update" ON public.dre_perfis
  FOR UPDATE USING (public.dre_is_admin())
  WITH CHECK (public.dre_is_admin());

DROP POLICY IF EXISTS "dre_perfis_gestor_select" ON public.dre_perfis;
CREATE POLICY "dre_perfis_gestor_select" ON public.dre_perfis
  FOR SELECT USING (
    organizacao_id = public.dre_get_my_organizacao_id()
    OR user_id = auth.uid()
  );

-- -----------------------------------------------------------------------------
-- dre_lancamentos
-- -----------------------------------------------------------------------------
DROP POLICY IF EXISTS "dre_lanc_admin_all" ON public.dre_lancamentos;
CREATE POLICY "dre_lanc_admin_all" ON public.dre_lancamentos
  FOR ALL USING (public.dre_is_admin())
  WITH CHECK (public.dre_is_admin());

DROP POLICY IF EXISTS "dre_lanc_gestor_select" ON public.dre_lancamentos;
CREATE POLICY "dre_lanc_gestor_select" ON public.dre_lancamentos
  FOR SELECT USING (
    organizacao_id = public.dre_get_my_organizacao_id()
    OR (organizacao_id IS NULL AND public.dre_is_admin())
  );

DROP POLICY IF EXISTS "dre_lanc_gestor_insert" ON public.dre_lancamentos;
CREATE POLICY "dre_lanc_gestor_insert" ON public.dre_lancamentos
  FOR INSERT WITH CHECK (
    organizacao_id = public.dre_get_my_organizacao_id()
    AND created_by = auth.uid()
  );

DROP POLICY IF EXISTS "dre_lanc_gestor_update" ON public.dre_lancamentos;
CREATE POLICY "dre_lanc_gestor_update" ON public.dre_lancamentos
  FOR UPDATE USING (organizacao_id = public.dre_get_my_organizacao_id());

DROP POLICY IF EXISTS "dre_lanc_gestor_delete" ON public.dre_lancamentos;
CREATE POLICY "dre_lanc_gestor_delete" ON public.dre_lancamentos
  FOR DELETE USING (organizacao_id = public.dre_get_my_organizacao_id());

-- -----------------------------------------------------------------------------
-- dre_categorias e dre_subcategorias
-- -----------------------------------------------------------------------------
DROP POLICY IF EXISTS "dre_cat_admin_write" ON public.dre_categorias;
CREATE POLICY "dre_cat_admin_write" ON public.dre_categorias
  FOR ALL USING (public.dre_is_admin())
  WITH CHECK (public.dre_is_admin());

DROP POLICY IF EXISTS "dre_sub_admin_write" ON public.dre_subcategorias;
CREATE POLICY "dre_sub_admin_write" ON public.dre_subcategorias
  FOR ALL USING (public.dre_is_admin())
  WITH CHECK (public.dre_is_admin());
