-- LP MarTech ICP: explicit source + segment column; fix RLS so anon can INSERT and CRM users can SELECT.

ALTER TABLE public.conversion_forms
  ADD COLUMN IF NOT EXISTS form_source TEXT,
  ADD COLUMN IF NOT EXISTS company_segment TEXT;

COMMENT ON COLUMN public.conversion_forms.form_source IS 'Stable key: martech-icp, conversion (modal), etc.';
COMMENT ON COLUMN public.conversion_forms.company_segment IS 'Vertical/segment from LP; role column holds job title.';

ALTER TABLE public.conversion_forms ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS conversion_forms_anon_insert ON public.conversion_forms;
CREATE POLICY conversion_forms_anon_insert ON public.conversion_forms
  FOR INSERT
  TO anon
  WITH CHECK (true);

DROP POLICY IF EXISTS conversion_forms_authenticated_select ON public.conversion_forms;
CREATE POLICY conversion_forms_authenticated_select ON public.conversion_forms
  FOR SELECT
  TO authenticated
  USING (true);
