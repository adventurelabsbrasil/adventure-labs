# Sueli — Agente de Conciliação Bancária (n8n)

A **Sueli** é uma Agente de IA Financeira Sênior que roda no n8n. Ela realiza conciliação bancária entre comprovantes/OFX e o ERP Omie, usando ferramentas (Tools) e memória de curto prazo (Window Buffer Memory). Ela não é um fluxo estático: decide autonomamente a ordem das ações e interrompe para intervenção humana quando há ambiguidade.

## Arquitetura

- **Trigger**: Webhook POST (`/sueli-conciliacao` ou path configurado).
- **Input**: `message` (texto), `ofx` (trecho OFX opcional), `sessionId` (opcional).
- **Config via Admin**: o nó **Get Config** faz `GET /api/n8n/sueli-config` no Admin (header `x-admin-key` = CRON_SECRET) e obtém as variáveis (Omie, Google Chat, Sheets). O **Merge Config** junta esse retorno com o prompt/sessionId; a Sueli e as tools usam esses dados (nenhuma chave fica no n8n).
- **Núcleo**: um nó **AI Agent** (Tools Agent) com:
  - **LLM**: Gemini 1.5 Flash (modelo `gemini-1.5-flash`), por compatibilidade com tools; pode trocar para `gemini-2.5-flash` no nó se preferir.
  - **Memória**: Window Buffer Memory (contexto da conversa/conciliação).
  - **Tools**: Omie API, Google Sheets, Google Chat, OFX Parser.

## Tools (ferramentas da Sueli)

| Tool | Quando usar | Descrição para o Agent |
|------|-------------|------------------------|
| **Omie_API_Tool** | Consultar/conciliar contas a pagar no Omie | Consultar lançamentos, status de boletos e realizar a conciliação final. Parâmetros: `call` (ListarContasPagar, ConsultarContaPagar, etc.) e payload conforme API Omie. |
| **Google_Sheets_Tool** | Antes de categorizar ou conciliar | Buscar categorias de gastos e regras de negócio definidas pelo Founder na planilha. |
| **Google_Chat_Tool** | Em ambiguidade ou necessidade de aprovação | Enviar mensagem ao canal com a pergunta ou alerta; aguardar resposta antes de prosseguir. |
| **OFX_Parser_Tool** | Quando houver extrato em formato OFX | Ler e interpretar dados de extrato bancário OFX. Entrada: string OFX. Saída: transações (data, valor, descrição, tipo). |

A ferramenta **Omie_API_Tool** envia `app_key`, `app_secret` e a chamada escolhida pelo Agent. A API Omie usa formato `call` + `param` (array) conforme [documentação](https://ajuda.omie.com.br/pt-BR/articles/8255313-cadastrando-uma-conta-a-pagar-via-api). Se necessário, ajuste o body do nó no editor do n8n para o formato exato da call (ex.: `ListarContasPagar` com `param` em array).

## Variáveis de ambiente

**As chaves da Sueli ficam no Admin (Vercel).** O workflow chama `GET /api/n8n/sueli-config` no Admin (com header `x-admin-key` = `CRON_SECRET`) e recebe `OMIE_APP_KEY`, `OMIE_APP_SECRET`, `GOOGLE_CHAT_WEBHOOK_URL`, `GOOGLE_SHEETS_SPREADSHEET_ID`. Configure essas variáveis no **Vercel** (Environment Variables do projeto Admin). No n8n você só precisa:

1. **Credencial "Admin API (x-admin-key)"** — HTTP Header Auth com nome `x-admin-key` e valor = mesmo `CRON_SECRET` do Admin (para o nó "Get Config").
2. **Credencial Gemini** — para o LLM (Google PaLM/Gemini); pode usar o mesmo valor de `GEMINI_API_KEY` que você tem no Vercel, configurado na credencial do n8n.
3. **Credencial Google Sheets** (se usar a tool de planilha) — OAuth2 no n8n.

Se o Admin estiver em outro domínio, edite no nó "Get Config" a URL para `https://SEU_DOMINIO/api/n8n/sueli-config`. Ver [.env.example](.env.example).

## Importar no n8n

A partir da raiz do repositório `01_ADVENTURE_LABS`:

```bash
cd apps/admin && ./scripts/n8n/import-to-railway.sh "../../workflows/n8n/sueli/sueli-conciliacao-bancaria-v1.json"
```

Requer `N8N_API_URL` e `N8N_API_TOKEN` (ou equivalentes do script). Após importar, criar/associar credenciais no n8n (ver abaixo).

## URLs do webhook (Railway)

- **Teste** (workflow em modo Test / Listening):  
  **https://n8n-production-619c.up.railway.app/webhook-test/sueli-conciliacao**
- **Produção** (workflow ativado):  
  **https://n8n-production-619c.up.railway.app/webhook/sueli-conciliacao**

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

## Segurança

- Não commitar chaves, extratos completos ou PII. Usar apenas placeholders no `.env.example`.
- Em produção, usar path de webhook não trivial e, se possível, autenticação (header/secret) no webhook.
