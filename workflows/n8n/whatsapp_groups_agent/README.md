# Zazu — WhatsApp Grupos resumo diário (apoio ao Cagan/CPO)

**Agente Zazu.** Workflow n8n que, diariamente, busca mensagens dos grupos de WhatsApp de clientes (via **Worker WhatsApp**), consolida e publica um relatório em `adv_founder_reports` para o **Cagan (CPO)** e o C-Suite.

## Objetivo

- **Trigger:** Schedule 18:00 BRT (21:00 UTC).
- **Fluxo:** Data (ontem) + **URL base do worker** no Code → GET `/daily-messages?date=...` → Formatar → POST founder-report.
- **Saída:** Mesmo relatório em `adv_founder_reports` **e** espelho em `adv_csuite_memory` (`metadata.type = founder_csuite_daily`) via body `csuite_memory` no POST. UI: `/dashboard/csuite-diario`. C-Suite continua lendo founder reports (7 dias).

## Pré-requisitos

1. **Worker WhatsApp** em execução e acessível (deploy em Railway ou outro host). Ver [apps/labs/whatsapp-worker/README.md](../../whatsapp-worker/README.md).
2. **URL do worker:** editar `WORKER_BASE_URL` no nó **Set Date + Worker URL** (Code). O n8n 2.12+ costuma bloquear `$env` (`N8N_BLOCK_ENV_ACCESS_IN_NODE`); por isso a URL fica no workflow, não em variável de ambiente.
   - *Opcional (admin):* no Railway do n8n, remover/definir `N8N_BLOCK_ENV_ACCESS_IN_NODE=false` para voltar a usar `$env.WHATSAPP_WORKER_URL` no GET (menos seguro em instâncias multiusuário).
3. **Timeout:** o GET ao worker usa **300000 ms** (5 min). No worker, `PUPPETEER_PROTOCOL_TIMEOUT_MS` default 10 min — ver [apps/labs/whatsapp-worker/README.md](../../whatsapp-worker/README.md) se aparecer `Runtime.callFunctionOn timed out`.
4. **Credencial HTTP Header Auth** no n8n para chamar o Admin:
   - Nome do header: `x-admin-key`
   - Valor: `CRON_SECRET` do Admin (mesmo usado pela Lara e outros fluxos).
   - Atribuir ao nó **POST Founder Report**.

## Arquivos

**Caminho canônico (monorepo):** `workflows/n8n/whatsapp_groups_agent/` — o JSON do workflow fica versionado aqui.

| Arquivo | Descrição |
|---------|-----------|
| `whatsapp-groups-daily-v1.json` | Zazu: Schedule → Set Date → GET Daily Messages → Format → POST Founder Report. |

## Importar no n8n (CLI)

O script roda a partir de `apps/core/admin`. Caminho canônico do JSON: `workflows/n8n/whatsapp_groups_agent/whatsapp-groups-daily-v1.json`.

**A partir da raiz do monorepo (01_ADVENTURE_LABS):**

```bash
cd apps/core/admin && ./scripts/n8n/import-to-railway.sh "../../workflows/n8n/whatsapp_groups_agent/whatsapp-groups-daily-v1.json"
```

**Ou, a partir de `apps/core/admin`,** se existir symlink `n8n_workflows` → `../../workflows/n8n`:

```bash
./scripts/n8n/import-to-railway.sh "n8n_workflows/whatsapp_groups_agent/whatsapp-groups-daily-v1.json"
```

Credenciais: `N8N_API_URL` e `N8N_API_TOKEN` em `apps/core/admin/.env.local`.

## Arquivamento opcional (adv_whatsapp_daily)

Para histórico queryable por grupo/data, o fluxo pode enviar os dados para `POST /api/cron/whatsapp-daily` (header `x-admin-key` ou `Authorization: Bearer CRON_SECRET`). Body: `{ date: "YYYY-MM-DD", groups: [ { id, name, messages } ] }`. Insere em `adv_whatsapp_daily`. Ver [F4] no plano e rota em `apps/core/admin/src/app/api/cron/whatsapp-daily/route.ts`.

## Resumo opcional com LLM (F3)

Para reduzir ruído e destacar tópicos relevantes (pedidos, dúvidas, feedback, prazos), pode-se inserir um nó **Agent** ou **HTTP Request** (POST para uma API que chama Gemini) entre **GET Daily Messages** e **Format Founder Report**, enviando as mensagens brutas e recebendo um texto resumido. O nó **Format Founder Report** passaria a usar esse texto como `content` (ou concatenar por grupo + resumo). Implementação deixada como melhoria futura; o fluxo v1 já entrega o conteúdo completo por grupo.

## Referências

- Plano: [docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md](../../../docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md).
- Worker: [apps/labs/whatsapp-worker/README.md](../../whatsapp-worker/README.md).
- Founder report API: [apps/core/admin/src/app/api/csuite/founder-report/route.ts](../../src/app/api/csuite/founder-report/route.ts).
