#!/bin/bash
# Script para configurar variáveis de ambiente para NotebookLM

echo "=========================================="
echo "Configuração de Variáveis de Ambiente"
echo "=========================================="
echo ""

# Verificar se já existe
if [ -n "$GOOGLE_CLIENT_ID" ] && [ -n "$GOOGLE_CLIENT_SECRET" ]; then
    echo "⚠️  Variáveis já configuradas!"
    echo "   CLIENT_ID: ${GOOGLE_CLIENT_ID:0:20}..."
    echo "   CLIENT_SECRET: ${GOOGLE_CLIENT_SECRET:0:20}..."
    echo ""
    read -p "Deseja sobrescrever? (s/N): " overwrite
    if [ "$overwrite" != "s" ] && [ "$overwrite" != "S" ]; then
        echo "Cancelado."
        exit 0
    fi
fi

echo "Por favor, insira suas credenciais OAuth do Google Cloud Console:"
echo ""
echo "Você pode obtê-las em:"
echo "https://console.cloud.google.com/apis/credentials"
echo ""

read -p "GOOGLE_CLIENT_ID: " client_id
read -sp "GOOGLE_CLIENT_SECRET: " client_secret
echo ""

if [ -z "$client_id" ] || [ -z "$client_secret" ]; then
    echo "❌ Erro: CLIENT_ID e CLIENT_SECRET são obrigatórios!"
    exit 1
fi

# Determinar qual arquivo usar
if [ -n "$ZSH_VERSION" ]; then
    config_file="$HOME/.zshrc"
elif [ -n "$BASH_VERSION" ]; then
    config_file="$HOME/.bashrc"
else
    config_file="$HOME/.profile"
fi

# Remover configurações antigas se existirem
if grep -q "GOOGLE_CLIENT_ID" "$config_file" 2>/dev/null; then
    echo "🗑️  Removendo configurações antigas..."
    sed -i.bak '/GOOGLE_CLIENT_ID/d' "$config_file"
    sed -i.bak '/GOOGLE_CLIENT_SECRET/d' "$config_file"
fi

# Adicionar novas configurações
echo "" >> "$config_file"
echo "# NotebookLM OAuth Credentials" >> "$config_file"
echo "export GOOGLE_CLIENT_ID=\"$client_id\"" >> "$config_file"
echo "export GOOGLE_CLIENT_SECRET=\"$client_secret\"" >> "$config_file"

echo ""
echo "✅ Variáveis de ambiente configuradas em: $config_file"
echo ""
echo "Para aplicar agora, execute:"
echo "  source $config_file"
echo ""
echo "Ou feche e abra um novo terminal."

