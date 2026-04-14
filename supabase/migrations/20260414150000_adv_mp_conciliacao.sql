-- Migration: 20260414150000_adv_mp_conciliacao.sql
-- Description: Tabelas para conciliação financeira Mercado Pago (uso interno Adventure Labs).
-- Consumidores: Sueli (agente financeira AI), Buffett (CFO agente), dashboards Metabase.
-- Escopo: LEITURA da conta MP própria — sem checkout/captura de pagamentos aqui.
-- RLS: service_role-only. Nenhum usuário autenticado lê esta tabela direto (são dados financeiros crus).
--       Exposição controlada vira via views específicas ou agentes autorizados.

-- ---------------------------------------------------------------------------
-- adv_mp_payments — espelho local de /v1/payments/search
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.adv_mp_payments (
    id BIGINT PRIMARY KEY,                     -- payment.id do Mercado Pago
    date_created TIMESTAMPTZ NOT NULL,
    date_approved TIMESTAMPTZ,
    date_last_updated TIMESTAMPTZ,
    status TEXT,                                -- approved | pending | rejected | refunded | cancelled | in_process | ...
    status_detail TEXT,                         -- accredited | pending_waiting_transfer | ...
    operation_type TEXT,                        -- regular_payment | money_transfer | ...
    payment_method_id TEXT,                     -- pix | master | visa | bolbradesco | ...
    payment_type_id TEXT,                       -- credit_card | debit_card | bank_transfer | ticket | ...
    currency_id TEXT,                           -- BRL
    description TEXT,
    transaction_amount NUMERIC(14, 2),          -- valor bruto cobrado
    transaction_amount_refunded NUMERIC(14, 2), -- total reembolsado
    net_received_amount NUMERIC(14, 2),         -- líquido creditado (transaction_details.net_received_amount)
    fee_amount NUMERIC(14, 2),                  -- soma de fee_details[].amount
    external_reference TEXT,
    payer_email TEXT,
    payer_doc_type TEXT,
    payer_doc_number TEXT,
    raw JSONB NOT NULL,                         -- payload original completo, pra auditoria e re-processamento
    synced_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

COMMENT ON TABLE public.adv_mp_payments IS 'Espelho local de pagamentos Mercado Pago da conta Adventure Labs, populado via tools/scripts/mercadopago-cli.mjs sync:payments. Uso: conciliação financeira interna.';
COMMENT ON COLUMN public.adv_mp_payments.id IS 'payment.id do Mercado Pago (chave primária natural).';
COMMENT ON COLUMN public.adv_mp_payments.net_received_amount IS 'Valor líquido creditado após taxas do MP (transaction_details.net_received_amount).';
COMMENT ON COLUMN public.adv_mp_payments.fee_amount IS 'Soma agregada de fee_details[].amount (taxas do MP + IOF + etc).';
COMMENT ON COLUMN public.adv_mp_payments.raw IS 'Payload bruto do endpoint /v1/payments/search pra re-processamento sem re-sync.';

CREATE INDEX IF NOT EXISTS idx_adv_mp_payments_date_created ON public.adv_mp_payments(date_created DESC);
CREATE INDEX IF NOT EXISTS idx_adv_mp_payments_status ON public.adv_mp_payments(status);
CREATE INDEX IF NOT EXISTS idx_adv_mp_payments_external_ref ON public.adv_mp_payments(external_reference) WHERE external_reference IS NOT NULL;

-- ---------------------------------------------------------------------------
-- adv_mp_sync_log — auditoria de execuções do sync
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.adv_mp_sync_log (
    id BIGSERIAL PRIMARY KEY,
    kind TEXT NOT NULL,                         -- 'payments' | 'balance' | 'activities'
    ran_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    from_cursor TIMESTAMPTZ,
    to_cursor TIMESTAMPTZ,
    rows_affected INTEGER DEFAULT 0,
    pages_fetched INTEGER DEFAULT 0,
    duration_ms INTEGER DEFAULT 0,
    error TEXT
);

COMMENT ON TABLE public.adv_mp_sync_log IS 'Auditoria de execuções do sync Mercado Pago (cron VPS ou invocação manual).';
COMMENT ON COLUMN public.adv_mp_sync_log.kind IS 'Tipo de sync: payments | balance | activities.';
COMMENT ON COLUMN public.adv_mp_sync_log.error IS 'Se não-nulo, a execução falhou e a mensagem ficou aqui (também notificada no Telegram).';

CREATE INDEX IF NOT EXISTS idx_adv_mp_sync_log_ran_at ON public.adv_mp_sync_log(ran_at DESC);
CREATE INDEX IF NOT EXISTS idx_adv_mp_sync_log_kind_ran_at ON public.adv_mp_sync_log(kind, ran_at DESC);

-- ---------------------------------------------------------------------------
-- RLS — service_role-only (dados financeiros sensíveis)
-- ---------------------------------------------------------------------------
ALTER TABLE public.adv_mp_payments ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.adv_mp_sync_log ENABLE ROW LEVEL SECURITY;

-- adv_mp_payments: só service_role lê/escreve.
CREATE POLICY "mp_payments_service_role_all"
    ON public.adv_mp_payments
    FOR ALL
    USING (auth.role() = 'service_role')
    WITH CHECK (auth.role() = 'service_role');

-- adv_mp_sync_log: só service_role.
CREATE POLICY "mp_sync_log_service_role_all"
    ON public.adv_mp_sync_log
    FOR ALL
    USING (auth.role() = 'service_role')
    WITH CHECK (auth.role() = 'service_role');

-- Nota: quando precisarmos expor p/ Sueli, Buffett ou Metabase, criar views
-- específicas (ex: v_mp_payments_resumo) com as colunas seguras e policies próprias.
