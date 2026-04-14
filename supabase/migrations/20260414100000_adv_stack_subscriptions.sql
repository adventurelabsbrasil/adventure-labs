-- Migration: 20260414100000_adv_stack_subscriptions.sql
-- Description: Tabela para monitoramento da Stack de Plataformas e Custos da Adventure Labs (Mensuração de valor e atividade)

CREATE TABLE IF NOT EXISTS public.adv_stack_subscriptions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    platform_name TEXT NOT NULL,
    category TEXT,
    usage_scope TEXT CHECK (usage_scope IN ('Core', 'Labs', 'Clientes')),
    is_for_clients BOOLEAN DEFAULT false,
    client_names TEXT[],
    plan_name TEXT,
    billing_type TEXT CHECK (billing_type IN ('fixed', 'on-demand', 'free', 'annual')),
    monthly_cost_brl NUMERIC(10, 2),
    monthly_cost_usd NUMERIC(10, 2),
    is_active BOOLEAN DEFAULT true,
    last_used_at TIMESTAMPTZ,
    purpose_description TEXT NOT NULL,
    status_notes TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Trigger for auto-updating updated_at
CREATE OR REPLACE FUNCTION update_adv_stack_subscriptions_modtime()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_adv_stack_subscriptions_trigger
    BEFORE UPDATE ON public.adv_stack_subscriptions
    FOR EACH ROW
    EXECUTE FUNCTION update_adv_stack_subscriptions_modtime();

-- Enable RLS
ALTER TABLE public.adv_stack_subscriptions ENABLE ROW LEVEL SECURITY;

-- Policies
CREATE POLICY "Enable read access for authenticated users"
    ON public.adv_stack_subscriptions FOR SELECT
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role');

CREATE POLICY "Enable insert access for authenticated users"
    ON public.adv_stack_subscriptions FOR INSERT
    WITH CHECK (auth.role() = 'authenticated' OR auth.role() = 'service_role');

CREATE POLICY "Enable update access for authenticated users"
    ON public.adv_stack_subscriptions FOR UPDATE
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role')
    WITH CHECK (auth.role() = 'authenticated' OR auth.role() = 'service_role');

CREATE POLICY "Enable delete access for authenticated users"
    ON public.adv_stack_subscriptions FOR DELETE
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role');

-- Create an index for faster queries on active platforms
CREATE INDEX IF NOT EXISTS idx_adv_stack_subscriptions_active ON public.adv_stack_subscriptions(is_active);

-- Comments for documentation
COMMENT ON TABLE public.adv_stack_subscriptions IS 'Tabela para monitoramento contínuo de plataformas, custos e uso para avaliação do C-Suite.';
COMMENT ON COLUMN public.adv_stack_subscriptions.platform_name IS 'Nome da plataforma (ex: Supabase, n8n, Vercel, Evolution API)';
COMMENT ON COLUMN public.adv_stack_subscriptions.usage_scope IS 'Escopo de uso: Core (Infra interna), Labs (Experimentos/SaaS), Clientes (Uso direto para clientes)';
COMMENT ON COLUMN public.adv_stack_subscriptions.is_for_clients IS 'Flag indicando se a plataforma é usada ativamente para entregar valor a clientes';
COMMENT ON COLUMN public.adv_stack_subscriptions.client_names IS 'Lista de clientes que utilizam esta ferramenta (ex: Young, Rose, Benditta)';
COMMENT ON COLUMN public.adv_stack_subscriptions.billing_type IS 'Tipo de cobrança (fixed, on-demand, free, annual)';
COMMENT ON COLUMN public.adv_stack_subscriptions.last_used_at IS 'Data do último uso detectado/manual para avaliar se a ferramenta está ociosa';
COMMENT ON COLUMN public.adv_stack_subscriptions.purpose_description IS 'O que temos contratado e para que serve (resumo na ponta da língua)';
COMMENT ON COLUMN public.adv_stack_subscriptions.status_notes IS 'Anotações sobre a utilidade atual (se vale a pena manter, se há alternativas, etc.)';
