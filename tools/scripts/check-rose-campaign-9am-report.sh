#!/usr/bin/env bash
set -euo pipefail

ROOT="/Users/ribasrodrigo91/Documents/GitHub/01_ADVENTURE_LABS"
OUT_DIR="$ROOT/docs/google-ads/reports"
CAMPAIGN_ID="23689157956"

mkdir -p "$OUT_DIR"

STAMP="$(date '+%Y-%m-%d_%H-%M-%S')"
OUT_FILE="$OUT_DIR/rose-campaign-check-$STAMP.md"

{
  echo "# Relatório automático — Rose Google Ads"
  echo
  echo "- Data/hora: $(date '+%Y-%m-%d %H:%M:%S %z')"
  echo "- Campanha monitorada: \`$CAMPAIGN_ID\`"
  echo
  echo "## Diagnóstico completo (CLI)"
  echo
  echo '```'
  infisical run --env=dev --path=/admin -- \
    pnpm --filter adventure-labs-admin exec node scripts/diag-rose-campaign.mjs "$CAMPAIGN_ID"
  echo '```'
  echo
  echo "## Resumo rápido (últimos 1 e 7 dias)"
  echo
  echo '```'
  infisical run --env=dev --path=/admin -- pnpm --filter adventure-labs-admin exec node --input-type=module -e '
import { GoogleAdsApi } from "google-ads-api";
const must=(n)=>{const v=process.env[n]; if(!v) throw new Error("Missing "+n); return v;};
const customerId=must("GOOGLE_ADS_CUSTOMER_ID").replace(/-/g,"");
const api=new GoogleAdsApi({
  client_id:must("GOOGLE_ADS_CLIENT_ID"),
  client_secret:must("GOOGLE_ADS_CLIENT_SECRET"),
  developer_token:must("GOOGLE_ADS_DEVELOPER_TOKEN")
});
const customer=api.Customer({ customer_id:customerId, refresh_token:must("GOOGLE_ADS_REFRESH_TOKEN") });
const id=23689157956;
const q1=await customer.query(`SELECT campaign.id, metrics.impressions, metrics.clicks, metrics.cost_micros, metrics.conversions FROM campaign WHERE campaign.id = ${id} AND segments.date DURING YESTERDAY`);
const q7=await customer.query(`SELECT campaign.id, metrics.impressions, metrics.clicks, metrics.cost_micros, metrics.conversions, metrics.search_impression_share FROM campaign WHERE campaign.id = ${id} AND segments.date DURING LAST_7_DAYS`);
console.log(JSON.stringify({ yesterday:q1, last7days:q7 }, null, 2));
'
  echo '```'
} > "$OUT_FILE"

echo "Relatório gerado em: $OUT_FILE"
