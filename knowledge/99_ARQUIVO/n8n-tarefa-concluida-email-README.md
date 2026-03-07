# Workflow n8n: Tarefa concluída → Email

Quando uma tarefa no Admin é alterada para **concluída** (status `done`), este workflow envia um email para **contato@adventurelabs.com.br**.

## 1. Importar no n8n

1. No n8n: **Workflows** → **Import from File** (ou arraste o arquivo).
2. Selecione `n8n-tarefa-concluida-email.json`.
3. **Salve** o workflow.

## 2. Configurar no n8n

### Onde criar a credencial Gmail

1. No n8n, no **menu lateral** (ou no canto superior): clique no ícone de **engrenagem (Settings)**.
2. Vá em **Credentials** (Credenciais).
3. Clique em **Add credential** (ou **Create new**).
4. Busque por **"Google"** ou **"Gmail"** e escolha **Google API** ou **Google OAuth2 API**.
5. Preencha:
   - **Client ID** e **Client Secret** (você obtém no Google Cloud Console; ver passos abaixo).
   - **Não** clique ainda em "Sign in with Google" — primeiro configure o redirect no Google.

### Configurar o Google Cloud (evitar erro de callback)

O erro **"Insufficient parameters for OAuth2 callback"** aparece quando o **Redirect URI** no Google não bate com o que o n8n usa, ou quando a **Public URL** do n8n está errada.

**Passo A — Obter Client ID e Client Secret no Google**

1. Acesse [Google Cloud Console](https://console.cloud.google.com/) → **APIs & Services** → **Credentials**.
2. **Create Credentials** → **OAuth client ID**.
3. Se pedir, configure o **OAuth consent screen** (tipo "External", nome do app ex. "n8n Adventure Labs", seu email de suporte, escopo se necessário).
4. Tipo de aplicativo: **Web application**.
5. **Authorized redirect URIs**: aqui está o ponto crítico. **Não** adicione ainda. Primeiro faça o Passo B.

**Passo B — Descobrir o Redirect URI que o n8n usa**

1. No n8n: **Settings** (engrenagem) → **General**.
2. Em **Public URL** (ou **Webhook URL**), confira se está a URL do seu n8n, ex.: `https://n8n-xxxx.up.railway.app` (sem barra no final). Se estiver vazio ou errado, corrija e salve.
3. O callback do n8n é sempre: `{SUA_PUBLIC_URL}/rest/oauth2-credential/callback`  
   Exemplo: `https://n8n-xxxx.up.railway.app/rest/oauth2-credential/callback`
4. **Copie essa URL exata** e volte ao Google Cloud Console.

**Passo C — Colocar o Redirect no Google**

1. Em **Credentials** → seu **OAuth 2.0 Client ID** → editar.
2. Em **Authorized redirect URIs**, clique em **Add URI** e cole **exatamente**:  
   `https://SEU-DOMINIO-N8N/rest/oauth2-credential/callback`  
   (substitua `SEU-DOMINIO-N8N` pela URL base do n8n, sem barra no final; ex.: `n8n-xxxx.up.railway.app`).
3. Salve.

**Passo D — Ativar Gmail API**

1. No Google Cloud Console: **APIs & Services** → **Library**.
2. Busque **Gmail API** e ative para o mesmo projeto.

**Passo E — Voltar ao n8n e concluir a credencial**

1. No n8n: **Settings** → **Credentials** → sua credencial Google (ou crie uma nova).
2. Cole **Client ID** e **Client Secret** do Google.
3. Clique em **Sign in with Google** (ou **Save** e depois **Sign in**). O n8n abre o Google; você autoriza e é redirecionado de volta para o n8n **com** os parâmetros na URL. Se der "Insufficient parameters", quase sempre é redirect URI diferente no Google ou Public URL errada no n8n.
4. Depois de conectado, **Save** na credencial.
5. No workflow, abra o nó **Gmail** e em **Credential to connect with** selecione essa credencial.

### Campos do nó Gmail

(Se após importar algum campo estiver vazio no nó Gmail:)

- **To:** `contato@adventurelabs.com.br`
- **Subject:** `=Tarefa concluída no Admin: {{ $json.title }}`
- **Message:** corpo em texto com título, ID e descrição da tarefa (já em expressão no JSON).

### Ativar o workflow

- Ative o workflow (toggle **Active** no canto superior).
- Copie a **Production URL** do nó Webhook (ex.: `https://seu-n8n.up.railway.app/webhook/admin-tarefa-concluida`).

## 3. Configurar o Admin

No **Admin** (`.env.local` e Vercel), adicione:

```bash
# n8n — webhook: notificar quando tarefa for marcada como concluída
N8N_WEBHOOK_TAREFA_CONCLUIDA=https://seu-n8n.up.railway.app/webhook/admin-tarefa-concluida
```

Substitua pela URL de produção do webhook (com **/webhook/** e não /webhook-test/).

O Admin **já chama** esse webhook automaticamente quando uma tarefa é marcada como concluída (Kanban, Lista, Tabela ou formulário de edição). A rota `POST /api/tasks/[id]/notify-tarefa-concluida` envia ao n8n um JSON com:

- `task_id` (string, UUID da tarefa)
- `title` (string, título da tarefa)
- `description` (string, opcional)

Se `N8N_WEBHOOK_TAREFA_CONCLUIDA` não estiver definida, a notificação é ignorada (sem erro). Ver processo geral em `context/00_GESTAO_CORPORATIVA/processos/n8n-railway-e-admin.md`.

---

## Se o email não chegar (diagnóstico)

1. **Confirmar que o webhook está sendo chamado**  
   No n8n: **Executions** (menu lateral). Marque uma tarefa como concluída no Admin e veja se aparece uma nova execução para o workflow "Admin: tarefa concluída → email".  
   - Se **não aparecer nenhuma execução**: o Admin não está chamando o n8n. Confira em `apps/admin/.env.local` (e no servidor onde roda o Admin) se `N8N_WEBHOOK_TAREFA_CONCLUIDA` está definida com a URL de **produção** do webhook (ex.: `https://seu-n8n.up.railway.app/webhook/admin-tarefa-concluida`). Reinicie o servidor do Admin após alterar o `.env`.

2. **Ver se o workflow falha no Gmail**  
   Em **Executions**, abra a execução que acabou de rodar. Clique no nó **Gmail**.  
   - Se estiver **vermelho (erro)**: leia a mensagem (ex.: "Insufficient Permission", "Invalid grant"). Gmail OAuth2 precisa do escopo de envio; reconecte a credencial no n8n (Settings → Credentials → sua Gmail → Sign in again).  
   - Se o nó **Normalize** mostrar saída com `title` vazio ou estranho: o payload do webhook pode estar em outro formato; o script do Normalize já tenta `body` / `data` / `json` e o root.

3. **Testar o webhook na mão**  
   No terminal (substitua a URL pela do seu n8n):
   ```bash
   curl -X POST "https://SEU-N8N.up.railway.app/webhook/admin-tarefa-concluida" \
     -H "Content-Type: application/json" \
     -d '{"task_id":"teste-123","title":"Teste manual","description":"Se esse email chegar, o fluxo está ok."}'
   ```
   - Se aparecer uma execução no n8n e o email chegar: o problema é o Admin não chamar o webhook (variável de ambiente ou ambiente errado).  
   - Se a execução falhar no Gmail: corrija a credencial Gmail ou os escopos OAuth no Google Cloud (Gmail API ativada, escopo de envio).
