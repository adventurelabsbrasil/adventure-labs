# Checklist do operador — reativar n8n (Coolify) e fluxo LinkedIn → Supabase

Use este arquivo como roteiro offline. Detalhes técnicos e comandos `curl` completos: [HOSTINGER_VPS_N8N_DEPLOY.md](./HOSTINGER_VPS_N8N_DEPLOY.md). Nomes das variáveis: [.env.example](./.env.example).

**Não versionar valores reais** (keys, secrets) neste arquivo ou em commits.

---

## 1. O que manter (não apagar)

| Item | Motivo |
|------|--------|
| Serviço **Comando Estelar** no Coolify | Já tem FQDN e volumes com os teus dados. |
| **Persistent Volumes** (`/home/node/.n8n`, `/files`, etc.) | Workflows, SQLite do n8n, credenciais encriptadas. |
| **`N8N_ENCRYPTION_KEY`** (o mesmo de sempre) | Se mudar, credenciais antigas no n8n deixam de abrir. |
| Domínio **`https://n8n.adventurelabs.com.br`** + SSL | LinkedIn exige HTTPS no webhook. |

---

## 2. O que não fazer

- Não criar um **segundo** n8n com o mesmo domínio (conflito + volume novo vazio).
- Não apagar o serviço “para limpar” sem backup do volume / export dos workflows.
- Não colar secrets no Git, no chat público nem em prints.

---

## 3. O que configurar (Coolify)

**Painel:** `http://187.77.251.199:3000/` → recurso **Comando Estelar**.

### 3.1 Configurations

- **URL (FQDN):** `https://n8n.adventurelabs.com.br`
- **Webhook URL:** alinhado à URL pública (muitas vezes igual à base HTTPS)
- **SSL:** ativo
- **Exposed Port:** só alterar se os **Logs** após Deploy indicarem mismatch com o template; em dúvida, seguir doc do template n8n do Coolify

### 3.2 Secrets (aba Secrets)

| Variável | Valor (referência) |
|----------|-------------------|
| `N8N_ENCRYPTION_KEY` | Manter o existente — não regenerar |
| `WEBHOOK_URL` | `https://n8n.adventurelabs.com.br/` |
| `N8N_HOST` | `n8n.adventurelabs.com.br` |
| `N8N_PROTOCOL` | `https` |
| `LINKEDIN_EDGE_FUNCTION_URL` | `https://<PROJECT_REF>.supabase.co/functions/v1/linkedin-native-lead-submit` (**canônica no repo**) |
| `LINKEDIN_WEBHOOK_SECRET` | Igual ao secret da Edge Function no Supabase |
| `SUPABASE_ANON_KEY` | Chave anon do projeto (Dashboard Supabase → Settings → API) |

Depois: **Save** → **Deploy** → aguardar sair de **STOPPED**; conferir **Logs**.

---

## 4. Onde obter cada credencial

| Credencial | Onde buscar |
|------------|-------------|
| Login **Coolify** | Credenciais definidas na instalação do Coolify na VPS |
| **URL do projeto / `PROJECT_REF`** | [Supabase Dashboard](https://supabase.com/dashboard) → projeto → Settings → API |
| **`SUPABASE_ANON_KEY`** | Settings → API → chave **anon** `public` |
| **`LINKEDIN_WEBHOOK_SECRET`** | Alinhado ao secret configurado na Edge Function (Supabase: secrets das functions / CLI) |
| **`N8N_ENCRYPTION_KEY`** | Valor já usado neste serviço (vault / Infisical interno, se aplicável) |
| **`N8N_API_URL` + `N8N_API_TOKEN`** | Só para import por API: n8n → Settings → API |
| **URL do webhook LinkedIn** | Não é credencial: copiar **Production URL** do node Webhook no n8n após ativar o workflow |

**Infisical (recomendado):** guardar `N8N_API_URL`, `N8N_API_TOKEN`, `LINKEDIN_EDGE_FUNCTION_URL`, `LINKEDIN_WEBHOOK_SECRET` e `SUPABASE_ANON_KEY` na pasta **`/admin`** — ver secção **n8n** em [`docs/INFISICAL_SYNC.md`](../../../docs/INFISICAL_SYNC.md). Na raiz do monorepo: `pnpm n8n:import:linkedin` (usa `infisical run`). O agente no Cursor não lê o Infisical direto; usa `infisical run` nos comandos ou `.env.local` local gitignored.

---

## 5. Testes por etapa

### Etapa A — n8n no ar

- [ ] Browser: `https://n8n.adventurelabs.com.br` abre a UI (não 404)
- [ ] Coolify: serviço não está STOPPED; logs sem crash em loop

### Etapa B — Workflow

- [ ] Importar [adv-linkedin-native-form-webhook-to-supabase.json](./adv-linkedin-native-form-webhook-to-supabase.json)
- [ ] **Save** e **Activate**
- [ ] Execução de teste: node **POST Edge Function** sem erro 401/404

### Etapa C — Edge Function direto (opcional, isola Supabase)

- [ ] Seguir §5.2 em [HOSTINGER_VPS_N8N_DEPLOY.md](./HOSTINGER_VPS_N8N_DEPLOY.md) (`curl` no terminal com variáveis locais, sem commit)

### Etapa D — Webhook n8n (simula payload)

- [ ] Seguir §5.3 em [HOSTINGER_VPS_N8N_DEPLOY.md](./HOSTINGER_VPS_N8N_DEPLOY.md) — `POST` em `/webhook/adv-linkedin-native-form`

### Etapa E — Dados e CRM

- [ ] Supabase: tabela `conversion_forms` com linha nova (LinkedIn / form ID coerente)
- [ ] Admin: `/dashboard/crm/aquisicao` e `/dashboard/crm/leads` mostram o lead após sync

### Etapa F — LinkedIn (produção)

- [ ] Campaign Manager: webhook do formulário nativo apontando para a **Production URL** HTTPS do n8n
- [ ] Teste do LinkedIn (quando disponível) → repetir verificação da Etapa E

---

## 6. Ordem recomendada (resumo)

1. Secrets + Save + Deploy → **Etapa A**
2. Importar workflow + ativar → **Etapa D** (e opcionalmente **C** antes)
3. LinkedIn → **Etapa F**
4. Confirmar **Etapa E** no Supabase + Admin

---

## 7. Edge Function — qual URL usar no Supabase

No Dashboard do Supabase podem aparecer **duas** URLs parecidas. A que está alinhada ao código versionado neste monorepo é:

- **Usar:** `https://<PROJECT_REF>.supabase.co/functions/v1/linkedin-native-lead-submit`  
  (pasta [`apps/core/adventure/supabase/functions/linkedin-native-lead-submit`](../../../apps/core/adventure/supabase/functions/linkedin-native-lead-submit), `verify_jwt = false` em `config.toml`.)

- **Evitar para este fluxo:** `…/linkedin_native_lead` (underscore) — costuma ser **outra** função ou legado; o contrato e os headers podem não bater com o workflow [adv-linkedin-native-form-webhook-to-supabase.json](./adv-linkedin-native-form-webhook-to-supabase.json). Se já configuraste a URL errada no Coolify, altera `LINKEDIN_EDGE_FUNCTION_URL` para **linkedin-native-lead-submit** e faz **Redeploy** do n8n se necessário.

---

## 8. Problemas comuns

| Sintoma | O que costuma ser |
|---------|-------------------|
| **502 Bad Gateway** ao abrir o n8n e depois passa | Proxy (Traefik/Caddy) a apontar para o contentor antes de estar **healthy**; primeiro arranque lento. Espera 1–2 minutos e atualiza; se persistir, vê **Logs** no Coolify. |
| Versão **2.x** do n8n no Coolify não faz deploy | Incompatibilidade do **template** Coolify, imagem ou variáveis com essa tag; ficar em **1.5.1** é válido **desde que** importes/testes o workflow na UI dessa versão (nós podem precisar de ajuste manual se o JSON for de n8n mais novo). |
| Volumes | **Não** editar arquivos dentro do volume à mão para “arranjar” URL da função — isso faz-se por **Secrets** no Coolify. |

---

## 9. Referências rápidas

| Recurso | Caminho / URL |
|---------|----------------|
| Runbook completo | [HOSTINGER_VPS_N8N_DEPLOY.md](./HOSTINGER_VPS_N8N_DEPLOY.md) |
| Variáveis (nomes) | [.env.example](./.env.example) |
| Workflow JSON | [adv-linkedin-native-form-webhook-to-supabase.json](./adv-linkedin-native-form-webhook-to-supabase.json) |
| Knowledge (ponteiro) | `knowledge/00_GESTAO_CORPORATIVA/operacao/n8n-hostinger-coolify-linkedin-webhook.md` |
| Import via script | `./apps/core/admin/scripts/n8n/import-to-railway.sh` + `N8N_API_URL` / `N8N_API_TOKEN` |

---

*Última atualização do template: checklist operador para reativação Comando Estelar + LinkedIn.*
