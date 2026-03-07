# Testes pós-deploy — Resumo diário e backlog de ideias

Use este guia depois que o Admin estiver **ready na Vercel** para validar as novas funcionalidades.

Ref.: [api-cron-daily-summary.md](api-cron-daily-summary.md), [n8n-workflow-resumo-diario-checklist.md](n8n-workflow-resumo-diario-checklist.md).

---

## 1. Testar a API de resumo diário (sem n8n)

Objetivo: garantir que a rota cron responde e grava no Supabase.

1. **GET (dados brutos do dia)**  
   No terminal ou Postman (substitua `ADMIN_URL` e `CRON_SECRET`):
   ```bash
   curl -H "Authorization: Bearer SEU_CRON_SECRET" \
     "https://admin.adventurelabs.com.br/api/cron/daily-summary?date=2025-03-02"
   ```
   - Esperado: JSON com `date`, `reports`, `tasksDone`, `projectsUpdated`.
   - 401 = `CRON_SECRET` errado ou header faltando.

2. **POST (gerar e gravar resumo)**  
   ```bash
   curl -X POST \
     -H "Authorization: Bearer SEU_CRON_SECRET" \
     -H "Content-Type: application/json" \
     -d '{"date":"2025-03-02"}' \
     "https://admin.adventurelabs.com.br/api/cron/daily-summary"
   ```
   - Esperado: `{ "id": "uuid-do-resumo" }` (e registro em `adv_daily_summaries`).
   - Se tiver `GEMINI_API_KEY` no Vercel, o resumo será gerado por IA; senão, texto montado a partir dos dados.

3. **Conferir no Admin**  
   - Acesse **Dashboard** → **Relatório** (ou a lista de resumos).
   - Abra o resumo da data usada (ex.: 2025-03-02) e confira conteúdo.

---

## 2. Configurar e testar o workflow n8n (resumo diário)

1. Siga o [n8n-workflow-resumo-diario-checklist.md](n8n-workflow-resumo-diario-checklist.md):
   - Criar workflow "Admin – Resumo diário".
   - Schedule Trigger → Code (data ontem) → HTTP Request POST em `/api/cron/daily-summary`.
   - Header `Authorization: Bearer <CRON_SECRET>`.
   - Salvar e ativar.

2. **Teste manual no n8n**  
   - **Execute Workflow** (play).
   - Verifique a saída do nó HTTP Request (status 200 e body com `id`).
   - No Admin, confira se o resumo de **ontem** foi criado/atualizado em **Relatório**.

3. **Teste agendado**  
   - Deixe o workflow ativo; no dia seguinte, confira se o resumo do dia anterior foi gerado no horário configurado (ex.: 7h).

---

## 3. Testar backlog de ideias

1. **API POST /api/ideias**  
   Inserir ideias (com `CRON_SECRET` ou com sessão logada):
   ```bash
   curl -X POST \
     -H "Authorization: Bearer SEU_CRON_SECRET" \
     -H "Content-Type: application/json" \
     -d '[{"titulo":"Ideia teste","descricao":"Descrição","tipo":"copy"}]' \
     "https://admin.adventurelabs.com.br/api/ideias"
   ```
   - Esperado: status 200 e array com os registros criados.

2. **Interface no Admin**  
   - Acesse **Dashboard** → **Ideias**.
   - Confira se a ideia de teste aparece na lista.
   - Teste filtros (tipo, status) e alteração de status.
   - Adicione uma ideia manual pelo formulário "Nova ideia".

---

## 4. Checklist rápido

- [ ] GET `/api/cron/daily-summary?date=...` retorna 200 e JSON.
- [ ] POST `/api/cron/daily-summary` com `date` retorna 200 e `id`.
- [ ] Resumo aparece em Dashboard/Relatório no Admin.
- [ ] Workflow n8n executado manualmente gera resumo e aparece no Admin.
- [ ] POST `/api/ideias` com array de ideias retorna 200.
- [ ] Página **Dashboard → Ideias** lista, filtra e permite mudar status e criar ideia manual.

---

*Última atualização: 2025-03-03*
