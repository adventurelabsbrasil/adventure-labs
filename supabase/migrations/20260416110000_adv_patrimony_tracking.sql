-- Migration: 20260416110000_adv_patrimony_tracking.sql
-- Description: Sistema de rastreamento patrimonial — gerido pelo agente Barsi (Gestor de Patrimonio)
-- Owner: Buffett (CFO) via Barsi
-- Nota: dados pessoais (PF) NAO ficam no Supabase — ficam em personal/ (gitignored).
--       Estas tabelas sao exclusivas para o patrimonio da Adventure Labs (PJ).

-- ============================================================
-- 1. Contas e ativos patrimoniais (inventario)
-- ============================================================
CREATE TABLE IF NOT EXISTS public.adv_patrimony_accounts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    account_name TEXT NOT NULL,
    account_type TEXT NOT NULL CHECK (account_type IN (
        'checking',         -- conta corrente (Sicredi, Inter)
        'savings',          -- poupanca
        'investment',       -- aplicacao financeira (CDB, etc)
        'receivable',       -- contas a receber (contratos de clientes)
        'payable',          -- contas a pagar (fornecedores, reembolsos)
        'fixed_asset',      -- ativo imobilizado (equipamentos, moveis)
        'intangible_asset', -- ativo intangivel (dominios, licencas, marca)
        'equity'            -- patrimonio liquido / capital social
    )),
    institution TEXT,           -- banco ou instituicao (ex: 'Sicredi', 'Inter', 'Nubank PJ')
    account_number TEXT,        -- numero da conta (parcial/mascarado, sem dados sensiveis)
    currency TEXT DEFAULT 'BRL',
    is_active BOOLEAN DEFAULT true,
    notes TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================
-- 2. Snapshots patrimoniais (fotos periodicas do patrimonio)
-- ============================================================
CREATE TABLE IF NOT EXISTS public.adv_patrimony_snapshots (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    snapshot_date DATE NOT NULL,
    snapshot_type TEXT NOT NULL CHECK (snapshot_type IN ('weekly', 'monthly', 'quarterly', 'annual')),

    -- Ativo Circulante
    cash_checking NUMERIC(12, 2) DEFAULT 0,         -- saldo em contas correntes
    cash_investments NUMERIC(12, 2) DEFAULT 0,       -- aplicacoes financeiras (CDB etc)
    accounts_receivable NUMERIC(12, 2) DEFAULT 0,    -- contas a receber de clientes
    other_current_assets NUMERIC(12, 2) DEFAULT 0,

    -- Ativo Nao Circulante
    fixed_assets NUMERIC(12, 2) DEFAULT 0,           -- equipamentos, moveis, escritorio
    intangible_assets NUMERIC(12, 2) DEFAULT 0,      -- marca, dominios, licencas, software

    -- Passivo Circulante
    accounts_payable NUMERIC(12, 2) DEFAULT 0,       -- fornecedores
    taxes_payable NUMERIC(12, 2) DEFAULT 0,          -- impostos a recolher
    partner_reimbursement NUMERIC(12, 2) DEFAULT 0,  -- reembolso ao socio (Nubank PF)
    other_liabilities NUMERIC(12, 2) DEFAULT 0,

    -- Patrimonio Liquido
    share_capital NUMERIC(12, 2) DEFAULT 0,          -- capital social integralizado
    retained_earnings NUMERIC(12, 2) DEFAULT 0,      -- lucros acumulados
    current_period_result NUMERIC(12, 2) DEFAULT 0,  -- resultado do periodo

    -- Totais calculados
    total_assets NUMERIC(12, 2) DEFAULT 0,
    total_liabilities NUMERIC(12, 2) DEFAULT 0,
    net_worth NUMERIC(12, 2) DEFAULT 0,              -- PL total

    -- Breakdown detalhado (JSON para flexibilidade)
    accounts_detail JSONB,
    -- ex: {"sicredi": 3972.10, "inter_cdb": 40000.00, "receivable_rose": 3500.00}

    receivables_detail JSONB,
    -- ex: {"rose": {"monthly": 3500, "due": "2026-05-10"}, "benditta": {"monthly": 2000, "due": "2026-05-15"}}

    -- Metadata
    exchange_rate_usd NUMERIC(8, 4),
    net_worth_usd NUMERIC(12, 2),
    collected_by TEXT DEFAULT 'barsi',
    source TEXT DEFAULT 'manual',   -- 'manual', 'sueli', 'omie', 'ofx'
    notes TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================
-- 3. Movimentacoes patrimoniais relevantes (entradas e saidas significativas)
-- ============================================================
CREATE TABLE IF NOT EXISTS public.adv_patrimony_movements (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    account_id UUID REFERENCES public.adv_patrimony_accounts(id) ON DELETE SET NULL,
    movement_date DATE NOT NULL,
    movement_type TEXT NOT NULL CHECK (movement_type IN (
        'capital_injection',    -- aporte de capital
        'capital_withdrawal',   -- retirada / distribuicao
        'investment_in',        -- aplicacao (caixa -> investimento)
        'investment_out',       -- resgate (investimento -> caixa)
        'client_payment',       -- recebimento de cliente
        'large_expense',        -- despesa significativa (> threshold)
        'transfer',             -- transferencia entre contas
        'asset_acquisition',    -- compra de ativo
        'asset_disposal',       -- venda/baixa de ativo
        'tax_payment',          -- pagamento de imposto
        'loan_in',              -- emprestimo recebido
        'loan_out'              -- emprestimo concedido
    )),
    amount NUMERIC(12, 2) NOT NULL,
    currency TEXT DEFAULT 'BRL',
    counterpart TEXT,               -- de quem / para quem
    description TEXT,
    category TEXT,                  -- plano de contas (ref plano-de-contas-categorias.md)
    impact_on_net_worth TEXT CHECK (impact_on_net_worth IN ('positive', 'negative', 'neutral')),
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================
-- Indexes
-- ============================================================
CREATE INDEX IF NOT EXISTS idx_adv_patrimony_accounts_active ON public.adv_patrimony_accounts(is_active);
CREATE INDEX IF NOT EXISTS idx_adv_patrimony_accounts_type ON public.adv_patrimony_accounts(account_type);
CREATE INDEX IF NOT EXISTS idx_adv_patrimony_snapshots_date ON public.adv_patrimony_snapshots(snapshot_date DESC);
CREATE INDEX IF NOT EXISTS idx_adv_patrimony_snapshots_type ON public.adv_patrimony_snapshots(snapshot_type);
CREATE INDEX IF NOT EXISTS idx_adv_patrimony_movements_date ON public.adv_patrimony_movements(movement_date DESC);
CREATE INDEX IF NOT EXISTS idx_adv_patrimony_movements_type ON public.adv_patrimony_movements(movement_type);

-- ============================================================
-- Triggers
-- ============================================================
CREATE OR REPLACE FUNCTION update_adv_patrimony_accounts_modtime()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_adv_patrimony_accounts_trigger
    BEFORE UPDATE ON public.adv_patrimony_accounts
    FOR EACH ROW
    EXECUTE FUNCTION update_adv_patrimony_accounts_modtime();

-- ============================================================
-- RLS
-- ============================================================
ALTER TABLE public.adv_patrimony_accounts ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.adv_patrimony_snapshots ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.adv_patrimony_movements ENABLE ROW LEVEL SECURITY;

CREATE POLICY "patrimony_accounts_select" ON public.adv_patrimony_accounts FOR SELECT
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "patrimony_accounts_insert" ON public.adv_patrimony_accounts FOR INSERT
    WITH CHECK (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "patrimony_accounts_update" ON public.adv_patrimony_accounts FOR UPDATE
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role')
    WITH CHECK (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "patrimony_accounts_delete" ON public.adv_patrimony_accounts FOR DELETE
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role');

CREATE POLICY "patrimony_snapshots_select" ON public.adv_patrimony_snapshots FOR SELECT
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "patrimony_snapshots_insert" ON public.adv_patrimony_snapshots FOR INSERT
    WITH CHECK (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "patrimony_snapshots_update" ON public.adv_patrimony_snapshots FOR UPDATE
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role')
    WITH CHECK (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "patrimony_snapshots_delete" ON public.adv_patrimony_snapshots FOR DELETE
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role');

CREATE POLICY "patrimony_movements_select" ON public.adv_patrimony_movements FOR SELECT
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "patrimony_movements_insert" ON public.adv_patrimony_movements FOR INSERT
    WITH CHECK (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "patrimony_movements_update" ON public.adv_patrimony_movements FOR UPDATE
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role')
    WITH CHECK (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "patrimony_movements_delete" ON public.adv_patrimony_movements FOR DELETE
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role');

-- ============================================================
-- Comments
-- ============================================================
COMMENT ON TABLE public.adv_patrimony_accounts IS 'Inventario de contas e ativos patrimoniais da Adventure Labs (PJ). Gerido pelo Barsi.';
COMMENT ON TABLE public.adv_patrimony_snapshots IS 'Fotos periodicas do balanco patrimonial da Adventure Labs (PJ). Barsi gera semanalmente.';
COMMENT ON TABLE public.adv_patrimony_movements IS 'Movimentacoes patrimoniais relevantes (aportes, investimentos, aquisicoes). Barsi registra.';
