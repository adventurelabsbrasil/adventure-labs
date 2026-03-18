# NotebookLM Data Client

Aplicativo Python para consultar dados de notebooks do [Google NotebookLM](https://notebooklm.google.com).

## ⚠️ Importante

**O NotebookLM não possui uma API oficial pública.** Este projeto é uma tentativa de criar uma interface para acessar dados do NotebookLM, mas pode ter limitações significativas.

## 📋 Requisitos

- Python 3.8+
- Conta Google (para acessar o NotebookLM)
- Acesso ao notebook: `84b4b6d9-e014-48b7-a141-fa9ec1b9b01f`

## 🚀 Instalação

1. Clone ou baixe este repositório
2. Instale as dependências:

```bash
pip install -r requirements.txt
```

## 🔧 Configuração (Opcional)

Para usar autenticação OAuth (pode ser necessário para acessar dados privados):

1. Crie um projeto no [Google Cloud Console](https://console.cloud.google.com/)
2. Configure OAuth 2.0 credentials
3. Configure as variáveis de ambiente:

```bash
export GOOGLE_CLIENT_ID="seu-client-id"
export GOOGLE_CLIENT_SECRET="seu-client-secret"
```

## 📖 Uso

### Uso Básico

```bash
python main.py
```

### Análise Profunda de Notebook Público

Para notebooks públicos, use o script de análise:

```bash
python3 analisar_publico.py
```

Este script:
- Extrai todas as informações disponíveis da página pública
- Procura dados JSON embutidos no HTML/JavaScript
- Identifica endpoints de API
- Salva os dados em um arquivo JSON para análise

### Fazer uma Consulta

```bash
python main.py "Qual é o conteúdo do notebook?"
```

## 🔍 Métodos Disponíveis

### `NotebookLMClient`

- `get_notebook_info()`: Obtém informações básicas do notebook
- `query_notebook(query)`: Faz uma pergunta ao notebook
- `list_sources()`: Lista as fontes (documentos) do notebook

### Exemplo de Código

```python
from notebooklm_client import NotebookLMClient

client = NotebookLMClient("84b4b6d9-e014-48b7-a141-fa9ec1b9b01f")

# Obter informações
info = client.get_notebook_info()
print(info)

# Fazer uma consulta
response = client.query_notebook("Resuma o conteúdo principal")
print(response)

# Listar fontes
sources = client.list_sources()
print(sources)
```

## 🛠️ Alternativas e Limitações

Como o NotebookLM não possui API oficial, existem algumas alternativas da comunidade:

1. **[notebooklm-mcp](https://github.com/PleasePrompto/notebooklm-mcp)**: Servidor MCP para NotebookLM
2. **[nblm-rs](https://github.com/K-dash/nblm-rs)**: Cliente não oficial em Rust com SDK Python (focado em Enterprise)
3. **[InsightsLM](https://github.com/theaiautomators/insights-lm-public)**: Alternativa open source

## 📝 Notas

- Este projeto é experimental
- O acesso pode requerer autenticação manual via navegador
- Endpoints da API podem mudar sem aviso
- Alguns recursos podem não funcionar devido à falta de API oficial

## 🤝 Contribuindo

Contribuições são bem-vindas! Como o NotebookLM não tem API oficial, estamos explorando métodos alternativos de acesso.

## 📄 Licença

Este projeto é fornecido "como está" para fins educacionais e experimentais.

