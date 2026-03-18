"""
Versão melhorada do GoogleAuthHelper que suporta arquivo .env.
"""

from google.oauth2.credentials import Credentials
from google_auth_oauthlib.flow import Flow
from google.auth.transport.requests import Request
from typing import Optional
import os
import json
import pickle
import requests

# Tentar carregar de python-dotenv se disponível
try:
    from dotenv import load_dotenv
    load_dotenv()
    _DOTENV_AVAILABLE = True
except ImportError:
    _DOTENV_AVAILABLE = False

# Scopes necessários para acessar NotebookLM
SCOPES = [
    'https://www.googleapis.com/auth/userinfo.email',
    'https://www.googleapis.com/auth/userinfo.profile',
    'openid'
]

# IDs do cliente OAuth (lê de variáveis de ambiente ou .env)
CLIENT_ID = os.getenv('GOOGLE_CLIENT_ID', '')
CLIENT_SECRET = os.getenv('GOOGLE_CLIENT_SECRET', '')
REDIRECT_URI = os.getenv('GOOGLE_REDIRECT_URI', 'http://localhost:8080/callback')


class GoogleAuthHelper:
    """Helper para gerenciar autenticação OAuth do Google."""
    
    def __init__(self, client_id: str = None, 
                 client_secret: str = None,
                 redirect_uri: str = None):
        """
        Inicializa o helper de autenticação.
        
        Args:
            client_id: ID do cliente OAuth (ou None para usar variável de ambiente)
            client_secret: Segredo do cliente OAuth (ou None para usar variável de ambiente)
            redirect_uri: URI de redirecionamento (ou None para usar padrão)
        """
        self.client_id = client_id or CLIENT_ID
        self.client_secret = client_secret or CLIENT_SECRET
        self.redirect_uri = redirect_uri or REDIRECT_URI
        self.credentials_file = 'token.pickle'
        
        if not self.client_id or not self.client_secret:
            print("⚠️  AVISO: CLIENT_ID e CLIENT_SECRET não configurados.")
            print("   Configure as variáveis de ambiente:")
            print("   - GOOGLE_CLIENT_ID")
            print("   - GOOGLE_CLIENT_SECRET")
            if _DOTENV_AVAILABLE:
                print("   Ou crie um arquivo .env com essas variáveis")
            else:
                print("   Ou instale python-dotenv: pip install python-dotenv")
    
    def check_config(self) -> bool:
        """
        Verifica se a configuração está completa.
        
        Returns:
            True se configurado, False caso contrário
        """
        if not self.client_id or not self.client_secret:
            return False
        return True
    
    def get_authorization_url(self) -> str:
        """
        Gera URL de autorização para o usuário.
        
        Returns:
            URL para o usuário autorizar o acesso
        """
        if not self.check_config():
            raise ValueError("CLIENT_ID e CLIENT_SECRET devem ser configurados")
        
        flow = Flow.from_client_config(
            {
                "web": {
                    "client_id": self.client_id,
                    "client_secret": self.client_secret,
                    "auth_uri": "https://accounts.google.com/o/oauth2/auth",
                    "token_uri": "https://oauth2.googleapis.com/token",
                    "redirect_uris": [self.redirect_uri]
                }
            },
            scopes=SCOPES,
            redirect_uri=self.redirect_uri
        )
        
        authorization_url, _ = flow.authorization_url(
            access_type='offline',
            include_granted_scopes='true',
            prompt='consent'  # Força mostrar tela de consentimento
        )
        
        return authorization_url
    
    def get_credentials_from_code(self, code: str) -> Credentials:
        """
        Obtém credenciais a partir do código de autorização.
        
        Args:
            code: Código retornado após autorização
            
        Returns:
            Credenciais OAuth
        """
        if not self.check_config():
            raise ValueError("CLIENT_ID e CLIENT_SECRET devem ser configurados")
        
        flow = Flow.from_client_config(
            {
                "web": {
                    "client_id": self.client_id,
                    "client_secret": self.client_secret,
                    "auth_uri": "https://accounts.google.com/o/oauth2/auth",
                    "token_uri": "https://oauth2.googleapis.com/token",
                    "redirect_uris": [self.redirect_uri]
                }
            },
            scopes=SCOPES,
            redirect_uri=self.redirect_uri
        )
        
        flow.fetch_token(code=code)
        credentials = flow.credentials
        
        # Salvar credenciais
        with open(self.credentials_file, 'wb') as token:
            pickle.dump(credentials, token)
        
        print("✅ Credenciais salvas com sucesso!")
        return credentials
    
    def load_credentials(self) -> Optional[Credentials]:
        """
        Carrega credenciais salvas.
        
        Returns:
            Credenciais ou None se não existirem
        """
        if os.path.exists(self.credentials_file):
            try:
                with open(self.credentials_file, 'rb') as token:
                    credentials = pickle.load(token)
                    
                    # Refresh se necessário
                    if credentials.expired and credentials.refresh_token:
                        credentials.refresh(Request())
                        with open(self.credentials_file, 'wb') as token:
                            pickle.dump(credentials, token)
                    
                    return credentials
            except Exception as e:
                print(f"⚠️  Erro ao carregar credenciais: {e}")
                return None
        return None
    
    def get_authenticated_session(self) -> Optional[requests.Session]:
        """
        Cria uma sessão HTTP autenticada.
        
        Returns:
            Sessão HTTP com autenticação ou None
        """
        credentials = self.load_credentials()
        if not credentials:
            return None
        
        session = requests.Session()
        
        # Adicionar token de acesso aos headers
        credentials.refresh(Request())
        session.headers.update({
            'Authorization': f'Bearer {credentials.token}'
        })
        
        return session
    
    def revoke_credentials(self):
        """Revoga as credenciais salvas."""
        credentials = self.load_credentials()
        if credentials:
            try:
                credentials.revoke(Request())
            except Exception:
                pass
        
        if os.path.exists(self.credentials_file):
            os.remove(self.credentials_file)
            print("✅ Credenciais revogadas e removidas")

