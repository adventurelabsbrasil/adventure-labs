# Lara — Meta Ads Agent (n8n)

Workflow da **Lara** (analista de marketing da Adventure Labs): sync diário de métricas Meta Ads para o Supabase, com separação **clientes** vs. **Adventure (próprias)** via `owner_type`.

## Objetivo

- Listar contas Meta (e mapeamento em `adv_client_meta_accounts`).
- Buscar insights (métricas) por conta para o dia anterior.
- Persistir em `adv_meta_ads_daily` com `owner_type` correto (apenas linhas com veiculação).
- Após coleta: **GET Stats** → **Build Report** → relatório para CMO e Founder (duas variantes: v2 com Agent, v2-light com 1 chamada Gemini no Admin).
- Webhook manual sempre recebe resposta (com ou sem dados).

## Versões em produção

| Arquivo | Descrição | Uso recomendado |
|---------|-----------|------------------|
| **lara-meta-ads-agent-v2.json** | Fluxo completo: resiliência (continueOnFail), Aggregate, IF Has Errors (alerta Google Chat), **Agent Lara** no n8n (Gemini + tools + memória), relatório CMO + Founder + memória. | Quando quiser análise mais rica e contexto máximo; maior uso de API Gemini. |
| **lara-meta-ads-agent-v2-light.json** | Mesmo sync e resiliência; em vez do Agent, **POST /api/lara/analyze** (1 chamada Gemini no Admin). Format Reports Econômico → POST CMO/Founder/Memory. | **Uso diário recomendado:** menor custo, 1 chamada Gemini/dia. |
| lara-meta-ads-agent-v1.json | Versão anterior (Merge Account+Insights + Code Format Row + Agent ou HTTP analyze). | Legado. |

## Credenciais e variáveis

No n8n, configurar:

- **HTTP Header Auth:** nome do header `x-admin-key`, valor = `CRON_SECRET` do Admin. Atribuir a todos os nós que chamam o Admin (GET Accounts, GET Mapping, GET Insights, POST Daily, GET Stats, POST Lara Analyze, POST CMO Report, POST Founder Report, POST Save Lara Memory; na v2 também nas tools do Agent).
- **Google Gemini API** (apenas v2): credencial no nó do modelo (Gemini 2.0 Flash) do agente Lara.

Variável opcional:

- `GOOGLE_CHAT_WEBHOOK_URL` — URL do webhook do Google Chat para alertas quando há erros na coleta (IF Has Errors → POST Google Chat Alert). Se não definida ou bloqueada no n8n, o fluxo continua sem alerta.

## Importar no n8n (CLI)

A partir da raiz do repositório (ou de `apps/admin`):

```bash
# Versão econômica (recomendada para diário)
./scripts/n8n/import-to-railway.sh "n8n_workflows/meta_ads_agent/production/lara-meta-ads-agent-v2-light.json"

# Versão completa (Agent no n8n)
./scripts/n8n/import-to-railway.sh "n8n_workflows/meta_ads_agent/production/lara-meta-ads-agent-v2.json"
```

Credenciais do script: `N8N_API_URL` e `N8N_API_TOKEN` em `apps/admin/.env.local`.

## Estrutura

- `production/lara-meta-ads-agent-v2.json` — versão completa (Agent Lara no n8n).
- `production/lara-meta-ads-agent-v2-light.json` — versão econômica (POST /api/lara/analyze).
- `production/lara-meta-ads-agent-v1.json` — versão anterior.
- `Admin_Agents_Lara - Meta Ads Sync - Claude-v3.json` — fonte das correções v2 (referência).

## Documentação

- **Nós do fluxo (v2/v2-light):** [NOS_DO_FLUXO.md](NOS_DO_FLUXO.md).
- Plano: [docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md](../../../docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md).
- APIs Meta no Admin: [docs/ADS_META_ADMIN.md](../../../docs/ADS_META_ADMIN.md).

## Admin (Vercel)

- **v2-light** e **POST /api/lara/analyze** exigem `GEMINI_API_KEY` no Admin; caso contrário a API retorna 503.
- Memória: GET/POST `/api/lara/memory` (adv_lara_memory).
