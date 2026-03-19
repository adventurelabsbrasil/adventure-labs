-- 1. Criar a tabela de Inbox do Gestor de Contas
CREATE TABLE IF NOT EXISTS public.adv_client_inbox (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    client_id UUID REFERENCES public.adv_clients(id) ON DELETE CASCADE,
    type TEXT NOT NULL, -- 'whatsapp_dump', 'google_docs', 'meeting_transcript', 'manual_feedback'
    title TEXT, -- Um título breve para identificação (ex: "Conversa Grupo Financeiro 05/03")
    raw_content TEXT NOT NULL, -- Onde o conteúdo bruto (txt, links, transcrições) será colado
    processed_status TEXT DEFAULT 'pending', -- 'pending', 'processing', 'completed', 'failed'
    ai_summary TEXT, -- O resumo estruturado gerado pela IA (opcional, para visualização rápida no front)
    metadata JSONB DEFAULT '{}'::jsonb, -- Para guardar info extra (quem subiu, data da conversa original, etc)
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 2. Habilitar RLS (Row Level Security) - Opcional, dependendo da sua política
ALTER TABLE public.adv_client_inbox ENABLE ROW LEVEL SECURITY;

-- 3. Criar uma função para atualizar o updated_at automaticamente (se a função não existir)
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_proc WHERE proname = 'update_updated_at_column') THEN
        CREATE FUNCTION update_updated_at_column()
        RETURNS TRIGGER AS $func$
        BEGIN
            NEW.updated_at = NOW();
            RETURN NEW;
        END;
        $func$ language 'plpgsql';
    END IF;
END
$$;

-- 4. Criar o Trigger
DROP TRIGGER IF EXISTS update_adv_client_inbox_updated_at ON public.adv_client_inbox;
CREATE TRIGGER update_adv_client_inbox_updated_at
    BEFORE UPDATE ON public.adv_client_inbox
    FOR EACH ROW
    EXECUTE PROCEDURE update_updated_at_column();

-- 5. Comentários para documentação no Supabase
COMMENT ON TABLE public.adv_client_inbox IS 'Armazena dados brutos de entrada dos clientes para processamento pelos Agentes de IA.';
COMMENT ON COLUMN public.adv_client_inbox.type IS 'Tipo de fonte: whatsapp_dump, google_docs, meeting_transcript, manual_feedback';
