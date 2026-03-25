-- Allow inserts from authenticated sessions on public landings.
-- Needed because some browser sessions may carry auth and bypass anon role.

DROP POLICY IF EXISTS conversion_forms_authenticated_insert ON public.conversion_forms;
CREATE POLICY conversion_forms_authenticated_insert ON public.conversion_forms
  FOR INSERT
  TO authenticated
  WITH CHECK (true);
