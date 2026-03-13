# Nós do fluxo — Lara — Meta Ads Sync (v2 / v2-light)

Documento de referência: função de cada nó, entrada e saída. Ordem segue o fluxo de execução. Aplica-se ao **v2** (Agent no n8n) e ao **v2-light** (POST /api/lara/analyze); as diferenças estão na seção Relatório.

---

## Triggers

| Nó | Função | Entrada | Saída |
|----|--------|---------|-------|
| **Schedule 09:00** | Dispara o fluxo diariamente às 09:00 (cron). | — | GET Accounts, GET Mapping |
| **Webhook manual** | Dispara sob demanda via POST em `lara-meta-ads-sync`. Resposta ao final via **Respond Webhook**. | — | GET Accounts, GET Mapping |

---

## Sync: contas e mapeamento

| Nó | Função | Entrada | Saída |
|----|--------|---------|-------|
| **GET Accounts** | GET `/api/meta/accounts`. Lista contas do Business Manager. `neverError: true`; erros vão para output 2. | Schedule ou Webhook | Merge Accounts+Mapping (1) |
| **GET Mapping** | GET `/api/meta/mapping`. Mapeamento conta → cliente e `owner_type`. `neverError: true`. | Schedule ou Webhook | Merge Accounts+Mapping (2) |
| **Merge Accounts+Mapping** | Combina por posição: 1 item com accounts + mapping (ou 2 itens). | GET Accounts, GET Mapping | Code Merge |
| **Code Merge** | Junta `accounts` e `mapping`. Trata **1 item** (merge combineByPosition): lê `first.accounts` e `first.mapping`. Gera 1 item por conta: `account_id`, `account_name`, `client_id`, `owner_type`, `_date`. | Merge Accounts+Mapping | GET Insights |

---

## Insights e persistência

| Nó | Função | Entrada | Saída |
|----|--------|---------|-------|
| **GET Insights** | GET `/api/meta/accounts/{account_id}/insights?date_preset=yesterday`. Um item por conta. `onError: continueErrorOutput`. | Code Merge | Code Merge+Insights |
| **Code Merge+Insights** | Join por índice com `$('Code Merge').all()[i]`. Filtra contas sem veiculação; captura erros por conta. Emite `{ rows: [row], _errors }` por conta com dados. | GET Insights | POST Daily |
| **POST Daily** | POST `/api/meta/daily` com `{ rows }`. Upsert em `adv_meta_ads_daily`. `onError: continueErrorOutput`. | Code Merge+Insights | Aggregate Results |
| **Aggregate Results** | Agrega todos os itens em `all_results`. | POST Daily | Code Check Errors |
| **Code Check Errors** | Consolida `errors` e `has_errors`. Emite 1 item com `processed`, `errors_count`, `errors`, `has_errors`, `run_date`. | Aggregate Results | IF Has Errors |
| **IF Has Errors** | Condição: `has_errors === true`. TRUE → POST Google Chat Alert; FALSE → GET Stats. | Code Check Errors | POST Google Chat Alert (true) ou GET Stats (false) |
| **POST Google Chat Alert** | POST para `$env.GOOGLE_CHAT_WEBHOOK_URL` com card de erro. `onError: continueRegularOutput`. Depois segue para GET Stats. | IF Has Errors (true) | GET Stats |

---

## Relatório: stats e decisão

| Nó | Função | Entrada | Saída |
|----|--------|---------|-------|
| **GET Stats** | GET `/api/meta/daily` (sem query). Retorna `distinct_dates`, `min_date`, `max_date`. | IF Has Errors (false) ou POST Google Chat Alert | Build Report |
| **Build Report** | Se `distinct_dates >= 1`: monta `{ title, min_date, max_date, distinct_dates }` (janela até 30 dias). Se **n < 1**: retorna 1 item com `_skip_report: true`, `run_date`, `message` para o webhook responder. | GET Stats | IF Skip Report |
| **IF Skip Report** | Condição: `_skip_report === true`. TRUE → Format Skip Response → Respond Webhook. FALSE → [v2: Prepare Lara Prompt → Lara] ou [v2-light: POST Lara Analyze]. | Build Report | Format Skip Response (true) ou ramo de análise (false) |
| **Format Skip Response** | Monta body da resposta: `{ status: 'ok', message: '...', skipped: true }`. | IF Skip Report (true) | Respond Webhook |
| **Respond Webhook** | Responde ao webhook com `$json` (body definido por Format Skip Response ou Format Success Response). | Format Skip Response **ou** Format Success Response | — |

---

## Relatório — v2 (Agent Lara no n8n)

| Nó | Função | Entrada | Saída |
|----|--------|---------|-------|
| **Prepare Lara Prompt** | Monta prompt com período, ordem de tools (get_daily_data → get_lara_memory → get_context_docs) e estrutura do relatório em markdown. Define `sessionId` para memória. | IF Skip Report (false) | Lara |
| **Lara** | Nó **AI Agent**. Usa Gemini 2.0 Flash, Window Buffer Memory e 3 tools (Tool_Daily_Data, Tool_Lara_Memory, Tool_Context_Docs). Gera relatório em markdown. | Prepare Lara Prompt | Format Reports |
| **Format Reports** | Extrai output do agente; monta `cmoReport`, `founderReport`, `memoryPayload` (com `content` e `metadata` para a API). | Lara | POST CMO Report, POST Founder Report, POST Save Lara Memory |
| **POST CMO Report** | POST `/api/csuite/founder-report` com `cmoReport`. | Format Reports | Merge Final |
| **POST Founder Report** | POST `/api/csuite/founder-report` com `founderReport`. | Format Reports | Merge Final |
| **POST Save Lara Memory** | POST `/api/lara/memory` com body `{ content, metadata }` (API exige `content` string). | Format Reports | Merge Final |
| **Merge Final** | Combina as 3 saídas. | POST CMO, POST Founder, POST Save Lara Memory | Format Success Response |
| **Format Success Response** | Monta `{ status: 'ok', message: '...', cmo_saved, founder_saved, memory_saved }`. | Merge Final | Respond Webhook |

### Sub-nós do agente Lara (v2)

| Nó | Tipo | Função |
|----|------|--------|
| **Gemini 2.0 Flash** | Language Model | LLM usado pela Lara. Credencial Google Gemini no n8n. |
| **Window Buffer Memory** | Memory | Janela por `sessionId` (ex.: lara-meta-YYYY-MM-DD). |
| **Tool_Daily_Data** | Tool (HTTP) | GET `/api/meta/daily?from=...&to=...`. Dados do período. |
| **Tool_Lara_Memory** | Tool (HTTP) | GET `/api/lara/memory?limit=10`. Memória persistente. |
| **Tool_Context_Docs** | Tool (HTTP) | GET `/api/csuite/context-docs` (sem query; API não filtra por section). |

---

## Relatório — v2-light (modo econômico)

| Nó | Função | Entrada | Saída |
|----|--------|---------|-------|
| **POST Lara Analyze** | POST `/api/lara/analyze` com `{ min_date, max_date, distinct_dates, title }`. Uma chamada Gemini no Admin. | IF Skip Report (false) | Format Reports Econômico |
| **Format Reports Econômico** | Recebe `{ title, content }` da API. Monta `cmoReport`, `founderReport`, `memoryPayload` (usa `$('Build Report').first().json` para min/max). | POST Lara Analyze | POST CMO Report, POST Founder Report, POST Save Lara Memory |
| **POST CMO Report** / **POST Founder Report** / **POST Save Lara Memory** | Idem ao v2. | Format Reports Econômico | Merge Final → Format Success Response → Respond Webhook |

---

## Integração com o Admin

- **POST /api/lara/memory:** body obrigatório `{ content: string, metadata?: object }`. O workflow envia `content` = insights (string) e `metadata` = agent, date, period, report_title.
- **GET /api/csuite/context-docs:** sem parâmetros de query (não usar `?section=marketing`).
- **GET /api/meta/daily** com `from` e `to`: retorna `{ rows }`. Sem query: retorna `distinct_dates`, `min_date`, `max_date`.
- **Autenticação:** todos os nós HTTP para o Admin usam credencial **HTTP Header Auth** com header `x-admin-key` = `CRON_SECRET`.
