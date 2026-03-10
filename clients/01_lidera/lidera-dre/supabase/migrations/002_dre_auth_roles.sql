-- =============================================================================
-- Lidera DRE: auth, roles, multi-tenant (dre_organizacoes, dre_perfis, RLS)
-- =============================================================================

-- Organizações (um por cliente/restaurante)
CREATE TABLE IF NOT EXISTS public.dre_organizacoes (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  nome text NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

ALTER TABLE public.dre_organizacoes ENABLE ROW LEVEL SECURITY;

-- Perfis: um por usuário de auth (role admin = Lidera, gestor = cliente)
CREATE TABLE IF NOT EXISTS public.dre_perfis (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL UNIQUE REFERENCES auth.users(id) ON DELETE CASCADE,
  email text NOT NULL,
  nome_exibicao text,
  role text NOT NULL CHECK (role IN ('admin', 'gestor')),
  organizacao_id uuid REFERENCES public.dre_organizacoes(id) ON DELETE SET NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_dre_perfis_user_id ON public.dre_perfis(user_id);
CREATE INDEX IF NOT EXISTS idx_dre_perfis_organizacao ON public.dre_perfis(organizacao_id);

ALTER TABLE public.dre_perfis ENABLE ROW LEVEL SECURITY;

-- Trigger: criar perfil ao inserir em auth.users
CREATE OR REPLACE FUNCTION public.dre_handle_new_user()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER SET search_path = public
AS $$
BEGIN
  INSERT INTO public.dre_perfis (user_id, email, role, organizacao_id)
  VALUES (NEW.id, COALESCE(NEW.email, ''), 'gestor', NULL);
  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS dre_on_auth_user_created ON auth.users;
CREATE TRIGGER dre_on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.dre_handle_new_user();

-- Colunas em dre_lancamentos para multi-tenant e auditoria
ALTER TABLE public.dre_lancamentos
  ADD COLUMN IF NOT EXISTS organizacao_id uuid REFERENCES public.dre_organizacoes(id) ON DELETE CASCADE,
  ADD COLUMN IF NOT EXISTS created_by uuid REFERENCES auth.users(id) ON DELETE SET NULL;

CREATE INDEX IF NOT EXISTS idx_dre_lancamentos_organizacao ON public.dre_lancamentos(organizacao_id);

-- Backfill: uma organização padrão e atribuir lançamentos existentes a ela
INSERT INTO public.dre_organizacoes (id, nome)
VALUES ('00000000-0000-4000-8000-000000000001', 'Organização padrão')
ON CONFLICT DO NOTHING;

-- Atualizar lançamentos existentes (organizacao_id e created_by podem ficar null até ter auth)
UPDATE public.dre_lancamentos
SET organizacao_id = '00000000-0000-4000-8000-000000000001'
WHERE organizacao_id IS NULL;

-- Exigir organizacao_id em novos lançamentos (nullable para compatibilidade com dados antigos)
-- ALTER TABLE public.dre_lancamentos ALTER COLUMN organizacao_id SET NOT NULL;
-- (deixamos nullable para não quebrar seed que não tem org; o app sempre enviará organizacao_id)

-- Remover políticas antigas de dre_lancamentos
DROP POLICY IF EXISTS "Allow all on dre_lancamentos" ON public.dre_lancamentos;
DROP POLICY IF EXISTS "Allow all on dre_categorias" ON public.dre_categorias;
DROP POLICY IF EXISTS "Allow all on dre_subcategorias" ON public.dre_subcategorias;

-- RLS dre_organizacoes: admin CRUD; gestor SELECT própria org
CREATE POLICY "dre_org_admin_all" ON public.dre_organizacoes
  FOR ALL USING (
    (SELECT p.role FROM public.dre_perfis p WHERE p.user_id = auth.uid()) = 'admin'
  ) WITH CHECK (
    (SELECT p.role FROM public.dre_perfis p WHERE p.user_id = auth.uid()) = 'admin'
  );

CREATE POLICY "dre_org_gestor_select" ON public.dre_organizacoes
  FOR SELECT USING (
    id = (SELECT p.organizacao_id FROM public.dre_perfis p WHERE p.user_id = auth.uid())
  );

-- RLS dre_perfis: admin SELECT/UPDATE todos; gestor SELECT mesma org
CREATE POLICY "dre_perfis_admin_select" ON public.dre_perfis
  FOR SELECT USING (
    (SELECT p.role FROM public.dre_perfis p WHERE p.user_id = auth.uid()) = 'admin'
  );

CREATE POLICY "dre_perfis_admin_update" ON public.dre_perfis
  FOR UPDATE USING (
    (SELECT p.role FROM public.dre_perfis p WHERE p.user_id = auth.uid()) = 'admin'
  ) WITH CHECK (
    (SELECT p.role FROM public.dre_perfis p WHERE p.user_id = auth.uid()) = 'admin'
  );

CREATE POLICY "dre_perfis_gestor_select" ON public.dre_perfis
  FOR SELECT USING (
    organizacao_id = (SELECT p.organizacao_id FROM public.dre_perfis p WHERE p.user_id = auth.uid())
    OR user_id = auth.uid()
  );

-- RLS dre_lancamentos: admin tudo; gestor CRUD só da própria org
CREATE POLICY "dre_lanc_admin_all" ON public.dre_lancamentos
  FOR ALL USING (
    (SELECT p.role FROM public.dre_perfis p WHERE p.user_id = auth.uid()) = 'admin'
  ) WITH CHECK (
    (SELECT p.role FROM public.dre_perfis p WHERE p.user_id = auth.uid()) = 'admin'
  );

CREATE POLICY "dre_lanc_gestor_select" ON public.dre_lancamentos
  FOR SELECT USING (
    organizacao_id = (SELECT p.organizacao_id FROM public.dre_perfis p WHERE p.user_id = auth.uid())
    OR (organizacao_id IS NULL AND (SELECT p.role FROM public.dre_perfis p WHERE p.user_id = auth.uid()) = 'admin')
  );

CREATE POLICY "dre_lanc_gestor_insert" ON public.dre_lancamentos
  FOR INSERT WITH CHECK (
    organizacao_id = (SELECT p.organizacao_id FROM public.dre_perfis p WHERE p.user_id = auth.uid())
    AND created_by = auth.uid()
  );

CREATE POLICY "dre_lanc_gestor_update" ON public.dre_lancamentos
  FOR UPDATE USING (
    organizacao_id = (SELECT p.organizacao_id FROM public.dre_perfis p WHERE p.user_id = auth.uid())
  );

CREATE POLICY "dre_lanc_gestor_delete" ON public.dre_lancamentos
  FOR DELETE USING (
    organizacao_id = (SELECT p.organizacao_id FROM public.dre_perfis p WHERE p.user_id = auth.uid())
  );

-- Categorias e subcategorias: qualquer autenticado pode ler; admin pode escrever
CREATE POLICY "dre_cat_authenticated_select" ON public.dre_categorias
  FOR SELECT USING (auth.uid() IS NOT NULL);

CREATE POLICY "dre_cat_admin_write" ON public.dre_categorias
  FOR ALL USING (
    (SELECT p.role FROM public.dre_perfis p WHERE p.user_id = auth.uid()) = 'admin'
  ) WITH CHECK (
    (SELECT p.role FROM public.dre_perfis p WHERE p.user_id = auth.uid()) = 'admin'
  );

-- Se não houver perfil, permitir leitura (evitar bloqueio antes do primeiro admin)
CREATE POLICY "dre_cat_anon_read" ON public.dre_categorias FOR SELECT USING (true);

CREATE POLICY "dre_sub_authenticated_select" ON public.dre_subcategorias
  FOR SELECT USING (auth.uid() IS NOT NULL);

CREATE POLICY "dre_sub_admin_write" ON public.dre_subcategorias
  FOR ALL USING (
    (SELECT p.role FROM public.dre_perfis p WHERE p.user_id = auth.uid()) = 'admin'
  ) WITH CHECK (
    (SELECT p.role FROM public.dre_perfis p WHERE p.user_id = auth.uid()) = 'admin'
  );

CREATE POLICY "dre_sub_anon_read" ON public.dre_subcategorias FOR SELECT USING (true);
