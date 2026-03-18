#!/usr/bin/env python3
"""
Script de teste básico para verificar se o código está funcionando.
"""

import sys

def testar_imports():
    """Testa se os módulos podem ser importados."""
    print("🔍 Testando imports...")
    
    try:
        from notebooklm_client import NotebookLMClient
        print("✅ NotebookLMClient importado com sucesso")
    except ImportError as e:
        print(f"❌ Erro ao importar NotebookLMClient: {e}")
        return False
    
    try:
        from google_auth_helper import GoogleAuthHelper
        print("✅ GoogleAuthHelper importado com sucesso")
    except ImportError as e:
        print(f"⚠️  Aviso ao importar GoogleAuthHelper: {e}")
        print("   (Isso é normal se as dependências do Google não estiverem instaladas)")
    
    return True

def testar_cliente_basico():
    """Testa a criação básica do cliente."""
    print("\n🔍 Testando criação do cliente...")
    
    try:
        from notebooklm_client import NotebookLMClient
        
        notebook_id = "84b4b6d9-e014-48b7-a141-fa9ec1b9b01f"
        client = NotebookLMClient(notebook_id)
        
        print(f"✅ Cliente criado para notebook: {notebook_id}")
        print(f"   URL: {client.notebook_url}")
        return True
    except Exception as e:
        print(f"❌ Erro ao criar cliente: {e}")
        return False

def testar_metodos():
    """Testa se os métodos existem."""
    print("\n🔍 Testando métodos do cliente...")
    
    try:
        from notebooklm_client import NotebookLMClient
        
        notebook_id = "84b4b6d9-e014-48b7-a141-fa9ec1b9b01f"
        client = NotebookLMClient(notebook_id)
        
        # Verificar se métodos existem
        metodos = ['get_notebook_info', 'query_notebook', 'list_sources']
        for metodo in metodos:
            if hasattr(client, metodo):
                print(f"✅ Método '{metodo}' existe")
            else:
                print(f"❌ Método '{metodo}' não encontrado")
                return False
        
        return True
    except Exception as e:
        print(f"❌ Erro ao testar métodos: {e}")
        return False

def main():
    """Executa todos os testes."""
    print("=" * 60)
    print("TESTE BÁSICO - NotebookLM Client")
    print("=" * 60)
    print()
    
    resultados = []
    
    resultados.append(("Imports", testar_imports()))
    resultados.append(("Criação do Cliente", testar_cliente_basico()))
    resultados.append(("Métodos", testar_metodos()))
    
    print("\n" + "=" * 60)
    print("RESULTADO DOS TESTES")
    print("=" * 60)
    
    for nome, resultado in resultados:
        status = "✅ PASSOU" if resultado else "❌ FALHOU"
        print(f"{nome}: {status}")
    
    todos_passaram = all(r[1] for r in resultados)
    
    if todos_passaram:
        print("\n✅ Todos os testes básicos passaram!")
        print("\n💡 Próximos passos:")
        print("   1. Instale as dependências: pip install -r requirements.txt")
        print("   2. Execute: python main.py")
        print("   3. Ou teste com uma pergunta: python main.py 'sua pergunta'")
    else:
        print("\n⚠️  Alguns testes falharam. Verifique os erros acima.")
    
    return 0 if todos_passaram else 1

if __name__ == "__main__":
    sys.exit(main())

