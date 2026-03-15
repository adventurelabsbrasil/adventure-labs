---
title: CRM — 502 ao buscar contatos do WhatsApp (troubleshooting)
domain: gestao_corporativa
tags: [crm, whatsapp, zazu, vercel, railway, troubleshooting]
updated: 2026-03-18
---

# CRM: 502 ao carregar contatos (Importar do WhatsApp)

Quando a página **CRM → Importar do WhatsApp** retorna **502** ou "Failed to load resource: 502", o Admin (Vercel) não conseguiu obter resposta do **worker Zazu** (WhatsApp). O fluxo é: **navegador → Vercel (API /api/admin/crm/whatsapp-chats) → Railway (worker GET /chats)**.

---

## Checklist

### 1. Vercel (Admin)

| O que verificar | Onde |
|-----------------|------|
| **WHATSAPP_WORKER_URL** está definida? | Vercel → projeto do Admin → Settings → Environment Variables |
| Valor é a URL pública do worker (ex.: `https://adv-zazu-xxx.up.railway.app`), **sem** barra no final? | Mesma tela |
| Depois de alterar env, fez **redeploy**? | Deployments → Redeploy |

Se a variável não existir, a API retorna **503** com "WHATSAPP_WORKER_URL não configurada". Se for **502**, a URL existe mas a requisição ao worker falhou.

### 2. Railway (worker Zazu)

| O que verificar | Onde |
|-----------------|------|
| Serviço do worker está **Running**? | Railway → projeto → serviço Zazu/WhatsApp |
| O worker está **conectado** ao WhatsApp? (QR já escaneado) | Dashboard Admin → **Zazu (WhatsApp)** no menu; ou Railway → Logs (deve aparecer "ready" ou sessão ativa) |
| A URL do serviço está acessível? | No browser: `https://SUA-URL-RAILWAY.app/health` → deve retornar `{"ok":true,"ready":true/false,...}` |
| **GET /chats** responde? | `https://SUA-URL-RAILWAY.app/chats` → se não escaneou QR, retorna 503; se estiver pronto, retorna `{ "chats": [...] }` |

Causas comuns no Railway:

- **Cold start:** serviço dormindo; a primeira requisição pode demorar ou dar timeout (45s no Admin). Tentar de novo.
- **Worker não conectado:** sessão expirou ou QR não foi escaneado. Reconectar em **Admin → Zazu (WhatsApp)** (se o QR for exibido pelo Admin) ou nos logs do Railway.
- **Crash / OOM:** verificar Logs no Railway; reiniciar o serviço se necessário.

### 3. Rede / URL

- A URL do worker no Vercel deve ser **HTTPS** e **pública** (não localhost).
- Se o worker estiver atrás de auth ou firewall que bloqueie a Vercel, a conexão falha → 502.

---

## Resumo rápido

1. **Vercel:** `WHATSAPP_WORKER_URL` = URL do app no Railway; redeploy após mudar.
2. **Railway:** serviço rodando; WhatsApp conectado (QR escaneado); `/health` e `/chats` respondendo.
3. Se ainda 502: verificar Logs no Railway e no Vercel (Function logs da rota `whatsapp-chats`) para ver o erro exato (timeout, connection refused, etc.).
