#!/usr/bin/env bash
# Compara tarefas P0 citadas em docs/BACKLOG.md com due_on no Asana e avisa no terminal
# se alguma estiver vencendo hoje (America/Sao_Paulo).
#
# Autoria: script de governanca ACORE (Aider nao estava no PATH neste ambiente).
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BACKLOG_FILE="${BACKLOG_FILE:-$ROOT_DIR/docs/BACKLOG.md}"
TODAY="$(TZ=America/Sao_Paulo date +%Y-%m-%d)"

load_asana_token() {
  if [[ -n "${ASANA_ACCESS_TOKEN:-}" ]]; then
    return 0
  fi
  local f
  for f in "$ROOT_DIR/apps/core/admin/.env.local" "$ROOT_DIR/.env.local" "$ROOT_DIR/.env"; do
    if [[ -f "$f" ]] && grep -qE '^ASANA_ACCESS_TOKEN=' "$f"; then
      # shellcheck disable=SC1090
      set +u
      ASANA_ACCESS_TOKEN="$(grep -E '^ASANA_ACCESS_TOKEN=' "$f" | head -1 | cut -d= -f2- | tr -d '"' | tr -d "'")"
      set -u
      return 0
    fi
  done
  return 1
}

extract_p0_asana_gids() {
  # Colunas: $2=Issue ID, $5=Prioridade tecnica
  awk -F'|' '
    NF < 8 { next }
    {
      for (i = 1; i <= NF; i++) gsub(/^[ \t]+|[ \t]+$/, "", $i)
      if ($2 ~ /^[0-9]{10,}$/ && $5 == "P0") print $2
    }
  ' "$BACKLOG_FILE" | sort -u
}

fetch_due_on() {
  local gid="$1"
  local url="https://app.asana.com/api/1.0/tasks/${gid}?opt_fields=name,due_on,permalink_url"
  curl -fsS -H "Authorization: Bearer ${ASANA_ACCESS_TOKEN}" "$url"
}

echo "BACKLOG: $BACKLOG_FILE"
echo "Hoje (America/Sao_Paulo): $TODAY"
echo

if [[ ! -f "$BACKLOG_FILE" ]]; then
  echo "ERRO: arquivo de backlog nao encontrado." >&2
  exit 1
fi

if ! load_asana_token; then
  echo "AVISO: ASANA_ACCESS_TOKEN nao definido (export ou apps/core/admin/.env.local)." >&2
  echo "Sem token, apenas checamos coluna Due (Asana) no BACKLOG para linhas P0." >&2
  echo
  found_local=0
  _tmp="$(mktemp -t adv-backlog-p0.XXXXXX)"
  awk -F'|' '
    NF < 8 { next }
    {
      for (i = 1; i <= NF; i++) gsub(/^[ \t]+|[ \t]+$/, "", $i)
      if ($2 ~ /^[0-9]{10,}$/ && $5 == "P0" && $8 ~ /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/) print $2, $8
    }
  ' "$BACKLOG_FILE" >"$_tmp"
  while read -r gid due || [[ -n "${gid:-}" ]]; do
    [[ -z "${due:-}" ]] && continue
    if [[ "$due" == "$TODAY" ]]; then
      echo "[P0 VENCE HOJE — BACKLOG] GID $gid due $due"
      found_local=1
    fi
  done <"$_tmp"
  rm -f "$_tmp"
  if [[ "$found_local" -eq 1 ]]; then
    exit 2
  fi
  exit 0
fi

GIDS=()
_tmp="$(mktemp -t adv-backlog-gids.XXXXXX)"
extract_p0_asana_gids >"$_tmp"
while IFS= read -r _g || [[ -n "${_g:-}" ]]; do
  [[ -n "${_g:-}" ]] && GIDS+=("$_g")
done <"$_tmp"
rm -f "$_tmp"

if [[ ${#GIDS[@]} -eq 0 ]]; then
  echo "Nenhum GID Asana com prioridade P0 encontrado no quadro do BACKLOG."
  exit 0
fi

found=0
api_ok=0
for gid in "${GIDS[@]}"; do
  if ! json="$(fetch_due_on "$gid" 2>/dev/null)"; then
    echo "ERRO: falha ao buscar task $gid (token Asana invalido ou rede). Confira Infisical / ASANA_ACCESS_TOKEN." >&2
    continue
  fi
  api_ok=1
  due="$(printf '%s' "$json" | python3 -c 'import json,sys; d=json.load(sys.stdin).get("data") or {}; print(d.get("due_on") or "")')"
  name="$(printf '%s' "$json" | python3 -c 'import json,sys; d=json.load(sys.stdin).get("data") or {}; print(d.get("name") or "")')"
  link="$(printf '%s' "$json" | python3 -c 'import json,sys; d=json.load(sys.stdin).get("data") or {}; print(d.get("permalink_url") or "")')"
  if [[ "$due" == "$TODAY" ]]; then
    echo "[ALERTA P0 VENCE HOJE] $name"
    echo "  GID: $gid | due_on: $due"
    [[ -n "$link" ]] && echo "  $link"
    found=1
  elif [[ -z "$due" ]]; then
    echo "[P0 SEM DUE ON] $name (GID $gid) — definir data no Asana ou Due no BACKLOG."
  fi
done

echo
if [[ "$api_ok" -eq 0 && ${#GIDS[@]} -gt 0 ]]; then
  echo "AVISO: API Asana nao respondeu para nenhum P0; conferindo Due literal no BACKLOG..." >&2
  found_local=0
  _tmp="$(mktemp -t adv-backlog-p0-api-fail.XXXXXX)"
  awk -F'|' '
    NF < 8 { next }
    {
      for (i = 1; i <= NF; i++) gsub(/^[ \t]+|[ \t]+$/, "", $i)
      if ($2 ~ /^[0-9]{10,}$/ && $5 == "P0" && $8 ~ /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/) print $2, $8
    }
  ' "$BACKLOG_FILE" >"$_tmp"
  while read -r gid due || [[ -n "${gid:-}" ]]; do
    [[ -z "${due:-}" ]] && continue
    if [[ "$due" == "$TODAY" ]]; then
      echo "[P0 VENCE HOJE — BACKLOG] GID $gid due $due"
      found_local=1
    fi
  done <"$_tmp"
  rm -f "$_tmp"
  if [[ "$found_local" -eq 1 ]]; then
    exit 2
  fi
  echo "Resultado: sem API e sem Due hoje no BACKLOG para P0."
  exit 3
fi
if [[ "$found" -eq 1 ]]; then
  echo "Resultado: existe P0 com vencimento hoje — tratar antes de codigo novo."
  exit 2
fi
echo "Resultado: nenhum P0 do BACKLOG com due_on hoje (API Asana)."
exit 0
