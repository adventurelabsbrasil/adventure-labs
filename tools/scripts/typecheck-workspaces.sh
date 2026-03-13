#!/usr/bin/env bash
set -euo pipefail

# Valida os workspaces conhecidos rodando type-check onde o script existir.

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

echo "▶ Rodando type-check em workspaces (apps/*, packages/*, tools/*) quando disponível..."

pnpm -r --filter "./apps/*" --if-present type-check
pnpm -r --filter "./packages/*" --if-present type-check
pnpm -r --filter "./tools/*" --if-present type-check

echo "✅ Type-check concluído (onde havia script configurado)."

