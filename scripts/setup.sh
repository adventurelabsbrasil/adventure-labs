#!/bin/bash
# Setup do repo adventure-labs — submodules + symlink admin/context
set -e

echo "Inicializando submodules..."
git submodule update --init --recursive

echo "Criando symlink admin/context -> ../../../knowledge..."
if [ -d "apps/core/admin" ]; then
  rm -rf apps/core/admin/context 2>/dev/null || true
  ln -sf ../../../knowledge apps/core/admin/context
  echo "Symlink criado: apps/core/admin/context -> ../../../knowledge"
else
  echo "Aviso: apps/core/admin não encontrado. Execute após git submodule update."
fi
