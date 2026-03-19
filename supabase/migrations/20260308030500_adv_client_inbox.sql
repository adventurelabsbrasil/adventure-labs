-- Inbox do Account Manager AI.
-- Corrige quebra crítica: tabela usada no app não estava no fluxo oficial de migrations.

CREATE TABLE IF NOT EXISTS public.adv_client_inbox (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  client_id UUID REFERENCES public.adv_clients(id) ON DELETE CASCADE,
  type TEXT NOT NULL CHECK (type IN ('whatsapp_dump', 'google_docs', 'meeting_transcript', 'manual_feedback')),
  title TEXT,
  raw_content TEXT NOT NULL,
  processed_status TEXT NOT NULL DEFAULT 'pending' CHECK (processed_status IN ('pending', 'processing', 'completed', 'failed')),
  ai_summary TEXT,
  metadata JSONB NOT NULL DEFAULT '{}'::jsonb,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

ALTER TABLE public.adv_client_inbox
  ADD COLUMN IF NOT EXISTS tenant_id UUID NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  ADD COLUMN IF NOT EXISTS metadata JSONB NOT NULL DEFAULT '{}'::jsonb,
  ADD COLUMN IF NOT EXISTS ai_summary TEXT,
  ADD COLUMN IF NOT EXISTS updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  ADD COLUMN IF NOT EXISTS created_at TIMESTAMPTZ NOT NULL DEFAULT now();

CREATE INDEX IF NOT EXISTS idx_adv_client_inbox_tenant ON public.adv_client_inbox(tenant_id);
CREATE INDEX IF NOT EXISTS idx_adv_client_inbox_client ON public.adv_client_inbox(client_id);
CREATE INDEX IF NOT EXISTS idx_adv_client_inbox_status ON public.adv_client_inbox(processed_status);
CREATE INDEX IF NOT EXISTS idx_adv_client_inbox_created_at ON public.adv_client_inbox(created_at DESC);

DROP TRIGGER IF EXISTS adv_client_inbox_updated_at ON public.adv_client_inbox;
CREATE TRIGGER adv_client_inbox_updated_at
  BEFORE UPDATE ON public.adv_client_inbox
  FOR EACH ROW EXECUTE PROCEDURE adv_set_updated_at();

ALTER TABLE public.adv_client_inbox ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS adv_client_inbox_select ON public.adv_client_inbox;
DROP POLICY IF EXISTS adv_client_inbox_insert ON public.adv_client_inbox;
DROP POLICY IF EXISTS adv_client_inbox_update ON public.adv_client_inbox;
DROP POLICY IF EXISTS adv_client_inbox_delete ON public.adv_client_inbox;

CREATE POLICY adv_client_inbox_select ON public.adv_client_inbox FOR SELECT TO authenticated USING (true);
CREATE POLICY adv_client_inbox_insert ON public.adv_client_inbox FOR INSERT TO authenticated WITH CHECK (true);
CREATE POLICY adv_client_inbox_update ON public.adv_client_inbox FOR UPDATE TO authenticated USING (true);
CREATE POLICY adv_client_inbox_delete ON public.adv_client_inbox FOR DELETE TO authenticated USING (true);

COMMENT ON TABLE public.adv_client_inbox IS 'Armazena contexto bruto enviado por cliente para processamento do Account Manager AI.';
