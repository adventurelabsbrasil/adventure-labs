#!/usr/bin/env bash
# Envia cada .env.local do monorepo para o Infisical (secrets set --file).
#
# FOLDERS_MAP: relativo a ROOT -> pasta Infisical (--path). Ver funcao foldermap_infisical_path.
# Taxonomia ACORE (Grande Exodo): apps/core/*, apps/labs/*, apps/clientes/*; legado apps/admin, apps/adventure.
#
# Pre-requisitos: `infisical login` (ou INFISICAL_TOKEN) e `infisical link` na raiz
# (exceto --dry-run sem CLI: apenas lista caminhos).
#
# Uso:
#   ./tools/scripts/infisical-push-env-local.sh --dry-run
#   ./tools/scripts/infisical-push-env-local.sh
#   ./tools/scripts/infisical-push-env-local.sh --delete-after-import
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
ENV_NAME="${INFISICAL_ENV:-dev}"
DRY_RUN=0
DELETE_AFTER=0
EXTRA_ARGS=()

for arg in "$@"; do
  case "$arg" in
    --dry-run) DRY_RUN=1 ;;
    --delete-after-import) DELETE_AFTER=1 ;;
    -h|--help)
      sed -n '1,30p' "$0"
      exit 0
      ;;
  esac
done

# ---------------------------------------------------------------------------
# FOLDERS_MAP (origem relativa -> pasta Infisical)
# Manter alinhado a docs/INFISICAL_SYNC.md ao adicionar apps.
# Ordem: casos exatos e legado; depois fallbacks por prefixo.
# ---------------------------------------------------------------------------
foldermap_infisical_path() {
  local rel="$1"

  case "$rel" in
    .env.local)
      echo "/monorepo"
      return
      ;;
    apps/core/admin/.env.local|apps/admin/.env.local)
      echo "/admin"
      return
      ;;
    apps/core/adventure/.env.local|apps/adventure/.env.local)
      echo "/core/adventure"
      return
      ;;
    apps/core/elite/.env.local|apps/elite/.env.local)
      echo "/core/elite"
      return
      ;;
    apps/labs/xpostr/.env.local)
      echo "/labs/xpostr"
      return
      ;;
    apps/labs/whatsapp-worker/.env.local)
      echo "/labs/whatsapp-worker"
      return
      ;;
    apps/labs/finfeed/.env.local)
      echo "/labs/finfeed"
      return
      ;;
    apps/clientes/benditta/app/.env.local)
      echo "/clientes/benditta"
      return
      ;;
    apps/clientes/young-talents/plataforma/.env.local)
      echo "/clientes/young-talents"
      return
      ;;
    apps/clientes/lidera/flow/.env.local)
      echo "/clientes/lidera"
      return
      ;;
  esac

  # apps/core/<app>/.env.local -> /core/<app> (admin ja tratado acima como /admin)
  if [[ "$rel" =~ ^apps/core/[^/]+/\.env\.local$ ]]; then
    local app
    app="$(echo "$rel" | sed -n 's|^apps/core/\([^/]*\)/\.env\.local$|\1|p')"
    if [[ "$app" == "admin" ]]; then
      echo "/admin"
    else
      echo "/core/$app"
    fi
    return
  fi

  # apps/labs/<lab>/.env.local -> /labs/<lab>
  if [[ "$rel" =~ ^apps/labs/[^/]+/\.env\.local$ ]]; then
    local lab
    lab="$(echo "$rel" | sed -n 's|^apps/labs/\([^/]*\)/\.env\.local$|\1|p')"
    echo "/labs/$lab"
    return
  fi

  # apps/clientes/<cliente>/<subapp>/.env.local -> /clientes/<cliente>/<subapp>
  if [[ "$rel" =~ ^apps/clientes/[^/]+/[^/]+/\.env\.local$ ]]; then
    local rest c s
    rest="${rel#apps/clientes/}"
    c="${rest%%/*}"
    s="${rest#*/}"
    s="${s%/.env.local}"
    echo "/clientes/$c/$s"
    return
  fi

  # clients/<pasta>/admin/.env.local ou clients/<pasta>/.env.local
  if [[ "$rel" =~ ^clients/[^/]+/admin/\.env\.local$ ]]; then
    local slug
    slug="$(echo "$rel" | sed -n 's|^clients/\([^/]*\)/admin/\.env\.local$|\1|p')"
    echo "/clients/$slug/admin"
    return
  fi
  # clients/<pasta>/<subprojeto>/.env.local (ex.: clients/04_young/young-talents/.env.local)
  if [[ "$rel" =~ ^clients/[^/]+/[^/]+/\.env\.local$ ]]; then
    local a b
    a="$(echo "$rel" | sed -n 's|^clients/\([^/]*\)/\([^/]*\)/\.env\.local$|\1|p')"
    b="$(echo "$rel" | sed -n 's|^clients/\([^/]*\)/\([^/]*\)/\.env\.local$|\2|p')"
    echo "/clients/$a/$b"
    return
  fi
  if [[ "$rel" =~ ^clients/[^/]+/\.env\.local$ ]]; then
    local slug2
    slug2="$(echo "$rel" | sed -n 's|^clients/\([^/]*\)/\.env\.local$|\1|p')"
    echo "/clients/$slug2"
    return
  fi

  echo ""
}

have_infisical() {
  command -v infisical >/dev/null 2>&1
}

if [[ "$DRY_RUN" -eq 0 ]] || have_infisical; then
  if ! have_infisical; then
    echo "ERRO: CLI Infisical nao encontrada. Instale: brew install infisical/get-cli/infisical" >&2
    exit 1
  fi
else
  echo "AVISO: CLI infisical ausente; --dry-run apenas lista mapa e arquivos (sem comandos infisical)." >&2
fi

ensure_infisical_folder() {
  local path="$1"
  [[ "$DRY_RUN" -eq 1 ]] && ! have_infisical && return 0
  if [[ "$path" == "/" || -z "$path" ]]; then
    return 0
  fi
  path="${path#/}"
  local parent="/" seg rest="$path"
  while [[ -n "$rest" ]]; do
    seg="${rest%%/*}"
    rest="${rest#"$seg"}"
    rest="${rest#/}"
    [[ -z "$seg" ]] && continue
    if [[ "$DRY_RUN" -eq 1 ]]; then
      echo "[dry-run] infisical secrets folders create --path=\"$parent\" --name=\"$seg\" --env=\"$ENV_NAME\" --silent 2>/dev/null || true"
    else
      infisical secrets folders create --path="$parent" --name="$seg" --env="$ENV_NAME" --silent 2>/dev/null || true
    fi
    if [[ "$parent" == "/" ]]; then
      parent="/$seg"
    else
      parent="$parent/$seg"
    fi
  done
}

# Raizes de scan (relativas a ROOT). Se nao existirem: AVISO e pula (nao aborta ingestao).
collect_scan_roots() {
  echo "apps/core"
  echo "apps/labs"
  echo "apps/clientes"
  echo "apps/admin"
  echo "apps/adventure"
  echo "clients"
}

# Infisical CLI rejeita chaves com valor vazio (ex.: OPENAI_API_KEY=).
# Gera $2 como copia de $1 sem essas linhas; comentarios e linhas em branco omitidos no destino.
filter_env_skip_empty_values() {
  local src="$1" dest="$2" label="${3:-$1}"
  if ! command -v python3 >/dev/null 2>&1; then
    echo "ERRO: python3 e necessario para filtrar chaves vazias antes do Infisical." >&2
    return 1
  fi
  python3 - "$src" "$dest" "$label" <<'PY'
import re
import sys

src, dst, label = sys.argv[1], sys.argv[2], sys.argv[3]
pat = re.compile(
    r"^(?P<indent>\s*)(?:(?P<exp>export)\s+)?(?P<key>[A-Za-z_][A-Za-z0-9_]*)=(?P<val>.*)$"
)
with open(src, encoding="utf-8-sig", errors="replace") as inf, open(dst, "w", encoding="utf-8") as out:
    for line in inf:
        raw = line.rstrip("\n\r")
        if not raw.strip():
            continue
        if raw.lstrip().startswith("#"):
            continue
        m = pat.match(raw)
        if m:
            v = m.group("val").strip()
            if len(v) >= 2 and v[0] == v[-1] and v[0] in "\"'":
                v = v[1:-1]
            if v == "":
                sys.stderr.write(
                    f"AVISO: ignorando '{m.group('key')}' (valor vazio) em {label} — Infisical rejeita\n"
                )
                continue
        out.write(line)
PY
}

collect_env_files() {
  local f r roots root abs_root
  [[ -f "$ROOT/.env.local" ]] && echo ".env.local"
  while IFS= read -r r; do
    [[ -z "$r" ]] && continue
    abs_root="$ROOT/$r"
    if [[ ! -d "$abs_root" ]]; then
      echo "AVISO: diretorio de origem inexistente, ignorado no scan: $r" >&2
      continue
    fi
    while IFS= read -r f; do
      echo "${f#"$ROOT"/}"
    done < <(find "$abs_root" \
      \( -path "*/node_modules/*" -o -path "*/.next/*" -o -path "*/dist/*" \) -prune -o \
      -name ".env.local" -type f -print 2>/dev/null)
  done < <(collect_scan_roots | sort -u)
}

cd "$ROOT"

if [[ -n "${INFISICAL_PROJECT_ID:-}" ]]; then
  EXTRA_ARGS+=(--projectId="$INFISICAL_PROJECT_ID")
fi

import_failures=0
unmapped=0

while IFS= read -r rel; do
  [[ -z "$rel" ]] && continue
  abs="$ROOT/$rel"
  if [[ ! -f "$abs" ]]; then
    echo "AVISO: arquivo nao encontrado (pulando): $rel" >&2
    continue
  fi
  ipath="$(foldermap_infisical_path "$rel")"
  if [[ -z "$ipath" ]]; then
    echo "AVISO: sem entrada no FOLDERS_MAP para '$rel' — adicione em foldermap_infisical_path()" >&2
    unmapped=$((unmapped + 1))
    continue
  fi
  echo "==> $rel  ->  Infisical path=$ipath  env=$ENV_NAME"
  if [[ "$DRY_RUN" -eq 1 ]]; then
    ensure_infisical_folder "$ipath"
    if ((${#EXTRA_ARGS[@]})); then
      echo "[dry-run] infisical secrets set --file=\"$abs\" --path=\"$ipath\" --env=\"$ENV_NAME\"" "${EXTRA_ARGS[@]}"
    else
      echo "[dry-run] infisical secrets set --file=\"$abs\" --path=\"$ipath\" --env=\"$ENV_NAME\""
    fi
    echo "    (na execucao real: chaves com valor vazio sao omitidas antes do Infisical)" >&2
    continue
  fi
  ensure_infisical_folder "$ipath"
  _filtered=""
  file_use="$abs"
  if have_infisical; then
    _filtered="$(mktemp -t adv-infisical-env.XXXXXX)"
    if ! filter_env_skip_empty_values "$abs" "$_filtered" "$rel"; then
      rm -f "$_filtered"
      echo "ERRO: falha ao preparar $rel para Infisical" >&2
      import_failures=$((import_failures + 1))
      continue
    fi
    if [[ ! -s "$_filtered" ]]; then
      echo "AVISO: apos filtrar chaves vazias, nada restou em $rel — pulando import" >&2
      rm -f "$_filtered"
      continue
    fi
    file_use="$_filtered"
  fi
  if ((${#EXTRA_ARGS[@]})); then
    if ! infisical secrets set --file="$file_use" --path="$ipath" --env="$ENV_NAME" "${EXTRA_ARGS[@]}"; then
      echo "ERRO: falha ao importar $rel" >&2
      import_failures=$((import_failures + 1))
    fi
  else
    if ! infisical secrets set --file="$file_use" --path="$ipath" --env="$ENV_NAME"; then
      echo "ERRO: falha ao importar $rel" >&2
      import_failures=$((import_failures + 1))
    fi
  fi
  [[ -n "$_filtered" ]] && rm -f "$_filtered"
done < <(collect_env_files | sort -u)

if [[ "$unmapped" -gt 0 ]]; then
  echo "AVISO: $unmapped arquivo(s) sem mapa (nao importados)." >&2
fi

if [[ "$import_failures" -gt 0 ]]; then
  echo "Concluido com $import_failures falha(s) no infisical secrets set." >&2
  exit 1
fi

if [[ "$DELETE_AFTER" -eq 1 ]]; then
  if ! have_infisical; then
    echo "ERRO: --delete-after-import exige CLI infisical e import bem-sucedido." >&2
    exit 1
  fi
  echo
  echo "Removendo .env.local importados (somente os mapeados nesta execucao)..."
  while IFS= read -r rel; do
    [[ -z "$rel" ]] && continue
    ipath="$(foldermap_infisical_path "$rel")"
    [[ -z "$ipath" ]] && continue
    abs="$ROOT/$rel"
    if [[ -f "$abs" ]]; then
      rm -f "$abs"
      echo "Removido: $rel"
    fi
  done < <(collect_env_files | sort -u)
  echo "Feito. Valide: infisical run --env=$ENV_NAME -- pnpm --filter adventure-labs-admin exec next --version"
fi

echo
echo "OK. Proximo passo: infisical run (veja docs/INFISICAL_SYNC.md)."
