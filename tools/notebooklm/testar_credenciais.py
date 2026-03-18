#!/usr/bin/env python3
"""
Script para testar se as credenciais OAuth estão configuradas corretamente.
"""

import os
import sys

def testar_credenciais():
    """Testa se as credenciais estão configuradas."""
    
    print("=" * 60)
    print("TESTE DE CREDENCIAIS OAuth")
    print("=" * 60)
    print()
    
    client_id = os.getenv('GOOGLE_CLIENT_ID')
    client_secret = os.getenv('GOOGLE_CLIENT_SECRET')
    
    # Verificar variáveis de ambiente
    print("📋 Verificando variáveis de ambiente:")
    print(f"   GOOGLE_CLIENT_ID: {'✅ Configurado' if client_id else '❌ Não configurado'}")
    if client_id:
        print(f"      Valor: {client_id[:40]}...")
    
    print(f"   GOOGLE_CLIENT_SECRET: {'✅ Configurado' if client_secret else '❌ Não configurado'}")
    if client_secret:
        print(f"      Valor: {client_secret[:20]}...")
    
    print()
    
    if not client_id or not client_secret:
        print("❌ Credenciais não configuradas!")
        print()
        print("💡 Soluções:")
        print("   1. Execute: source ~/.zshrc")
        print("   2. Ou configure manualmente:")
        print("      export GOOGLE_CLIENT_ID='seu-id'")
        print("      export GOOGLE_CLIENT_SECRET='seu-secret'")
        print("   3. Ou crie um arquivo .env (veja .env.example)")
        return False
    
    # Tentar importar o helper
    print("📦 Testando importação do GoogleAuthHelper...")
    try:
        from google_auth_helper import GoogleAuthHelper
        print("   ✅ Módulo importado com sucesso")
        
        auth = GoogleAuthHelper()
        print("   ✅ Helper inicializado")
        
        if auth.check_config() if hasattr(auth, 'check_config') else (auth.client_id and auth.client_secret):
            print("   ✅ Credenciais carregadas no helper")
            print()
            print("✅ TUDO CONFIGURADO CORRETAMENTE!")
            print()
            print("🚀 Próximos passos:")
            print("   python3 example.py")
            print("   # Escolha opção 2 para testar autenticação")
            return True
        else:
            print("   ⚠️  Helper não conseguiu carregar as credenciais")
            return False
            
    except ImportError as e:
        print(f"   ❌ Erro ao importar: {e}")
        print("   💡 Instale as dependências: pip3 install -r requirements.txt")
        return False
    except Exception as e:
        print(f"   ⚠️  Erro: {e}")
        print("   (Pode ser normal se algumas dependências não estiverem instaladas)")
        return False


if __name__ == "__main__":
    sucesso = testar_credenciais()
    sys.exit(0 if sucesso else 1)

