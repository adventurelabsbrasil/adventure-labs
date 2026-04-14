#!/usr/bin/env bash
# ==========================================================================
# PINGOSTUDIO-264 — Diagnóstico de conexão Supabase Pingolead
# ==========================================================================
# Quando 00_connect.sh falha, este script mostra EXATAMENTE qual o erro.
# Testa separadamente: DNS, TCP, auth, e dá pistas específicas.
#
# Uso:
#   bash scripts/99_diagnose.sh                # usa os defaults
#   SUPABASE_REGION=us-east-1 bash scripts/99_diagnose.sh   # override região
# ==========================================================================

set -u

: "${SUPABASE_REF:=vvtympzatclvjaqucebr}"
: "${SUPABASE_DB_PWD:=lg9S6Iz8y4LKSjxu}"
: "${SUPABASE_REGION:=sa-east-1}"

DIRECT_HOST="db.${SUPABASE_REF}.supabase.co"
POOLER_HOST="aws-0-${SUPABASE_REGION}.pooler.supabase.com"

hr() { printf "\n\033[1;34m=== %s ===\033[0m\n" "$1"; }
ok() { printf "  \033[32mOK\033[0m  %s\n" "$1"; }
bad() { printf "  \033[31mFAIL\033[0m %s\n" "$1"; }
info() { printf "  \033[33mINFO\033[0m %s\n" "$1"; }

hr "1. DNS — direct host"
if getent hosts "$DIRECT_HOST" > /tmp/dns_direct 2>&1; then
  ok "$DIRECT_HOST resolve para:"
  cat /tmp/dns_direct | sed 's/^/         /'
else
  bad "$DIRECT_HOST NÃO resolve (provável: project_ref errado ou projeto pausado)"
  info "Verificar no Supabase dashboard se o projeto $SUPABASE_REF ainda existe"
fi

hr "2. DNS — pooler host"
if getent hosts "$POOLER_HOST" > /tmp/dns_pooler 2>&1; then
  ok "$POOLER_HOST resolve para:"
  cat /tmp/dns_pooler | sed 's/^/         /'
else
  bad "$POOLER_HOST NÃO resolve (provável: região errada)"
  info "Regiões Supabase comuns: sa-east-1, us-east-1, us-west-1, eu-central-1, eu-west-2, ap-southeast-1"
  info "Dashboard Supabase → Settings → Database → Connection pooling mostra a região exata"
fi

hr "3. TCP — direct (5432)"
if timeout 5 bash -c ">/dev/tcp/${DIRECT_HOST}/5432" 2>/dev/null; then
  ok "TCP 5432 aceita conexão em $DIRECT_HOST"
else
  bad "TCP 5432 bloqueado ou host inalcançável em $DIRECT_HOST"
fi

hr "4. TCP — pooler (6543)"
if timeout 5 bash -c ">/dev/tcp/${POOLER_HOST}/6543" 2>/dev/null; then
  ok "TCP 6543 aceita conexão em $POOLER_HOST"
else
  bad "TCP 6543 bloqueado ou host inalcançável em $POOLER_HOST"
fi

hr "5. Postgres auth — direct"
DIRECT_URL="postgresql://postgres:${SUPABASE_DB_PWD}@${DIRECT_HOST}:5432/postgres?sslmode=require"
OUT=$(psql "$DIRECT_URL" -c 'SELECT 1;' 2>&1)
if [[ "$OUT" == *"1 row"* ]] || [[ "$OUT" =~ "(1 row)" ]]; then
  ok "AUTH + QUERY OK via direct"
  info "Use esta URL: $DIRECT_URL"
else
  bad "direct falhou:"
  echo "$OUT" | head -3 | sed 's/^/         /'
fi

hr "6. Postgres auth — pooler"
POOLER_URL="postgresql://postgres.${SUPABASE_REF}:${SUPABASE_DB_PWD}@${POOLER_HOST}:6543/postgres?sslmode=require"
OUT=$(psql "$POOLER_URL" -c 'SELECT 1;' 2>&1)
if [[ "$OUT" == *"1 row"* ]] || [[ "$OUT" =~ "(1 row)" ]]; then
  ok "AUTH + QUERY OK via pooler"
  info "Use esta URL: $POOLER_URL"
else
  bad "pooler falhou:"
  echo "$OUT" | head -3 | sed 's/^/         /'
fi

hr "Diagnóstico"
echo ""
echo "Possíveis causas conforme o sinal acima:"
echo ""
echo "  ❌ DNS falha direct MAS pooler resolve  →  projeto pausado / project_ref correto mas banco hibernado"
echo "  ❌ DNS falha em ambos                    →  project_ref errado ou projeto deletado"
echo "  ❌ DNS OK, TCP falha                     →  firewall, VPS sem internet, ou Supabase em manutenção"
echo "  ❌ TCP OK, 'password authentication failed' →  senha errada (SUPABASE_DB_PWD)"
echo "  ❌ 'role \"postgres\" does not exist' no pooler → pooler precisa username 'postgres.<project_ref>'"
echo ""
echo "Ações por cenário:"
echo "  • Senha errada: buscar a atual no Supabase dashboard → Settings → Database → Reset password"
echo "                   OU no Vaultwarden/Infisical se já foi salva"
echo "                   OU pedir ao Rodrigo via Telegram"
echo "  • Região errada: tentar SUPABASE_REGION=us-east-1 bash scripts/99_diagnose.sh"
echo "  • Projeto pausado: acordar no dashboard Supabase (projeto inativo > 7 dias pausa automático)"
echo ""
echo "Cole toda a saída deste script no Telegram do Rodrigo para ele identificar o bloqueio."
