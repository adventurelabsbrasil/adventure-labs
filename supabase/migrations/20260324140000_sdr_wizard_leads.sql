-- Wizard SDR leads (MVP V1)
-- Multi-tenant table with strict RLS.

CREATE TABLE IF NOT EXISTS public.sdr_wizard_leads (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tenant_id UUID NOT NULL,
  source_page TEXT NOT NULL,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  phone TEXT NOT NULL,
  role TEXT NOT NULL,
  monthly_revenue TEXT NOT NULL,
  current_challenge TEXT NOT NULL,
  company_website TEXT,
  data_consent BOOLEAN NOT NULL DEFAULT false,
  score INTEGER NOT NULL DEFAULT 0,
  qualification_tier TEXT NOT NULL CHECK (qualification_tier IN ('A', 'B', 'C')),
  qualification_label TEXT NOT NULL,
  tags TEXT[] NOT NULL DEFAULT '{}',
  conversation_log JSONB NOT NULL DEFAULT '{}'::jsonb,
  source TEXT NOT NULL DEFAULT 'martech-wizard',
  landing_path TEXT,
  page_referrer TEXT,
  utm_source TEXT,
  utm_medium TEXT,
  utm_campaign TEXT,
  utm_content TEXT,
  utm_term TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_sdr_wizard_leads_tenant_id ON public.sdr_wizard_leads (tenant_id);
CREATE INDEX IF NOT EXISTS idx_sdr_wizard_leads_created_at ON public.sdr_wizard_leads (created_at DESC);
CREATE INDEX IF NOT EXISTS idx_sdr_wizard_leads_score ON public.sdr_wizard_leads (score DESC);

ALTER TABLE public.sdr_wizard_leads ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS sdr_wizard_leads_select ON public.sdr_wizard_leads;
CREATE POLICY sdr_wizard_leads_select ON public.sdr_wizard_leads
FOR SELECT TO authenticated
USING (
  tenant_id IN (
    SELECT m.tenant_id
    FROM public.adv_org_members m
    WHERE m.user_email = public.auth_user_email()
  )
);

DROP POLICY IF EXISTS sdr_wizard_leads_insert ON public.sdr_wizard_leads;
CREATE POLICY sdr_wizard_leads_insert ON public.sdr_wizard_leads
FOR INSERT TO authenticated
WITH CHECK (
  tenant_id IN (
    SELECT m.tenant_id
    FROM public.adv_org_members m
    WHERE m.user_email = public.auth_user_email()
  )
);

DROP POLICY IF EXISTS sdr_wizard_leads_update ON public.sdr_wizard_leads;
CREATE POLICY sdr_wizard_leads_update ON public.sdr_wizard_leads
FOR UPDATE TO authenticated
USING (
  tenant_id IN (
    SELECT m.tenant_id
    FROM public.adv_org_members m
    WHERE m.user_email = public.auth_user_email()
  )
)
WITH CHECK (
  tenant_id IN (
    SELECT m.tenant_id
    FROM public.adv_org_members m
    WHERE m.user_email = public.auth_user_email()
  )
);

DROP POLICY IF EXISTS sdr_wizard_leads_delete ON public.sdr_wizard_leads;
CREATE POLICY sdr_wizard_leads_delete ON public.sdr_wizard_leads
FOR DELETE TO authenticated
USING (
  tenant_id IN (
    SELECT m.tenant_id
    FROM public.adv_org_members m
    WHERE m.user_email = public.auth_user_email()
  )
);

CREATE OR REPLACE FUNCTION public.touch_sdr_wizard_leads_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trg_touch_sdr_wizard_leads_updated_at ON public.sdr_wizard_leads;
CREATE TRIGGER trg_touch_sdr_wizard_leads_updated_at
BEFORE UPDATE ON public.sdr_wizard_leads
FOR EACH ROW
EXECUTE FUNCTION public.touch_sdr_wizard_leads_updated_at();
