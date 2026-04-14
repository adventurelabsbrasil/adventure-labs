#!/usr/bin/env bash
# ==========================================================================
# PINGOSTUDIO-264 — Diagnóstico do POOLER para looker_reader
# ==========================================================================
# O Buzz validou SELECT/INSERT via direct IPv6 (porta 5432), mas o Looker
# Studio roda no GCP e frequentemente falha em IPv6. O POOLER IPv4 (6543)
# é a rota canônica para BI externo. Este script testa o pooler com
# verbose e captura o erro exato.
#
# Uso:
#   export LOOKER_READER_PWD='<senha_looker_reader>'
#   bash scripts/99_pooler_diagnose.sh
# ==========================================================================

set -u

: "${SUPABASE_REF:=vvtympzatclvjaqucebr}"
: "${SUPABASE_REGION:=sa-east-1}"
: "${SUPABASE_SUPERUSER_PWD:=lg9S6Iz8y4LKSjxu}"
: "${LOOKER_READER_PWD:?defina LOOKER_READER_PWD com a senha do looker_reader}"

POOLER_HOST="aws-0-${SUPABASE_REGION}.pooler.supabase.com"
DIRECT_HOST="db.${SUPABASE_REF}.supabase.co"

hr() { printf "\n\033[1;34m=== %s ===\033[0m\n" "$1"; }
ok() { printf "  \033[32mOK\033[0m  %s\n" "$1"; }
bad() { printf "  \033[31mFAIL\033[0m %s\n" "$1"; }
info() { printf "  \033[33mINFO\033[0m %s\n" "$1"; }

hr "1. POOLER transaction (6543) com postgres — baseline"
# Testa que o pooler em si está OK com a role built-in
POSTGRES_POOLER="postgresql://postgres.${SUPABASE_REF}:${SUPABASE_SUPERUSER_PWD}@${POOLER_HOST}:6543/postgres?sslmode=require"
OUT=$(PGCONNECT_TIMEOUT=10 psql "$POSTGRES_POOLER" -tAc "SELECT current_user;" 2>&1)
if [[ "$OUT" == "postgres" ]]; then
  ok "pooler responde com postgres → transaction (6543) está saudável"
else
  bad "pooler falha até com postgres — problema maior"
  echo "$OUT" | sed 's/^/       /'
fi

hr "2. POOLER transaction (6543) com looker_reader — o que interessa"
LR_POOLER="postgresql://looker_reader.${SUPABASE_REF}:${LOOKER_READER_PWD}@${POOLER_HOST}:6543/postgres?sslmode=require"
OUT=$(PGCONNECT_TIMEOUT=10 psql "$LR_POOLER" -tAc "SELECT current_user;" 2>&1)
if [[ "$OUT" == "looker_reader" ]]; then
  ok "pooler reconheceu looker_reader → Looker Studio OK"
  export POOLER_WORKS=1
else
  bad "pooler NÃO reconhece looker_reader — este é o bloqueador da Fase 4"
  echo "       Erro completo:"
  echo "$OUT" | sed 's/^/       /'
  export POOLER_WORKS=0
fi

hr "3. POOLER session (5432 do mesmo host pooler) com looker_reader"
# Supabase também expõe session pooler na porta 5432 do host pooler (não confundir com direct IPv6)
LR_SESSION_POOLER="postgresql://looker_reader.${SUPABASE_REF}:${LOOKER_READER_PWD}@${POOLER_HOST}:5432/postgres?sslmode=require"
OUT=$(PGCONNECT_TIMEOUT=10 psql "$LR_SESSION_POOLER" -tAc "SELECT current_user;" 2>&1)
if [[ "$OUT" == "looker_reader" ]]; then
  ok "session pooler funciona — usar porta 5432 do pooler host no Looker"
  info "URL p/ Looker Studio: host=${POOLER_HOST} porta=5432 user=looker_reader.${SUPABASE_REF}"
else
  bad "session pooler também falhou:"
  echo "$OUT" | sed 's/^/       /'
fi

hr "4. Direct IPv6 (fallback) com looker_reader"
LR_DIRECT="postgresql://looker_reader:${LOOKER_READER_PWD}@${DIRECT_HOST}:5432/postgres?sslmode=require"
OUT=$(PGCONNECT_TIMEOUT=10 psql "$LR_DIRECT" -tAc "SELECT current_user;" 2>&1)
if [[ "$OUT" == "looker_reader" ]]; then
  ok "direct IPv6 OK — verificar se Looker consegue IPv6 no GCP (raro)"
else
  bad "direct IPv6 falha:"
  echo "$OUT" | sed 's/^/       /'
fi

hr "5. Como a role foi criada — hash de senha"
# Supabase Supavisor (pooler) usa SCRAM-SHA-256 por default. MD5 quebra.
PG_DIRECT_ADMIN="postgresql://postgres:${SUPABASE_SUPERUSER_PWD}@${DIRECT_HOST}:5432/postgres?sslmode=require"
OUT=$(PGCONNECT_TIMEOUT=10 psql "$PG_DIRECT_ADMIN" -tAc "
  SELECT rolname,
         CASE WHEN rolpassword LIKE 'SCRAM-SHA-256$%' THEN 'scram-sha-256'
              WHEN rolpassword LIKE 'md5%' THEN 'md5'
              WHEN rolpassword IS NULL THEN 'NULL (sem senha)'
              ELSE 'unknown'
         END AS auth_type,
         rolcanlogin, rolbypassrls
  FROM pg_authid
  WHERE rolname IN ('postgres','authenticator','looker_reader')
  ORDER BY rolname;
" 2>&1)
echo "$OUT" | sed 's/^/       /'

hr "6. Se passo 2 falhou: ver se Supavisor tem auth_query configurado"
# Supavisor tem uma tenants table do lado dele; não dá pra ver daqui.
# Mas dá pra testar se é cache: forçar reload via nova conexão.
info "Supavisor mantém cache interno. Se role foi criada agora, pode haver delay."
info "Retry em ~2min pode resolver. Se persistir, aplicar UM dos fixes abaixo:"
echo ""

hr "Possíveis fixes (aplicar UM se pooler falhou no passo 2)"

cat <<'FIX'

  FIX A (mais provável) — GRANT membership em authenticator:
  ================================================================
  Supavisor query contra authenticator para resolver roles. Concedendo
  membership, Supavisor consegue assumir o looker_reader via SET ROLE.

  psql "$PG_DIRECT_ADMIN" <<SQL
  GRANT looker_reader TO authenticator;
  SQL

  Depois reconectar pelo pooler. Se funcionar, isso é o fix canônico.

  FIX B — Reset da senha para forçar hash SCRAM:
  ================================================================
  Se o passo 5 mostrou rolpassword NULL ou md5, a pooler rejeita.

  psql "$PG_DIRECT_ADMIN" -c "
    SET password_encryption = 'scram-sha-256';
    ALTER ROLE looker_reader PASSWORD 'XC5rD1kuO4thTnVPynD6WAx9PGaD6ibz';
  "

  FIX C — Aguardar cache (30s a 2min) e retry:
  ================================================================
  sleep 60 && bash scripts/99_pooler_diagnose.sh

  FIX D (último recurso) — Looker via direct IPv6:
  ================================================================
  Se TUDO acima falhar, tentar o Looker Studio apontando direto para
  db.vvtympzatclvjaqucebr.supabase.co:5432 (IPv6). GCP tem IPv6 em
  várias regiões; pode funcionar. Se funcionar, ignorar o pooler.
FIX

echo ""
hr "Ação requerida"
if [[ "${POOLER_WORKS:-0}" == "1" ]]; then
  echo "✅ Pooler OK. Claude pode avançar para Fase 4 sem bloqueio."
else
  echo "❌ Pooler falhou. Aplicar um dos fixes acima e rodar este script de novo."
  echo "   Colar saída completa no Telegram para o Rodrigo passar ao Claude."
fi
