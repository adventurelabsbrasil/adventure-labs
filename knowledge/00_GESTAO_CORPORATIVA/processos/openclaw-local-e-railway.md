# OpenClaw — Como rodar local e no Railway

Documento de referência para o C-Suite e a operação: onde está o manual e os passos essenciais para rodar o **OpenClaw** (assistente @adv_openclaw_bot no Telegram e WhatsApp) **localmente** ou **no Railway**.

Arquitetura híbrida (oficial): [docs/ARQUITETURA_OPENCLAW_HIBRIDO.md](../../../docs/ARQUITETURA_OPENCLAW_HIBRIDO.md) (raiz do monorepo).

---

## Manual completo

O manual único com todos os detalhes fica em:

**`tools/openclaw/OPENCLAW-MANUAL-LOCAL-E-RAILWAY.md`**

Use esse arquivo para:
- Rodar o OpenClaw **local** (Mac): instalação, onboarding, gateway, canais, reinício.
- Rodar o OpenClaw **no Railway**: deploy one-click, Volume `/data`, variáveis, 24/7.
- Descobrir **onde o gateway está** (local vs Railway).
- Checklists e links para config (allowlist, WhatsApp, failover de modelo).

---

## Resumo para o C-Suite

### Rodar local (Mac)

1. `npm install -g openclaw`
2. Primeira vez: `openclaw onboard` (modelo, idioma pt-BR, canais).
3. Subir: `openclaw gateway` (deixar rodando).
4. WhatsApp (se precisar): `openclaw channels login --channel whatsapp` e escanear QR.
5. Config em `~/.openclaw/openclaw.json`; após alterar, reiniciar: `openclaw gateway stop` e `openclaw gateway`.

### Rodar no Railway

1. Deploy: https://railway.com/new/template/openclaw-complete-setup
2. No projeto: Public Networking (porta 8080), Volume com mount path `/data`, Variables (`SETUP_PASSWORD`, `OPENCLAW_GATEWAY_TOKEN`, `PORT=8080`).
3. Acessar `https://<dominio>/setup`, concluir wizard (modelo, API key, canais).
4. Config e credenciais ficam no Volume (`/data/.openclaw/`); para alterar é preciso editar o JSON no Volume (backup/restore ou UI do deploy).

### Descobrir onde está rodando

O bot Telegram @adv_openclaw_bot está ligado a **um** gateway. Parar o Mac / processo local e testar se o bot responde no Telegram: se sim → Railway; se não → local.

### CLI do monorepo (Railway)

Na raiz: `pnpm run railway login`, `pnpm run railway link` (escolher serviço OpenClaw), depois `railway logs`, `railway variables`, etc.

---

## Referências no repositório

| Assunto | Arquivo |
|---------|---------|
| Manual completo (local + Railway) | `tools/openclaw/OPENCLAW-MANUAL-LOCAL-E-RAILWAY.md` |
| Detalhes Railway (Volume, 24/7, troubleshooting) | `tools/openclaw/RAILWAY.md` |
| Primeiros passos e índice (local) | `tools/openclaw/README.md` |
| Allowlist Telegram/WhatsApp (IDs) | `tools/openclaw/whatsapp/IDS-REFERENCIA.md` |
| Failover de modelo (rate limit) | `tools/openclaw/MODEL-FAILOVER.md` |
| Railway CLI e MCP no monorepo | `docs/RAILWAY_CLI_E_MCP.md` |

Quando precisar orientar alguém ou executar passos de OpenClaw (local ou Railway), usar o **manual** em `tools/openclaw/OPENCLAW-MANUAL-LOCAL-E-RAILWAY.md` e, se for só Railway, o **RAILWAY.md** em `tools/openclaw/`.
