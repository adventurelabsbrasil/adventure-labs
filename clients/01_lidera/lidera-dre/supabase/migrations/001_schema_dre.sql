-- =============================================================================
-- Lidera DRE: dre_categorias, dre_subcategorias, dre_lancamentos
-- =============================================================================

-- Categorias (entrada ou saida)
CREATE TABLE IF NOT EXISTS public.dre_categorias (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  nome text NOT NULL,
  tipo text NOT NULL CHECK (tipo IN ('entrada', 'saida')),
  ordem int,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

-- Subcategorias (vinculadas a uma categoria)
CREATE TABLE IF NOT EXISTS public.dre_subcategorias (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  categoria_id uuid NOT NULL REFERENCES public.dre_categorias(id) ON DELETE CASCADE,
  nome text NOT NULL,
  ordem int,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_dre_subcategorias_categoria ON public.dre_subcategorias(categoria_id);

-- Lancamentos (receitas e despesas)
CREATE TABLE IF NOT EXISTS public.dre_lancamentos (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  data_lancamento date NOT NULL,
  tipo text NOT NULL CHECK (tipo IN ('entrada', 'saida')),
  categoria_id uuid NOT NULL REFERENCES public.dre_categorias(id) ON DELETE RESTRICT,
  subcategoria_id uuid REFERENCES public.dre_subcategorias(id) ON DELETE SET NULL,
  descricao text,
  valor numeric NOT NULL CHECK (valor >= 0),
  observacoes text,
  responsavel text NOT NULL DEFAULT '',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_dre_lancamentos_data ON public.dre_lancamentos(data_lancamento);
CREATE INDEX IF NOT EXISTS idx_dre_lancamentos_categoria ON public.dre_lancamentos(categoria_id);
CREATE INDEX IF NOT EXISTS idx_dre_lancamentos_tipo ON public.dre_lancamentos(tipo);

-- RLS permissive para fase sem auth
ALTER TABLE public.dre_categorias ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.dre_subcategorias ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.dre_lancamentos ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow all on dre_categorias" ON public.dre_categorias FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Allow all on dre_subcategorias" ON public.dre_subcategorias FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Allow all on dre_lancamentos" ON public.dre_lancamentos FOR ALL USING (true) WITH CHECK (true);
