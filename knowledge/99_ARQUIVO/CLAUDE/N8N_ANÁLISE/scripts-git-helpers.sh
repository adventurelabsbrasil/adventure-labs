#!/bin/bash
# 🚀 n8n Git Automation Scripts
# Use esses scripts para facilitar o versionamento

echo "╔═══════════════════════════════════════════════════════╗"
echo "║    n8n Autonomous Loop - Git Helper Scripts          ║"
echo "╚═══════════════════════════════════════════════════════╝"

# ===========================================================
# 1. Script: commit.sh - Fazer commits com padrão
# ===========================================================

cat > commit.sh << 'EOF'
#!/bin/bash
# Uso: ./commit.sh "type" "subject" "description"
# Exemplo: ./commit.sh "feat" "Gemini Flash optimization" "Reduced cost by 70%"

TYPE=${1:-"fix"}
SUBJECT=${2:-"Update workflow"}
DESCRIPTION=${3:-""}
ISSUE=${4:-""}

MESSAGE="$TYPE: $SUBJECT"

if [ ! -z "$DESCRIPTION" ]; then
  MESSAGE="$MESSAGE

$DESCRIPTION"
fi

if [ ! -z "$ISSUE" ]; then
  MESSAGE="$MESSAGE

Closes #$ISSUE"
fi

echo "📝 Commit message:"
echo "$MESSAGE"
echo ""
read -p "Pressione ENTER para confirmar, ou Ctrl+C para cancelar..."

git add .
git commit -m "$MESSAGE"
echo "✅ Commit realizado!"

EOF

chmod +x commit.sh

# ===========================================================
# 2. Script: branch.sh - Criar branch com padrão
# ===========================================================

cat > branch.sh << 'EOF'
#!/bin/bash
# Uso: ./branch.sh "feature" "gemini-optimization"
# Ou: ./branch.sh "bugfix" "empty-report"

TYPE=${1:-"feature"}
NAME=${2:-"new-feature"}

BRANCH_NAME="$TYPE/$NAME"

echo "🌿 Criando branch: $BRANCH_NAME"

# Atualizar main primeiro
git checkout main
git pull origin main

# Criar branch novo
git checkout -b $BRANCH_NAME

echo "✅ Branch criado e ativo!"
echo "Comece a fazer suas alterações..."

EOF

chmod +x branch.sh

# ===========================================================
# 3. Script: version.sh - Criar release tags
# ===========================================================

cat > version.sh << 'EOF'
#!/bin/bash
# Uso: ./version.sh "7.1.0" "Gemini Flash optimization"

VERSION=${1:-"7.1.0"}
MESSAGE=${2:-"Release version"}

echo "🏷️  Criando release: v$VERSION"
echo "   Mensagem: $MESSAGE"
echo ""

git tag -a v$VERSION -m "Release $VERSION - $MESSAGE"
git push origin v$VERSION

echo "✅ Release v$VERSION criado!"
echo "   Próximo passo: Vá ao GitHub e crie a Release"

EOF

chmod +x version.sh

# ===========================================================
# 4. Script: status.sh - Ver status do repositório
# ===========================================================

cat > status.sh << 'EOF'
#!/bin/bash
# Mostra status completo do repositório

clear
echo "╔════════════════════════════════════════════╗"
echo "║        Git Repository Status             ║"
echo "╚════════════════════════════════════════════╝"

echo ""
echo "📍 Branch atual:"
git branch --show-current

echo ""
echo "📊 Status dos arquivos:"
git status

echo ""
echo "📜 Últimos 5 commits:"
git log --oneline -5

echo ""
echo "🌿 Branches locais:"
git branch -v

echo ""
echo "🔗 Remote:"
git remote -v

EOF

chmod +x status.sh

# ===========================================================
# 5. Script: update.sh - Trazer changes do GitHub
# ===========================================================

cat > update.sh << 'EOF'
#!/bin/bash
# Atualizar repositório local com mudanças do GitHub

echo "📥 Atualizando repositório..."

git fetch origin
git pull origin main

echo "✅ Repositório atualizado!"
echo ""
./status.sh

EOF

chmod +x update.sh

# ===========================================================
# 6. Script: merge-to-prod.sh - Preparar para produção
# ===========================================================

cat > merge-to-prod.sh << 'EOF'
#!/bin/bash
# Fazer merge seguro para production

BRANCH=$(git branch --show-current)

if [ "$BRANCH" == "main" ]; then
  echo "❌ Erro: Você já está na branch main!"
  exit 1
fi

echo "🔀 Fazendo merge de $BRANCH para main..."

# Atualizar main
git checkout main
git pull origin main

# Merge a feature
git merge --no-ff $BRANCH -m "Merge $BRANCH to main"

# Push
git push origin main

echo "✅ Merge realizado com sucesso!"
echo "   Branch $BRANCH pode ser deletada"

EOF

chmod +x merge-to-prod.sh

# ===========================================================
# 7. Script: backup.sh - Fazer backup do fluxo
# ===========================================================

cat > backup.sh << 'EOF'
#!/bin/bash
# Fazer backup automático do fluxo n8n

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="workflows/archive"
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.json"

# Se tiver arquivo n8n baixado
if [ -f "csuite-loop.json" ]; then
  cp csuite-loop.json $BACKUP_FILE
  echo "✅ Backup realizado: $BACKUP_FILE"
else
  echo "❌ Nenhum arquivo csuite-loop.json encontrado"
fi

EOF

chmod +x backup.sh

# ===========================================================
# 8. Script: validate.sh - Validar JSON do n8n
# ===========================================================

cat > validate.sh << 'EOF'
#!/bin/bash
# Validar JSON dos fluxos

echo "🔍 Validando arquivos JSON..."

for file in workflows/**/*.json; do
  if ! python3 -m json.tool "$file" > /dev/null 2>&1; then
    echo "❌ Erro em: $file"
  else
    echo "✅ $file"
  fi
done

EOF

chmod +x validate.sh

echo "✅ Scripts criados com sucesso!"
echo ""
echo "Scripts disponíveis:"
echo "  • ./commit.sh <type> <subject> <description>"
echo "  • ./branch.sh <type> <name>"
echo "  • ./version.sh <version> <message>"
echo "  • ./status.sh"
echo "  • ./update.sh"
echo "  • ./merge-to-prod.sh"
echo "  • ./backup.sh"
echo "  • ./validate.sh"
echo ""
echo "Exemplo de uso:"
echo "  1. ./branch.sh feature my-new-feature"
echo "  2. (Editar fluxo no n8n, baixar JSON)"
echo "  3. ./commit.sh feat 'My feature' 'Description here' 123"
echo "  4. ./merge-to-prod.sh"
echo "  5. ./version.sh 7.1.0 'Feature release'"

