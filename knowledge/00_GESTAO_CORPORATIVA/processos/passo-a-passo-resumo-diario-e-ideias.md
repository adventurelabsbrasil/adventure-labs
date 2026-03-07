# Passo a passo: Resumo diário automático e Backlog de ideias

Guia operacional para colocar no ar o resumo diário com IA e o fluxo de ideias, usando n8n no Railway e o Admin no Vercel.

Ref.: [api-cron-daily-summary.md](api-cron-daily-summary.md), [decisao-resumo-diario-ia-e-n8n.md](../decisao-resumo-diario-ia-e-n8n.md).

---

## Pré-requisitos

- Admin **deployado e em produção** na Vercel (ex.: `https://admin.adventurelabs.com.br`). O build precisa passar para que as rotas `/api/cron/daily-summary` e `/api/ideias` existam; só depois dá para testar o workflow no n8n.
- Framework na Vercel: **Next.js** (não Node). Em **Build & Development Settings** use Override só para Install/Build Command se o pnpm falhar.
- Conta no Railway com n8n instalado (ou em processo de contratação).
- Chave da API Gemini (você já tem).
- Acesso ao projeto Supabase do Admin (para pegar a Service Role Key).

### Build na Vercel (Node e pnpm)

Se o build falhar com `ERR_INVALID_THIS` ou "not compatible lockfile" no `pnpm install`:

1. **Node na Vercel:** A Vercel descontinuou Node 18. Use **20.x** ou **24.x** (o `apps/admin/package.json` tem `engines.node` definido; a Vercel usa esse valor). Se a build reclamar de versão, ajuste para a que a mensagem indicar (ex.: `24.x`).
2. Confirme **Install Command** = `pnpm install` e **Build Command** = `pnpm run build` (ou o que estiver em `apps/admin/vercel.json`).
3. **pnpm + ERR_INVALID_THIS:** O `apps/admin/vercel.json` já está configurado com **Install Command** = `npm install` e **Build Command** = `npm run build` para evitar o bug do pnpm no ambiente Vercel. No desenvolvimento local continue usando pnpm. Se a Vercel ignorar o vercel.json, use Override nas configurações do projeto com os mesmos comandos.

---

## Parte 1 — Resumo diário automático (rodar todo dia)

### Passo 1.1 — Variáveis de ambiente no Vercel

1. Acesse o projeto do Admin no **Vercel** → **Settings** → **Environment Variables**.
2. Adicione (ou confira) as variáveis abaixo. Use **Production** (e opcionalmente Preview se quiser testar em branch).

| Nome | Valor | Observação |
|------|--------|------------|
| `CRON_SECRET` | Uma string longa e aleatória (ex.: gerada em [randomkeygen.com](https://randomkeygen.com) ou `openssl rand -hex 32`) | **Não** use `NEXT_PUBLIC_`. Guarde esse valor — você vai usar no n8n. |
| `SUPABASE_SERVICE_ROLE_KEY` | Chave **service_role** do projeto Supabase | Em Supabase: **Project Settings** → **API** → **Project API keys** → copie a **service_role** (secret). Nunca exponha no front. |
| `GEMINI_API_KEY` | Sua chave da API Gemini | Para o Admin gerar o resumo com IA quando o n8n chamar a API. |

3. Salve e faça um **redeploy** do Admin (Deployments → ⋮ no último deploy → Redeploy) para as variáveis valerem.

### Passo 1.2 — Obter a Service Role Key do Supabase

1. Abra o [Supabase Dashboard](https://supabase.com/dashboard) e selecione o projeto do Admin.
2. Menu **Project Settings** (ícone de engrenagem).
3. **API** no menu lateral.
4. Em **Project API keys**, copie a chave **service_role** (não use a `anon` pública).  
   — Se não aparecer, verifique permissões de owner/admin do projeto.

### Passo 1.3 — Workflow no n8n (Railway) para o resumo diário

**Checklist completo:** [n8n-workflow-resumo-diario-checklist.md](n8n-workflow-resumo-diario-checklist.md) — use para não pular esta etapa.

1. Acesse seu **n8n** (ex.: URL que o Railway forneceu).
2. Crie um **novo workflow** (ex.: nome: "Admin – Resumo diário").
3. Adicione os nós na ordem abaixo.

**Nó 1 — Schedule Trigger (Cron)**  
- Tipo: **Schedule Trigger**.  
- Rule: **Cron** (ex.: `0 7 * * *` = todo dia às 7h; ajuste o fuso).  
- Objetivo: disparar o fluxo uma vez por dia.

**Nó 2 — Calcular data “ontem”**  
- Tipo: **Code** ou **Set**.  
- Objetivo: definir a data do resumo como “dia anterior” em `YYYY-MM-DD`.  
  - Exemplo em Code (JavaScript):
    ```js
    const yesterday = new Date();
    yesterday.setDate(yesterday.getDate() - 1);
    return [{ json: { date: yesterday.toISOString().slice(0, 10) } }];
    ```

**Nó 3 — HTTP Request (POST para o Admin)**  
- Tipo: **HTTP Request**.  
- **Method:** POST.  
- **URL:** `https://admin.adventurelabs.com.br/api/cron/daily-summary` (troque pelo seu domínio se for outro).  
- **Authentication:** None (vamos enviar o segredo no header).  
- **Headers:**
  - `Content-Type`: `application/json`
  - `Authorization`: `Bearer SEU_CRON_SECRET_AQUI`  
  (substitua `SEU_CRON_SECRET_AQUI` pelo mesmo valor de `CRON_SECRET` do Vercel; no n8n você pode usar variável de ambiente, ex.: `{{ $env.CRON_SECRET }}`).  
- **Body (JSON):**
  ```json
  {
    "date": "{{ $json.date }}"
  }
  ```
  (assim o Admin usa a data vinda do nó anterior; com `GEMINI_API_KEY` no Vercel, o próprio Admin gera o resumo com a Gemini e grava).

4. **Salve** o workflow e **ative** (toggle “Active”).
5. **Teste:** use “Execute Workflow” e confira no Admin (Relatório / Resumos diários) se o resumo do dia escolhido foi criado/atualizado.

Se algo falhar: verifique no n8n o retorno do HTTP Request (401 = segredo errado; 500 = ver logs no Vercel ou falta de `SUPABASE_SERVICE_ROLE_KEY` / `GEMINI_API_KEY`).

---

## Parte 2 — Backlog de ideias (fluxo diário de ideias)

### Passo 2.1 — Mesmo CRON_SECRET no n8n

O **POST /api/ideias** aceita o mesmo header `Authorization: Bearer <CRON_SECRET>` para chamadas do n8n (sem login de usuário). Nada novo no Vercel: o `CRON_SECRET` já configurado na Parte 1 serve.

- Se quiser um segredo diferente para ideias, no futuro dá para criar `IDEIAS_SECRET` e alterar a rota; por ora, usar `CRON_SECRET` simplifica.

### Passo 2.2 — Workflow no n8n para enviar ideias ao Admin

1. No n8n, crie **outro workflow** (ex.: nome: "Admin – Ideias diárias").
2. Monte o fluxo, por exemplo:

**Nó 1 — Schedule Trigger**  
- Cron (ex.: `0 8 * * *` = 8h, ou outro horário que não bata com o do resumo).

**Nó 2 — Gerar ideias (Gemini no n8n ou no Admin)**  
- **Opção A — Gemini dentro do n8n:** use um nó **Google Gemini** (ou HTTP Request para a API Gemini) com um prompt que peça 1–3 ideias de copy/publicação para a Adventure Labs; formate a saída em JSON no formato abaixo.  
- **Opção B — Chamar uma rota do Admin que use Gemini:** se no futuro você criar algo como `POST /api/cron/gerar-ideias` no Admin (que chama a Gemini e devolve itens), use **HTTP Request** para essa URL com `Authorization: Bearer <CRON_SECRET>` e depois use a resposta no nó seguinte.

**Nó 3 — HTTP Request (POST /api/ideias)**  
- **Method:** POST.  
- **URL:** `https://admin.adventurelabs.com.br/api/ideias`.  
- **Headers:**
  - `Content-Type`: `application/json`
  - `Authorization`: `Bearer SEU_CRON_SECRET_AQUI`  
- **Body (JSON):**
  ```json
  {
    "items": [
      { "titulo": "Título da ideia 1", "descricao": "Opcional", "tipo": "copy", "fonte": "n8n" },
      { "titulo": "Título da ideia 2", "tipo": "publicacao", "fonte": "n8n" }
    ]
  }
  ```
  - `tipo` deve ser um de: `copy`, `publicacao`, `referencia`, `criativo`.  
  - `fonte` pode ser `n8n`, `skill-diaria`, `manual`, `cursor`.  
  - Os itens podem vir do nó anterior (Gemini/Code) montando o array `items`.

3. **Salve** e **ative** o workflow.
4. **Teste:** execute uma vez e confira em **Dashboard → Backlog de ideias** se as ideias apareceram com status “Backlog”.

### Passo 2.3 — Alternativa sem n8n (só Cursor/skill)

Se ainda não tiver n8n no Railway:

- Rode a skill **referencias-ideias-editorial** no Cursor quando quiser (ex.: 1x por dia).
- A skill devolve um JSON no formato `{ "items": [ ... ] }`.
- Você (ou um script) pode colar esse JSON no body de um **POST /api/ideias** (usando Postman, curl ou um script com `CRON_SECRET` no header) para gravar as ideias no Admin. Quando o n8n estiver no ar, basta trocar para o workflow da Parte 2.2.

---

## Resumo rápido

| O quê | Onde configurar | O que fazer |
|-------|------------------|-------------|
| **1. Resumo diário** | Vercel: `CRON_SECRET`, `SUPABASE_SERVICE_ROLE_KEY`, `GEMINI_API_KEY` | n8n: workflow com Cron → data “ontem” → POST /api/cron/daily-summary com body `{ "date": "YYYY-MM-DD" }` e header `Authorization: Bearer <CRON_SECRET>`. |
| **2. Ideias** | Mesmo `CRON_SECRET` | n8n: workflow com Cron → gerar ideias (Gemini no n8n ou futura rota no Admin) → POST /api/ideias com `{ "items": [ ... ] }` e header `Authorization: Bearer <CRON_SECRET>`. |

Depois de rodar o item 3 (migration e uso do app), os passos 1 e 2 acima deixam os dois fluxos rodando sozinhos todo dia.

---

*Criado em 03/2026.*
