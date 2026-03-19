-- Corrige brecha crítica de integridade:
-- a policy anterior permitia UPDATE irrestrito em adv_time_bank_entries.
-- Com esta regra, cada usuário autenticado só pode editar os próprios registros.

DROP POLICY IF EXISTS "Admins podem atualizar registros" ON public.adv_time_bank_entries;

CREATE POLICY "Usuário atualiza apenas o próprio ponto"
  ON public.adv_time_bank_entries
  FOR UPDATE
  TO authenticated
  USING (user_email = (auth.jwt() ->> 'email'))
  WITH CHECK (user_email = (auth.jwt() ->> 'email'));
