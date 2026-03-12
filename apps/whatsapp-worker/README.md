# WhatsApp Worker — Adventure Labs (adv_zazu / Zazu)

Worker Node.js que mantém sessão **WhatsApp Web** (via [whatsapp-web.js](https://github.com/pedroslopez/whatsapp-web.js)) e expõe um endpoint REST para o **n8n** buscar mensagens do dia nos grupos de clientes. Uso **somente leitura**; não envia mensagens.

**Identificador no Admin:** adv_zazu.  
Integração: o agente **Zazu** (fluxo n8n) chama `GET /daily-messages?date=YYYY-MM-DD` e publica o resumo em `adv_founder_reports` para o C-Suite e o Cagan (CPO).

**Grupos iniciais (filtro):** Adventure Young, Adventure Benditta, Adventure Rose, Adventure Tráfego Pago. Configurável via `WHATSAPP_GROUP_NAMES` (ver `.env.example`).

## Variáveis de ambiente

| Variável | Descrição |
|----------|-----------|
| `PORT` | Porta HTTP (default `3333`) |
| `SESSION_PATH` | Pasta para persistir sessão LocalAuth (default `.wwebjs_auth`) |
| `WHATSAPP_GROUP_IDS` | IDs dos grupos separados por vírgula (ex.: `123456789-123456@g.us`) |
| `WHATSAPP_GROUP_NAMES` | Nomes parciais dos grupos separados por vírgula (match por `includes`, case-insensitive) |

Se `WHATSAPP_GROUP_IDS` e `WHATSAPP_GROUP_NAMES` estiverem vazios, **todos** os grupos serão considerados.

## Primeira execução (QR Code)

Na primeira vez, o worker exibe um **QR code** no terminal. Escaneie com o WhatsApp (Dispositivos conectados) no celular. Após parear, a sessão é salva em `SESSION_PATH` e não será necessário escanear de novo (a menos que faça logout ou limpe a pasta).

## API

### GET /health

- **Resposta:** `{ ok: true, ready: boolean, hasGroupFilter: boolean }`
- `ready`: `true` quando o cliente WhatsApp está conectado.

### GET /groups

- Lista todos os grupos (id e name) para você escolher quais filtrar. Use depois em `WHATSAPP_GROUP_NAMES` ou `WHATSAPP_GROUP_IDS`.
- **Resposta:** `{ groups: [ { id, name } ] }`. Retorna `503` se o cliente ainda não estiver conectado.

### GET /daily-messages?date=YYYY-MM-DD

- **Query:** `date` opcional; formato `YYYY-MM-DD`. Se omitido, usa **ontem** (UTC).
- **Resposta:** JSON no formato:

```json
{
  "date": "2026-03-11",
  "groups": [
    {
      "id": "123456789-123456@g.us",
      "name": "Nome do Grupo",
      "messages": [
        {
          "from": "5511999999999@c.us",
          "body": "Texto da mensagem",
          "timestamp": 1710123456
        }
      ]
    }
  ]
}
```

- Em caso de erro: `503` se o cliente não está pronto; `500` com `{ date, groups: [], error: "..." }`.

## Testar com grupos específicos

1. Com o worker rodando e **ready**, abra: `http://localhost:3333/groups`
2. Copie os **nomes** (ou IDs) dos grupos que quer usar no Zazu.
3. Crie/edite o `.env` na pasta do worker:
   - Por nome (recomendado): `WHATSAPP_GROUP_NAMES=Clientes Lidera,Suporte Rose` (substring do nome, separado por vírgula).
   - Por ID: `WHATSAPP_GROUP_IDS=123456789-123456@g.us,outro-id@g.us`
4. Reinicie o worker (Ctrl+C e `npm start`). O `/health` passará a retornar `hasGroupFilter: true`.
5. Teste: `http://localhost:3333/daily-messages?date=2026-03-18` — só os grupos filtrados aparecerão.

## Deploy no Railway

1. **Novo serviço:** Railway → New Project → Deploy from GitHub repo → selecione o repositório do `01_ADVENTURE_LABS`.
2. **Root Directory:** em Settings do serviço, defina **Root Directory** = `apps/whatsapp-worker` (para o build usar só essa pasta).
3. **Build & Start:** Railway detecta `package.json`; comando de start: `npm start`. Build: `npm install`.
4. **Variáveis de ambiente:** em Variables, adicione:
   - `WHATSAPP_GROUP_NAMES` = nomes parciais dos grupos (ex.: `Clientes,Suporte`) ou deixe vazio para todos.
   - Opcional: `SESSION_PATH=/data` (se for usar volume; veja passo 5).
5. **Volume (sessão persistente):** para não perder o login entre deploys:
   - No serviço → **Volumes** → Add Volume, mount path: `/data`.
   - Variável: `SESSION_PATH=/data`.
   - Na **primeira** vez no Railway você precisará ver o QR: use **Deploy Logs** (o QR aparece no log) ou temporariamente exponha uma porta e acesse um endpoint que mostre o QR (avançado). Alternativa: copie a pasta `.wwebjs_auth` do seu Mac para o volume após o primeiro login local (complexo). Na prática, muitos fazem o primeiro login local e depois sobem a pasta de sessão (export/import do volume).
6. **Domínio:** Settings → Networking → Generate Domain. Anote a URL (ex.: `https://whatsapp-worker-xxx.up.railway.app`).
7. **n8n:** defina a variável `WHATSAPP_WORKER_URL` com essa URL no n8n (workflow Zazu).

**Primeiro login no Railway:** O QR aparece nos **Deploy Logs** (aba Logs); escaneie a partir da tela. Com Volume em `/data` e `SESSION_PATH=/data`, a sessão fica salva. Alternativa: se preferir, faça o primeiro login no Mac, faça o **primeiro login no seu Mac** (já feito). Depois zipa a pasta `apps/whatsapp-worker/.wwebjs_auth` e, no Railway, use um script de deploy ou um one-off que descompacte esse zip em `/data` (com `SESSION_PATH=/data` e volume em `/data`). Assim a sessão já sobe “logada”.

## Desenvolvimento local

```bash
cd apps/whatsapp-worker
npm install   # ou pnpm install se tiver pnpm
npm start     # ou pnpm start
# com reload automático: npm run dev (ou pnpm dev)
```

Acesse `http://localhost:3333/health` e, após escanear o QR, `http://localhost:3333/daily-messages?date=2026-03-11`.

## Referências

- Plano: `docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md` (fluxo WhatsApp Grupos).
- Agente Zazu (workflow n8n): `apps/admin/n8n_workflows/whatsapp_groups_agent/`.
