"""
Exemplo de uso do NotebookLM Client.
"""

from notebooklm_client import NotebookLMClient


def exemplo_basico():
    """Exemplo básico de uso do cliente."""
    
    # ID do seu notebook
    notebook_id = "84b4b6d9-e014-48b7-a141-fa9ec1b9b01f"
    
    # Criar cliente
    client = NotebookLMClient(notebook_id)
    
    print("🔍 Consultando informações do notebook...")
    info = client.get_notebook_info()
    print(f"Resultado: {info}\n")
    
    # Tentar fazer uma consulta
    print("💬 Fazendo uma pergunta ao notebook...")
    resposta = client.query_notebook("Qual é o tema principal deste notebook?")
    print(f"Resposta: {resposta}\n")
    
    # Listar fontes
    print("📚 Listando fontes do notebook...")
    fontes = client.list_sources()
    print(f"Fontes: {fontes}")


def exemplo_com_autenticacao():
    """Exemplo usando autenticação OAuth."""
    
    from google_auth_helper import GoogleAuthHelper
    
    # Configurar autenticação
    auth_helper = GoogleAuthHelper()
    
    # Verificar se já existe credencial salva
    session = auth_helper.get_authenticated_session()
    
    if not session:
        print("🔐 Autenticação necessária.")
        print("1. Acesse esta URL para autorizar:")
        print(f"   {auth_helper.get_authorization_url()}\n")
        print("2. Após autorizar, você receberá um código.")
        print("3. Cole o código aqui e pressione Enter:")
        
        code = input("Código: ").strip()
        credentials = auth_helper.get_credentials_from_code(code)
        session = auth_helper.get_authenticated_session()
    
    # Usar cliente autenticado
    notebook_id = "84b4b6d9-e014-48b7-a141-fa9ec1b9b01f"
    client = NotebookLMClient(notebook_id, session=session)
    
    print("\n✅ Autenticado! Fazendo consulta...")
    resposta = client.query_notebook("Resuma os principais pontos")
    print(f"Resposta: {resposta}")


if __name__ == "__main__":
    print("Escolha um exemplo:")
    print("1. Exemplo básico (sem autenticação)")
    print("2. Exemplo com autenticação OAuth")
    
    escolha = input("\nOpção (1 ou 2): ").strip()
    
    if escolha == "1":
        exemplo_basico()
    elif escolha == "2":
        exemplo_com_autenticacao()
    else:
        print("Opção inválida!")

