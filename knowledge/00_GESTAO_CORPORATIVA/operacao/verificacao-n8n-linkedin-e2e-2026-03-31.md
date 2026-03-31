---
title: Verificação n8n + LinkedIn E2E (2026-03-31)
domain: gestao_corporativa
tags: [n8n, linkedin, crm, supabase, validacao, operacao]
updated: 2026-03-31
owner: Torvalds (CTO)
status: ativo
---

# Verificação n8n + LinkedIn E2E (2026-03-31)

Objetivo: deixar registrado o estado atual do n8n em produção e validar o fluxo LinkedIn Native Form -> n8n -> Edge Function -> CRM (Supabase `conversion_forms`).

## 1) Resultado rápido

- **n8n (produção):** estável no domínio (`200` em 5 sondagens consecutivas).
- **Webhook de produção do fluxo LinkedIn (`/webhook/adv-linkedin-native-form`):** **não registrado** no momento da validação.
- **E2E no CRM:** sem novo lead via n8n nesta execução (porque o webhook não estava ativo/registrado).
- **Último lead LinkedIn confirmado no banco (form 1003946029):** `2026-03-27` (`external_lead_id=lnk-test-1003946029-001`).

## 2) Evidências coletadas

### 2.1 Estabilidade do n8n

Comando executado:

```bash
for i in 1 2 3 4 5; do code=$(curl -s -o /dev/null -w "%{http_code}" --max-time 8 https://n8n.adventurelabs.com.br); echo "check_$i:$code"; sleep 2; done
```

Saída:

- `check_1:200`
- `check_2:200`
- `check_3:200`
- `check_4:200`
- `check_5:200`

### 2.2 Teste no webhook n8n do fluxo LinkedIn

Comando executado (payload sintético):

```bash
curl -X POST "https://n8n.adventurelabs.com.br/webhook/adv-linkedin-native-form" \
  -H "Content-Type: application/json" \
  -d '{"lead_id":"lnk-live-check-20260331-01","form_id":"1003946029","source_platform":"linkedin"}'
```

Resposta:

```json
{
  "code": 404,
  "message": "The requested webhook \"POST adv-linkedin-native-form\" is not registered.",
  "hint": "The workflow must be active for a production URL to run successfully..."
}
```

Interpretação: o workflow correspondente não estava com URL de produção ativa/registrada no n8n nesse momento.

### 2.3 Validação no Supabase (`conversion_forms`)

Projeto verificado: `ftctmseyrqhckutpfdeq` (`adventurelabsbrasil`).

Query executada:

```sql
select id, created_at, source_platform, source_form_id, external_lead_id, processing_status, name, email
from public.conversion_forms
where source_platform = 'linkedin'
  and source_form_id = '1003946029'
order by created_at desc
limit 10;
```

Resultado relevante:

- `id=16`
- `created_at=2026-03-27 15:36:14+00`
- `external_lead_id=lnk-test-1003946029-001`
- `processing_status=received`

Sem novo registro do teste `lnk-live-check-20260331-01` (coerente com webhook 404 no n8n).

## 3) O que falta para fechar E2E de ponta a ponta

1. No n8n, garantir que o workflow `ADV LinkedIn Native Form -> Supabase` está **ativo** e com webhook de produção registrado.
2. Repetir o POST sintético em `/webhook/adv-linkedin-native-form` e esperar `200`/resposta do fluxo.
3. Confirmar novo registro em `conversion_forms` com o `external_lead_id` do teste.
4. Validar no Admin (CRM) a visualização desse lead nas telas operacionais.

## 4) Comandos prontos para revalidação

```bash
# 1) saúde do n8n
curl -I https://n8n.adventurelabs.com.br

# 2) teste webhook n8n
curl -X POST "https://n8n.adventurelabs.com.br/webhook/adv-linkedin-native-form" \
  -H "Content-Type: application/json" \
  -d '{
    "lead_id":"lnk-live-check-20260331-02",
    "form_id":"1003946029",
    "form_name":"Martech MVP Lead Gen",
    "source_platform":"linkedin",
    "source_channel":"paid-social",
    "full_name":"Lead Verificacao E2E",
    "email":"lead.e2e.linkedin@adventurelabs.com.br"
  }'
```

```sql
-- 3) confirmar no banco
select id, created_at, source_platform, source_form_id, external_lead_id, processing_status, name, email
from public.conversion_forms
where source_platform = 'linkedin'
  and source_form_id = '1003946029'
order by created_at desc
limit 20;
```

## 5) Referências

- `workflows/n8n/linkedin/adv-linkedin-native-form-webhook-to-supabase.json`
- `workflows/n8n/linkedin/CHECKLIST_OPERADOR_REATIVACAO_N8N_LINKEDIN.md`
- `docs/revisao-asana/linkedin-form-1003946029-validacao-e2e.md`
