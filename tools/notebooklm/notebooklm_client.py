"""
Cliente para acessar dados do NotebookLM do Google.
Nota: O NotebookLM não possui API oficial, então esta implementação
tenta acessar através da interface web ou métodos não oficiais.
"""

import requests
from typing import Dict, List, Optional, Any
from urllib.parse import urljoin
import json


class NotebookLMClient:
    """Cliente para interagir com notebooks do NotebookLM."""
    
    BASE_URL = "https://notebooklm.google.com"
    
    def __init__(self, notebook_id: str, session: Optional[requests.Session] = None):
        """
        Inicializa o cliente do NotebookLM.
        
        Args:
            notebook_id: ID do notebook (ex: 84b4b6d9-e014-48b7-a141-fa9ec1b9b01f)
            session: Sessão HTTP opcional (útil para manter cookies/autenticação)
        """
        self.notebook_id = notebook_id
        self.notebook_url = f"{self.BASE_URL}/notebook/{notebook_id}"
        self.session = session or requests.Session()
        self.session.headers.update({
            'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36'
        })
    
    def get_notebook_info(self) -> Dict[str, Any]:
        """
        Tenta obter informações básicas do notebook.
        
        Returns:
            Dict com informações do notebook ou erro
        """
        try:
            response = self.session.get(self.notebook_url)
            response.raise_for_status()
            
            info = {
                'status': 'success',
                'notebook_id': self.notebook_id,
                'url': self.notebook_url,
                'status_code': response.status_code,
                'content_type': response.headers.get('Content-Type', 'unknown'),
                'content_length': len(response.content),
                'note': 'Acesso bem-sucedido à página do notebook'
            }
            
            # Verificar se precisa de autenticação (redirecionamento para login)
            if 'accounts.google.com' in response.url or 'signin' in response.url.lower():
                info['status'] = 'auth_required'
                info['note'] = 'Redirecionado para página de login - autenticação necessária'
            
            return info
            
        except requests.RequestException as e:
            return {
                'status': 'error',
                'error': str(e),
                'note': 'Pode ser necessário autenticação via OAuth'
            }
    
    def get_public_notebook_data(self) -> Dict[str, Any]:
        """
        Tenta obter dados públicos do notebook.
        Para notebooks públicos, os dados podem estar disponíveis diretamente.
        
        Returns:
            Dados do notebook público
        """
        # Tentar diferentes endpoints possíveis para notebooks públicos
        endpoints_to_try = [
            f"{self.BASE_URL}/api/v1/notebooks/{self.notebook_id}",
            f"{self.BASE_URL}/api/notebooks/{self.notebook_id}",
            f"{self.BASE_URL}/api/public/notebooks/{self.notebook_id}",
            f"{self.BASE_URL}/notebook/{self.notebook_id}/data",
        ]
        
        for endpoint in endpoints_to_try:
            try:
                response = self.session.get(endpoint)
                
                if response.status_code == 200:
                    try:
                        data = response.json()
                        return {
                            'status': 'success',
                            'endpoint': endpoint,
                            'data': data
                        }
                    except json.JSONDecodeError:
                        # Se não for JSON, pode ser HTML - vamos tentar extrair
                        if 'text/html' in response.headers.get('Content-Type', ''):
                            html_info = self.extract_info_from_html()
                            return {
                                'status': 'success',
                                'endpoint': endpoint,
                                'html_extracted': html_info
                            }
                
            except requests.RequestException:
                continue
        
        # Se nenhum endpoint funcionou, tentar extrair do HTML
        return self.extract_info_from_html()
    
    def query_notebook(self, query: str) -> Dict[str, Any]:
        """
        Consulta o notebook com uma pergunta.
        
        Args:
            query: Pergunta ou consulta a fazer ao notebook
            
        Returns:
            Resposta do notebook ou erro
        """
        # Nota: Esta é uma implementação de exemplo
        # A API real do NotebookLM pode ter endpoints diferentes
        api_endpoint = f"{self.BASE_URL}/api/notebooks/{self.notebook_id}/query"
        
        try:
            payload = {
                'query': query,
                'notebookId': self.notebook_id
            }
            
            response = self.session.post(
                api_endpoint,
                json=payload,
                headers={'Content-Type': 'application/json'}
            )
            
            if response.status_code == 401:
                return {
                    'status': 'auth_required',
                    'error': 'Autenticação necessária',
                    'message': 'É necessário fazer login com Google Account',
                    'note': 'Configure OAuth ou acesse manualmente via navegador'
                }
            
            if response.status_code == 404:
                return {
                    'status': 'endpoint_not_found',
                    'error': 'Endpoint não encontrado',
                    'message': 'Este endpoint pode não existir na API do NotebookLM',
                    'note': 'O NotebookLM não possui API pública oficial'
                }
            
            response.raise_for_status()
            
            # Tentar fazer parse do JSON
            try:
                return response.json()
            except json.JSONDecodeError:
                return {
                    'status': 'invalid_response',
                    'error': 'Resposta não é JSON válido',
                    'response_text': response.text[:200] if response.text else 'Vazio',
                    'status_code': response.status_code,
                    'message': 'O servidor retornou uma resposta não-JSON'
                }
            
        except requests.RequestException as e:
            return {
                'status': 'error',
                'error': str(e),
                'message': 'Endpoint pode não existir ou requer autenticação',
                'note': 'O NotebookLM não possui API pública oficial'
            }
    
    def list_sources(self) -> Dict[str, Any]:
        """
        Lista as fontes (documentos) adicionadas ao notebook.
        
        Returns:
            Lista de fontes do notebook ou erro
        """
        api_endpoint = f"{self.BASE_URL}/api/notebooks/{self.notebook_id}/sources"
        
        try:
            response = self.session.get(api_endpoint)
            
            if response.status_code == 401:
                return {
                    'status': 'auth_required',
                    'error': 'Autenticação necessária',
                    'message': 'É necessário fazer login com Google Account'
                }
            
            if response.status_code == 404:
                return {
                    'status': 'endpoint_not_found',
                    'error': 'Endpoint não encontrado',
                    'message': 'Este endpoint pode não existir na API do NotebookLM',
                    'note': 'O NotebookLM não possui API pública oficial'
                }
            
            response.raise_for_status()
            
            # Verificar se a resposta não está vazia antes de fazer parse
            if not response.text or response.text.strip() == '':
                return {
                    'status': 'empty_response',
                    'error': 'Resposta vazia',
                    'message': 'O servidor retornou uma resposta vazia',
                    'status_code': response.status_code,
                    'note': 'Pode ser necessário autenticação ou o endpoint não existe'
                }
            
            try:
                return response.json()
            except json.JSONDecodeError as e:
                return {
                    'status': 'invalid_json',
                    'error': f'Erro ao fazer parse do JSON: {str(e)}',
                    'response_preview': response.text[:200] if response.text else 'Vazio',
                    'status_code': response.status_code,
                    'message': 'A resposta não é um JSON válido',
                    'note': 'O servidor pode estar retornando HTML em vez de JSON'
                }
                
        except requests.RequestException as e:
            return {
                'status': 'error',
                'error': str(e),
                'message': 'Não foi possível listar fontes',
                'note': 'O NotebookLM não possui API pública oficial'
            }
    
    def extract_info_from_html(self) -> Dict[str, Any]:
        """
        Tenta extrair informações do notebook da página HTML.
        Isso é útil quando a API não está disponível.
        Para notebooks públicos, os dados podem estar embutidos no HTML/JavaScript.
        
        Returns:
            Informações extraídas da página HTML
        """
        try:
            from bs4 import BeautifulSoup
            import re
            
            response = self.session.get(self.notebook_url)
            response.raise_for_status()
            
            html_content = response.text
            soup = BeautifulSoup(html_content, 'html.parser')
            
            result = {
                'status': 'success',
                'title': None,
                'json_data': {},
                'script_data': {},
                'meta_tags': {},
                'api_endpoints': [],
                'notebook_data': {}
            }
            
            # Extrair título
            title_tag = soup.find('title')
            if title_tag:
                result['title'] = title_tag.get_text().strip()
            
            # Extrair meta tags
            for meta in soup.find_all('meta'):
                name = meta.get('name') or meta.get('property')
                content = meta.get('content')
                if name and content:
                    result['meta_tags'][name] = content
            
            # Procurar por dados JSON em scripts com type="application/json"
            script_tags = soup.find_all('script', type='application/json')
            for script in script_tags:
                try:
                    if script.string:
                        data = json.loads(script.string)
                        result['json_data'].update(data)
                except (json.JSONDecodeError, AttributeError):
                    pass
            
            # Procurar por dados JSON em scripts JavaScript (comum em SPAs)
            all_scripts = soup.find_all('script')
            for script in all_scripts:
                if not script.string:
                    continue
                
                script_text = script.string
                
                # Procurar por padrões como window.__INITIAL_STATE__ = {...}
                patterns = [
                    r'window\.__INITIAL_STATE__\s*=\s*({.+?});',
                    r'window\.__INITIAL_DATA__\s*=\s*({.+?});',
                    r'window\.__DATA__\s*=\s*({.+?});',
                    r'"notebookId"\s*:\s*"([^"]+)"',
                    r'"notebook"\s*:\s*({.+?})',
                ]
                
                for pattern in patterns:
                    matches = re.findall(pattern, script_text, re.DOTALL)
                    for match in matches:
                        try:
                            if isinstance(match, tuple):
                                match = match[0] if match else ''
                            if match.startswith('{'):
                                data = json.loads(match)
                                result['script_data'].update(data)
                        except (json.JSONDecodeError, ValueError):
                            pass
                
                # Procurar por endpoints de API
                api_pattern = r'["\'](/api/[^"\']+)["\']'
                endpoints = re.findall(api_pattern, script_text)
                result['api_endpoints'].extend(endpoints)
            
            # Procurar por IDs de notebook ou dados embutidos diretamente no HTML
            notebook_id_pattern = r'"notebookId"\s*:\s*"([^"]+)"'
            notebook_matches = re.findall(notebook_id_pattern, html_content)
            if notebook_matches:
                result['notebook_data']['found_ids'] = list(set(notebook_matches))
            
            # Tentar encontrar dados em atributos data-*
            data_attrs = {}
            for elem in soup.find_all(attrs=lambda x: x and any(k.startswith('data-') for k in x.keys())):
                for attr, value in elem.attrs.items():
                    if attr.startswith('data-'):
                        data_attrs[attr] = value
                        # Tentar parsear se parecer JSON
                        if value.startswith('{') or value.startswith('['):
                            try:
                                data_attrs[attr] = json.loads(value)
                            except json.JSONDecodeError:
                                pass
            if data_attrs:
                result['data_attributes'] = data_attrs
            
            # Limpar resultados vazios
            result = {k: v for k, v in result.items() if v}
            
            result['has_json_data'] = len(result.get('json_data', {})) > 0
            result['has_script_data'] = len(result.get('script_data', {})) > 0
            result['note'] = 'Informações extraídas da página HTML pública'
            
            return result
            
        except ImportError:
            return {
                'status': 'error',
                'error': 'BeautifulSoup não está instalado',
                'message': 'Instale beautifulsoup4: pip install beautifulsoup4 lxml'
            }
        except Exception as e:
            return {
                'status': 'error',
                'error': str(e),
                'message': 'Não foi possível extrair informações da página',
                'exception_type': type(e).__name__
            }

