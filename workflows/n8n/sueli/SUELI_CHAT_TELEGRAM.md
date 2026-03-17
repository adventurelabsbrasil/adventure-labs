# Sueli — Conversar via Google Chat ou Telegram (leitura e escrita)

Este doc descreve como dar à Sueli **acesso de leitura e escrita** em um canal de conversa para você pedir coisas a ela e receber respostas (conciliação, listar clientes Omie, transações, etc.).

Hoje a Sueli:
- **Escreve** no Google Chat (envia mensagem para um webhook quando precisa de intervenção humana).
- **Não recebe** mensagens suas diretamente; ela é acionada por POST no webhook do n8n com um body `{ "message": "..." }`.

Para **conversar** com ela (você manda mensagem → Sueli processa → Sueli responde), há duas opções: **Telegram** ou **Google Chat bot**.

---

## Opção 1 — Telegram (mais simples)

### Passos

1. **Criar um bot no Telegram**
   - Abra o Telegram e fale com [@BotFather](https://t.me/BotFather).
   - Envie `/newbot`, escolha nome e username (ex.: `Sueli Adventure Labs` / `sueli_adventure_bot`).
   - Guarde o **token** (ex.: `123456789:ABCdefGHI...`).

2. **Configurar o token — nome canônico: TELEGRAM_BOT_TOKEN_SUELI**
   - **Vercel (Admin):** variável de ambiente = **`TELEGRAM_BOT_TOKEN_SUELI`** = token do bot da Sueli. (Se tiver só um bot, pode usar `TELEGRAM_BOT_TOKEN` como fallback; para vários bots use sempre `TELEGRAM_BOT_TOKEN_SUELI`.)
   - **n8n:** a credencial **Telegram API** do nó Telegram Trigger deve usar o **mesmo valor** (token do bot da Sueli). O nó "Enviar Telegram" recebe o token via Get Config, que lê `TELEGRAM_BOT_TOKEN_SUELI` do Vercel. Assim Vercel e n8n ficam alinhados ao nome `TELEGRAM_BOT_TOKEN_SUELI`.

3. **No n8n: workflow que escuta o Telegram e chama a Sueli**
   - **Trigger:** nó **Telegram Trigger** (ou “Webhook” configurado como webhook do Telegram).
     - Se usar **Telegram Trigger**: em Credentials, crie “Telegram API” com o token do bot. O n8n vai receber cada mensagem que alguém envia ao bot.
   - **Fluxo:** da mensagem recebida, pegue o texto (ex.: `$json.message.text`) e o `chat_id` (para responder).
   - Chame o **mesmo Agent da Sueli** (ou o mesmo webhook interno do workflow Sueli) com `message` = texto recebido.
   - Pegue a resposta do Agent e envie de volta ao Telegram com o nó **Send a message to a Telegram chat** (ou HTTP POST para `https://api.telegram.org/bot<TOKEN>/sendMessage` com `chat_id` e `text`).

4. **Uso**
   - Você abre o bot no Telegram, envia por exemplo: “Lista os clientes do Omie” ou “Quais são as saídas deste mês?”.
   - O workflow recebe a mensagem, passa para a Sueli (Agent), e a resposta é enviada de volta no mesmo chat.

### Resumo técnico (n8n)

- **Entrada (leitura):** Telegram Trigger → `body.message.text`, `body.chat.id`.
- **Processamento:** usar o mesmo subworkflow/Agent da Sueli (webhook interno ou nó Agent com as tools).
- **Saída (escrita):** HTTP Request POST `https://api.telegram.org/bot{{TELEGRAM_BOT_TOKEN}}/sendMessage` com `{ "chat_id": ..., "text": "<resposta da Sueli>" }`. O `TELEGRAM_BOT_TOKEN` vem do Get Config (sueli-config), que lê **TELEGRAM_BOT_TOKEN_SUELI** no Vercel (nome canônico para o bot da Sueli).

---

## Opção 2 — Google Chat (bot com leitura e escrita)

No Google Chat, para a Sueli **receber** mensagens e **responder**, é preciso um **app (bot)** no Google Chat que:

1. Receba eventos quando alguém envia mensagem em um espaço onde o bot foi adicionado.
2. Envie essa mensagem para o n8n (webhook).
3. O n8n processa com a Sueli e envia a resposta de volta ao Chat via API do Google Chat.

### Passos

1. **Criar um app no Google Chat**
   - Acesse [Google Cloud Console](https://console.cloud.google.com/) → APIs & Services → habilitar **Google Chat API**.
   - Em “Google Chat API” → Configuration → criar um **app** (bot).
   - Em “Connection settings”, escolha **Webhooks** (ou “App URL” dependendo da UI).
   - **URL do webhook:** a URL pública do n8n que vai receber os eventos do Chat (ex.: `https://n8n-production-619c.up.railway.app/webhook/google-chat-sueli`). Essa rota deve aceitar POST e responder rápido (200) para o Chat não dar timeout; o processamento pesado (Sueli) pode ser assíncrono e a resposta ser enviada depois pela API do Chat.

2. **Formato do evento (Google Chat → n8n)**
   - O Chat envia um JSON com a mensagem do usuário (ex.: `event.message.text`, `event.space.name`, `event.user.displayName`) e um **thread** ou **space** onde você pode responder.
   - Documentação: [Google Chat API – Events](https://developers.google.com/chat/api/guides/message-formats/events).

3. **Responder no Chat (escrita)**
   - Para postar a resposta da Sueli no mesmo espaço/thread, use a **Google Chat API** (REST): POST para criar uma mensagem no espaço/thread, com o token de autenticação do app (OAuth2 ou token do app de serviço). O n8n precisa de uma credencial Google que tenha permissão para enviar mensagens no Chat (ex.: Service Account com escopo do Chat ou OAuth do app de Chat).

4. **No n8n**
   - **Trigger:** Webhook que recebe o POST do Google Chat (URL configurada no app de Chat).
   - Extraia o texto da mensagem e o identificador do espaço/thread.
   - Chame o Agent da Sueli com esse texto.
   - Envie a resposta da Sueli para o Chat via HTTP (Google Chat API) com o token adequado.

A configuração é mais trabalhosa que o Telegram (OAuth/Service Account, escopos, formato de evento e de resposta). Se o objetivo é só “conversar com a Sueli”, o **Telegram** costuma ser o caminho mais rápido.

---

## O que a Sueli pode fazer na conversa

Com a API Omie do Admin e as tools atuais, na conversa a Sueli pode, por exemplo:

- Listar clientes cadastrados no Omie.
- Cadastrar ou alterar clientes (via POST/PATCH na API do Admin).
- Listar entradas e saídas (contas a receber e a pagar) para você conciliar com o extrato.
- Conciliação bancária (OFX, comprovantes) e pedir sua confirmação quando houver dúvida (enviando mensagem ao Chat ou, no Telegram, respondendo no mesmo chat).

Se você escolher **Telegram**, basta criar o bot, colocar o token no ambiente (ou credencial n8n) e montar o workflow: Telegram Trigger → Sueli (Agent/webhook) → enviar resposta ao Telegram. Se escolher **Google Chat**, siga os passos do app de Chat + webhook + API para enviar a resposta no mesmo espaço/thread.
