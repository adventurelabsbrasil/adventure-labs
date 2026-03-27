-- Lead tracking/conversion fields for LinkedIn native forms and paid media attribution.
-- Target table in this workspace: public.conversion_forms.

ALTER TABLE public.conversion_forms
  ADD COLUMN IF NOT EXISTS source_channel TEXT,
  ADD COLUMN IF NOT EXISTS source_platform TEXT,
  ADD COLUMN IF NOT EXISTS source_form_id TEXT,
  ADD COLUMN IF NOT EXISTS source_form_name TEXT,
  ADD COLUMN IF NOT EXISTS source_campaign_id TEXT,
  ADD COLUMN IF NOT EXISTS source_adset_id TEXT,
  ADD COLUMN IF NOT EXISTS source_ad_id TEXT,
  ADD COLUMN IF NOT EXISTS gclid TEXT,
  ADD COLUMN IF NOT EXISTS fbclid TEXT,
  ADD COLUMN IF NOT EXISTS linkedin_clid TEXT,
  ADD COLUMN IF NOT EXISTS li_fat_id TEXT,
  ADD COLUMN IF NOT EXISTS external_lead_id TEXT,
  ADD COLUMN IF NOT EXISTS raw_payload JSONB,
  ADD COLUMN IF NOT EXISTS received_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  ADD COLUMN IF NOT EXISTS processing_status TEXT NOT NULL DEFAULT 'received';

COMMENT ON COLUMN public.conversion_forms.source_platform IS 'Traffic/lead platform origin, ex: linkedin, meta, google.';
COMMENT ON COLUMN public.conversion_forms.source_form_id IS 'External platform form id, ex: 1003946029.';
COMMENT ON COLUMN public.conversion_forms.external_lead_id IS 'External unique lead/event id for idempotent ingestion.';
COMMENT ON COLUMN public.conversion_forms.raw_payload IS 'Raw webhook payload as received from ingestion source.';
COMMENT ON COLUMN public.conversion_forms.processing_status IS 'Pipeline status: received, processed, failed.';

CREATE INDEX IF NOT EXISTS idx_conversion_forms_source_platform
  ON public.conversion_forms (source_platform);

CREATE INDEX IF NOT EXISTS idx_conversion_forms_source_form_id
  ON public.conversion_forms (source_form_id);

CREATE INDEX IF NOT EXISTS idx_conversion_forms_source_campaign_id
  ON public.conversion_forms (source_campaign_id);

CREATE INDEX IF NOT EXISTS idx_conversion_forms_source_adset_id
  ON public.conversion_forms (source_adset_id);

CREATE INDEX IF NOT EXISTS idx_conversion_forms_source_ad_id
  ON public.conversion_forms (source_ad_id);

CREATE INDEX IF NOT EXISTS idx_conversion_forms_processing_status
  ON public.conversion_forms (processing_status);

CREATE INDEX IF NOT EXISTS idx_conversion_forms_received_at_desc
  ON public.conversion_forms (received_at DESC);

CREATE INDEX IF NOT EXISTS idx_conversion_forms_gclid
  ON public.conversion_forms (gclid);

CREATE INDEX IF NOT EXISTS idx_conversion_forms_fbclid
  ON public.conversion_forms (fbclid);

CREATE INDEX IF NOT EXISTS idx_conversion_forms_linkedin_clid
  ON public.conversion_forms (linkedin_clid);

CREATE INDEX IF NOT EXISTS idx_conversion_forms_li_fat_id
  ON public.conversion_forms (li_fat_id);

CREATE INDEX IF NOT EXISTS idx_conversion_forms_external_lead_id
  ON public.conversion_forms (external_lead_id);

-- Idempotency guard for platform-native lead ids.
CREATE UNIQUE INDEX IF NOT EXISTS uq_conversion_forms_platform_form_external_lead
  ON public.conversion_forms (source_platform, source_form_id, external_lead_id)
  WHERE external_lead_id IS NOT NULL
    AND source_platform IS NOT NULL
    AND source_form_id IS NOT NULL;
