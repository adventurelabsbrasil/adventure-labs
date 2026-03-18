# Guia de Teste - NotebookLM Client

## 🚀 Passo a Passo para Testar

### 1. Instalar Dependências

Primeiro, instale as bibliotecas necessárias:

```bash
pip install -r requirements.txt
```

Ou se você tiver problemas de permissão:

```bash
pip install --user -r requirements.txt
```

### 2. Teste Básico (Verificação de Código)

Execute o teste básico para verificar se o código está correto:

```bash
python3 test_basico.py
```

Este teste verifica:
- ✅ Se os módulos podem ser importados
- ✅ Se o cliente pode ser criado
- ✅ Se todos os métodos existem

### 3. Teste Simples (Sem Rede)

Para testar a estrutura sem fazer requisições HTTP:

```bash
python3 main.py
```

Este comando tentará acessar o notebook. Você verá mensagens indicando:
- Se a conexão foi bem-sucedida
- Se é necessária autenticação
- Informações sobre o notebook

### 4. Teste com Consulta

Para fazer uma pergunta ao notebook:

```bash
python3 main.py "Qual é o conteúdo deste notebook?"
```

ou

```bash
python3 main.py "Resuma os principais pontos"
```

### 5. Teste com Exemplos

Execute o arquivo de exemplos:

```bash
python3 example.py
```

Escolha:
- Opção 1: Teste básico (sem autenticação)
- Opção 2: Teste com autenticação OAuth (requer configuração)

## 🔍 O que Esperar

### Comportamento Normal (Sem Autenticação)

Você provavelmente verá algo como:

```
⚠️  Autenticação não configurada.
   Acessando sem autenticação (pode ter limitações).

📖 Obtendo informações do notebook...
Status: error
Erro: [algum erro de conexão/autenticação]
```

**Isso é esperado!** O NotebookLM não tem API pública, então pode ser necessário:
- Autenticação manual via navegador
- Configurar OAuth (veja abaixo)
- Usar métodos alternativos

### Com Autenticação

Se você configurar OAuth (opcional):

1. Configure as variáveis de ambiente:
   ```bash
   export GOOGLE_CLIENT_ID="seu-client-id"
   export GOOGLE_CLIENT_SECRET="seu-client-secret"
   ```

2. Execute o exemplo com autenticação:
   ```bash
   python3 example.py
   # Escolha opção 2
   ```

## 🐛 Solução de Problemas

### Erro: "ModuleNotFoundError"

**Solução:** Instale as dependências:
```bash
pip install -r requirements.txt
```

### Erro: "Connection refused" ou "401 Unauthorized"

**Solução:** Isso é normal. O NotebookLM requer autenticação. Você pode:
1. Configurar OAuth (veja acima)
2. Acessar manualmente via navegador e copiar cookies/sessão
3. Usar bibliotecas não oficiais da comunidade

### Erro: "SSL Certificate Error"

**Solução:** Se estiver em ambiente restrito:
```bash
pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org -r requirements.txt
```

## 📝 Testando Funcionalidades Específicas

### Testar apenas informações do notebook:

```python
from notebooklm_client import NotebookLMClient

client = NotebookLMClient("84b4b6d9-e014-48b7-a141-fa9ec1b9b01f")
info = client.get_notebook_info()
print(info)
```

### Testar uma consulta específica:

```python
from notebooklm_client import NotebookLMClient

client = NotebookLMClient("84b4b6d9-e014-48b7-a141-fa9ec1b9b01f")
resposta = client.query_notebook("Sua pergunta aqui")
print(resposta)
```

## ✅ Checklist de Teste

- [ ] Dependências instaladas
- [ ] `test_basico.py` executa sem erros
- [ ] `main.py` executa (pode ter erros de conexão, mas o código deve rodar)
- [ ] Estrutura do código está correta
- [ ] Todos os métodos estão disponíveis

## 💡 Próximos Passos

Se os testes básicos passarem mas o acesso ao notebook falhar, você pode:

1. **Explorar bibliotecas da comunidade:**
   - [notebooklm-mcp](https://github.com/PleasePrompto/notebooklm-mcp)
   - [nblm-rs](https://github.com/K-dash/nblm-rs)

2. **Usar autenticação manual:**
   - Acesse o notebook no navegador
   - Use ferramentas de desenvolvedor para inspecionar requisições
   - Adapte o código para usar os endpoints corretos

3. **Aguardar API oficial:**
   - O Google pode lançar uma API oficial no futuro

