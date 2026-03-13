#!/usr/bin/env bash
set -euo pipefail

# Executa testes nos workspaces conhecidos, apenas onde o script "test" existir.

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

echo "▶ Rodando testes em workspaces (apps/*, packages/*, tools/*) quando disponível..."

pnpm -r --filter "./apps/*" --if-present test
pnpm -r --filter "./packages/*" --if-present test
pnpm -r --filter "./tools/*" --if-present test

echo "✅ Testes concluídos (onde havia script configurado)."

