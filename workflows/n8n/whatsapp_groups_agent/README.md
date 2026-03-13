# Zazu — WhatsApp Grupos resumo diário (apoio ao Cagan/CPO)

**Agente Zazu.** Workflow n8n que, diariamente, busca mensagens dos grupos de WhatsApp de clientes (via **Worker WhatsApp**), consolida e publica um relatório em `adv_founder_reports` para o **Cagan (CPO)** e o C-Suite.

## Objetivo

- **Trigger:** Schedule 18:00 BRT (21:00 UTC).
- **Fluxo:** Calcular data (ontem) → GET worker `/daily-messages?date=...` → Formatar título e conteúdo → POST `/api/csuite/founder-report`.
- **Saída:** Relatório com título `WhatsApp Grupos — resumo DD/MM/YYYY` em `adv_founder_reports`. O C-Suite V11 já inclui founder reports (últimos 7 dias) no contexto; o Cagan passa a ter esse resumo para escopo, briefing e priorização.

## Pré-requisitos

1. **Worker WhatsApp** em execução e acessível (deploy em Railway ou outro host). Ver [apps/whatsapp-worker/README.md](../../whatsapp-worker/README.md).
2. **Variável no n8n:** `WHATSAPP_WORKER_URL` = URL base do worker (ex.: `https://whatsapp-worker-xxx.up.railway.app`). Sem protocolo na variável use `https://` na URL do nó se necessário.
3. **Credencial HTTP Header Auth** no n8n para chamar o Admin:
   - Nome do header: `x-admin-key`
   - Valor: `CRON_SECRET` do Admin (mesmo usado pela Lara e outros fluxos).
   - Atribuir ao nó **POST Founder Report**.

## Arquivos

| Arquivo | Descrição |
|---------|-----------|
| `whatsapp-groups-daily-v1.json` | Zazu: Schedule → Set Date → GET Daily Messages → Format → POST Founder Report. |

## Importar no n8n (CLI)

A partir da raiz do repositório:

```bash
./apps/admin/scripts/n8n/import-to-railway.sh "apps/admin/n8n_workflows/whatsapp_groups_agent/whatsapp-groups-daily-v1.json"
```

Credenciais: `N8N_API_URL` e `N8N_API_TOKEN` em `apps/admin/.env.local`.

## Arquivamento opcional (adv_whatsapp_daily)

Para histórico queryable por grupo/data, o fluxo pode enviar os dados para `POST /api/cron/whatsapp-daily` (header `x-admin-key` ou `Authorization: Bearer CRON_SECRET`). Body: `{ date: "YYYY-MM-DD", groups: [ { id, name, messages } ] }`. Insere em `adv_whatsapp_daily`. Ver [F4] no plano e rota em `apps/admin/src/app/api/cron/whatsapp-daily/route.ts`.

## Resumo opcional com LLM (F3)

Para reduzir ruído e destacar tópicos relevantes (pedidos, dúvidas, feedback, prazos), pode-se inserir um nó **Agent** ou **HTTP Request** (POST para uma API que chama Gemini) entre **GET Daily Messages** e **Format Founder Report**, enviando as mensagens brutas e recebendo um texto resumido. O nó **Format Founder Report** passaria a usar esse texto como `content` (ou concatenar por grupo + resumo). Implementação deixada como melhoria futura; o fluxo v1 já entrega o conteúdo completo por grupo.

## Referências

- Plano: [docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md](../../../docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md).
- Worker: [apps/whatsapp-worker/README.md](../../whatsapp-worker/README.md).
- Founder report API: [apps/admin/src/app/api/csuite/founder-report/route.ts](../../src/app/api/csuite/founder-report/route.ts).
