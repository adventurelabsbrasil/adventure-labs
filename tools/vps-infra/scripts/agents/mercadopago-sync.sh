#!/usr/bin/env bash
# mercadopago-sync.sh — Sincronizacao incremental Mercado Pago -> Supabase
# Deploy: /opt/adventure-labs/scripts/agents/mercadopago-sync.sh
# Cron:   */30 * * * *  /opt/adventure-labs/scripts/agents/mercadopago-sync.sh >> /opt/adventure-labs/logs/mercadopago-sync.log 2>&1
#
# Escopo: uso interno (conciliacao financeira). Popula adv_mp_payments via sync incremental
# a partir de MAX(date_created). Sueli (financeiro AI) e Buffett (CFO) leem dessas tabelas.
# Rate limit MP: ~25 req/s (paginacao de 100/req -> confortavel dentro do limite).
#
# Diferenca pros agentes C-Suite: NAO usa dispatcher LLM (adventure-agent.sh).
# E um sync de dados puro — sem chamada Anthropic, sem Telegram a cada run.
# Erros sao reportados no Telegram pelo proprio CLI via notifyTelegram().

set -euo pipefail

REPO_ROOT="${ADV_REPO_ROOT:-/opt/adventure-labs/repo}"
NODE_BIN="${NODE_BIN:-node}"
INFISICAL_BIN="${INFISICAL_BIN:-infisical}"
INFISICAL_ENV="${INFISICAL_MP_ENV:-prod}"

if [[ ! -d "$REPO_ROOT" ]]; then
  echo "[$(date -Iseconds)] ERRO: REPO_ROOT '$REPO_ROOT' nao encontrado" >&2
  exit 1
fi

cd "$REPO_ROOT"

echo "[$(date -Iseconds)] mercadopago-sync inicio (env=$INFISICAL_ENV)"

"$INFISICAL_BIN" run --env="$INFISICAL_ENV" --path=/mp -- \
  "$NODE_BIN" tools/scripts/mercadopago-cli.mjs sync:all

echo "[$(date -Iseconds)] mercadopago-sync fim"
