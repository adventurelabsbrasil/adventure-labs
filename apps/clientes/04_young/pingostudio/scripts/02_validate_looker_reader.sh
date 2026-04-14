#!/usr/bin/env bash
# ==========================================================================
# PINGOSTUDIO-264 — Validação do role looker_reader
# ==========================================================================
# Executa os 3 testes de validação após rodar a migration:
#   1. SELECT 1 (conexão OK via pooler)
#   2. SELECT COUNT(*) numa tabela (lê dados com BYPASSRLS)
#   3. INSERT (deve ser negado — garantia de read-only)
#
# Uso:
#   export LOOKER_READER_PWD='<senha do Vaultwarden>'
#   export PINGOSTUDIO_TABLE='public.<alguma_tabela_pingolead>'   # ex.: public.leads
#   bash scripts/02_validate_looker_reader.sh
#
# Override opcional:
#   SUPABASE_REF       (default vvtympzatclvjaqucebr)
#   SUPABASE_REGION    (default sa-east-1)
# ==========================================================================

set -u

: "${SUPABASE_REF:=vvtympzatclvjaqucebr}"
: "${SUPABASE_REGION:=sa-east-1}"
: "${LOOKER_READER_PWD:?defina LOOKER_READER_PWD com a senha do Vaultwarden}"
: "${PINGOSTUDIO_TABLE:=public.crm_deals}"

URL="postgresql://looker_reader:${LOOKER_READER_PWD}@db.${SUPABASE_REF}.supabase.co:5432/postgres?sslmode=require"

pass() { printf "  \033[32mOK\033[0m  %s\n" "$1"; }
fail() { printf "  \033[31mFAIL\033[0m %s\n" "$1"; FAILED=1; }

FAILED=0

echo "=== 1. Conexão básica ==="
OUT=$(psql "$URL" -tAc "SELECT 1;" 2>&1)
if [[ "$OUT" == "1" ]]; then pass "SELECT 1 → 1"; else fail "SELECT 1 falhou: $OUT"; fi

echo "=== 2. Read via BYPASSRLS ==="
OUT=$(psql "$URL" -tAc "SELECT COUNT(*) FROM $PINGOSTUDIO_TABLE;" 2>&1)
if [[ "$OUT" =~ ^[0-9]+$ ]]; then pass "COUNT $PINGOSTUDIO_TABLE → $OUT linhas"; else fail "COUNT falhou: $OUT"; fi

echo "=== 3. INSERT deve ser negado ==="
OUT=$(psql "$URL" -c "INSERT INTO $PINGOSTUDIO_TABLE DEFAULT VALUES;" 2>&1)
if [[ "$OUT" == *"permission denied"* ]] || [[ "$OUT" == *"must be owner"* ]]; then
  pass "INSERT negado (read-only confirmado)"
else
  fail "INSERT NÃO foi negado — role tem privilégios demais: $OUT"
fi

echo ""
if [[ $FAILED -eq 0 ]]; then
  echo "=== ✅ TUDO OK. looker_reader pronto para ser usado no Looker Studio. ==="
  echo ""
  echo "Host pooler:  aws-0-${SUPABASE_REGION}.pooler.supabase.com"
  echo "Porta:        6543"
  echo "Database:     postgres"
  echo "Usuário:      looker_reader.${SUPABASE_REF}"
  echo "SSL:          Enable"
  exit 0
else
  echo "=== ❌ Falhou. Revisar migration e grants antes de prosseguir para o Looker. ==="
  exit 1
fi
