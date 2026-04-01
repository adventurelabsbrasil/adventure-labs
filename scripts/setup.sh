#!/bin/bash
# Setup do repo adventure-labs — submodules + hooks + symlink admin/context
set -e

BOLD='\033[1m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${BOLD}Adventure Labs — Setup${NC}"
echo "──────────────────────────────────────"

# ─── 1. Submodules ───────────────────────────────────────────────────────────
echo "→ Inicializando submodules..."
git submodule update --init --recursive
echo -e "${GREEN}✓ Submodules inicializados${NC}"

# ─── 2. Git Hooks (pre-commit de segurança) ──────────────────────────────────
echo "→ Instalando git hooks..."
git config core.hooksPath .githooks
echo -e "${GREEN}✓ Git hooks instalados (.githooks/pre-commit)${NC}"

# ─── 3. Symlink knowledge → admin/context ────────────────────────────────────
echo "→ Criando symlink admin/context -> knowledge..."
if [ -d "apps/core/admin" ]; then
  rm -rf apps/core/admin/context 2>/dev/null || true
  ln -sf ../../../knowledge apps/core/admin/context
  echo -e "${GREEN}✓ Symlink criado: apps/core/admin/context -> ../../../knowledge${NC}"
else
  echo -e "${YELLOW}⚠ apps/core/admin não encontrado (submodule vazio?). Symlink será criado após inicializar o submodule.${NC}"
fi

# ─── 4. Verificar pnpm ───────────────────────────────────────────────────────
echo "→ Verificando pnpm..."
if command -v pnpm >/dev/null 2>&1; then
  PNPM_VERSION=$(pnpm --version)
  echo -e "${GREEN}✓ pnpm ${PNPM_VERSION} encontrado${NC}"
else
  echo -e "${YELLOW}⚠ pnpm não encontrado. Instalando...${NC}"
  npm install -g pnpm
  echo -e "${GREEN}✓ pnpm instalado${NC}"
fi

# ─── 5. Verificar Infisical CLI ──────────────────────────────────────────────
echo "→ Verificando Infisical CLI..."
if command -v infisical >/dev/null 2>&1; then
  echo -e "${GREEN}✓ Infisical CLI encontrado${NC}"
else
  echo -e "${YELLOW}⚠ Infisical CLI não encontrado.${NC}"
  echo "  Instale: https://infisical.com/docs/cli/overview"
  echo "  macOS: brew install infisical/get-cli/infisical"
fi

echo ""
echo -e "${BOLD}✅ Setup concluído.${NC}"
echo ""
echo "Próximos passos:"
echo "  1. Configure o Infisical: infisical login"
echo "  2. Instale dependências: pnpm install"
echo "  3. Inicie o admin: pnpm admin:dev"
echo ""
echo -e "${YELLOW}⚠ SEGURANÇA: Nunca commite .env, credenciais ou client_secret*.json.${NC}"
echo "  O pre-commit hook bloqueará automaticamente padrões conhecidos."
