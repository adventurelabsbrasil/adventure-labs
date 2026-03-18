#!/usr/bin/env python3
"""
Script para analisar profundamente um notebook público do NotebookLM.
Extrai todas as informações disponíveis na página pública.
"""

import json
from notebooklm_client import NotebookLMClient


def analisar_notebook_publico(notebook_id: str):
    """Analisa um notebook público em detalhes."""
    
    print("=" * 70)
    print("ANÁLISE DE NOTEBOOK PÚBLICO - NotebookLM")
    print("=" * 70)
    print(f"\n📓 Notebook ID: {notebook_id}")
    print(f"🔗 URL: https://notebooklm.google.com/notebook/{notebook_id}\n")
    
    client = NotebookLMClient(notebook_id)
    
    # 1. Informações básicas
    print("=" * 70)
    print("1. INFORMAÇÕES BÁSICAS")
    print("=" * 70)
    info = client.get_notebook_info()
    print(json.dumps(info, indent=2, ensure_ascii=False))
    
    if info.get('status') != 'success':
        print("\n❌ Não foi possível acessar o notebook. Verifique se é público.")
        return
    
    # 2. Dados públicos
    print("\n" + "=" * 70)
    print("2. EXTRAINDO DADOS PÚBLICOS")
    print("=" * 70)
    public_data = client.get_public_notebook_data()
    
    if public_data.get('status') == 'success':
        print("\n✅ Dados extraídos com sucesso!\n")
        
        # Dados JSON diretos
        if public_data.get('data'):
            print("📦 DADOS JSON DIRETOS:")
            print(json.dumps(public_data['data'], indent=2, ensure_ascii=False)[:1000])
            print("...\n")
        
        # Informações do HTML
        html_info = public_data.get('html_extracted') or public_data
        
        if html_info.get('title'):
            print(f"📄 Título: {html_info['title']}\n")
        
        if html_info.get('json_data'):
            print("📋 DADOS JSON DO HTML:")
            json_data = html_info['json_data']
            print(json.dumps(json_data, indent=2, ensure_ascii=False)[:2000])
            print("...\n")
        
        if html_info.get('script_data'):
            print("📜 DADOS DOS SCRIPTS JAVASCRIPT:")
            script_data = html_info['script_data']
            print(json.dumps(script_data, indent=2, ensure_ascii=False)[:2000])
            print("...\n")
        
        if html_info.get('api_endpoints'):
            print("🔗 ENDPOINTS DE API ENCONTRADOS:")
            for endpoint in html_info['api_endpoints'][:20]:
                print(f"   - {endpoint}")
            print()
        
        if html_info.get('notebook_data'):
            print("🆔 DADOS DO NOTEBOOK:")
            print(json.dumps(html_info['notebook_data'], indent=2, ensure_ascii=False))
            print()
        
        if html_info.get('meta_tags'):
            print("🏷️  META TAGS:")
            for key, value in list(html_info['meta_tags'].items())[:10]:
                print(f"   {key}: {value[:100]}")
            print()
        
        # Salvar em arquivo para análise posterior
        output_file = f"notebook_{notebook_id}_data.json"
        try:
            with open(output_file, 'w', encoding='utf-8') as f:
                json.dump({
                    'notebook_id': notebook_id,
                    'info': info,
                    'public_data': public_data
                }, f, indent=2, ensure_ascii=False)
            print(f"💾 Dados salvos em: {output_file}")
        except Exception as e:
            print(f"⚠️  Não foi possível salvar arquivo: {e}")
    
    else:
        print(f"\n❌ Erro ao extrair dados: {public_data.get('error', 'Desconhecido')}")
        print(f"   {public_data.get('message', '')}")
    
    print("\n" + "=" * 70)
    print("ANÁLISE CONCLUÍDA")
    print("=" * 70)


if __name__ == "__main__":
    import sys
    
    notebook_id = "84b4b6d9-e014-48b7-a141-fa9ec1b9b01f"
    
    if len(sys.argv) > 1:
        notebook_id = sys.argv[1]
    
    analisar_notebook_publico(notebook_id)

