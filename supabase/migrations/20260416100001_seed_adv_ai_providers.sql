-- Migration/Seed: 20260416100001_seed_adv_ai_providers.sql
-- Description: Inventario inicial de provedores de IA da Adventure Labs
-- Baseado em: adv_stack_subscriptions, MEMORY.md, cursor-contas-e-limites.md, LLM_ROUTING.md

INSERT INTO public.adv_ai_providers
    (provider_name, provider_type, api_key_location, dashboard_url, billing_url,
     usage_context, routing_tier, models, monthly_budget_usd, monthly_budget_brl,
     alert_threshold_pct, billing_cycle_day, is_active, notes)
VALUES
    -- ============================
    -- APIs (pay-per-token)
    -- ============================
    (
        'Anthropic API',
        'api',
        'infisical:/admin/ANTHROPIC_API_KEY',
        'https://console.anthropic.com/settings/usage',
        'https://console.anthropic.com/settings/billing',
        'Claude Code (dev principal), agentes VPS (N2 Tecnico), n8n workflows, OpenClaw fallback N2',
        'N2',
        ARRAY['claude-opus-4-6', 'claude-sonnet-4-6', 'claude-haiku-4-5'],
        NULL, NULL, 80, NULL,
        true,
        'Provider principal para codigo e tarefas tecnicas. OpenClaw usa como fallback N2 apos Gemini.'
    ),
    (
        'Google Gemini API',
        'api',
        'infisical:/admin/GEMINI_API_KEY',
        'https://aistudio.google.com/apikey',
        'https://console.cloud.google.com/billing',
        'OpenClaw/Buzz (N1 Estrategico primary), agentes VPS, n8n workflows, xpostr agents',
        'N1',
        ARRAY['gemini-3.1-pro', 'gemini-2.5-flash'],
        NULL, NULL, 80, NULL,
        true,
        'Provider primario do OpenClaw. Tier N1 estrategico + N3 operacional (Flash). Quota Google AI Studio.'
    ),
    (
        'OpenAI API',
        'api',
        'infisical:/admin/OPENAI_API_KEY',
        'https://platform.openai.com/usage',
        'https://platform.openai.com/settings/organization/billing',
        'OpenClaw fallback N3, n8n workflows secundarios',
        'N3',
        ARRAY['gpt-5.4', 'gpt-4.1-mini'],
        NULL, NULL, 80, NULL,
        true,
        'Fallback final do OpenClaw. Uso reduzido — priorizar Gemini e Anthropic.'
    ),

    -- ============================
    -- Subscriptions (plano fixo)
    -- ============================
    (
        'Claude Pro/Max',
        'subscription',
        NULL,
        'https://claude.ai/settings/billing',
        'https://claude.ai/settings/billing',
        'Claude Code (IDE principal do Founder), sessoes interativas, Claude Code web',
        NULL,
        ARRAY['claude-opus-4-6', 'claude-sonnet-4-6'],
        NULL, 1100.00,
        90, 7,
        true,
        'Assinatura Max (20x). R$1100/mes. Renova dia 7. Stripe link. Uso intensivo para dev.'
    ),
    (
        'Cursor AI — Adventure Labs',
        'subscription',
        NULL,
        'https://www.cursor.com/settings',
        'https://www.cursor.com/settings',
        'Editor de codigo AI (conta principal Adventure Labs)',
        NULL,
        NULL,
        20.00, NULL,
        90, 10,
        true,
        'Plano Pro $20/mo. Renova dia 10. Monitorar Auto% e API% — trocar para Lidera se >= 90%.'
    ),
    (
        'Cursor AI — Lidera Solucoes',
        'subscription',
        NULL,
        'https://www.cursor.com/settings',
        'https://www.cursor.com/settings',
        'Editor de codigo AI (conta backup Lidera Solucoes)',
        NULL,
        NULL,
        20.00, NULL,
        90, 18,
        true,
        'Plano Pro $20/mo. Renova dia 18. Conta de backup — usar quando Adventure >= 90%.'
    ),
    (
        'ElevenLabs',
        'subscription',
        'infisical:/admin/ELEVENLABS_API_KEY',
        'https://elevenlabs.io/app/usage',
        'https://elevenlabs.io/app/subscription',
        'TTS para Buzz (Voice ID wknp9mNGQgmlPWf9VpAd), voice stories, notificacoes de voz',
        NULL,
        NULL,
        5.00, NULL,
        80, 7,
        true,
        'Plano Starter $5/mo. Renova dia 7. Uso para voz do Buzz no Telegram/WhatsApp.'
    );
