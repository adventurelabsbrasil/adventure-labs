#!/usr/bin/env bash
# meta_weekly_kpis.sh — KPIs semanais Meta + leads para enriquecer agentes VPS
#
# Uso:
#   ./meta_weekly_kpis.sh benditta           # últimos 7 dias
#   ./meta_weekly_kpis.sh benditta --days 14 # últimos 14 dias
#
# Output: JSON com métricas para injetar no prompt do agente
# Dependências: curl, jq (apt install jq), META_SYSTEM_USER_TOKEN, SUPABASE_*
#
# Exemplo de uso no gerente-benditta:
#   KPIS=$(./scripts/agents/utils/meta_weekly_kpis.sh benditta)
#   CONTEXTO="$CONTEXTO\n\nKPIs Meta semana:\n$KPIS"

set -euo pipefail

CLIENT="${1:-benditta}"
DAYS="${3:-7}"  # suporta --days N como terceiro arg

# ── IDs por cliente ───────────────────────────────────────────────────────────
case "$CLIENT" in
  benditta)
    CAMPAIGN_ID="120241798663620353"
    AD_ACCOUNT="act_763660518134498"
    SUPABASE_TABLE="adv_meta_leads"
    ;;
  young)
    CAMPAIGN_ID="${YOUNG_CAMPAIGN_ID:-}"
    AD_ACCOUNT="${YOUNG_AD_ACCOUNT:-}"
    SUPABASE_TABLE="adv_meta_leads"
    ;;
  rose)
    CAMPAIGN_ID="${ROSE_CAMPAIGN_ID:-}"
    AD_ACCOUNT="${ROSE_AD_ACCOUNT:-}"
    SUPABASE_TABLE="adv_meta_leads"
    ;;
  *)
    echo "Cliente inválido: $CLIENT. Use: benditta | young | rose" >&2
    exit 1
    ;;
esac

# ── Variáveis de ambiente ─────────────────────────────────────────────────────
META_TOKEN="${META_SYSTEM_USER_TOKEN:-$(grep META_SYSTEM_USER_TOKEN /opt/adventure-labs/.env 2>/dev/null | cut -d= -f2)}"
SUPA_URL="${SUPABASE_URL:-}"
SUPA_KEY="${SUPABASE_SERVICE_ROLE_KEY:-}"

if [[ -z "$META_TOKEN" ]]; then
  echo '{"erro": "META_SYSTEM_USER_TOKEN não definido"}' && exit 1
fi

# ── Meta Insights ─────────────────────────────────────────────────────────────
META_BASE="https://graph.facebook.com/v20.0"

if [[ -n "$CAMPAIGN_ID" ]]; then
  META_RESP=$(curl -s "${META_BASE}/${CAMPAIGN_ID}/insights" \
    --data-urlencode "fields=spend,impressions,reach,clicks,actions" \
    --data-urlencode "date_preset=last_${DAYS}_d" \
    --data-urlencode "access_token=${META_TOKEN}" \
    -G)

  SPEND=$(echo "$META_RESP"    | jq -r '.data[0].spend // "0"')
  IMPRESSIONS=$(echo "$META_RESP" | jq -r '.data[0].impressions // "0"')
  CLICKS=$(echo "$META_RESP"   | jq -r '.data[0].clicks // "0"')

  # Extrair leads do array de actions
  LEADS_META=$(echo "$META_RESP" | jq -r '
    (.data[0].actions // [])
    | map(select(.action_type == "onsite_conversion.lead_grouped" or .action_type == "leadgen_grouped"))
    | .[0].value // "0"
  ')

  CPL=$(echo "$SPEND $LEADS_META" | awk '{if ($2 > 0) printf "%.2f", $1/$2; else print "—"}')
else
  SPEND="—"; IMPRESSIONS="—"; CLICKS="—"; LEADS_META="—"; CPL="—"
fi

# ── Supabase — leads individuais ──────────────────────────────────────────────
if [[ -n "$SUPA_URL" && -n "$SUPA_KEY" ]]; then
  CUTOFF=$(date -u -d "${DAYS} days ago" +%Y-%m-%dT%H:%M:%SZ 2>/dev/null || \
           date -u -v-${DAYS}d +%Y-%m-%dT%H:%M:%SZ)  # GNU date vs BSD date

  SUPA_RESP=$(curl -s "${SUPA_URL}/rest/v1/${SUPABASE_TABLE}" \
    -H "apikey: ${SUPA_KEY}" \
    -H "Authorization: Bearer ${SUPA_KEY}" \
    -G \
    --data-urlencode "select=id,mql,notificado_wa" \
    --data-urlencode "client=eq.${CLIENT}" \
    --data-urlencode "created_at=gte.${CUTOFF}")

  LEADS_DB=$(echo "$SUPA_RESP"    | jq 'length')
  LEADS_MQL=$(echo "$SUPA_RESP"   | jq '[.[] | select(.mql == true)] | length')
  LEADS_COLD=$(echo "$SUPA_RESP"  | jq '[.[] | select(.mql == false)] | length')
  LEADS_WA=$(echo "$SUPA_RESP"    | jq '[.[] | select(.notificado_wa == true)] | length')
else
  LEADS_DB="—"; LEADS_MQL="—"; LEADS_COLD="—"; LEADS_WA="—"
fi

# ── Output JSON ───────────────────────────────────────────────────────────────
jq -n \
  --arg client    "$CLIENT" \
  --arg days      "$DAYS" \
  --arg spend     "$SPEND" \
  --arg impressions "$IMPRESSIONS" \
  --arg clicks    "$CLICKS" \
  --arg leads_meta "$LEADS_META" \
  --arg cpl       "$CPL" \
  --arg leads_db  "$LEADS_DB" \
  --arg leads_mql "$LEADS_MQL" \
  --arg leads_cold "$LEADS_COLD" \
  --arg leads_wa  "$LEADS_WA" \
  '{
    cliente:     $client,
    periodo_dias: ($days | tonumber),
    meta: {
      investido_brl: $spend,
      impressoes:    $impressions,
      cliques:       $clicks,
      leads:         $leads_meta,
      cpl_brl:       $cpl
    },
    supabase: {
      leads_captados: $leads_db,
      mql:            $leads_mql,
      cold:           $leads_cold,
      notificado_wa:  $leads_wa
    }
  }'
