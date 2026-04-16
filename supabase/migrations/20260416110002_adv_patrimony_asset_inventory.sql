-- Migration: 20260416110002_adv_patrimony_asset_inventory.sql
-- Description: Inventario fisico e digital de bens — extensao do sistema patrimonial do Barsi
-- Escopo: equipamentos, moveis, veiculos, infraestrutura fisica/digital, marca, licencas

-- ============================================================
-- Inventario de bens (ativos fisicos e digitais)
-- ============================================================
CREATE TABLE IF NOT EXISTS public.adv_patrimony_assets (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    asset_name TEXT NOT NULL,
    asset_category TEXT NOT NULL CHECK (asset_category IN (
        'equipment',        -- notebooks, monitores, celulares, cameras, microfones
        'furniture',        -- mesas, cadeiras, estantes, armarios
        'vehicle',          -- veiculos da empresa ou uso corporativo
        'physical_infra',   -- cabeamento, placa fachada, ar condicionado, impressora
        'digital_infra',    -- VPS, dominios, certificados SSL/A1/A3, IPs fixos
        'software_license', -- licencas de software (Omie, Adobe, etc)
        'brand_asset',      -- marca, logotipo, identidade visual, manual de marca
        'intangible',       -- patentes, contratos exclusivos, codebase, automacoes
        'office_supply',    -- material de escritorio de valor (nao consumivel)
        'personal_pf'       -- bens pessoais do Founder (modo PF — somente referencia)
    )),
    scope TEXT NOT NULL CHECK (scope IN ('adventure', 'personal', 'shared')),

    -- Identificacao
    serial_number TEXT,         -- numero de serie (equipamentos)
    brand TEXT,                 -- marca/fabricante
    model TEXT,                 -- modelo
    description TEXT,

    -- Localizacao e responsavel
    location TEXT,              -- onde esta fisicamente (escritorio, home office, VPS, cloud)
    responsible_person TEXT,    -- quem e responsavel pelo bem
    assigned_to TEXT,           -- a quem esta cedido (se diferente do responsavel)

    -- Valor e depreciacao
    purchase_date DATE,
    purchase_value NUMERIC(12, 2),
    currency TEXT DEFAULT 'BRL',
    current_estimated_value NUMERIC(12, 2),
    depreciation_rate_yearly NUMERIC(5, 2),  -- % ao ano (ex: 20% para eletronicos, 10% para moveis)
    warranty_expiry DATE,

    -- Estado
    condition TEXT CHECK (condition IN (
        'new',              -- novo, sem uso
        'excellent',        -- otimo estado
        'good',             -- bom, funcional
        'fair',             -- razoavel, precisa manutencao
        'poor',             -- ruim, considerar substituicao
        'broken',           -- quebrado/inutilizavel
        'disposed'          -- descartado/vendido
    )) DEFAULT 'good',

    -- Dados de baixa/venda
    disposal_date DATE,
    disposal_value NUMERIC(12, 2),
    disposal_reason TEXT,

    -- Controle
    is_active BOOLEAN DEFAULT true,
    last_inspection_date DATE,
    next_inspection_date DATE,
    insurance_policy TEXT,      -- numero da apolice se houver
    notes TEXT,
    tags TEXT[],                -- tags para busca (ex: {'escritorio', 'tecnologia', 'cliente-young'})

    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================
-- Historico de manutencoes e movimentacoes de bens
-- ============================================================
CREATE TABLE IF NOT EXISTS public.adv_patrimony_asset_events (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    asset_id UUID NOT NULL REFERENCES public.adv_patrimony_assets(id) ON DELETE CASCADE,
    event_type TEXT NOT NULL CHECK (event_type IN (
        'purchase',         -- compra/aquisicao
        'maintenance',      -- manutencao/reparo
        'relocation',       -- mudanca de local
        'reassignment',     -- mudanca de responsavel
        'upgrade',          -- upgrade/melhoria
        'condition_change', -- mudanca de estado
        'disposal',         -- venda/descarte/doacao
        'insurance_claim',  -- sinistro
        'inspection',       -- inspecao/inventario
        'valuation'         -- reavaliacao de valor
    )),
    event_date DATE NOT NULL DEFAULT CURRENT_DATE,
    description TEXT NOT NULL,
    cost NUMERIC(12, 2),        -- custo da manutencao/evento (se aplicavel)
    old_value TEXT,              -- valor anterior (para mudancas de estado, local, etc)
    new_value TEXT,              -- valor novo
    performed_by TEXT,           -- quem realizou
    notes TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================
-- Indexes
-- ============================================================
CREATE INDEX IF NOT EXISTS idx_adv_patrimony_assets_category ON public.adv_patrimony_assets(asset_category);
CREATE INDEX IF NOT EXISTS idx_adv_patrimony_assets_scope ON public.adv_patrimony_assets(scope);
CREATE INDEX IF NOT EXISTS idx_adv_patrimony_assets_active ON public.adv_patrimony_assets(is_active);
CREATE INDEX IF NOT EXISTS idx_adv_patrimony_assets_condition ON public.adv_patrimony_assets(condition);
CREATE INDEX IF NOT EXISTS idx_adv_patrimony_assets_location ON public.adv_patrimony_assets(location);
CREATE INDEX IF NOT EXISTS idx_adv_patrimony_asset_events_asset ON public.adv_patrimony_asset_events(asset_id);
CREATE INDEX IF NOT EXISTS idx_adv_patrimony_asset_events_type ON public.adv_patrimony_asset_events(event_type);
CREATE INDEX IF NOT EXISTS idx_adv_patrimony_asset_events_date ON public.adv_patrimony_asset_events(event_date DESC);

-- ============================================================
-- Triggers
-- ============================================================
CREATE OR REPLACE FUNCTION update_adv_patrimony_assets_modtime()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_adv_patrimony_assets_trigger
    BEFORE UPDATE ON public.adv_patrimony_assets
    FOR EACH ROW
    EXECUTE FUNCTION update_adv_patrimony_assets_modtime();

-- ============================================================
-- RLS
-- ============================================================
ALTER TABLE public.adv_patrimony_assets ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.adv_patrimony_asset_events ENABLE ROW LEVEL SECURITY;

CREATE POLICY "patrimony_assets_select" ON public.adv_patrimony_assets FOR SELECT
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "patrimony_assets_insert" ON public.adv_patrimony_assets FOR INSERT
    WITH CHECK (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "patrimony_assets_update" ON public.adv_patrimony_assets FOR UPDATE
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role')
    WITH CHECK (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "patrimony_assets_delete" ON public.adv_patrimony_assets FOR DELETE
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role');

CREATE POLICY "patrimony_asset_events_select" ON public.adv_patrimony_asset_events FOR SELECT
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "patrimony_asset_events_insert" ON public.adv_patrimony_asset_events FOR INSERT
    WITH CHECK (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "patrimony_asset_events_update" ON public.adv_patrimony_asset_events FOR UPDATE
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role')
    WITH CHECK (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "patrimony_asset_events_delete" ON public.adv_patrimony_asset_events FOR DELETE
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role');

-- ============================================================
-- Comments
-- ============================================================
COMMENT ON TABLE public.adv_patrimony_assets IS 'Inventario completo de bens fisicos e digitais da Adventure Labs. Barsi rastreia cada bem com localizacao, responsavel, estado e depreciacao.';
COMMENT ON TABLE public.adv_patrimony_asset_events IS 'Historico de eventos (compra, manutencao, mudanca, venda) de cada bem patrimonial.';
