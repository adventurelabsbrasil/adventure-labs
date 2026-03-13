#!/usr/bin/env bash
set -euo pipefail

# Roda lint nos workspaces conhecidos, apenas onde o script existir.

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

echo "▶ Rodando lint em workspaces (apps/*, packages/*, tools/*) quando disponível..."

pnpm -r --filter "./apps/*" --if-present lint
pnpm -r --filter "./packages/*" --if-present lint
pnpm -r --filter "./tools/*" --if-present lint

echo "✅ Lint concluído (onde havia script configurado)."

