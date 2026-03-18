# Por que o ciclo rodou mas não publicou no X?

O pipeline **sempre** conclui Grove → Zazu → Ogilvy (gera o texto). A etapa **Publicar no X** depende só das credenciais e da API do X.

## 1. Dry run (mais comum)

Falta **alguma** destas 4 variáveis no projeto **adventure-xpostr** na Vercel (Settings → Environment Variables):

- `X_API_KEY`
- `X_API_SECRET`
- `X_ACCESS_TOKEN`
- `X_ACCESS_SECRET`

Sem as quatro, o app **não chama** a API de tweet: grava o post como **`dry_run`** e segue o Kanban até “Publicado” com texto explicando isso.

**Correção:** coloque as 4, redeploy (ou aguarde novo deploy).

## 2. Credenciais cheias mas API do X falhou

Status **`error`** nos últimos posts. Causas típicas:

- Plano / permissões do app no portal X sem **write** (postar).
- Access Token gerado com permissão só **Read**.
- Conta ou app ainda em revisão.
- Rate limit ou mensagem de erro da API (aparece no card da tarefa “Publicar no X” e no **Feed ao vivo**).

**Correção:** no [developer.x.com](https://developer.x.com) confira app com **Read and write**, regenere **Access Token + Secret** após mudar permissões.

## 3. Erro **403 Forbidden** (“Request failed with code 403”)

O texto foi gerado (Ogilvy ok), mas o **X não autorizou** o tweet. Não é bug do Xpostr.

Checklist (nessa ordem):

1. **Permissão do app**  
   [developer.x.com](https://developer.x.com) → seu **App** → **User authentication settings** (ou tipo do app) → precisa permitir **Read and write** (não só Read).

2. **Regenerar Access Token**  
   Depois de mudar para *Read and write*, vá em **Keys and tokens** → **Regenerate** o **Access Token and Secret**. Tokens antigos continuam só-leitura.  
   Atualize na Vercel: `X_ACCESS_TOKEN` e `X_ACCESS_SECRET`.

3. **Plano da API**  
   Contas novas / tier **Free** podem ter **POST tweet** bloqueado ou limitado. Confira no portal se o projeto tem acesso a **Tweet** (às vezes exige upgrade / uso pago).

4. **Conta correta**  
   O Access Token deve ser da conta **@adventurelabsbr** (ou a que deve publicar). Token de outro usuário posta na outra conta.

5. **Callback / App type**  
   App precisa ser tipo que suporte **OAuth 1.0a** com usuário (User context) — é o que o `twitter-api-v2` usa para tweetar.

## Onde ver no dashboard

- **Últimos posts:** coluna de status `published` | `dry_run` | `error`.
- **Feed ao vivo:** evento `[X] …` com o motivo.
- **Vercel → Logs** do deployment: filtre por `/api/xpostr/cycle` ou erros na função.
