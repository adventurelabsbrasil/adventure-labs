#!/bin/bash
# Setup do repo adventure-labs — submodules + symlink admin/context
set -e

echo "Inicializando submodules..."
git submodule update --init --recursive

echo "Criando symlink admin/context -> ../../knowledge..."
if [ -d "apps/admin" ]; then
  rm -rf apps/admin/context 2>/dev/null || true
  ln -sf ../../knowledge apps/admin/context
  echo "Symlink criado: apps/admin/context -> ../../knowledge"
else
  echo "Aviso: apps/admin não encontrado. Execute após git submodule update."
fi
