# Validação E2E — LinkedIn Native Form 1003946029

## Pré-requisitos

- Migration aplicada:
  - `supabase/migrations/20260327143000_prepare_conversion_forms_lead_tracking_linkedin.sql`
- Edge Function publicada:
  - `linkedin-native-lead-submit`
- Secrets configurados:
  - `LINKEDIN_WEBHOOK_SECRET`
  - `SUPABASE_SERVICE_ROLE_KEY`

## Teste técnico (simulação do evento)

Use o endpoint da function publicada:

```bash
curl -X POST "https://<PROJECT-REF>.supabase.co/functions/v1/linkedin-native-lead-submit" \
  -H "Content-Type: application/json" \
  -H "x-webhook-secret: <LINKEDIN_WEBHOOK_SECRET>" \
  -d '{
    "lead_id": "lnk-test-1003946029-001",
    "form_id": "1003946029",
    "form_name": "Martech MVP Lead Gen",
    "campaign_id": "cmp-778899",
    "adset_id": "adset-556677",
    "ad_id": "ad-998877",
    "source_platform": "linkedin",
    "source_channel": "paid-social",
    "linkedin_clid": "clid-abc123",
    "li_fat_id": "fat-xyz456",
    "utm_source": "linkedin",
    "utm_medium": "cpc",
    "utm_campaign": "mvp-martech",
    "utm_content": "creative-a",
    "utm_term": "leadgen",
    "full_name": "Lead Teste LinkedIn",
    "email": "lead.linkedin.teste@adventurelabs.com.br",
    "phone": "51999999999",
    "role": "CMO",
    "company_name": "Adventure Labs",
    "message": "Teste E2E LinkedIn native form"
  }'
```

## Validação no banco

```sql
select
  id,
  created_at,
  source_platform,
  source_form_id,
  source_campaign_id,
  source_adset_id,
  source_ad_id,
  linkedin_clid,
  li_fat_id,
  processing_status,
  external_lead_id
from public.conversion_forms
where source_platform = 'linkedin'
  and source_form_id = '1003946029'
order by created_at desc
limit 20;
```

## Critérios de aprovação

- Registro criado com:
  - `source_platform = 'linkedin'`
  - `source_form_id = '1003946029'`
- `li_fat_id` e/ou `linkedin_clid` preenchidos quando enviados.
- Lead visível em `/marketing/landing-leads` com filtros por plataforma/form/campanha/anúncio.
- Reenvio com mesmo `lead_id` não duplica (idempotência por `source_platform + source_form_id + external_lead_id`).
