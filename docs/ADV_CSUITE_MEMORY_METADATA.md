# Contrato de `metadata` — `adv_csuite_memory`

Valores recomendados para o campo JSONB `metadata` em `adv_csuite_memory`, alinhados à arquitetura OpenClaw híbrida e ao loop C-Suite.

## Tipos (`metadata.type`)

| `type` | Uso |
|--------|-----|
| `founder_csuite_daily` | Relatório diário consolidado (ex.: resumo WhatsApp/Zazu, ou futuro merge com Second Brain + tasks). |
| `csuite_decision` | Decisão sintetizada pelo Grove após rodada C-Suite (já usado pelo workflow n8n). |
| `founder_log` | Entrada bruta ou semi-estruturada do founder. |
| `consolidated_summary` | Resumo de poda sináptica (workflow Memory Cleanup) — **não apagar** em jobs de limpeza. |

## Campos opcionais (recomendados)

| Campo | Tipo | Descrição |
|-------|------|-----------|
| `date` | string `YYYY-MM-DD` | Dia de referência do conteúdo. |
| `source` | string[] | Origens, ex.: `["zazu_whatsapp"]`, `["asana"]`, `["drive_second_brain"]`, `["manual_founder"]`. |
| `clients` | string[] | Clientes mencionados, ex.: `["Young", "Rose"]`. |
| `founder_report_id` | uuid | Quando o conteúdo espelha um registro em `adv_founder_reports`. |
| `title` | string | Título curto (duplica título do founder report quando aplicável). |

## Exemplo (Zazu)

```json
{
  "type": "founder_csuite_daily",
  "date": "2026-03-16",
  "source": ["zazu_whatsapp"],
  "clients": [],
  "title": "WhatsApp Grupos — resumo 16/03/2026",
  "founder_report_id": "uuid-do-insert-adv_founder_reports"
}
```

## Exemplo (Andon / Asana)

Quando o workflow n8n (fase 2) publicar snapshot diário do Asana via `POST /api/csuite/founder-report`:

```json
{
  "type": "founder_csuite_daily",
  "date": "2026-03-18",
  "source": ["asana"],
  "clients": [],
  "title": "Asana — snapshot diário 18/03/2026",
  "founder_report_id": "uuid-do-insert-adv_founder_reports"
}
```

## Embedding

Entradas criadas via Admin API (ex.: espelho Zazu) podem ter `embedding` **NULL**; o workflow C-Suite já possui fallback quando não há vetor.
