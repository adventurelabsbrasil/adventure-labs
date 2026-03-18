#!/usr/bin/env python3
"""
Aplicativo principal para consultar dados do NotebookLM.
"""

import sys
from notebooklm_client import NotebookLMClient
from google_auth_helper import GoogleAuthHelper


def main():
    """Função principal do aplicativo."""
    
    # ID do notebook específico
    NOTEBOOK_ID = "84b4b6d9-e014-48b7-a141-fa9ec1b9b01f"
    
    print("=" * 60)
    print("NotebookLM Data Client")
    print("=" * 60)
    print(f"\nNotebook ID: {NOTEBOOK_ID}")
    print(f"URL: https://notebooklm.google.com/notebook/{NOTEBOOK_ID}\n")
    
    # Tentar autenticação (se configurada)
    auth_helper = GoogleAuthHelper()
    session = auth_helper.get_authenticated_session()
    
    if not session:
        print("⚠️  Autenticação não configurada.")
        print("   Acessando sem autenticação (pode ter limitações).\n")
    
    # Criar cliente
    client = NotebookLMClient(NOTEBOOK_ID, session=session)
    
    # Tentar obter informações do notebook
    print("📖 Obtendo informações do notebook...")
    info = client.get_notebook_info()
    
    if info.get('status') == 'success':
        print(f"✅ Status: {info.get('status')}")
        print(f"   URL acessada: {info.get('url')}")
        print(f"   Status HTTP: {info.get('status_code')}")
        if info.get('content_length'):
            print(f"   Tamanho da resposta: {info.get('content_length')} bytes")
    elif info.get('status') == 'auth_required':
        print(f"🔒 Status: {info.get('status')}")
        print(f"   {info.get('note')}")
    elif info.get('status') == 'error':
        print(f"❌ Status: {info.get('status')}")
        print(f"   Erro: {info.get('error')}")
        print(f"   Nota: {info.get('note')}")
    
    # Tentar extrair informações do HTML se possível (para notebooks públicos)
    if info.get('status') == 'success':
        print("\n🔍 Tentando extrair dados do notebook público...")
        public_data = client.get_public_notebook_data()
        
        if public_data.get('status') == 'success':
            if public_data.get('data'):
                print(f"   ✅ Dados obtidos do endpoint: {public_data.get('endpoint')}")
                data = public_data.get('data', {})
                if isinstance(data, dict):
                    print(f"   Chaves encontradas: {', '.join(data.keys())[:100]}")
            
            html_info = public_data.get('html_extracted') or public_data
            
            if html_info.get('title'):
                print(f"   📄 Título: {html_info.get('title')}")
            
            if html_info.get('has_json_data') or html_info.get('json_data'):
                json_data = html_info.get('json_data', {})
                if json_data:
                    print(f"   ✅ Dados JSON encontrados na página!")
                    print(f"   Chaves: {', '.join(list(json_data.keys())[:10])}")
            
            if html_info.get('has_script_data') or html_info.get('script_data'):
                script_data = html_info.get('script_data', {})
                if script_data:
                    print(f"   ✅ Dados encontrados em scripts JavaScript!")
                    print(f"   Chaves: {', '.join(list(script_data.keys())[:10])}")
            
            if html_info.get('api_endpoints'):
                endpoints = html_info.get('api_endpoints', [])
                unique_endpoints = list(set(endpoints))[:5]
                print(f"   🔗 Endpoints de API encontrados: {len(endpoints)}")
                for ep in unique_endpoints:
                    print(f"      - {ep}")
            
            if html_info.get('notebook_data'):
                nb_data = html_info.get('notebook_data', {})
                if nb_data.get('found_ids'):
                    print(f"   🆔 IDs encontrados: {', '.join(nb_data['found_ids'])}")
        
        elif public_data.get('status') == 'error':
            if 'BeautifulSoup' in public_data.get('error', ''):
                print(f"   ⚠️  {public_data.get('error')}")
                print(f"   💡 Instale: pip install beautifulsoup4 lxml")
            else:
                print(f"   ⚠️  {public_data.get('message', public_data.get('error'))}")
    
    # Exemplo de consulta
    if len(sys.argv) > 1:
        query = " ".join(sys.argv[1:])
        print(f"\n🔍 Consultando: '{query}'")
        result = client.query_notebook(query)
        
        if result.get('status') == 'auth_required':
            print(f"\n🔒 {result.get('message')}")
            print(f"   {result.get('note', '')}")
        elif result.get('status') == 'endpoint_not_found':
            print(f"\n⚠️  {result.get('message')}")
            print(f"   {result.get('note', '')}")
        elif result.get('status') == 'error':
            print(f"\n❌ Erro: {result.get('error')}")
            print(f"   {result.get('message', '')}")
        else:
            print(f"\n✅ Resposta recebida:")
            print(f"   {result}")
    else:
        print("\n💬 Para fazer uma consulta, execute:")
        print(f"   python3 main.py \"sua pergunta aqui\"")
    
    # Tentar listar fontes
    print("\n📚 Tentando listar fontes do notebook...")
    sources = client.list_sources()
    
    if isinstance(sources, dict):
        if sources.get('status') == 'auth_required':
            print(f"🔒 {sources.get('message')}")
        elif sources.get('status') == 'endpoint_not_found':
            print(f"⚠️  {sources.get('message')}")
            print(f"   {sources.get('note', '')}")
        elif sources.get('status') == 'empty_response':
            print(f"⚠️  {sources.get('message')}")
            print(f"   {sources.get('note', '')}")
        elif sources.get('status') == 'invalid_json':
            print(f"⚠️  {sources.get('message')}")
            print(f"   Erro: {sources.get('error')}")
            print(f"   {sources.get('note', '')}")
        elif sources.get('status') == 'error':
            print(f"❌ Erro: {sources.get('error')}")
            print(f"   {sources.get('message', '')}")
        else:
            print(f"✅ Fontes encontradas: {sources}")
    else:
        print(f"✅ Fontes: {sources}")


if __name__ == "__main__":
    main()

