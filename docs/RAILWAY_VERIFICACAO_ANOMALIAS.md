# Verificação Railway — leitura e anomalias

**Data da verificação:** 2026-03-16  
**Método:** chamadas HTTP aos endpoints públicos (sem Railway CLI/MCP, pois CLI no repo depende de postinstall e MCP não estava carregado).

---

## Log HTTP do Zazu (referência)

Trecho do log compartilhado (Mar 13, 2026):

| Endpoint           | Status | Tempo   | Observação                          |
|--------------------|--------|---------|-------------------------------------|
| GET /chats         | 503    | 5 s     | Timeout do worker (getChats lento)  |
| GET /health        | 200    | ~126 ms | OK                                  |
| GET /qr.json       | 200    | 126 ms  | OK                                  |
| GET /daily-messages| 499    | 7 s     | Cliente/proxy fechou (timeout)      |
| GET /groups        | 499    | 14 s    | Cliente fechou                      |
| GET /groups        | 500    | 3 min   | Servidor erro após muito tempo      |

Conclusão: `/groups` e `/daily-messages` não tinham timeout no worker; o proxy/Railway ou o cliente encerrava a conexão (499) ou o processo seguia até dar 500. `/chats` já tinha timeout de 5s e devolvia 503 corretamente.

---

## Serviços testados

| Serviço | URL base | Status |
|--------|----------|--------|
| **Zazu (WhatsApp worker)** | `https://adv-zazu-whatsapp-worker-production.up.railway.app` | ✅ Acessível |
| **n8n** | `https://n8n-production-619c.up.railway.app` | ✅ Acessível |

---

## Zazu (adv-zazu-whatsapp-worker)

### OK

- **GET /health** — `200` em ~1,5 s  
  - Resposta: `{"ok":true,"ready":true,"hasGroupFilter":true}`  
  - WhatsApp **conectado** (`ready: true`), filtro de grupos configurado (`hasGroupFilter: true`).

- **GET /qr.json** — `200` em ~1 s  
  - Resposta: `{"connected":true}`  
  - Confirma que não está aguardando QR.

### ⚠️ Anomalia identificada: endpoints lentos / sem timeout (corrigido no código)

- **GET /groups** — no log: 499 em 14 s e 500 em 3 min (sem timeout no worker).
- **GET /daily-messages** — no log: 499 em 7 s (proxy/cliente fechou; worker sem timeout).

**Correções aplicadas no worker** (`apps/labs/whatsapp-worker/src/index.js`):

1. **GET /groups**
   - Timeout **15 s** em `client.getChats()`.
   - Em timeout: resposta **503** com `{ error: "Timeout ao listar grupos...", groups: [] }` em vez de deixar a requisição correr até 499/500.

2. **GET /daily-messages**
   - Timeout **12 s** em `getChats()`.
   - Timeout **10 s** por grupo em `chat.fetchMessages()`.
   - Timeout **45 s** no fluxo total.
   - Em qualquer timeout: resposta **503** com `{ date, groups: [], error: "Timeout ao buscar mensagens..." }`.

3. **GET /chats**
   - Timeout aumentado de **5 s** para **10 s** para dar mais margem ao WhatsApp.

Assim o worker passa a responder com 503 e mensagem clara em vez de travar e deixar o proxy encerrar (499) ou estourar (500). Depois do deploy no Railway, conferir de novo os logs e o comportamento do Admin / n8n.

---

## n8n

- **GET /** (raiz) — `200` em ~1,4 s.  
- Serviço acessível; não foi feita verificação de workflows ativos ou variáveis (depende de Railway CLI/MCP ou dashboard).

---

## Resumo

| Item | Resultado |
|------|-----------|
| Zazu no ar | ✅ Sim |
| WhatsApp conectado | ✅ Sim (`/health` e `/qr.json`) |
| n8n no ar | ✅ Sim |
| Zazu GET /groups | ✅ Corrigido: timeout 15s, 503 em vez de 499/500 |
| Zazu GET /daily-messages | ✅ Corrigido: timeouts 12s/10s/45s, 503 em vez de 499/500 |
| Zazu GET /chats | ✅ Ajustado: timeout 5s → 10s |

---

## Como repetir a verificação (com Railway CLI)

Quando a **Railway CLI** estiver usável (global: `npm i -g @railway/cli` ou após `pnpm approve-builds` para o postinstall do `@railway/cli`):

```bash
railway login
railway link   # escolher projeto onde estão n8n e Zazu
railway status
railway service  # escolher adv-zazu-whatsapp-worker
railway logs --tail 50
railway variables
```

Com **Railway MCP** ativo no Cursor (reiniciar Cursor após configurar `.cursor/mcp.json`), você pode pedir ao assistente: "liste os serviços do projeto Railway", "mostre os logs do serviço Zazu", "liste as variáveis do ambiente".

Ref.: `docs/RAILWAY_CLI_E_MCP.md`, `knowledge/00_GESTAO_CORPORATIVA/operacao/zazu-status-e-proximos-passos.md`.
