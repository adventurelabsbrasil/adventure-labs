# API Cron: Resumo diário

Contrato e uso das rotas de resumo diário para automação (n8n no Railway, etc.).

Ref.: [decisao-resumo-diario-ia-e-n8n.md](../decisao-resumo-diario-ia-e-n8n.md), [processo-relatorio-founder.md](processo-relatorio-founder.md).

---

## Autenticação

Todas as rotas abaixo exigem o **segredo de cron**:

- Header: `Authorization: Bearer <CRON_SECRET>` **ou**
- Header: `x-cron-secret: <CRON_SECRET>`

**Variável de ambiente (servidor):** `CRON_SECRET` — defina um valor forte e use o mesmo no n8n (ou no agendador) ao chamar a API. Não exponha em front-end.

**Supabase (rotas usam service role):** `SUPABASE_SERVICE_ROLE_KEY` — necessária para que o cron insira/atualize resumos sem sessão de usuário.

**Gemini (geração automática do resumo):** `GEMINI_API_KEY` — se definida, o POST com apenas `date` gera o resumo via IA. Se não definida, o resumo é montado em texto fixo a partir dos dados do dia.

---

## GET /api/cron/daily-summary

**Uso:** Obter os dados brutos do dia (relatórios, tarefas concluídas, projetos atualizados) para montar o resumo fora do Admin (ex.: n8n chama Gemini e depois POST).

**Query:** `date=YYYY-MM-DD` (obrigatório).

**Resposta 200:** JSON:

```json
{
  "date": "2025-03-09",
  "reports": [{ "id": "...", "title": "...", "content": "...", "created_at": "..." }],
  "tasksDone": [{ "id": "...", "title": "...", "updated_at": "..." }],
  "projectsUpdated": [{ "id": "...", "nome": "...", "stage": "...", "updated_at": "..." }]
}
```

---

## POST /api/cron/daily-summary

**Uso:** Gravar (ou gerar e gravar) o resumo do dia em `adv_daily_summaries`.

**Opção A — Gerar com Gemini no Admin:**  
Body: `{ "date": "YYYY-MM-DD" }`.  
O servidor busca os dados do dia, chama a Gemini API (se `GEMINI_API_KEY` estiver definida), faz upsert e devolve `{ "id": "..." }`.

**Opção B — Apenas salvar texto já gerado (ex.: n8n gera com Gemini):**  
Body: `{ "date": "YYYY-MM-DD", "summaryText": "...", "agentSummaryText": "..." }`.  
`summaryText` é o resumo completo; `agentSummaryText` é opcional (trecho “O que os agentes fizeram”).

**Resposta 200:** `{ "id": "uuid-do-resumo" }`.

**Respostas de erro:** 400 (body/query inválido), 401 (segredo ausente ou inválido), 500 (erro interno ou Gemini).

---

## Resumo diário no app

O resumo diário pode ser gerado de duas formas:

1. **Manual:** No painel, em **Relatório / Brain dump**, usar o formulário “Gerar resumo diário” (data + opcional “O que os agentes fizeram”).
2. **Automático:** Job (ex.: n8n no Railway) chama `POST /api/cron/daily-summary` com a data (e opcionalmente com o texto já gerado). O app exibe o resumo na home até “marcar como lido” e na página de relatórios.

---

*Criado em 03/2026.*
