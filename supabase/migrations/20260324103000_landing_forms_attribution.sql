-- UTM + path attribution for public landing forms (CRM / lead routing / future leadscore)
-- Apply to project linked to adventure site Supabase.

ALTER TABLE public.conversion_forms
  ADD COLUMN IF NOT EXISTS landing_path TEXT,
  ADD COLUMN IF NOT EXISTS page_referrer TEXT,
  ADD COLUMN IF NOT EXISTS utm_source TEXT,
  ADD COLUMN IF NOT EXISTS utm_medium TEXT,
  ADD COLUMN IF NOT EXISTS utm_campaign TEXT,
  ADD COLUMN IF NOT EXISTS utm_content TEXT,
  ADD COLUMN IF NOT EXISTS utm_term TEXT;

ALTER TABLE public.work_with_us_forms
  ADD COLUMN IF NOT EXISTS landing_path TEXT,
  ADD COLUMN IF NOT EXISTS page_referrer TEXT,
  ADD COLUMN IF NOT EXISTS utm_source TEXT,
  ADD COLUMN IF NOT EXISTS utm_medium TEXT,
  ADD COLUMN IF NOT EXISTS utm_campaign TEXT,
  ADD COLUMN IF NOT EXISTS utm_content TEXT,
  ADD COLUMN IF NOT EXISTS utm_term TEXT;

COMMENT ON COLUMN public.conversion_forms.landing_path IS 'Path when attribution was captured (e.g. /landingpage)';
COMMENT ON COLUMN public.conversion_forms.utm_source IS 'Last captured utm_source for this session';
