#!/usr/bin/env bash
# Valida links Markdown relativos em os-registry (README + INDEX).
# Uso: na raiz do monorepo: ./tools/scripts/validate-registry-links.sh
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
REG="$ROOT/knowledge/06_CONHECIMENTO/os-registry"
FAILED=0

check_links_in_file() {
  local file="$1"
  local dir
  dir="$(dirname "$file")"
  # Extrai (path) em [text](path) — ignora http(s), mailto, âncoras só #
  while IFS= read -r raw; do
    [[ "$raw" == http* || "$raw" == mailto:* || "$raw" == "#"* ]] && continue
    # Remove âncoras finais tipo path.md#sec
    local target="${raw%%#*}"
    [[ -z "$target" ]] && continue
    [[ "$target" == */ ]] && target="${target%/}"
    # Caminhos Markdown com %20 → espaço (ficheiros reais no disco)
    target="${target//%20/ }"
    if ! ( cd "$dir" && [[ -e "$target" ]] ); then
      echo "BROKEN: $file -> $raw" >&2
      FAILED=1
    fi
  done < <(grep -oE '\]\([^)]+\)' "$file" | sed 's/^\](//;s/)$//' | sort -u)
}

[[ -d "$REG" ]] || { echo "Missing $REG" >&2; exit 1; }

for md in "$REG/README.md" "$REG/INDEX.md"; do
  [[ -f "$md" ]] || continue
  check_links_in_file "$md"
done

if [[ "$FAILED" -ne 0 ]]; then
  exit 1
fi
echo "OK: os-registry link check passed."
