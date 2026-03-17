# Sueli — Agente de Conciliação Bancária (n8n)

A **Sueli** é uma Agente de IA Financeira Sênior que roda no n8n. Ela realiza conciliação bancária entre comprovantes/OFX e o ERP Omie, usando ferramentas (Tools) e memória de curto prazo (Window Buffer Memory). Ela não é um fluxo estático: decide autonomamente a ordem das ações e interrompe para intervenção humana quando há ambiguidade.

## Arquitetura

- **Triggers (v2):** Webhook POST (`/sueli-conciliacao`) **e** Telegram Trigger (mensagens ao bot da Sueli). Qualquer um dispara o mesmo fluxo; a resposta vai para o webhook (HTTP) ou de volta ao Telegram conforme a origem.
- **Input**: `message` (texto), `ofx` (trecho OFX opcional), `sessionId` (opcional). No Telegram: texto da mensagem e `chat_id` para enviar a resposta.
- **Config via Admin**: o nó **Get Config** faz `GET /api/n8n/sueli-config` no Admin (header `x-admin-key` = CRON_SECRET) e obtém as variáveis (Omie, Google Chat, Sheets, **ADMIN_URL**, **TELEGRAM_BOT_TOKEN**). O token do Telegram vem de **TELEGRAM_BOT_TOKEN_SUELI** no Vercel (nome canônico para vários bots). O **Merge Config** junta esse retorno com o prompt/sessionId; a Sueli e as tools usam esses dados (nenhuma chave fica no n8n).
- **Núcleo**: um nó **AI Agent** (Tools Agent) com:
  - **LLM**: Gemini 1.5 Flash (modelo `gemini-1.5-flash`), por compatibilidade com tools; pode trocar para `gemini-2.5-flash` no nó se preferir.
  - **Memória**: Window Buffer Memory (contexto da conversa/conciliação).
  - **Tools (v2.1):** Omie API (contas a pagar), **API Omie do Admin** (clientes, entradas, saídas), Google Chat. As tools **OFX** e **Google Sheets** foram removidas do JSON para evitar avisos de credencial não configurada; quando quiser usar, adicione no n8n os nós tool_ofx (Code) e tool_sheets (HTTP + Google Sheets OAuth2) e conecte ao Agent.

## Tools (ferramentas da Sueli)

| Tool | Quando usar | Descrição para o Agent |
|------|-------------|------------------------|
| **Omie_API_Tool** | Consultar/conciliar contas a pagar no Omie | Consultar lançamentos, status de boletos e realizar a conciliação final. Parâmetros: `call` (ListarContasPagar, ConsultarContaPagar, etc.) e payload conforme API Omie. |
| **Google_Sheets_Tool** | Antes de categorizar ou conciliar | Buscar categorias de gastos e regras de negócio definidas pelo Founder na planilha. |
| **Google_Chat_Tool** | Em ambiguidade ou necessidade de aprovação | Enviar mensagem ao canal com a pergunta ou alerta; aguardar resposta antes de prosseguir. |
| **OFX_Parser_Tool** | Quando houver extrato em formato OFX | Ler e interpretar dados de extrato bancário OFX. Entrada: string OFX. Saída: transações (data, valor, descrição, tipo). |

A ferramenta **Omie_API_Tool** envia `app_key`, `app_secret` e a chamada escolhida pelo Agent. A API Omie usa formato `call` + `param` (array) conforme [documentação](https://ajuda.omie.com.br/pt-BR/articles/8255313-cadastrando-uma-conta-a-pagar-via-api). Se necessário, ajuste o body do nó no editor do n8n para o formato exato da call (ex.: `ListarContasPagar` com `param` em array).

### API Omie do Admin (clientes + transações) — acesso da Sueli à “CLI Omie”

O **Admin** expõe rotas que replicam a CLI Omie (`tools/omie-cli`). A Sueli pode usá-las para listar/cadastrar clientes e listar entradas/saídas **sem** montar chamadas diretas à API Omie. O config retorna `ADMIN_URL`; use o mesmo header `x-admin-key` = `CRON_SECRET`.

| Método | URL (base = `ADMIN_URL`) | Uso |
|--------|---------------------------|-----|
| GET | `/api/omie/clientes?pagina=1&por_pagina=50` | Listar clientes |
| GET | `/api/omie/clientes/12345` ou `/api/omie/clientes/PONTUAL-X` | Consultar cliente (código Omie ou integração) |
| POST | `/api/omie/clientes` | Cadastrar cliente (body: `razao_social`, `nome_fantasia`, `cnpj_cpf?`, `email?`, etc.) |
| PATCH | `/api/omie/clientes/12345` | Alterar cliente (body: campos a atualizar) |
| GET | `/api/omie/transacoes/entradas?pagina=1&por_pagina=50&de=01/01/2026&ate=31/03/2026` | Listar contas a receber |
| GET | `/api/omie/transacoes/saidas?pagina=1&por_pagina=50&de=...&ate=...` | Listar contas a pagar |

**Como adicionar no n8n:** crie um nó **HTTP Request** (ou Tool que chame HTTP): URL = `={{ $('Merge Config').first().json.ADMIN_URL }}/api/omie/clientes` (ou `/transacoes/entradas`, `/transacoes/saidas`), Method GET (ou POST/PATCH para clientes), Header `x-admin-key` = `={{ $('Merge Config').first().json.CRON_SECRET }}` (ou use a credencial “Admin API” já existente). Associe esse nó como nova Tool do Agent (ex.: nome `tool_admin_omie`) para a Sueli poder listar clientes, listar transações e cadastrar clientes quando o usuário pedir.

## Variáveis de ambiente

**As chaves da Sueli ficam no Admin (Vercel).** O workflow chama `GET /api/n8n/sueli-config` no Admin (com header `x-admin-key` = `CRON_SECRET`) e recebe `OMIE_APP_KEY`, `OMIE_APP_SECRET`, `GOOGLE_CHAT_WEBHOOK_URL`, `GOOGLE_SHEETS_SPREADSHEET_ID`, **`ADMIN_URL`** e **`TELEGRAM_BOT_TOKEN`** (valor de **`TELEGRAM_BOT_TOKEN_SUELI`** no Vercel — use esse nome para o bot da Sueli; outros bots podem ter `TELEGRAM_BOT_TOKEN_ZAZU`, etc.). Configure essas variáveis no **Vercel** (Environment Variables do projeto Admin). No n8n você só precisa:

1. **Credencial "Admin API (x-admin-key)"** — HTTP Header Auth com **nome do header** = `x-admin-key` e **valor** = mesmo `CRON_SECRET` do Admin. Essa credencial deve ser usada no **Get Config** e em **todas** as tools que chamam o Admin: `tool_admin_omie_clientes`, `tool_admin_omie_entradas`, `tool_admin_omie_saidas`. Se alguma tool devolver **HTTP 401**, confira que ela está com a credencial "Admin API" selecionada e que o valor é idêntico ao `CRON_SECRET` do Vercel.
2. **Credencial Gemini** — para o LLM (Google PaLM/Gemini); pode usar o mesmo valor de `GEMINI_API_KEY` que você tem no Vercel, configurado na credencial do n8n.
3. **Credencial Google Sheets** (se usar a tool de planilha) — OAuth2 no n8n.

Se o Admin estiver em outro domínio, edite no nó "Get Config" a URL para `https://SEU_DOMINIO/api/n8n/sueli-config`. Ver [.env.example](.env.example).

## Importar no n8n

**Versão recomendada: v2** — inclui trigger Telegram (conversar com a Sueli pelo bot), tools da API Omie do Admin (clientes, entradas, saídas) e fluxo de resposta por canal.

A partir da raiz do repositório `01_ADVENTURE_LABS`:

```bash
# v2 (Telegram + API Omie Admin)
cd apps/admin && ./scripts/n8n/import-to-railway.sh "../../workflows/n8n/sueli/sueli-conciliacao-bancaria-v2.json"

# ou v1 (apenas webhook)
./scripts/n8n/import-to-railway.sh "../../workflows/n8n/sueli/sueli-conciliacao-bancaria-v1.json"
```

Requer `N8N_API_URL` e `N8N_API_TOKEN` (ou equivalentes do script). Após importar, criar/associar credenciais no n8n (ver abaixo).

## URLs do webhook (Railway)

- **v2** usa path `sueli-conciliacao` (webhookId sueli-conciliacao-v2).
- **Teste** (workflow em modo Test / Listening):  
  **https://n8n-production-619c.up.railway.app/webhook-test/sueli-conciliacao**
- **Produção** (workflow ativado):  
  **https://n8n-production-619c.up.railway.app/webhook/sueli-conciliacao**

**v2 — Telegram:** use o nome **TELEGRAM_BOT_TOKEN_SUELI** em ambos os lados: (1) **Vercel** — variável de ambiente = `TELEGRAM_BOT_TOKEN_SUELI` (token do bot da Sueli); (2) **n8n** — no nó **Telegram Trigger** associe a credencial **Telegram API** com o mesmo valor (token do bot da Sueli). O nó "Enviar Telegram" recebe o token via Get Config (sueli-config), que lê `TELEGRAM_BOT_TOKEN_SUELI` do Vercel. Ao ativar o workflow, mensagens ao bot disparam a Sueli e a resposta volta no Telegram.

Use a URL de **teste** para rodar com "Execute workflow" / "Listening"; use a de **produção** quando o workflow estiver ativo (toggle Active).

## Como acionar a Sueli (OFX) — webhook, não pasta

O fluxo **não reage a arquivos colocados em pasta**. Ele é acionado apenas por **POST no webhook**. Para usar um OFX:

1. Use a URL de teste acima (com o workflow em execução/listening) ou a URL de produção (com workflow ativo).
2. Envie um POST com body JSON, por exemplo:
   ```json
   {
     "message": "Concilie este extrato e categorize as transações",
     "ofx": "<conteúdo completo do arquivo .ofx aqui>"
   }
   ```
3. Se o OFX estiver em um arquivo, leia o arquivo e coloque o conteúdo na chave `ofx` (ou use um script/Postman/curl que lê o .ofx e envia no body).

**Teste rápido (sem OFX):**
```bash
curl -X POST "https://n8n-production-619c.up.railway.app/webhook-test/sueli-conciliacao" \
  -H "Content-Type: application/json" \
  -d '{"message": "Olá, você está funcionando?"}'
```

**Com OFX** (use o caminho real do arquivo .ofx; a partir da raiz do repo 01_ADVENTURE_LABS):
```bash
cd /caminho/para/01_ADVENTURE_LABS
# Um dos arquivos em knowledge/99_ARQUIVO/sicredi/ (ex.: sicredi_1773411634.ofx)
OFX=$(cat knowledge/99_ARQUIVO/sicredi/sicredi_1773411634.ofx | jq -Rs .)
curl -X POST "https://n8n-production-619c.up.railway.app/webhook-test/sueli-conciliacao" \
  -H "Content-Type: application/json" \
  -d "{\"message\": \"Concilie este extrato\", \"ofx\": $OFX}"
```
Se não tiver `jq`, use Postman ou outro cliente: body JSON com `"message"` e `"ofx"` (cole o conteúdo do .ofx como string).

## Revisão no n8n (credenciais e erros)

- **Gemini:** O workflow usa `gemini-1.5-flash` por compatibilidade com tools. No nó do LLM, associe a credencial **Google Gemini API**. Se quiser, pode trocar para `gemini-2.5-flash` depois.
- **Google_Sheets_Tool — "não tem credencial configurada":** Crie no n8n uma credencial **Google Sheets OAuth2** (Settings → Credentials → Add credential → Google Sheets OAuth2), autorize com a conta que tem acesso à planilha, e no nó "Google_Sheets_Tool" selecione essa credencial. Se não for usar planilha por enquanto, você pode desconectar o nó Google_Sheets_Tool do agente (ou deixar o GOOGLE_SHEETS_SPREADSHEET_ID vazio no Admin e tratar na planilha).
- **OFX_Parser_Tool em erro:** O Tool Code no n8n deve retornar uma **string**. A versão atual do workflow já retorna `JSON.stringify({ transacoes })` e trata `query` indefinido. Reimporte o workflow ou edite o nó: o código deve terminar com `return JSON.stringify({ transacoes });` (não retornar objeto direto).

- **Gemini "Invalid function name":** A API do Gemini rejeita nomes com espaços ou caracteres especiais. O workflow usa nomes **tool_omie**, **tool_chat**, **tool_ofx**, **tool_sheets**. Depois de reimportar: (1) abra cada nó de tool no n8n e confira se o nome no topo do nó está exatamente assim (se aparecer "HTTP Request" ou "Code", renomeie manualmente para tool_omie, tool_chat, etc.); (2) se o erro continuar, troque o modelo no nó do LLM para **gemini-1.5-flash** ou **gemini-1.5-pro** (às vezes o 2.5 Flash é mais sensível aos nomes).

## Skill no repositório

A documentação canônica da Sueli para outros agentes (ex.: CFO) e para humanos está em:

**[agents/skills/sueli-conciliacao-bancaria/SKILL.md](../../agents/skills/sueli-conciliacao-bancaria/SKILL.md)**

Contém: objetivo, quando usar, input esperado, passos e output esperado. A execução da Sueli ocorre no n8n; o SKILL.md descreve o que ela faz e como acioná-la.

## Conversar com a Sueli (Google Chat ou Telegram)

Para você **enviar mensagens** para a Sueli e **receber respostas** (pedir listagem de clientes Omie, transações, conciliação, etc.), é preciso configurar um canal de conversa em mão dupla. Guia completo:

**[SUELI_CHAT_TELEGRAM.md](SUELI_CHAT_TELEGRAM.md)** — opção **Telegram** (bot + n8n) ou **Google Chat** (app + webhook + API). O Telegram costuma ser mais rápido de configurar.

## Segurança

- Não commitar chaves, extratos completos ou PII. Usar apenas placeholders no `.env.example`.
- Em produção, usar path de webhook não trivial e, se possível, autenticação (header/secret) no webhook.
