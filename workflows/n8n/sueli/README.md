# Sueli — Agente de Conciliação Bancária (n8n)

A **Sueli** é uma Agente de IA Financeira Sênior que roda no n8n. Ela realiza conciliação bancária entre comprovantes/OFX e o ERP Omie, usando ferramentas (Tools) e memória de curto prazo (Window Buffer Memory). Ela não é um fluxo estático: decide autonomamente a ordem das ações e interrompe para intervenção humana quando há ambiguidade.

## Arquitetura

- **Trigger**: Webhook POST (`/sueli-conciliacao` ou path configurado).
- **Input**: `message` (texto), `ofx` (trecho OFX opcional), `sessionId` (opcional).
- **Config via Admin**: o nó **Get Config** faz `GET /api/n8n/sueli-config` no Admin (header `x-admin-key` = CRON_SECRET) e obtém as variáveis (Omie, Google Chat, Sheets). O **Merge Config** junta esse retorno com o prompt/sessionId; a Sueli e as tools usam esses dados (nenhuma chave fica no n8n).
- **Núcleo**: um nó **AI Agent** (Tools Agent) com:
  - **LLM**: Gemini 1.5 Pro.
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
./apps/admin/scripts/n8n/import-to-railway.sh "apps/admin/n8n_workflows/sueli/sueli-conciliacao-bancaria-v1.json"
```

Requer `N8N_API_URL` e `N8N_API_TOKEN` (ou equivalentes do script). Após importar, criar/associar credenciais no n8n: Gemini (Google PaLM/Gemini), Omie (HTTP ou variáveis no body), Google Sheets (OAuth2 se usar API), webhook Google Chat.

## Skill no repositório

A documentação canônica da Sueli para outros agentes (ex.: CFO) e para humanos está em:

**[agents/skills/sueli-conciliacao-bancaria/SKILL.md](../../agents/skills/sueli-conciliacao-bancaria/SKILL.md)**

Contém: objetivo, quando usar, input esperado, passos e output esperado. A execução da Sueli ocorre no n8n; o SKILL.md descreve o que ela faz e como acioná-la.

## Segurança

- Não commitar chaves, extratos completos ou PII. Usar apenas placeholders no `.env.example`.
- Em produção, usar path de webhook não trivial e, se possível, autenticação (header/secret) no webhook.
