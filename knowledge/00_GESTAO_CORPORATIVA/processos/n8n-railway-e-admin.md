# n8n no Railway + integração com o App Admin

Documento de referência para: (1) configurar o **n8n** no **Railway** (template + Postgres); (2) **integrar** o Admin com o n8n via webhook para automações sob demanda.

Ref.: conversas Grove (mar/2026), [github-project-e-integracao.md](../github-project-e-integracao.md) (padrão de integração).

---

## 1. Por que n8n + Railway

- **n8n**: automações por webhook (sem uso “constante”); alternativa open-source a Zapier/Make.
- **Railway**: deploy do template n8n + Postgres sem self-host manual; ~US$ 5/mês uso normal; trial grátis.
- **Uso**: Admin dispara webhook quando um evento acontece (ex.: tarefa criada); n8n executa o workflow e opcionalmente notifica (Slack, email, planilha).

---

## 2. Passo a passo: Railway (n8n)

### 2.1 Deploy do template

1. [railway.app](https://railway.app) → login com GitHub.
2. **New Project** → **Deploy from template** (ou [railway.com/deploy/n8n](https://railway.com/deploy/n8n)).
3. Template **n8n** (já inclui Postgres). Autorize o repositório se pedido.
4. Projeto criado com dois serviços: **n8n** e **Postgres**.

### 2.2 Variáveis do serviço n8n

No serviço **n8n** → **Variables**:

| Variável | Valor / observação |
|----------|---------------------|
| `N8N_ENCRYPTION_KEY` | String longa aleatória (ex.: `openssl rand -hex 32`). **Obrigatório.** |
| `DB_TYPE` | `postgresdb` |
| `DB_POSTGRESDB_HOST` | Host do Postgres (variável do serviço Postgres no Railway). |
| `DB_POSTGRESDB_PORT` | `5432` |
| `DB_POSTGRESDB_DATABASE` | Nome do banco (ex.: `railway`). |
| `DB_POSTGRESDB_USER` | Usuário do Postgres. |
| `DB_POSTGRESDB_PASSWORD` | Senha do Postgres. |

Após gerar o domínio (próximo passo), adicionar:

| Variável | Exemplo |
|----------|---------|
| `WEBHOOK_URL` | `https://n8n-xxxx.up.railway.app/` |
| `N8N_HOST` | `n8n-xxxx.up.railway.app` |
| `N8N_PROTOCOL` | `https` |

### 2.3 Domínio público

1. Serviço **n8n** → **Settings** → **Networking** → **Generate Domain**.
2. Anotar a URL (ex.: `https://n8n-xxxx.up.railway.app`).
3. Preencher `WEBHOOK_URL`, `N8N_HOST`, `N8N_PROTOCOL` como acima e salvar.

### 2.4 Primeiro acesso

1. Abrir a URL no browser.
2. Criar primeiro usuário (owner da instância).

---

## 3. Workflow de teste no n8n

1. **Workflows** → **Add workflow**.
2. Nó **Webhook** (trigger): HTTP Method `POST`, Path ex. `admin-evento`.
3. Nó **Respond to Webhook**: Respond With JSON, body ex. `{ "ok": true, "message": "n8n recebeu" }`.
4. **Save** e **Activate**.
5. Copiar a **Production URL** do webhook (ex.: `https://n8n-xxxx.up.railway.app/webhook/admin-evento`).

---

## 4. Configurar o App Admin

### 4.1 Variáveis de ambiente (webhook)

- **Só servidor** (nunca `NEXT_PUBLIC_`): a URL do webhook não deve ir para o client.
- Em `apps/admin/.env.local` e no Vercel (Environment Variables):

```bash
# n8n — webhook (disparar workflows por URL)
N8N_WEBHOOK_URL=https://n8n-xxxx.up.railway.app/webhook/admin-evento
```

### 4.2 API do n8n (Public API) — token para o Admin chamar o n8n

Para o **Admin** (ou o Grove/agente) **chamar a API do n8n** (listar fluxos, criar/atualizar workflows, executar, etc.), use a **Public API** do n8n com um **API token** (JWT).

**Onde o token fica:**

| Onde | Para quê |
|------|----------|
| `context/00_GESTAO_CORPORATIVA/credenciais-adventure.md` | Cópia de referência (arquivo **não versionado**, no `.gitignore`). O Grove pode usar esse arquivo quando você pedir algo que envolva a API do n8n. |
| `apps/admin/.env.local` (e Vercel) | O **app** usa em runtime. Todas as rotas API ou server components que chamarem o n8n devem usar `process.env.N8N_API_TOKEN` e `process.env.N8N_API_URL`. |

**Como configurar:**

1. **Criar o token no n8n**  
   No n8n: **Settings** → **API** → ativar "Public API" se necessário → **Create an API key** (ou usar um JWT existente). Copie o token.

2. **Salvar no Admin (ambiente local)**  
   Em `apps/admin/.env.local` (não versionado), adicione:

   ```bash
   # n8n — Public API (listar/criar/executar workflows a partir do Admin)
   N8N_API_URL=https://n8n-production-619c.up.railway.app
   N8N_API_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9....
   ```

   Substitua pelo seu token real. A URL deve ser a base do n8n (sem `/webhook/...`).

3. **Salvar na Vercel (produção)**  
   No projeto na Vercel: **Settings** → **Environment Variables** → adicione `N8N_API_URL` e `N8N_API_TOKEN` com os mesmos valores (ou use secrets). Marque para Production (e Preview se quiser).

4. **Referência para o Grove**  
   O token também está em `context/00_GESTAO_CORPORATIVA/credenciais-adventure.md` (gitignored). Quando você pedir "usar a API do n8n" ou "montar fluxos a partir daqui", o Grove vai escrever código que usa `process.env.N8N_API_TOKEN` e `process.env.N8N_API_URL`; **quem roda o app (você/Vercel) precisa ter essas variáveis definidas**.

**Resumo:** Token em dois lugares — (1) **credenciais-adventure.md** para referência e para o agente saber qual token usar ao sugerir código; (2) **.env.local / Vercel** para o app de fato autenticar nas chamadas à API do n8n.

---

## 5. Fluxo específico: Tarefa TI → criar issue no GitHub

Fluxo que integra **humans no frontend** (botão na tarefa) e **Cursor/Grove** (API com CRON_SECRET): ao clicar "Criar issue no GitHub" na tarefa (tipo Desenvolvimento (TI)), o Admin chama o n8n; o n8n cria a issue no repositório e chama de volta o Admin para atualizar a tarefa com o número da issue.

### 5.1 O que já está no Admin

- **PATCH** `/api/tasks/[id]/github-issue` — callback do n8n (auth: Bearer `CRON_SECRET`). Body: `{ "issue_number": number, "repo_owner": string, "repo_name": string }`. Atualiza a tarefa.
- **POST** `/api/tasks/[id]/create-github-issue` — dispara o workflow (auth: sessão ou Bearer `CRON_SECRET`). Envia para o webhook: `task_id`, `title`, `description`, `callback_url`, `callback_secret`.
- Botão **"Criar issue no GitHub"** na página da tarefa (quando `task_kind === "dev"` e ainda não tem `github_issue_number`).

### 5.2 Variável de ambiente no Admin

No **Admin** (`.env.local` e Vercel), defina a URL do webhook do workflow (após criar o workflow no n8n):

```bash
# n8n — webhook do fluxo "Admin: criar issue no GitHub"
N8N_WEBHOOK_CREATE_ISSUE=https://n8n-production-619c.up.railway.app/webhook/admin-criar-issue-github
```

Substitua pela URL real do seu n8n (base + path do webhook).

#### Usar sempre a URL de **produção** (não a de teste)

O n8n expõe duas URLs para o mesmo webhook:

| Tipo        | Caminho típico     | Quando funciona |
|------------|--------------------|------------------|
| **Test**   | `/webhook-test/...`| Só enquanto "Listen for test event" está ativo no editor (~120 s). |
| **Production** | `/webhook/...` | Quando o workflow está **salvo e ativado** (toggle **Active**). |

Para o Admin chamar o n8n em produção (botão "Criar issue no GitHub" na tarefa), é obrigatório:

1. **Workflow ativado** no n8n (toggle **Active** no canto superior).
2. **`N8N_WEBHOOK_CREATE_ISSUE`** com a **Production URL**:
   - Formato: `https://<seu-n8n>/webhook/<path>` (caminho deve ser **`/webhook/`**, nunca `/webhook-test/`).
   - Como obter no n8n: abra o nó **Webhook** do workflow (com o workflow já **ativado**), copie a URL indicada como **Production** (ou "Production URL"). Não use a URL que aparece ao clicar em "Listen for test event" (essa é a de teste).
3. No Vercel (ou onde o Admin roda), após alterar a variável, fazer **redeploy** para o novo valor valer.

Se a variável estiver com a URL de **teste** (`/webhook-test/...`) ou o workflow estiver **inativo**, o Admin não conseguirá disparar o fluxo em produção.

### 5.3 Credencial GitHub no n8n (OAuth2 — conta gratuita)

Se a sua conta GitHub é **gratuita** e você prefere não criar Personal Access Token (PAT), use **OAuth2** no n8n. O n8n redireciona você para o GitHub, você autoriza uma vez, e o n8n guarda o token. O link que você viu é exatamente o **callback** que o GitHub usa para voltar ao n8n após a autorização.

**Passo 1 — Criar OAuth App no GitHub**

1. No GitHub: **Settings** (do seu usuário ou da org) → **Developer settings** → **OAuth Apps** → **New OAuth App**.
2. Preencha:
   - **Application name:** ex. `n8n Adventure Labs`
   - **Homepage URL:** `https://n8n-production-619c.up.railway.app` (ou a URL base do seu n8n).
   - **Authorization callback URL:** use **exatamente** o callback do n8n:
     ```
     https://n8n-production-619c.up.railway.app/rest/oauth2-credential/callback
     ```
3. Registrar. Anote o **Client ID** e gere um **Client Secret**.

**Passo 2 — Criar a credencial no n8n**

1. No n8n: **Settings** (ícone engrenagem) → **Credentials** → **Add credential**.
2. Busque por **GitHub** e escolha **GitHub OAuth2 API** (ou **GitHub API** se aparecer opção OAuth).
3. Preencha:
   - **Client ID:** o que você anotou no GitHub.
   - **Client Secret:** o secret do OAuth App.
4. Clique em **Sign in with GitHub** (ou **Connect**). O n8n abre o GitHub para você autorizar; após autorizar, o GitHub redireciona para o callback acima e o n8n guarda o token. Pronto — não precisa de PAT.

Use essa credencial no nó **GitHub** do workflow (seção 5.4). Se o repositório for de uma **organização**, garanta que o usuário que autorizou tem permissão de escrita no repo (ex. `adventurelabsbrasil/admin`).

---

### 5.4 Criar o workflow no n8n (passo a passo)

1. **Workflows** → **Add workflow**. Nome sugerido: **Admin: criar issue no GitHub**.

2. **Nó 1 — Webhook (trigger)**  
   - Adicione o nó **Webhook**.  
   - **HTTP Method:** `POST`.  
   - **Path:** `admin-criar-issue-github`.  
   - **Respond:** `Using 'Respond to Webhook' Node` (para responder no final).  
   - **Payload que o Admin envia:** o Admin faz POST com body JSON contendo exatamente: `task_id`, `title`, `description`, `callback_url`, `callback_secret`. Você **não** configura esse “formato” em lugar nenhum do n8n — o Webhook só recebe o que o Admin enviar.  
   - **Cuidado com “Test workflow”:** se você clicar em **Test workflow** ou **Listen for Test Event** no n8n, o Webhook recebe um **payload de exemplo** do próprio n8n (ex.: `{"name": "Second item", "code": 2}`), **não** o JSON do Admin. Por isso você não verá `task_id`, `title`, `callback_url` etc. nesse teste. Para ver o payload real, dispare o fluxo **pelo Admin** (botão “Criar issue no GitHub” numa tarefa tipo Desenvolvimento (TI) e sem issue) e depois abra essa execução no n8n — aí o Webhook terá recebido o JSON correto. O problema de issues com título `{{ $json.body.title }}` ou body vazio acontece quando o nó **GitHub** não está em modo Expression ou está lendo do lugar errado; por isso use sempre o nó Code abaixo e no GitHub use `{{ $json.title }}` e `{{ $json.description }}`.

3. **Nó 2 — GitHub: Create Issue**  
   - Adicione o nó **GitHub**.  
   - **Resource:** Issue. **Operation:** Create.  
   - **Credential:** use a credencial criada acima (OAuth2) ou um PAT com escopo `repo` se preferir.  
   - **Owner:** `adventurelabsbrasil` (ou o owner do repo Admin).  
   - **Repository:** `admin`.  
   - **Title e Body (obrigatório modo Expression):**  
     - Clique no ícone **“fx” (Expression)** ao lado dos campos **Title** e **Body**. Se o campo ficar em modo texto e você digitar `{{ $json.title }}`, o GitHub recebe isso como texto literal e a issue sai com título `{{ $json.title }}` e body vazio.  
     - **Se você usa o nó Code (Normalize)** — fluxo Webhook → Code → GitHub: o nó GitHub recebe a saída do Code, onde já existem `title` e `description` no root. Use **Title** = `{{ $json.title }}` e **Body** = `{{ $json.description }}`. **Não** use `$json.body.title` aqui; após o Code, não existe `body`.  
     - **Se você não usa o nó Code** (não recomendado): o GitHub recebe direto do Webhook; aí pode ser `{{ $json.body?.title ?? $json.title }}` e `{{ $json.body?.description ?? $json.description ?? '' }}`, dependendo de onde o n8n colocou o POST body.

4. **Nó 3 — HTTP Request (callback ao Admin)**  
   - Adicione o nó **HTTP Request**.  
   - **Method:** PATCH.  
   - **URL:** use uma das expressões abaixo (depende de onde o Webhook coloca o body). Se der "URL must be a string, got undefined", o body está em outro caminho — veja observação ao final.  
     - Se o body do POST vier no **root** do item: `{{ $('Webhook').first().json.callback_url }}`  
     - Se o body vier dentro de **body**: `{{ $('Webhook').first().json.body.callback_url }}`  
     - Alternativa (nome fixo do nó): `{{ $node["Webhook"].json.callback_url }}` ou `{{ $node["Webhook"].json.body.callback_url }}`  
     - **Substitua "Webhook"** pelo nome exato do seu nó trigger (ex.: "Webhook 1").  
   - **Authentication:** None (vamos enviar o header manualmente).  
   - **Send Headers:**  
     - Name: `Authorization`, Value: `Bearer {{ $('Webhook').first().json.callback_secret }}` (ou `.json.body.callback_secret` se usar body).  
     - Name: `Content-Type`, Value: `application/json`  
   - **Send Body:** Yes. **Body Content Type:** JSON.  
   - **Specify Body:** Using JSON.  
   - **JSON:**
     ```json
     {
       "issue_number": {{ $('GitHub Create Issue').first().json.number }},
       "repo_owner": "adventurelabsbrasil",
       "repo_name": "admin"
     }
     ```
     (Ajuste o nome do nó GitHub na expression se o seu nó tiver outro nome.)  
   - **Se a URL continuar undefined:** use a solução com nó Code abaixo.

   **Solução garantida (nó Code):** o Admin já envia o JSON com `task_id`, `title`, `description`, `callback_url`, `callback_secret`. O Webhook do n8n recebe esse body em posições que variam (`$json` ou `$json.body`). Para não depender disso, coloque um nó **Code** entre o Webhook e o GitHub; ele normaliza e devolve um único item com esses cinco campos no root.  
   - Adicione o nó **Code**. Nome sugerido no canvas: **Normalize** (e use esse nome nas expressões; tem de ser igual, senão dá "Referenced node doesn't exist").  
   - **Mode:** Run Once for All Items.  
   - **JavaScript:** cole o código abaixo (ele lê o body do Webhook em `body` / `data` / `json` / root e devolve `task_id`, `title`, `description`, `callback_url`, `callback_secret`).  
   - Conecte: **Webhook → Code → GitHub**. No nó **GitHub**, ative **Expression (fx)** em Title e Body e use **Title** = `{{ $json.title }}` e **Body** = `{{ $json.description }}` — porque o GitHub está recebendo a saída do Code, onde não existe `$json.body`, só `$json.title` e `$json.description`.  
   - No **HTTP Request (nó 3):** use o **nome exato** do nó Code (veja no canvas). Exemplos:  
     - Se o nó se chama **Code:** **URL** = `{{ $('Code').first().json.callback_url }}`, **Authorization** = `Bearer {{ $('Code').first().json.callback_secret }}`  
     - Se você renomeou para **Normalize:** use `$('Normalize').first().json.callback_url` e `$('Normalize').first().json.callback_secret`  
   - No body JSON do HTTP Request, use o **nome exato** do nó GitHub (ex.: `$('GitHub Create Issue').first().json.number` ou `$('GitHub').first().json.number`).

   Código para o nó Code (substitua o script atual por este; tenta várias formas de ler o body do Webhook e mostra as chaves recebidas se falhar):

   ```javascript
   const item = $input.first();
   const J = item.json || {};
   // Tentar todas as origens comuns do body no n8n Webhook
   let raw = J.body ?? J.data ?? J.json ?? J;
   if (typeof raw === 'string') {
     try { raw = JSON.parse(raw); } catch (e) { raw = {}; }
   }
   if (!raw || typeof raw !== 'object') raw = {};
   const callback_url = (raw.callback_url || '').toString().trim();
   const callback_secret = (raw.callback_secret || '').toString().trim();
   if (!callback_url.startsWith('http')) {
     const keys = Object.keys(J).join(', ') || '(vazio)';
     throw new Error('callback_url vazio. Dispare pelo Admin (botão "Criar issue no GitHub"), não pelo Test do n8n. Chaves recebidas do Webhook: ' + keys);
   }
   return [{
     json: {
       task_id: raw.task_id,
       title: (raw.title ?? '').toString(),
       description: (raw.description ?? '').toString(),
       callback_url,
       callback_secret,
     }
   }];
   ```

   **Importante:** a URL só existe quando o workflow é disparado **pelo Admin** (botão "Criar issue no GitHub" na tarefa). Se você rodar "Test workflow" ou um trigger manual no n8n, não há POST com `callback_url` e a URL fica vazia. Confirme também: (1) está clicando no Admin **em produção** (admin.adventurelabs.com.br); (2) após adicionar `NEXT_PUBLIC_APP_URL` na Vercel, fez um **novo deploy** (NEXT_PUBLIC_* é definido em build time).

   Depois de adicionar o Code, a ordem dos nós fica: **Webhook → Code → GitHub Create Issue → HTTP Request → Respond to Webhook**.

5. **Nó 4 — Respond to Webhook**  
   - Adicione o nó **Respond to Webhook**.  
   - **Respond With:** JSON.  
   - **Response Body:** use o **nome exato** do nó GitHub (ex.: `"GitHub Create Issue"`), não `"GitHub"`:  
     ```json
     {
       "ok": true,
       "issue_number": {{ $node["GitHub Create Issue"].json.number }}
     }
     ```

6. **Conectar os nós:** Webhook → GitHub → HTTP Request (callback) → Respond to Webhook.

7. **Salvar** e **Activate** o workflow.

8. **Copiar a Production URL** do webhook (ex.: `https://n8n-xxxx.up.railway.app/webhook/admin-criar-issue-github`) e colar em `N8N_WEBHOOK_CREATE_ISSUE` no Admin.

### 5.5 Uso no dia a dia

- **Onde o botão aparece:** O botão **"Criar issue no GitHub"** só aparece na **página de detalhe/edição da tarefa** (ao clicar em uma tarefa ou em "Editar" na tabela/listagem), e apenas quando a tarefa é do tipo **Desenvolvimento (TI)** e **ainda não tem** issue vinculada. Se a tarefa for "Operacional", altere o tipo para "Desenvolvimento (TI)", salve, e o botão surgirá no topo da página.
- **Humans:** Na tarefa (tipo Desenvolvimento (TI)), clicar **"Criar issue no GitHub"**. Em alguns segundos a tarefa ganha o link da issue; atualize a página se não aparecer.  
- **Cursor/Grove:** Ao criar ou planejar uma tarefa de tipo TI, pode-se chamar `POST /api/tasks/{id}/create-github-issue` com header `Authorization: Bearer <CRON_SECRET>` para criar a issue sem passar pelo frontend.

### 5.6 Verificação da cadeia (checklist)

Use este checklist para validar que o fluxo Admin → n8n → GitHub está configurado. Não é necessário conectar o código a n8n/Railway/Vercel/GitHub; a verificação é por variáveis de ambiente e passos manuais.

1. **Admin (Vercel)**
   - Variáveis definidas: `NEXT_PUBLIC_APP_URL`, `N8N_WEBHOOK_CREATE_ISSUE`, `CRON_SECRET`.
   - Após alterar `NEXT_PUBLIC_*`, fazer redeploy para o valor ser refletido no build.
   - Chamar `GET /api/diagnostic` com `Authorization: Bearer <CRON_SECRET>` (ou com sessão autenticada) e conferir que `github_issue_flow` indica `defined: true` (e para `NEXT_PUBLIC_APP_URL`, `valid: true`).

2. **Supabase**
   - Tabela `adv_tasks` com colunas: `task_kind`, `github_issue_number`, `github_repo_owner`, `github_repo_name`.
   - Ter ao menos uma tarefa de teste com `task_kind = 'dev'` e `github_issue_number` nulo para testar o botão.

3. **n8n (Railway)**
   - Workflow ativo; sequência: Webhook → Code (Normalize) → GitHub Create Issue → HTTP Request (callback) → Respond to Webhook.
   - Nomes dos nós nas expressões batendo (ex.: `$('Normalize').first().json.callback_url`).
   - Credencial GitHub com permissão no repositório alvo.
   - Teste disparado **pelo Admin** (botão na página da tarefa), não pelo "Test workflow" do n8n (que não envia `callback_url`).

4. **GitHub**
   - Repositório acessível (owner/repo configurado no nó GitHub do n8n).
   - Token ou OAuth com permissão de criar issues no repositório.

### 5.7 Ajustes no canvas (passo a passo)

Se o workflow já existe mas a integração tarefas ↔ issues não funciona, aplique estes ajustes **direto no canvas do n8n**:

---

**Ajuste 1 — Usar produção (não teste) e ativar o workflow**

1. **URL no Admin:** Confirme que `N8N_WEBHOOK_CREATE_ISSUE` usa a **Production URL** do n8n: o path deve ser `/webhook/...` (ex.: `https://seu-n8n.up.railway.app/webhook/admin-criar-issue-github`). Se estiver `/webhook-test/...`, está em modo teste — troque pela Production (copie do nó Webhook no n8n, com o workflow já ativado).
2. Abra o workflow no n8n (ex.: "My workflow" ou "Admin: criar issue no GitHub").
3. No canto superior direito, localize o toggle **Inactive** / **Active**.
4. Clique para **Activate**. O webhook de **produção** só responde quando o workflow está ativo; com **Inactive**, o POST do Admin não é atendido.

---

**Ajuste 2 — Corrigir o nó "Respond to Webhook"**

O nó que devolve a resposta ao Admin usa uma expressão para incluir o número da issue. Se estiver referenciando um nó com nome errado (ex.: `"GitHub"` em vez de `"GitHub Create Issue"`), a resposta quebra ou fica com `issue_number` vazio.

1. Clique no nó **Respond to Webhook** no canvas.
2. No painel à direita, no campo **Response Body** (ou "JSON"), verifique a expressão do `issue_number`.
3. Se estiver algo como `{{ $node["GitHub"].json.number }}`, troque para o **nome exato** do seu nó que cria a issue no GitHub. Exemplo:  
   `{{ $node["GitHub Create Issue"].json.number }}`  
   (O nome deve ser **idêntico** ao que aparece no nó no canvas.)
4. Clique em **Save** no nó e salve o workflow.

---

**Ajuste 3 — Reforçar o nó Code (normalização do body)**

O nó Code entre o Webhook e o GitHub normaliza o body do POST e valida o `callback_url`. Se o código for mínimo, em alguns casos o body pode vir em outra chave (`body`, `data`, `json`) e o callback falha.

1. Clique no nó **Code** (pode se chamar "code.js", "Normalize" ou similar) que fica entre o Webhook e o "GitHub Create Issue".
2. No painel, substitua todo o **JavaScript** pelo código abaixo (ele tenta várias origens do body e devolve erro claro se `callback_url` estiver vazio):

```javascript
const item = $input.first();
const J = item.json || {};
let raw = J.body ?? J.data ?? J.json ?? J;
if (typeof raw === 'string') {
  try { raw = JSON.parse(raw); } catch (e) { raw = {}; }
}
if (!raw || typeof raw !== 'object') raw = {};
const callback_url = (raw.callback_url || '').toString().trim();
const callback_secret = (raw.callback_secret || '').toString().trim();
if (!callback_url.startsWith('http')) {
  const keys = Object.keys(J).join(', ') || '(vazio)';
  throw new Error('callback_url vazio. Dispare pelo Admin (botão "Criar issue no GitHub"), não pelo Test do n8n. Chaves recebidas do Webhook: ' + keys);
}
return [{
  json: {
    task_id: raw.task_id,
    title: (raw.title ?? '').toString(),
    description: (raw.description ?? '').toString(),
    callback_url,
    callback_secret,
  }
}];
```

3. Salve o nó e o workflow.

---

**Resumo**

| Ajuste | Onde no canvas | O que fazer |
|--------|-----------------|-------------|
| 1. Ativar | Toggle no topo do workflow | Clicar em **Activate** |
| 2. Respond to Webhook | Nó "Respond to Webhook" → Response Body | Usar `$node["GitHub Create Issue"].json.number` (ou o nome exato do seu nó GitHub) |
| 3. Code | Nó Code entre Webhook e GitHub | Colar o script acima para normalizar body e validar `callback_url` |

Depois dos ajustes, teste disparando **pelo Admin** (botão "Criar issue no GitHub" numa tarefa tipo Desenvolvimento (TI)), não pelo "Test workflow" do n8n.
