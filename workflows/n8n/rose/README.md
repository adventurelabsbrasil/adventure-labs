# Rose — Workflows n8n

Workflows do n8n para o cliente **Rose Portal Advocacia**.

## Workflows

| Arquivo | Descrição | Schedule |
|---------|-----------|----------|
| `rose-daily-leads-report-v1.json` | Relatório diário de leads Meta Ads → email equipe Rose | 03:00 BRT diário |

---

## rose-daily-leads-report-v1

### O que faz

1. Busca insights de ontem da conta Meta Ads da Rose (nível ad)
2. Faz **upsert** em `adv_ads_daily_metrics` (Supabase)
3. Agrega por campanha e envia email HTML para a equipe da Rose
4. Confirma no Telegram após envio
5. Alerta no Telegram em qualquer falha

### Variáveis de ambiente (configurar no n8n)

| Variável | Descrição |
|----------|-----------|
| `SUPABASE_URL` | URL do projeto Supabase (ex: `https://xxx.supabase.co`) |
| `SUPABASE_SERVICE_ROLE_KEY` | Service Role Key do Supabase |
| `ROSE_REPORT_RECIPIENTS` | Emails dos destinatários separados por vírgula |
| `TELEGRAM_CHAT_ID` | Chat ID do Telegram (ex: `1069502175`) |

> **Nota:** `META_ROSE_AD_ACCOUNT_ID` está hardcoded na URL do workflow (`act_499901480052479`) pois não é dado sensível.

### Credenciais n8n necessárias

| Credencial | Tipo | Descrição |
|------------|------|-----------|
| `Meta Rose — access_token query param` | HTTP Query Auth | Token de acesso Meta (query param `access_token`) |
| `SMTP contato@adventurelabs.com.br` | SMTP | Credencial SMTP para envio de email |
| `Telegram ceo_buzz_Bot` | Telegram API | Bot Telegram para notificações |

### Como importar

```bash
# No n8n (flow.adventurelabs.com.br):
# Settings → Import Workflow → selecionar este arquivo JSON
```

Após importar:
1. Atribuir as credenciais nos nós (Meta, SMTP, Telegram)
2. Configurar as variáveis de ambiente no n8n (Settings → Variables)
3. Ativar o workflow

### Causa raiz dos bugs (2026-04-16)

**Bug 1 — Supabase `create` → violação de chave única:**
O workflow original usava o nó **Supabase com operação `create`** (INSERT simples).
Quando a linha já existia em `adv_ads_daily_metrics` (ex: por dupla execução ou trigger manual),
o nó lançava `duplicate key value violates unique constraint "uq_ads_daily_metrics"` e o
workflow parava — o email nunca era enviado e **não havia notificação de erro**.

**Bug 2 — Telegram `chat_id is empty`:**
O nó `n8n-nodes-base.telegram` v1.2 exige os parâmetros `resource: "message"` e
`operation: "sendMessage"` explícitos — sem eles o campo `chatId` é ignorado.

**Bug 3 — Meta API `time_range` com `since == until`:**
O parâmetro `time_range` com `since` igual a `until` pode retornar dados inconsistentes
dependendo da versão da API. Substituído por `date_preset: yesterday`, que é a abordagem
canônica para "dados de ontem" (igual ao agente Lara Meta Ads).

**Bug 4 — emailSend typeVersion 2.x: body HTML chega vazio (`messageSize: 895`):**
O nó `emailSend` typeVersion 2/2.1 usa `parameters.message` para o corpo do email. Em n8n
v2.14.x, expressões neste campo retornam vazio para conteúdo HTML (o `subject` no mesmo
`$json` funciona normalmente). A causa exata é um bug na resolução de expressões longas no
campo `message` do typeVersion 2.x. Fix: usar **typeVersion 1** com `options.html` —
código path completamente diferente, sem o bug.

Esta versão corrige todos os problemas:
- **Upsert via REST API** com `Prefer: resolution=merge-duplicates` → nunca falha por duplicata
- **Error Trigger** + Telegram → qualquer falha futura gera alerta imediato
- **`resource` + `operation`** em todos os nós Telegram → `chatId` reconhecido corretamente
- **`date_preset: yesterday`** → dados do dia anterior de forma inequívoca
- **`emailSend typeVersion 1` com `options.html`** → body HTML enviado corretamente
