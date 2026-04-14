-- Migration/Seed: 20260414100001_seed_adv_stack_subscriptions.sql
-- Description: Inserção inicial de dados reais baseada no SSOT (MEMORY.md e TOOLS.md atualizados)

INSERT INTO public.adv_stack_subscriptions 
    (platform_name, category, usage_scope, is_for_clients, client_names, plan_name, billing_type, is_active, purpose_description, status_notes)
VALUES 
    -- Infraestrutura Central (Ativos)
    ('Hostinger VPS', 'Infraestrutura', 'Core', true, ARRAY['Rose Portal Advocacia', 'Young Empreendimentos', 'Benditta'], 'VPS (187.77.251.199)', 'fixed', true, 'Servidor principal hospedando todos os serviços Docker Compose do Comando Estelar', 'Core da nossa operação. Não substituir.'),
    ('Supabase', 'Database / Auth', 'Core', true, ARRAY['Rose Portal Advocacia', 'Young Empreendimentos', 'Benditta'], 'Pro / On-demand', 'on-demand', true, 'Banco de dados central (PostgreSQL), Autenticação e Storage', 'Fonte da verdade viva (adv_*). Conectado ao Metabase via IPv4 Pooler.'),
    
    -- Serviços Self-Hosted na VPS (Ativos, custo embutido na VPS)
    ('n8n', 'Automação', 'Core', true, ARRAY['Rose Portal Advocacia', 'Young Empreendimentos', 'Benditta'], 'Self-hosted (Community)', 'free', true, 'Orquestração de fluxos, integração de leads e automação de processos', 'Rodando via Docker. Acesso via flow.adventurelabs.com.br. Crítico para campanhas e IA.'),
    ('Plane.so', 'Gestão de Projetos', 'Core', true, ARRAY['Rose Portal Advocacia', 'Young Empreendimentos', 'Benditta'], 'Self-hosted', 'free', true, 'Único SSOT para tarefas e projetos da Adventure Labs', 'Rodando via Docker. Acesso via tasks.adventurelabs.com.br.'),
    ('Infisical', 'Gestão de Segredos', 'Core', true, ARRAY['Rose Portal Advocacia', 'Young Empreendimentos', 'Benditta'], 'Self-hosted', 'free', true, 'SSOT para variáveis de ambiente e credenciais de produção', 'Rodando via Docker. Acesso via vault.adventurelabs.com.br. Infisical Cloud foi descontinuado.'),
    ('Vaultwarden', 'Gestão de Senhas', 'Core', true, ARRAY['Rose Portal Advocacia', 'Young Empreendimentos', 'Benditta'], 'Self-hosted', 'free', true, 'Cofre de senhas pessoais e de clientes (71+ credenciais)', 'Rodando via Docker. Acesso via pw.adventurelabs.com.br.'),
    ('Evolution API', 'Mensageria', 'Core', false, NULL, 'Self-hosted (v2.3.7)', 'free', true, 'API do WhatsApp (Instância: adventure) para comunicação', 'Rodando via Docker. Acesso via api-wa.adventurelabs.com.br.'),
    ('Metabase', 'BI / Analytics', 'Core', true, ARRAY['Young Empreendimentos'], 'Self-hosted', 'free', true, 'Dashboards e visualização de dados do Supabase', 'Rodando via Docker. Acesso via bi.adventurelabs.com.br. Usado para o dashboard ELITE-26-4 da Young.'),
    ('Uptime Kuma', 'Monitoramento', 'Core', false, NULL, 'Self-hosted', 'free', true, 'Monitor de uptime dos serviços da VPS', 'Rodando via Docker. Acesso via status.adventurelabs.com.br.'),
    
    -- Serviços Externos (Ativos)
    ('Make.com', 'Automação', 'Clientes', true, ARRAY['Young Empreendimentos'], 'Free/Standard', 'on-demand', true, 'Auditoria e automações legadas (ex: Captação Young)', 'Em transição gradual para o n8n interno.'),
    ('RD Station CRM', 'CRM', 'Clientes', true, ARRAY['Young Empreendimentos'], 'Plano Young', 'fixed', true, 'Gestão de pipeline comercial de clientes (ex: Young)', 'Integração direta via API própria (Pluga desativado).'),
    ('ElevenLabs', 'IA / Voz', 'Core', false, NULL, 'Usage-based', 'on-demand', true, 'Síntese de voz TTS para o agente Buzz (Voice ID wknp9mNGQgmlPWf9VpAd)', 'Aguardando chave na VPS para operar plenamente.'),
    
    -- Ferramentas Descontinuadas / Inativas
    ('Asana', 'Gestão de Projetos', 'Core', false, NULL, 'Descontinuado', 'free', false, 'Antigo gerenciador de tarefas', 'Descontinuado e arquivado. Substituído 100% pelo Plane.so.'),
    ('Coolify', 'Infraestrutura', 'Core', false, NULL, 'Descontinuado', 'free', false, 'Antigo gerenciador de deploy', 'Descontinuado e arquivado. Deploy nativo via Docker Compose na VPS.'),
    ('Railway', 'Infraestrutura', 'Core', false, NULL, 'Descontinuado', 'on-demand', false, 'Antiga hospedagem PaaS', 'Descontinuado e arquivado. Migrado 100% para a VPS Hostinger.'),
    ('Pluga.co', 'Automação', 'Clientes', true, ARRAY['Young Empreendimentos'], 'Descontinuado', 'fixed', false, 'Antiga integração de leads', 'Desativado. Substituído por Make/n8n + API Direta no RD CRM.');