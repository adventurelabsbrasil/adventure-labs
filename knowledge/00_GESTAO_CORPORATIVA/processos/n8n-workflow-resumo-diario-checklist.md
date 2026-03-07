# Checklist: Workflow n8n — Resumo diário

Use este checklist para **não pular** a configuração do workflow no n8n. Sem ele, o resumo diário automático não roda.

Ref.: [passo-a-passo-resumo-diario-e-ideias.md](passo-a-passo-resumo-diario-e-ideias.md) (Passo 1.3), [api-cron-daily-summary.md](api-cron-daily-summary.md).

---

## Antes de começar

- [ ] Admin no Vercel com `CRON_SECRET`, `SUPABASE_SERVICE_ROLE_KEY` e `GEMINI_API_KEY` configurados.
- [ ] n8n no Railway acessível (ex.: https://n8n-production-619c.up.railway.app).
- [ ] Você tem o valor de `CRON_SECRET` (igual ao do Vercel) para colocar no n8n.

---

## No n8n: criar o workflow

1. **Novo workflow**  
   - Abra o n8n → **Add workflow** → nome: `Admin – Resumo diário`.

2. **Nó 1 — Schedule Trigger**  
   - Adicione nó **Schedule Trigger**.  
   - **Trigger Times:** Cron.  
   - **Cron Expression:** `0 7 * * *` (todo dia às 7h; ajuste o fuso se quiser).  
   - Objetivo: disparar o fluxo 1x por dia.

3. **Nó 2 — Code (data “ontem”)**  
   - Adicione nó **Code** (JavaScript).  
   - Conecte a saída do Schedule ao Code.  
   - Cole o código:
     ```js
     const yesterday = new Date();
     yesterday.setDate(yesterday.getDate() - 1);
     return [{ json: { date: yesterday.toISOString().slice(0, 10) } }];
     ```
   - Saída: um item com `date` em `YYYY-MM-DD`.

4. **Nó 3 — HTTP Request (POST no Admin)**  
   - Adicione nó **HTTP Request**.  
   - **Method:** POST.  
   - **URL:** `https://admin.adventurelabs.com.br/api/cron/daily-summary`  
   - **Headers:**
     - `Content-Type`: `application/json`
     - `Authorization`: `Bearer SEU_CRON_SECRET`  
       (troque `SEU_CRON_SECRET` pelo valor de `CRON_SECRET` do Vercel; no n8n pode usar variável de ambiente, ex. `{{ $env.CRON_SECRET }}` se você tiver definido no Railway).  
   - **Body (JSON):**
     ```json
     {
       "date": "{{ $json.date }}"
     }
     ```
   - Conecte a saída do nó Code à entrada deste nó.

5. **Salvar e ativar**  
   - **Save** no workflow.  
   - Ligue o toggle **Active** (ativo).

---

## Testar

- No n8n: **Execute Workflow** (botão de play).  
- No Admin: **Dashboard** → **Relatório** (ou onde estiver a lista de resumos diários).  
- Confira se foi criado/atualizado o resumo da data que o nó Code enviou (ontem).

Se der **401**: o header `Authorization: Bearer <CRON_SECRET>` está errado ou diferente do Vercel.  
Se der **500**: verifique logs no Vercel e variáveis `SUPABASE_SERVICE_ROLE_KEY` e `GEMINI_API_KEY`.

---

## Resumo rápido (3 nós)

| Ordem | Nó            | Função                                      |
|------|---------------|---------------------------------------------|
| 1    | Schedule Trigger | Disparo diário (ex.: 7h)                 |
| 2    | Code          | Calcular `date` = ontem em `YYYY-MM-DD`     |
| 3    | HTTP Request  | POST `/api/cron/daily-summary` com a data   |
