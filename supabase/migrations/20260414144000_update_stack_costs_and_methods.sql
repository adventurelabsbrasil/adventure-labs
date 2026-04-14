-- Migration: 20260414144000_update_stack_costs_and_methods.sql
-- Adiciona método de pagamento, data de renovação e insere/atualiza os custos das ferramentas

-- 1. Novas colunas
ALTER TABLE public.adv_stack_subscriptions ADD COLUMN IF NOT EXISTS payment_method TEXT;
ALTER TABLE public.adv_stack_subscriptions ADD COLUMN IF NOT EXISTS next_renewal_date DATE;

-- 2. Atualiza os custos existentes
UPDATE public.adv_stack_subscriptions 
SET monthly_cost_brl = 108.99, next_renewal_date = '2026-04-24' 
WHERE platform_name = 'Hostinger VPS';

UPDATE public.adv_stack_subscriptions 
SET monthly_cost_usd = 0, monthly_cost_brl = 0, plan_name = 'Free', billing_type = 'free' 
WHERE platform_name = 'Supabase';

UPDATE public.adv_stack_subscriptions 
SET monthly_cost_usd = 5.00, next_renewal_date = '2026-05-07', plan_name = 'Starter' 
WHERE platform_name = 'ElevenLabs';

-- Desativa os serviços do cliente que não queremos monitorar no nosso caixa
UPDATE public.adv_stack_subscriptions 
SET is_active = false, status_notes = 'Pago pelo cliente. Não monitorado no caixa interno.' 
WHERE platform_name IN ('Make.com', 'RD Station CRM');

-- 3. Insere novas plataformas e a nossa versão do Make
INSERT INTO public.adv_stack_subscriptions 
    (platform_name, category, usage_scope, is_for_clients, plan_name, billing_type, monthly_cost_brl, is_active, purpose_description, payment_method, next_renewal_date)
VALUES 
    ('Make.com (Adventure)', 'Automação', 'Core', false, 'Free', 'free', 0.00, true, 'Make.com conta interna da Adventure Labs', NULL, NULL),
    ('Claude Pro / Max', 'IA / Produtividade', 'Core', false, 'Max plan - 20x', 'fixed', 1100.00, true, 'Assinatura Claude (usada para o Claude Code)', 'Link (Stripe)', '2026-05-07'),
    ('Google Workspace', 'Infraestrutura', 'Core', false, 'A confirmar', 'fixed', NULL, true, 'E-mails corporativos, Drive, Docs', NULL, NULL),
    ('Omie ERP', 'Financeiro / Operações', 'Core', false, 'A confirmar', 'fixed', NULL, true, 'Sistema ERP de gestão financeira e notas fiscais', NULL, NULL),
    ('Cursor AI', 'IA / Produtividade', 'Core', false, 'A confirmar', 'fixed', NULL, true, 'Editor de código principal com IA integrada', NULL, NULL);

INSERT INTO public.adv_stack_subscriptions 
    (platform_name, category, usage_scope, is_for_clients, plan_name, billing_type, is_active, purpose_description)
VALUES 
    ('Gemini API', 'IA / APIs', 'Core', true, 'Pay-as-you-go', 'on-demand', true, 'Tokens API Gemini (Tier Estratégico)'),
    ('Anthropic API', 'IA / APIs', 'Core', true, 'Pay-as-you-go', 'on-demand', true, 'Tokens API Claude (Tier Técnico/Operacional)'),
    ('OpenAI API', 'IA / APIs', 'Core', true, 'Pay-as-you-go', 'on-demand', true, 'Tokens API GPT (Secundário)');