#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "${ROOT_DIR}"

echo "[governance] Iniciando validação de higiene do repositório..."

hard_fail=0

readonly LOCKFILE_POLICY_FILE="docs/GOVERNANCA_LOCKFILES.md"
readonly LOCKFILE_ALLOWLIST=(
  "package-lock.json"
  "apps/clientes/01_lidera/lidera-dre/package-lock.json"
  "apps/clientes/01_lidera/lidera/skills/package-lock.json"
  "apps/clientes/01_lidera/lidera/space/package-lock.json"
  "apps/clientes/01_lidera/lideraspacev1/package-lock.json"
  "apps/clientes/02_rose/roseportaladvocacia/package-lock.json"
  "apps/clientes/04_young/ranking-vendas/package-lock.json"
  "apps/clientes/04_young/young-talents-/plataforma/package-lock.json"
  "apps/clientes/04_young/young-talents/package-lock.json"
  "apps/labs/minha-app/package-lock.json"
  "tools/dbgr/package-lock.json"
  "tools/n8n-scripts/package-lock.json"
  "tools/openclaw/openclaw-gateway-railway/package-lock.json"
  "tools/railway-openclaw/clawdbot-railway-template/package-lock.json"
  "tools/whatsapp-web/package-lock.json"
)

check_tracked_pattern() {
  local pattern="$1"
  local label="$2"
  local raw_matches
  local filtered_matches
  raw_matches="$(git ls-files | rg "${pattern}" || true)"
  filtered_matches=""

  while IFS= read -r file; do
    [[ -z "${file}" ]] && continue
    if [[ -e "${file}" ]]; then
      filtered_matches+="${file}"$'\n'
    fi
  done <<< "${raw_matches}"

  if [[ -n "${filtered_matches}" ]]; then
    echo ""
    echo "[governance][ERRO] ${label}"
    printf "%s" "${filtered_matches}"
    hard_fail=1
  fi
}

is_lockfile_allowed() {
  local path="$1"
  for allowed in "${LOCKFILE_ALLOWLIST[@]}"; do
    if [[ "${path}" == "${allowed}" ]]; then
      return 0
    fi
  done
  return 1
}

# Regras de bloqueio (hard fail)
check_tracked_pattern "wapp_conversations/" "Arquivos de conversa sensível rastreados."
check_tracked_pattern "\\.DS_Store$" "Arquivos .DS_Store rastreados."
check_tracked_pattern "README 2\\.md$" "Arquivos duplicados com sufixo ' 2' rastreados."
check_tracked_pattern "package-lock 2\\.json$" "Lockfiles duplicados com sufixo ' 2' rastreados."
check_tracked_pattern "ranking-vendas\\.bak/" "Backup .bak rastreado na trilha ativa."

# Regras de lockfiles (hard fail fora da allowlist)
all_lockfiles="$(git ls-files | rg "package-lock\\.json$" || true)"
unknown_lockfiles=""

while IFS= read -r lockfile; do
  [[ -z "${lockfile}" ]] && continue
  [[ ! -e "${lockfile}" ]] && continue
  if ! is_lockfile_allowed "${lockfile}"; then
    unknown_lockfiles+="${lockfile}"$'\n'
  fi
done <<< "${all_lockfiles}"

if [[ -n "${unknown_lockfiles}" ]]; then
  echo ""
  echo "[governance][ERRO] package-lock.json fora da política allowlist:"
  printf "%s" "${unknown_lockfiles}"
  echo "[governance][ERRO] Atualize a allowlist no script e a política em ${LOCKFILE_POLICY_FILE}."
  hard_fail=1
fi

if [[ "${hard_fail}" -ne 0 ]]; then
  echo ""
  echo "[governance] Falha: regras obrigatórias de higiene foram violadas."
  exit 1
fi

echo "[governance] OK: nenhuma violação obrigatória encontrada."
