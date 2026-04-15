# n8n Workflow — Benditta Lead Realtime

**Objetivo:** Receber leads do Meta Lead Ads em tempo real, persistir no Supabase e notificar Laís Lima no WhatsApp.

**Flow:** Meta Webhook → n8n → Meta API (buscar dados) → Supabase INSERT → WhatsApp Laís

---

## Pré-requisitos

- n8n rodando em `flow.adventurelabs.com.br`
- Supabase: tabela `adv_meta_leads` criada (migration `20260415100000_adv_meta_leads.sql`)
- Evolution API rodando em `api-wa.adventurelabs.com.br`
- Meta App `757053927263543` com webhook configurado (ver seção abaixo)

---

## Configuração do Webhook Meta

### 1. No Meta for Developers

1. Acesse: `https://developers.facebook.com/apps/757053927263543/webhooks/`
2. Adicione o produto **Webhooks** se não existir
3. Clique em **"Adicionar assinatura"** → campo: `leadgen`
4. URL do callback: `https://flow.adventurelabs.com.br/webhook/benditta-lead`
5. Token de verificação: gerar string aleatória e salvar no Infisical como `META_WEBHOOK_VERIFY_TOKEN`
6. Clique em **Verificar e salvar**

### 2. Assinar a página

```bash
export META_SYSTEM_USER_TOKEN=$(grep META_SYSTEM_USER_TOKEN /opt/adventure-labs/.env | cut -d= -f2)

curl -X POST "https://graph.facebook.com/v20.0/968517269687411/subscribed_apps" \
  -d "subscribed_fields=leadgen" \
  -d "access_token=$META_SYSTEM_USER_TOKEN"
```

---

## Nodes do Workflow n8n

### Node 1: Webhook Trigger
```
Type: Webhook
HTTP Method: POST
Path: /benditta-lead
Authentication: Header Auth
  Header: X-Hub-Signature-256
  Value: verificar com META_WEBHOOK_VERIFY_TOKEN
Response Mode: Immediately
```

### Node 2: Extract Lead ID
```
Type: Set
lead_id: {{ $json.entry[0].changes[0].value.leadgen_id }}
form_id: {{ $json.entry[0].changes[0].value.form_id }}
page_id: {{ $json.entry[0].changes[0].value.page_id }}
ad_id:   {{ $json.entry[0].changes[0].value.ad_id }}
adset_id: {{ $json.entry[0].changes[0].value.adset_id }}
campaign_id: {{ $json.entry[0].changes[0].value.campaign_id }}
ad_name: {{ $json.entry[0].changes[0].value.ad_name }}
```

### Node 3: Fetch Lead Data (HTTP Request)
```
Type: HTTP Request
Method: GET
URL: https://graph.facebook.com/v20.0/{{ $json.lead_id }}
Query Parameters:
  fields: field_data,created_time
  access_token: {{ $env.META_SYSTEM_USER_TOKEN }}
```

### Node 4: Parse Fields
```
Type: Code (JavaScript)
```
```javascript
const fields = {};
for (const f of $input.item.json.field_data) {
  fields[f.name] = f.values[0];
}

const mqlOrcamentos = ['30k_50k', '50k_100k', '100k_200k', 'acima_200k'];
const mqlTickets = ['80k_150k', 'acima_150k'];

const mql = mqlOrcamentos.includes(fields.orcamento) || 
             mqlTickets.includes(fields.ticket_medio);

return [{
  json: {
    client: 'benditta',
    lead_id: $('Extract Lead ID').item.json.lead_id,
    form_id: $('Extract Lead ID').item.json.form_id,
    campaign_id: $('Extract Lead ID').item.json.campaign_id,
    adset_id: $('Extract Lead ID').item.json.adset_id,
    ad_id: $('Extract Lead ID').item.json.ad_id,
    ad_name: $('Extract Lead ID').item.json.ad_name,
    nome: fields.full_name || fields.nome || '',
    email: fields.email || '',
    telefone: fields.phone_number || fields.telefone || '',
    tem_projeto: fields.tem_projeto || null,
    ambientes: fields.ambientes || null,
    orcamento: fields.orcamento || null,
    projetos_por_ano: fields.projetos_por_ano || null,
    ticket_medio: fields.ticket_medio || null,
    mql: mql,
    mql_reason: mql ? 'orcamento_ou_ticket_qualificado' : 'abaixo_threshold',
    raw_data: fields,
  }
}];
```

### Node 5: Supabase Insert
```
Type: HTTP Request
Method: POST
URL: https://<SUPABASE_URL>/rest/v1/adv_meta_leads
Headers:
  apikey: {{ $env.SUPABASE_SERVICE_ROLE_KEY }}
  Authorization: Bearer {{ $env.SUPABASE_SERVICE_ROLE_KEY }}
  Content-Type: application/json
  Prefer: resolution=ignore-duplicates   ← idempotente (lead_id UNIQUE)
Body: {{ $json }}
```

### Node 6: IF MQL
```
Type: IF
Condition: {{ $json.mql }} === true
```

### Node 7a (MQL = true): WhatsApp Laís Lima
```
Type: HTTP Request
Method: POST
URL: https://api-wa.adventurelabs.com.br/message/sendText/benditta
Headers:
  apikey: {{ $env.EVOLUTION_API_KEY }}
Body:
{
  "number": "5551998252983",
  "text": "🔔 *Lead qualificado — Linha Essencial*\n\n*Nome:* {{ $json.nome }}\n*Telefone:* {{ $json.telefone }}\n*Email:* {{ $json.email }}\n*Orçamento:* {{ $json.orcamento }}\n*Ambientes:* {{ $json.ambientes }}\n*Tem projeto:* {{ $json.tem_projeto }}\n*Anúncio:* {{ $json.ad_name }}"
}
```

### Node 7b (MQL = false): Supabase Update (apenas marca notificado=false, sem WA)
```
Type: No Operation (ou apenas log)
Nota: cold leads ficam no Supabase para análise, sem notificação imediata.
```

### Node 8 (após Node 7a): Marcar notificado_wa = true
```
Type: HTTP Request
Method: PATCH
URL: https://<SUPABASE_URL>/rest/v1/adv_meta_leads?lead_id=eq.{{ $json.lead_id }}
Headers: (mesmo do Node 5)
Body: { "notificado_wa": true, "notificado_wa_at": "{{ $now }}" }
```

---

## Variáveis de Ambiente necessárias no n8n

| Variável | Onde buscar |
|----------|-------------|
| `META_SYSTEM_USER_TOKEN` | Infisical `/vps` |
| `SUPABASE_SERVICE_ROLE_KEY` | Infisical `/supabase` |
| `SUPABASE_URL` | Infisical `/supabase` |
| `EVOLUTION_API_KEY` | Infisical `/vps` |
| `META_WEBHOOK_VERIFY_TOKEN` | Gerar e salvar no Infisical |

---

## Teste do Webhook

Meta fornece uma forma de testar via Graph API Explorer:

```bash
# Simular lead via API (substitua FORM_ID pelo form da campanha ativa)
curl -X POST "https://graph.facebook.com/v20.0/1428224111958811/test_lead" \
  -d "access_token=$META_SYSTEM_USER_TOKEN"
```

Isso dispara o webhook com um lead fictício — verifica se o n8n recebe e processa.

---

## Mensagem WA para Laís — Arquitetos

Para o público Arquitetos, o texto muda:

```
🔔 *Lead Arquiteto — Linha Essencial*

*Nome:* {nome}
*Telefone:* {telefone}
*Email:* {email}
*Projetos/ano:* {projetos_por_ano}
*Ticket médio:* {ticket_medio}
*Anúncio:* {ad_name}
```

Implementar detectando via `form_id` ou `ad_name` qual público gerou o lead.
