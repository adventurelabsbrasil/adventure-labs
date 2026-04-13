#!/usr/bin/env bash
# ==========================================================================
# PINGOSTUDIO-264 — Helper de conexão ao Supabase Pingolead
# ==========================================================================
# Tenta a conexão direta (IPv6) primeiro e cai pro pooler (IPv4) se falhar.
# Exporta a conexão que funcionou em PINGOSTUDIO_CONN_URL.
#
# Uso:
#   source scripts/00_connect.sh           # só define PINGOSTUDIO_CONN_URL
#   bash scripts/00_connect.sh             # testa e printa qual conexão rolou
#
# Variáveis que aceitam override:
#   SUPABASE_REF       (default vvtympzatclvjaqucebr)
#   SUPABASE_DB_PWD    (default lg9S6Iz8y4LKSjxu — senha do postgres superuser)
#   SUPABASE_REGION    (default sa-east-1 — confirmar em Settings → Database)
# ==========================================================================

set -u

: "${SUPABASE_REF:=vvtympzatclvjaqucebr}"
: "${SUPABASE_DB_PWD:=lg9S6Iz8y4LKSjxu}"
: "${SUPABASE_REGION:=sa-east-1}"

DIRECT_URL="postgresql://postgres:${SUPABASE_DB_PWD}@db.${SUPABASE_REF}.supabase.co:5432/postgres?sslmode=require"
POOLER_URL="postgresql://postgres.${SUPABASE_REF}:${SUPABASE_DB_PWD}@aws-0-${SUPABASE_REGION}.pooler.supabase.com:6543/postgres?sslmode=require"

# Testa conexão silenciosamente
_try() {
  local url="$1"
  psql "$url" -c 'SELECT 1;' >/dev/null 2>&1
}

if _try "$DIRECT_URL"; then
  export PINGOSTUDIO_CONN_URL="$DIRECT_URL"
  echo "OK: direct (db.${SUPABASE_REF}.supabase.co:5432)"
elif _try "$POOLER_URL"; then
  export PINGOSTUDIO_CONN_URL="$POOLER_URL"
  echo "OK: pooler (aws-0-${SUPABASE_REGION}.pooler.supabase.com:6543)"
else
  echo "ERRO: nenhuma das conexões funcionou."
  echo "  - direct: $DIRECT_URL"
  echo "  - pooler: $POOLER_URL"
  echo ""
  echo "Se 'Temporary failure in name resolution', checar DNS / egress."
  echo "Se 'password authentication failed', confirmar SUPABASE_DB_PWD."
  echo "Se pooler em outra região, trocar SUPABASE_REGION (ex.: us-east-1)."
  return 1 2>/dev/null || exit 1
fi
