#!/usr/bin/env bash
# Envia cada .env.local do monorepo para o Infisical (secrets set --file), usando o mapa de pastas
# documentado em docs/INFISICAL_SYNC.md.
#
# Pre-requisitos: `infisical login` (ou INFISICAL_TOKEN) e projeto linkado (`infisical link`) na raiz
# do monorepo, ou exporte INFISICAL_PROJECT_ID para identidades de maquina.
#
# Uso:
#   ./tools/scripts/infisical-push-env-local.sh              # apenas importa
#   ./tools/scripts/infisical-push-env-local.sh --dry-run  # lista acoes
#   ./tools/scripts/infisical-push-env-local.sh --delete-after-import  # apos validar Infisical + infisical run
#
# Opcional: Aider pode revisar este script, sem ler .env.local:
#   aider --no-git tools/scripts/infisical-push-env-local.sh docs/INFISICAL_SYNC.md
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
ENV_NAME="${INFISICAL_ENV:-dev}"
DRY_RUN=0
DELETE_AFTER=0

for arg in "$@"; do
  case "$arg" in
    --dry-run) DRY_RUN=1 ;;
    --delete-after-import) DELETE_AFTER=1 ;;
    -h|--help)
      sed -n '1,25p' "$0"
      exit 0
      ;;
  esac
done

if ! command -v infisical >/dev/null 2>&1; then
  echo "ERRO: CLI Infisical nao encontrada. Instale: brew install infisical/get-cli/infisical" >&2
  exit 1
fi

# Caminho Infisical (pasta do projeto) por caminho do arquivo .env.local (relativo ao ROOT)
infisical_path_for_file() {
  local rel="$1"
  case "$rel" in
    .env.local) echo "/monorepo" ;;
    apps/core/admin/.env.local) echo "/admin" ;;
    apps/labs/xpostr/.env.local) echo "/labs/xpostr" ;;
    apps/clientes/young-talents/plataforma/.env.local) echo "/clientes/young-talents" ;;
    apps/clientes/benditta/app/.env.local) echo "/clientes/benditta" ;;
    *) echo "" ;;
  esac
}

ensure_infisical_folder() {
  local path="$1"
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

collect_env_files() {
  local f
  # Raiz
  [[ -f "$ROOT/.env.local" ]] && echo ".env.local"
  # Core, labs, clientes (sem varrer node_modules)
  while IFS= read -r f; do
    rel="${f#"$ROOT"/}"
    echo "$rel"
  done < <(find "$ROOT/apps/core" "$ROOT/apps/labs" "$ROOT/apps/clientes" \
    \( -path "*/node_modules/*" -o -path "*/.next/*" -o -path "*/dist/*" \) -prune -o \
    -name ".env.local" -type f -print 2>/dev/null | sort)
}

cd "$ROOT"

EXTRA_ARGS=()
if [[ -n "${INFISICAL_PROJECT_ID:-}" ]]; then
  EXTRA_ARGS+=(--projectId="$INFISICAL_PROJECT_ID")
fi

failures=0
while IFS= read -r rel; do
  [[ -z "$rel" ]] && continue
  abs="$ROOT/$rel"
  ipath="$(infisical_path_for_file "$rel")"
  if [[ -z "$ipath" ]]; then
    echo "AVISO: sem mapa Infisical para '$rel' — edite infisical_path_for_file() em tools/scripts/infisical-push-env-local.sh" >&2
    failures=$((failures + 1))
    continue
  fi
  echo "==> $rel  ->  Infisical path=$ipath  env=$ENV_NAME"
  if [[ "$DRY_RUN" -eq 1 ]]; then
    ensure_infisical_folder "$ipath"
    echo "[dry-run] infisical secrets set --file=\"$abs\" --path=\"$ipath\" --env=\"$ENV_NAME\" ${EXTRA_ARGS[*]:+${EXTRA_ARGS[*]}}"
    continue
  fi
  ensure_infisical_folder "$ipath"
  if ! infisical secrets set --file="$abs" --path="$ipath" --env="$ENV_NAME" "${EXTRA_ARGS[@]}"; then
    echo "ERRO: falha ao importar $rel" >&2
    failures=$((failures + 1))
    continue
  fi
done < <(collect_env_files)

if [[ "$failures" -gt 0 ]]; then
  echo "Concluido com $failures erro(s). Corrija o mapa ou pastas e tente de novo." >&2
  exit 1
fi

if [[ "$DELETE_AFTER" -eq 1 ]]; then
  echo
  echo "Removendo .env.local importados (somente os mapeados com sucesso nesta execucao)..."
  while IFS= read -r rel; do
    [[ -z "$rel" ]] && continue
    ipath="$(infisical_path_for_file "$rel")"
    [[ -z "$ipath" ]] && continue
    abs="$ROOT/$rel"
    if [[ -f "$abs" ]]; then
      rm -f "$abs"
      echo "Removido: $rel"
    fi
  done < <(collect_env_files)
  echo "Feito. Valide: infisical run --env=$ENV_NAME -- pnpm --filter adventure-labs-admin exec next --version"
fi

echo
echo "OK. Proximo passo: rodar cada app com infisical run (veja docs/INFISICAL_SYNC.md e package.json dos apps)."
