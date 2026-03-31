# Guia — LinkedIn -> Supabase (n8n 1.5.1)

Este guia é a referência prática para configurar a automação de lead do LinkedIn no **n8n 1.5.1** sem conflito com versões antigas.

## Objetivo

Receber lead no webhook do n8n e encaminhar para a Edge Function canônica do Supabase (`linkedin-native-lead-submit`), gravando em `conversion_forms` e refletindo no CRM.

---

## 1) Pré-requisitos

- n8n online em `https://n8n.adventurelabs.com.br`
- Secrets no serviço n8n (Coolify):
  - `LINKEDIN_EDGE_FUNCTION_URL=https://<PROJECT_REF>.supabase.co/functions/v1/linkedin-native-lead-submit`
  - `LINKEDIN_WEBHOOK_SECRET=<SEGREDO_DA_EDGE_FUNCTION>`
  - `SUPABASE_ANON_KEY=<SUPABASE_ANON_KEY>`
- Workflow antigo funcional para usar como base (recomendado: `...submit final`)

---

## 2) Estratégia recomendada no n8n 1.5.1

No n8n 1.5.1, o mais estável é **duplicar um workflow já funcional** e ajustar apenas nome/path.

1. Abra: `ADV LinkedIn Native Form -> Supabase (n8n v1 submit final)`
2. Clique em **Duplicate** (ou Save as New)
3. Renomeie para:
   - `ADV LinkedIn Native Form -> Supabase (n8n v2 canonical)`
4. No node **Webhook LinkedIn Lead**:
   - HTTP Method: `POST`
   - Path: `adv-linkedin-native-form-v2`
   - Response: `Using "Respond to Webhook" Node`
5. Salve e ative.

> Mantenha somente 1 fluxo canônico ativo para evitar confusão de rota.

---

## 3) Estrutura dos nós (canônica)

Ordem:

1. `Webhook LinkedIn Lead`
2. `Normalize Payload` (Function ou Code, conforme versão do nó no seu n8n)
3. `POST Edge Function` (HTTP Request)
4. `Respond` (Respond to Webhook)

### 3.1 Normalize Payload (JS)

Use este código no node de normalização:

```javascript
const body = $json.body ?? $json;
const lead = body.lead ?? body;

return [{
  json: {
    lead_id: lead.id ?? lead.lead_id ?? null,
    form_id: lead.form_id ?? '1003946029',
    form_name: lead.form_name ?? null,
    campaign_id: lead.campaign_id ?? null,
    adset_id: lead.adset_id ?? null,
    ad_id: lead.ad_id ?? null,
    source_platform: 'linkedin',
    source_channel: 'paid-social',
    linkedin_clid: lead.linkedin_clid ?? null,
    li_fat_id: lead.li_fat_id ?? null,
    gclid: lead.gclid ?? null,
    fbclid: lead.fbclid ?? null,
    utm_source: lead.utm_source ?? null,
    utm_medium: lead.utm_medium ?? null,
    utm_campaign: lead.utm_campaign ?? null,
    utm_content: lead.utm_content ?? null,
    utm_term: lead.utm_term ?? null,
    full_name: lead.full_name ?? lead.name ?? null,
    first_name: lead.first_name ?? null,
    last_name: lead.last_name ?? null,
    email: lead.email ?? null,
    phone: lead.phone ?? null,
    role: lead.role ?? null,
    company_name: lead.company_name ?? null,
    message: lead.message ?? null
  }
}];
```

### 3.2 POST Edge Function (HTTP Request)

- Method: `POST`
- URL: `={{ $env.LINKEDIN_EDGE_FUNCTION_URL }}`
- Send Headers: `true`
- Headers:
  - `Content-Type: application/json`
  - `x-webhook-secret: ={{ $env.LINKEDIN_WEBHOOK_SECRET }}`
  - `apikey: ={{ $env.SUPABASE_ANON_KEY }}`
  - `Authorization: ={{ 'Bearer ' + $env.SUPABASE_ANON_KEY }}`
- Body JSON: `={{ JSON.stringify($json) }}`

### 3.3 Respond to Webhook

- Respond With: `JSON`
- Response Body: `={{ $json }}`

---

## 4) URL de produção

Após salvar e ativar, copie a **Production URL** do node Webhook.

Formato esperado:

`https://n8n.adventurelabs.com.br/webhook/<id>/<path>/adv-linkedin-native-form-v2`

Use exatamente a URL exibida pelo node (não montar manualmente).

---

## 5) Teste ponta a ponta

### 5.1 Teste técnico via curl

```bash
curl -X POST "https://n8n.adventurelabs.com.br/webhook/SEU_PATH_V2_AQUI" \
  -H "Content-Type: application/json" \
  -d '{
    "lead_id": "lnk-live-check-v2-01",
    "form_id": "1003946029",
    "form_name": "Martech MVP Lead Gen",
    "source_platform": "linkedin",
    "source_channel": "paid-social",
    "full_name": "Lead Teste V2",
    "email": "lead.teste.v2@adventurelabs.com.br",
    "company_name": "Adventure Labs"
  }'
```

### 5.2 Validação no banco (Supabase)

```sql
select id, created_at, source_platform, source_form_id, external_lead_id, processing_status, name, email
from public.conversion_forms
where source_platform = 'linkedin'
  and source_form_id = '1003946029'
order by created_at desc
limit 20;
```

Critério de aprovação:

- novo registro com `external_lead_id = lnk-live-check-v2-01`
- `source_platform='linkedin'`
- status de processamento coerente

---

## 6) Troubleshooting rápido

### 404 webhook not registered

- Workflow não está ativo em produção
- path mudou e URL antiga ficou inválida
- múltiplos workflows com confusão de rota

Ação:

1. OFF -> Save -> ON -> Save no workflow canônico
2. Copiar novamente a Production URL
3. Testar de novo

### 401/403 no POST Edge Function

- `LINKEDIN_WEBHOOK_SECRET` incorreto
- `SUPABASE_ANON_KEY` incorreta

### Duplicidade de leads

- valide idempotência por `source_platform + source_form_id + external_lead_id`

---

## 7) Operação recomendada

- Deixar ativo apenas:
  - `ADV LinkedIn Native Form -> Supabase (n8n v2 canonical)`
- Desativar versões antigas após confirmação do E2E.
- Registrar qualquer mudança de path/URL neste diretório.

