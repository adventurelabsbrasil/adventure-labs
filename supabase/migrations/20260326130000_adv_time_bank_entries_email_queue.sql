-- ============================================================
-- Time Bank (adv_time_bank_entries) -> Enfileirar envio de e-mail
-- ============================================================
-- Objetivo: garantir 1 e-mail por novo INSERT em adv_time_bank_entries
-- (type='clock_in' ou 'clock_out') sem depender de extensões HTTP no Postgres.

CREATE TABLE IF NOT EXISTS public.adv_time_bank_entry_notifications (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id uuid NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  entry_id uuid NOT NULL UNIQUE REFERENCES public.adv_time_bank_entries(id) ON DELETE CASCADE,
  user_email text NOT NULL,
  type text NOT NULL CHECK (type IN ('clock_in', 'clock_out')),
  recorded_at timestamptz NOT NULL,
  location_id uuid NOT NULL,
  note text,
  queued_at timestamptz NOT NULL DEFAULT now(),
  locked_at timestamptz,
  sent_at timestamptz,
  error text
);

CREATE INDEX IF NOT EXISTS idx_adv_time_bank_entry_notifications_lock_queue
  ON public.adv_time_bank_entry_notifications (sent_at, locked_at, queued_at);

ALTER TABLE public.adv_time_bank_entry_notifications ENABLE ROW LEVEL SECURITY;

-- Segurança: usuários só conseguem enfileirar/ler/atualizar itens que pertencem ao SEU e-mail.
-- Observação: se o app inserir `user_email` divergente do e-mail do JWT, o trigger vai falhar.
DROP POLICY IF EXISTS "Usuários enfileiram suas próprias notificações" ON public.adv_time_bank_entry_notifications;
CREATE POLICY "Usuários enfileiram suas próprias notificações" ON public.adv_time_bank_entry_notifications
  FOR INSERT TO authenticated
  WITH CHECK (user_email = (auth.jwt() ->> 'email'));

DROP POLICY IF EXISTS "Usuários veem suas próprias notificações" ON public.adv_time_bank_entry_notifications;
CREATE POLICY "Usuários veem suas próprias notificações" ON public.adv_time_bank_entry_notifications
  FOR SELECT TO authenticated
  USING (lower(user_email) = lower(auth.jwt() ->> 'email'));

DROP POLICY IF EXISTS "Usuários atualizam suas notificações" ON public.adv_time_bank_entry_notifications;
CREATE POLICY "Usuários atualizam suas notificações" ON public.adv_time_bank_entry_notifications
  FOR UPDATE TO authenticated
  USING (lower(user_email) = lower(auth.jwt() ->> 'email'));

-- Trigger: apenas enfileira (não envia e-mail diretamente).
CREATE OR REPLACE FUNCTION public.enqueue_time_bank_entry_email_notification()
RETURNS trigger
LANGUAGE plpgsql
AS $$
BEGIN
  INSERT INTO public.adv_time_bank_entry_notifications (
    tenant_id,
    entry_id,
    user_email,
    type,
    recorded_at,
    location_id,
    note
  ) VALUES (
    NEW.tenant_id,
    NEW.id,
    NEW.user_email,
    NEW.type,
    NEW.recorded_at,
    NEW.location_id,
    NEW.note
  )
  ON CONFLICT (entry_id) DO NOTHING;

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_adv_time_bank_entry_email_queue ON public.adv_time_bank_entries;
CREATE TRIGGER trg_adv_time_bank_entry_email_queue
AFTER INSERT ON public.adv_time_bank_entries
FOR EACH ROW
WHEN (NEW.type IN ('clock_in', 'clock_out'))
EXECUTE FUNCTION public.enqueue_time_bank_entry_email_notification();

