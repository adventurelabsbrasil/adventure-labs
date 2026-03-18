# 🔐 Guia de Autenticação OAuth - NotebookLM

Este guia explica como configurar a autenticação OAuth do Google para acessar notebooks do NotebookLM.

## ⚠️ Importante

**Nota:** Como o NotebookLM não possui API oficial, a autenticação OAuth pode não ser suficiente para acessar todos os dados. Este guia mostra como configurar, mas pode ser necessário usar métodos alternativos.

## 📋 Passo 1: Criar Projeto no Google Cloud Console

1. Acesse o [Google Cloud Console](https://console.cloud.google.com/)
2. Faça login com sua conta Google
3. Clique em "Selecionar um projeto" no topo
4. Clique em "Novo Projeto"
5. Dê um nome ao projeto (ex: "NotebookLM Client")
6. Clique em "Criar"

## 📋 Passo 2: Habilitar APIs Necessárias

1. No menu lateral, vá em **"APIs e Serviços"** → **"Biblioteca"**
2. Procure e habilite as seguintes APIs:
   - **Google Identity Platform API** (se disponível)
   - **Google+ API** (para informações básicas do usuário)
   - **OAuth2 API**

## 📋 Passo 3: Criar Credenciais OAuth 2.0

1. Vá em **"APIs e Serviços"** → **"Credenciais"**
2. Clique em **"+ Criar credenciais"** → **"ID do cliente OAuth"**
3. Se solicitado, configure a tela de consentimento OAuth:
   - Tipo de usuário: **Externo** (ou Interno se for organização Google Workspace)
   - Nome do aplicativo: "NotebookLM Client"
   - Email de suporte: seu email
   - Adicione seu email em "Domínios autorizados" (opcional)
   - Salve e continue

4. Configure os escopos (Scopes):
   - Clique em "Adicionar ou remover escopos"
   - Adicione os seguintes escopos:
     - `https://www.googleapis.com/auth/userinfo.email`
     - `https://www.googleapis.com/auth/userinfo.profile`
     - `openid`
   - Salve e continue

5. Configure o tipo de aplicativo:
   - Tipo: **Aplicativo da Web**
   - Nome: "NotebookLM Client Web"
   - **URIs de redirecionamento autorizados:**
     - Adicione: `http://localhost:8080/callback`
     - Adicione: `http://localhost:8080`
     - Adicione: `http://127.0.0.1:8080/callback`
   - Clique em "Criar"

6. **IMPORTANTE:** Copie o **ID do cliente** e **Segredo do cliente** (você verá apenas uma vez!)

## 📋 Passo 4: Configurar Variáveis de Ambiente

Existem várias formas de configurar as variáveis de ambiente:

### Opção A: Configurar no Terminal (temporário)

No terminal, execute:

```bash
export GOOGLE_CLIENT_ID="seu-client-id-aqui"
export GOOGLE_CLIENT_SECRET="seu-client-secret-aqui"
```

**Nota:** Estas variáveis são válidas apenas para a sessão atual do terminal.

### Opção B: Configurar no arquivo `.bashrc` ou `.zshrc` (permanente)

1. Abra o arquivo de configuração do shell:
   ```bash
   # Para bash
   nano ~/.bashrc
   
   # Para zsh (recomendado no macOS)
   nano ~/.zshrc
   ```

2. Adicione as linhas no final do arquivo:
   ```bash
   export GOOGLE_CLIENT_ID="seu-client-id-aqui"
   export GOOGLE_CLIENT_SECRET="seu-client-secret-aqui"
   ```

3. Salve o arquivo (Ctrl+X, depois Y, depois Enter)

4. Recarregue o shell:
   ```bash
   source ~/.zshrc  # ou source ~/.bashrc
   ```

### Opção C: Criar arquivo `.env` (recomendado para desenvolvimento)

1. No diretório do projeto, crie um arquivo `.env`:
   ```bash
   cd /Users/ribasrodrigo91/Documents/GitHub/notebooklm
   nano .env
   ```

2. Adicione as variáveis:
   ```
   GOOGLE_CLIENT_ID=seu-client-id-aqui
   GOOGLE_CLIENT_SECRET=seu-client-secret-aqui
   ```

3. Instale a biblioteca `python-dotenv`:
   ```bash
   pip3 install python-dotenv
   ```

4. Modifique o código para ler do arquivo `.env` (veja exemplo abaixo)

### Opção D: Usar arquivo de configuração Python

Crie um arquivo `config.py` (não commite no git!):

```python
# config.py (adicione ao .gitignore!)
GOOGLE_CLIENT_ID = "seu-client-id-aqui"
GOOGLE_CLIENT_SECRET = "seu-client-secret-aqui"
```

E modifique `google_auth_helper.py` para importar de `config`.

## 📋 Passo 5: Verificar se está funcionando

Execute o teste:

```bash
python3 -c "
import os
print('CLIENT_ID:', '✓ Configurado' if os.getenv('GOOGLE_CLIENT_ID') else '✗ Não configurado')
print('CLIENT_SECRET:', '✓ Configurado' if os.getenv('GOOGLE_CLIENT_SECRET') else '✗ Não configurado')
"
```

## 📋 Passo 6: Usar a Autenticação

Execute o exemplo com autenticação:

```bash
python3 example.py
# Escolha opção 2
```

O processo será:
1. O script gerará uma URL de autorização
2. Copie e cole a URL no navegador
3. Faça login com sua conta Google
4. Autorize o aplicativo
5. Você será redirecionado e verá um código
6. Cole o código no terminal

## 🔒 Segurança

⚠️ **IMPORTANTE:**

1. **NUNCA** commite suas credenciais no Git
2. Adicione `.env`, `config.py` e `token.pickle` ao `.gitignore`
3. Não compartilhe suas credenciais
4. Se expor acidentalmente, revogue as credenciais no Google Cloud Console

## 🐛 Solução de Problemas

### Erro: "redirect_uri_mismatch"

**Solução:** Verifique se o URI de redirecionamento no Google Cloud Console corresponde exatamente ao usado no código (`http://localhost:8080/callback`)

### Erro: "invalid_client"

**Solução:** Verifique se o CLIENT_ID e CLIENT_SECRET estão corretos e sem espaços extras

### Erro: "access_denied"

**Solução:** 
- Verifique se os escopos estão corretamente configurados
- Tente limpar o cache do navegador
- Revogue as permissões anteriores e tente novamente

### As variáveis não são encontradas

**Solução:**
```bash
# Verificar se estão definidas
echo $GOOGLE_CLIENT_ID
echo $GOOGLE_CLIENT_SECRET

# Se vazio, recarregue o shell
source ~/.zshrc  # ou ~/.bashrc
```

## 💡 Alternativa: Usar arquivo .env

Se preferir usar arquivo `.env`, podemos modificar o código para ler dele automaticamente. Me avise se quiser essa opção!

