-- ============================================================
-- Reforço das policies da fila (lower + tolerar auth.jwt null)
-- ============================================================

DROP POLICY IF EXISTS "Usuários enfileiram suas próprias notificações" ON public.adv_time_bank_entry_notifications;
CREATE POLICY "Usuários enfileiram suas próprias notificações" ON public.adv_time_bank_entry_notifications
  FOR INSERT TO authenticated
  WITH CHECK (
    lower(user_email) = lower(COALESCE(auth.jwt() ->> 'email', user_email))
  );

DROP POLICY IF EXISTS "Usuários veem suas próprias notificações" ON public.adv_time_bank_entry_notifications;
CREATE POLICY "Usuários veem suas próprias notificações" ON public.adv_time_bank_entry_notifications
  FOR SELECT TO authenticated
  USING (
    lower(user_email) = lower(COALESCE(auth.jwt() ->> 'email', user_email))
  );

DROP POLICY IF EXISTS "Usuários atualizam suas notificações" ON public.adv_time_bank_entry_notifications;
CREATE POLICY "Usuários atualizam suas notificações" ON public.adv_time_bank_entry_notifications
  FOR UPDATE TO authenticated
  USING (
    lower(user_email) = lower(COALESCE(auth.jwt() ->> 'email', user_email))
  );

