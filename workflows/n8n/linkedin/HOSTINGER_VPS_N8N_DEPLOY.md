# n8n na VPS Hostinger — LinkedIn Native Form → Supabase

**Objetivo:** publicar n8n com HTTPS, importar o workflow versionado e encadear **LinkedIn → n8n → Edge Function → `conversion_forms` → Admin CRM**.

**Decisão (plano):** **Coolify** como plataforma primária na mesma VPS onde já corre o stack `app` (Coolify na porta **3000**). **Fallback:** `docker-compose` direto na VPS só com reverse proxy/TLS — não usar HTTP cru na porta 5678 para webhook de produção (LinkedIn exige HTTPS).

**Produção Adventure (instância existente):** serviço **Comando Estelar** em `https://n8n.adventurelabs.com.br` — **reativar este recurso** em vez de criar um segundo n8n no mesmo FQDN (evita conflito de domínio e volumes vazios).

---

## 1. Estado validado da VPS (Hostinger)

| Item | Valor |
|------|--------|
| VPS ID | `1526292` |
| SO | Ubuntu 24.04 LTS |
| IPv4 | `187.77.251.199` |
| Hostname | `srv1526292.hstgr.cloud` |
| Estado | `running` |
| Projeto Docker `app` | `running` — containers **coolify** (imagem `ghcr.io/coollabsio/coolify:3.12.36`) e **coolify-fluentbit** |
| Painel Coolify (rede) | `http://187.77.251.199:3000` (ajustar se houver domínio próprio) |

**Nota (API Hostinger `VPS_getProjectListV1`):** a lista de projetos Docker exposta por este endpoint reflete sobretudo stacks como `app` (Coolify) e `openclaw`. **Contentores de aplicações geridos pelo Coolify** (como o n8n) podem **não** aparecer aqui; o estado real do n8n confirma-se no **Coolify** (UI) ou com `docker ps` na VPS.

---

## 2. Coolify: reativar instância existente (recomendado)

Use esta secção para o serviço **Comando Estelar** (ou equivalente) que já tem FQDN `https://n8n.adventurelabs.com.br` e volumes em `/home/node/.n8n`.

### 2.1 Checklist — nada perder

- [ ] **Não** apagar o serviço nem os **Persistent Volumes** ligados a `/home/node/.n8n` (e `/files` se usado).
- [ ] Manter o **mesmo** `N8N_ENCRYPTION_KEY` (não gerar chave nova — senão credenciais antigas deixam de abrir).
- [ ] **Não** criar um segundo recurso n8n com o mesmo domínio (erro “domínio em uso” e risco de dados noutro volume vazio).
- [ ] (Opcional) Após a UI voltar: exportar workflows críticos em JSON como backup extra.

### 2.2 Secrets — repor no Coolify (aba **Secrets**)

Alinhar nomes ao que o template Coolify injeta (podem variar ligeiramente; ver variáveis expostas no recurso). Referência: [.env.example](./.env.example).

| Variável | Valor / notas |
|----------|----------------|
| `N8N_ENCRYPTION_KEY` | Manter o valor que já desencriptava a instância. |
| `WEBHOOK_URL` | `https://n8n.adventurelabs.com.br/` (alinhar ao campo **Webhook URL** nas Configurations, se existir). |
| `N8N_HOST` | `n8n.adventurelabs.com.br` |
| `N8N_PROTOCOL` | `https` |
| `LINKEDIN_EDGE_FUNCTION_URL` | URL completa `…/functions/v1/linkedin-native-lead-submit` (slug canónico no repo). No Supabase pode existir outra função com nome parecido (`linkedin_native_lead`); **para este workflow** use **linkedin-native-lead-submit**. |
| `LINKEDIN_WEBHOOK_SECRET` | Igual ao secret no Supabase |
| `SUPABASE_ANON_KEY` | Chave anon do projeto (workflow HTTP Request) |

### 2.3 Configurations + Deploy

1. **URL (FQDN)** e **SSL** corretos; **Webhook URL** coerente com `WEBHOOK_URL`.
2. **Save** em Configurations / Secrets.
3. **Deploy** até o serviço deixar de estar **STOPPED** e os **Logs** mostrarem o n8n estável (sem crash em loop).
4. Validar no browser: `https://n8n.adventurelabs.com.br` deve carregar a UI (não 404).

---

## 3. Criar serviço n8n novo no Coolify (só se necessário)

Usar apenas se **não** existir instância ou se quiseres **outro FQDN** (ex. `n8n-labs.…`).

1. Aceder ao Coolify e autenticar (`http://187.77.251.199:3000/`).
2. **New resource** → **Docker Compose** ou **Docker Image** (`docker.n8n.io/n8nio/n8n:latest`), conforme o padrão no Coolify.
3. **Volume persistente** montado em `/home/node/.n8n` (equivalente ao volume `n8n_data` em [docker-compose.n8n.yml](./docker-compose.n8n.yml)).
4. **Domínio + HTTPS** distinto de `n8n.adventurelabs.com.br` se essa URL já estiver tomada.
5. Preencher as mesmas variáveis da tabela em §2.2.
6. **Deploy** e confirmar UI em HTTPS.

### Fallback (sem Coolify)

Usar o arquivo [docker-compose.n8n.yml](./docker-compose.n8n.yml) na VPS com **Traefik / Caddy / Nginx** + certificado, replicando as mesmas variáveis. O painel Hostinger também permite projetos Compose via API (`VPS_createNewProjectV1`), mas **não** substitui TLS para webhook LinkedIn.

---

## 4. Importar workflow e ativar webhook

**Arquivo:** [adv-linkedin-native-form-webhook-to-supabase.json](./adv-linkedin-native-form-webhook-to-supabase.json)

### Ordem recomendada (operador)

1. Garantir §2 concluído (n8n a responder em HTTPS).
2. Importar o JSON (UI ou script abaixo).
3. Confirmar node **POST Edge Function** (URL e headers vêm de `$env`).
4. **Save** e **Activate**.
5. Copiar **Production URL** do webhook (`adv-linkedin-native-form`).
6. No **LinkedIn Campaign Manager**, no formulário nativo (Form ID de referência do projeto: `1003946029`), configurar o webhook para essa URL **HTTPS**.

### Opção A — UI n8n

1. **Workflows** → **Import from File**.
2. Abrir o workflow, confirmar node **POST Edge Function**.
3. **Save** e **Activate**.
4. No node **Webhook LinkedIn Lead**, copiar a **Production URL**.

### Opção B — API (script do monorepo)

```bash
# Na raiz do monorepo, com N8N_API_URL e N8N_API_TOKEN no ambiente ou .env.local do admin
./apps/core/admin/scripts/n8n/import-to-railway.sh "workflows/n8n/linkedin/adv-linkedin-native-form-webhook-to-supabase.json"
```

Depois ativar o workflow na UI e copiar a URL do webhook.

---

## 5. Validação E2E (checklist)

### 5.1 Encadeamento completo (produção)

1. Disparar lead de teste (LinkedIn ou POST manual ao webhook n8n — ver §5.3).
2. Execução no n8n com sucesso no node **POST Edge Function** (resposta JSON com `ok` ou mensagem de negócio esperada).
3. **Supabase:** linha nova em `conversion_forms` com `source_platform = linkedin` e `source_form_id` coerente.
4. **Admin:** `https://admin.adventurelabs.com.br/dashboard/crm/aquisicao` — filtrar por plataforma LinkedIn / form ID.
5. **Kanban:** `https://admin.adventurelabs.com.br/dashboard/crm/leads` — sync ao carregar; confirmar deal/contact criados.

### 5.2 Edge Function direto (sem n8n)

Útil para isolar Supabase. **Não colocar secrets em comandos versionados.**

```bash
export EDGE_URL="https://[PROJECT_REF].supabase.co/functions/v1/linkedin-native-lead-submit"
export LINKEDIN_WEBHOOK_SECRET="[REDACTED]"
export SUPABASE_ANON_KEY="[REDACTED]"

curl -sS -X POST "$EDGE_URL" \
  -H "Content-Type: application/json" \
  -H "x-webhook-secret: $LINKEDIN_WEBHOOK_SECRET" \
  -H "apikey: $SUPABASE_ANON_KEY" \
  -H "Authorization: Bearer $SUPABASE_ANON_KEY" \
  -d '{
    "lead_id": "e2e-manual-001",
    "form_id": "1003946029",
    "email": "e2e.test@example.com",
    "full_name": "E2E Manual",
    "source_platform": "linkedin",
    "source_channel": "paid-social"
  }'
```

### 5.3 Webhook n8n (simulação)

Substituir `N8N_WEBHOOK_URL` pela URL de produção do node Webhook (após ativar o workflow):

```bash
export N8N_WEBHOOK_URL="https://n8n.adventurelabs.com.br/webhook/adv-linkedin-native-form"

curl -sS -X POST "$N8N_WEBHOOK_URL" \
  -H "Content-Type: application/json" \
  -d '{
    "lead": {
      "id": "e2e-n8n-001",
      "form_id": "1003946029",
      "email": "e2e.n8n@example.com",
      "full_name": "E2E n8n",
      "campaign_id": "test-campaign",
      "adset_id": "test-adset",
      "ad_id": "test-ad"
    }
  }'
```

**Evidências:** export JSON da execução no n8n + screenshot da linha em aquisição no Admin (sem dados pessoais reais em docs públicos).

---

## 6. Arquitetura (resumo)

```text
LinkedIn Native Form (HTTPS webhook)
    → n8n Webhook (/webhook/adv-linkedin-native-form)
    → Code: Normalize Payload
    → HTTP POST: Edge Function (JSON + x-webhook-secret + apikey/Authorization)
    → Supabase: conversion_forms
    → Admin: /dashboard/crm/aquisicao + /dashboard/crm/leads (sync)
```

---

## 7. Registo técnico (sem segredos)

| Campo | Valor |
|-------|--------|
| Data (última verificação automatizada) | 2026-03-28 |
| Instância canónica | Comando Estelar — `https://n8n.adventurelabs.com.br` |
| Verificação URL pública (curl HTTP code) | `404` quando o serviço está STOPPED ou sem backend saudável — repetir após **Deploy** no Coolify; esperado `200` na UI. |
| API Hostinger projetos na VPS `1526292` | `app` (Coolify) em execução; `openclaw` parado — ver §1 sobre visibilidade do n8n |

**Próximo passo operacional:** no Coolify, repor secrets (§2.2), **Deploy**, confirmar UI e só então §4–§5.

---

## 8. Pendências operacionais

- [ ] DNS `n8n.adventurelabs.com.br` apontando para a VPS (se ainda não validado).
- [ ] Secrets no Coolify alinhados ao Supabase para o fluxo LinkedIn.
- [ ] `N8N_ENCRYPTION_KEY` guardada no vault corporativo (já existente — não rotacionar sem plano).
- [ ] Opcional: restrição de IP no firewall do webhook (validar documentação atual do LinkedIn).

Documento espelho em `knowledge/00_GESTAO_CORPORATIVA/operacao/n8n-hostinger-coolify-linkedin-webhook.md`.
