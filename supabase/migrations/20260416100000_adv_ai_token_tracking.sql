-- Migration: 20260416100000_adv_ai_token_tracking.sql
-- Description: Sistema de rastreamento de tokens e custos de IA — gerido pelo agente Tostao (Token Treasurer)
-- Owner: Buffett (CFO) via Tostao

-- ============================================================
-- 1. Registro de Provedores de IA (inventario completo)
-- ============================================================
CREATE TABLE IF NOT EXISTS public.adv_ai_providers (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    provider_name TEXT NOT NULL UNIQUE,
    provider_type TEXT NOT NULL CHECK (provider_type IN ('api', 'subscription', 'hybrid')),
    -- api = pay-per-token (Anthropic, Gemini, OpenAI)
    -- subscription = plano fixo (Claude Pro/Max, Cursor, ElevenLabs)
    -- hybrid = assinatura + consumo variavel

    -- Configuracao de acesso
    api_key_location TEXT,          -- onde a chave esta (ex: 'infisical:/admin/ANTHROPIC_API_KEY')
    dashboard_url TEXT,             -- URL do painel de uso do provider
    billing_url TEXT,               -- URL da pagina de billing

    -- Contexto de uso na Adventure Labs
    usage_context TEXT NOT NULL,    -- onde e usado (ex: 'OpenClaw N2 Tecnico, Claude Code, agentes VPS')
    routing_tier TEXT,              -- tier no LLM Routing (N1, N2, N3, N4)
    models TEXT[],                  -- modelos disponiveis (ex: {'claude-sonnet-4-6', 'claude-opus-4-6'})

    -- Limites e alertas
    monthly_budget_usd NUMERIC(10, 2),  -- orcamento mensal em USD
    monthly_budget_brl NUMERIC(10, 2),  -- orcamento mensal em BRL
    alert_threshold_pct INTEGER DEFAULT 80, -- % do budget para disparar alerta
    hard_limit_usd NUMERIC(10, 2),      -- limite hard (se o provider suportar)

    -- Ciclo de renovacao (para subscriptions)
    billing_cycle_day INTEGER,      -- dia do mes que renova
    current_cycle_usage_pct INTEGER, -- % de uso no ciclo atual (para Cursor etc)

    is_active BOOLEAN DEFAULT true,
    notes TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================
-- 2. Registro de consumo de tokens (snapshots periodicos)
-- ============================================================
CREATE TABLE IF NOT EXISTS public.adv_token_usage (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    provider_id UUID NOT NULL REFERENCES public.adv_ai_providers(id) ON DELETE CASCADE,
    period_start DATE NOT NULL,
    period_end DATE NOT NULL,
    period_type TEXT NOT NULL CHECK (period_type IN ('daily', 'weekly', 'monthly', 'cycle')),

    -- Metricas de tokens (para APIs)
    input_tokens BIGINT DEFAULT 0,
    output_tokens BIGINT DEFAULT 0,
    total_tokens BIGINT DEFAULT 0,
    cached_tokens BIGINT DEFAULT 0,

    -- Metricas de custo
    cost_usd NUMERIC(10, 4) DEFAULT 0,
    cost_brl NUMERIC(10, 4) DEFAULT 0,
    exchange_rate NUMERIC(8, 4),    -- USD/BRL na data

    -- Metricas de uso (para subscriptions)
    requests_count INTEGER DEFAULT 0,
    usage_pct INTEGER,              -- % do plano consumido

    -- Breakdown por modelo (JSON para flexibilidade)
    model_breakdown JSONB,
    -- ex: {"claude-sonnet-4-6": {"input": 1000000, "output": 500000, "cost_usd": 12.50},
    --      "claude-opus-4-6": {"input": 200000, "output": 100000, "cost_usd": 45.00}}

    -- Breakdown por agente/servico (quem consumiu)
    consumer_breakdown JSONB,
    -- ex: {"openclaw-buzz": {"tokens": 500000, "pct": 40},
    --      "csuite-agents": {"tokens": 300000, "pct": 24},
    --      "claude-code": {"tokens": 450000, "pct": 36}}

    -- Metadata
    source TEXT DEFAULT 'manual',   -- 'manual', 'api', 'scrape', 'sueli'
    collected_by TEXT DEFAULT 'tostao',
    notes TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================
-- 3. Alertas de consumo (historico de alertas gerados)
-- ============================================================
CREATE TABLE IF NOT EXISTS public.adv_token_alerts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    provider_id UUID NOT NULL REFERENCES public.adv_ai_providers(id) ON DELETE CASCADE,
    alert_type TEXT NOT NULL CHECK (alert_type IN (
        'budget_warning',     -- atingiu % do budget
        'budget_exceeded',    -- estourou o budget
        'anomaly',            -- consumo fora do padrao
        'cycle_limit',        -- limite de ciclo (Cursor etc)
        'key_expiring',       -- chave API expirando
        'key_rotation',       -- rotacao de chave necessaria
        'provider_down',      -- provider com problema
        'cost_spike',         -- pico de custo vs media
        'optimization'        -- oportunidade de economia
    )),
    severity TEXT NOT NULL CHECK (severity IN ('info', 'warning', 'critical')),
    message TEXT NOT NULL,
    context JSONB,              -- dados extras do alerta
    acknowledged BOOLEAN DEFAULT false,
    acknowledged_by TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================
-- Indexes
-- ============================================================
CREATE INDEX IF NOT EXISTS idx_adv_ai_providers_active ON public.adv_ai_providers(is_active);
CREATE INDEX IF NOT EXISTS idx_adv_token_usage_provider ON public.adv_token_usage(provider_id);
CREATE INDEX IF NOT EXISTS idx_adv_token_usage_period ON public.adv_token_usage(period_start, period_end);
CREATE INDEX IF NOT EXISTS idx_adv_token_usage_type ON public.adv_token_usage(period_type);
CREATE INDEX IF NOT EXISTS idx_adv_token_alerts_provider ON public.adv_token_alerts(provider_id);
CREATE INDEX IF NOT EXISTS idx_adv_token_alerts_type ON public.adv_token_alerts(alert_type);
CREATE INDEX IF NOT EXISTS idx_adv_token_alerts_unack ON public.adv_token_alerts(acknowledged) WHERE acknowledged = false;

-- ============================================================
-- Triggers
-- ============================================================
CREATE OR REPLACE FUNCTION update_adv_ai_providers_modtime()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_adv_ai_providers_trigger
    BEFORE UPDATE ON public.adv_ai_providers
    FOR EACH ROW
    EXECUTE FUNCTION update_adv_ai_providers_modtime();

-- ============================================================
-- RLS
-- ============================================================
ALTER TABLE public.adv_ai_providers ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.adv_token_usage ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.adv_token_alerts ENABLE ROW LEVEL SECURITY;

-- Policies (mesmo padrao adv_stack_subscriptions)
CREATE POLICY "ai_providers_select" ON public.adv_ai_providers FOR SELECT
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "ai_providers_insert" ON public.adv_ai_providers FOR INSERT
    WITH CHECK (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "ai_providers_update" ON public.adv_ai_providers FOR UPDATE
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role')
    WITH CHECK (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "ai_providers_delete" ON public.adv_ai_providers FOR DELETE
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role');

CREATE POLICY "token_usage_select" ON public.adv_token_usage FOR SELECT
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "token_usage_insert" ON public.adv_token_usage FOR INSERT
    WITH CHECK (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "token_usage_update" ON public.adv_token_usage FOR UPDATE
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role')
    WITH CHECK (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "token_usage_delete" ON public.adv_token_usage FOR DELETE
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role');

CREATE POLICY "token_alerts_select" ON public.adv_token_alerts FOR SELECT
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "token_alerts_insert" ON public.adv_token_alerts FOR INSERT
    WITH CHECK (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "token_alerts_update" ON public.adv_token_alerts FOR UPDATE
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role')
    WITH CHECK (auth.role() = 'authenticated' OR auth.role() = 'service_role');
CREATE POLICY "token_alerts_delete" ON public.adv_token_alerts FOR DELETE
    USING (auth.role() = 'authenticated' OR auth.role() = 'service_role');

-- ============================================================
-- Comments
-- ============================================================
COMMENT ON TABLE public.adv_ai_providers IS 'Inventario de provedores de IA (APIs, assinaturas, hibridos) gerido pelo Tostao (Token Treasurer)';
COMMENT ON TABLE public.adv_token_usage IS 'Snapshots periodicos de consumo de tokens e custos por provider, coletados pelo Tostao';
COMMENT ON TABLE public.adv_token_alerts IS 'Historico de alertas de consumo, anomalias e oportunidades de economia gerados pelo Tostao';
