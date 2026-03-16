#!/usr/bin/env bash
# Auditoria da allowlist do Admin (Clerk Protect) e usuários.
# Requer: Clerk CLI no PATH (brew install clerk/cli/clerk).
# Uso: ./scripts/clerk-allowlist-admin.sh [list-users|list-rules]

set -e
cd "$(dirname "$0")/.."

SUB="${1:-list-rules}"

case "$SUB" in
  list-rules)
    echo "=== Regras Protect (SIGN_IN) — allowlist Admin ==="
    clerk protect rules list SIGN_IN 2>/dev/null || echo "Nenhuma regra ou clerk não configurado. Rode: clerk whoami"
    ;;
  list-users)
    echo "=== Usuários (últimos 20) ==="
    clerk users list -o table 2>/dev/null | head -30 || clerk users list -o json 2>/dev/null | head -50 || echo "Rode: clerk whoami"
    ;;
  whoami)
    clerk whoami
    ;;
  *)
    echo "Uso: $0 [list-rules|list-users|whoami]"
    echo "  list-rules  — regras de allowlist do Admin (padrão)"
    echo "  list-users  — lista de usuários"
    echo "  whoami      — perfil e API key em uso"
    exit 1
    ;;
esac
