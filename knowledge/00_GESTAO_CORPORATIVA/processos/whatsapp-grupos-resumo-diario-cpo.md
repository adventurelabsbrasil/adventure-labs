# Processo: Zazu — WhatsApp Grupos resumo diário para Cagan/CPO

**Domínio:** 00_GESTAO_CORPORATIVA | **Última atualização:** 2026-03

**Agente:** Zazu (identificador no Admin: **adv_zazu**). Fluxo n8n + worker WhatsApp.  
**Grupos iniciais:** Adventure Young, Adventure Benditta, Adventure Rose, Adventure Tráfego Pago.

## Objetivo

Consolidar diariamente as mensagens dos grupos de WhatsApp de clientes e disponibilizar um resumo para o **Cagan (CPO)** e o C-Suite, sem uso da API oficial do WhatsApp (leitura via WhatsApp Web).

## Componentes

1. **Worker WhatsApp** (`apps/whatsapp-worker`): Serviço Node.js com whatsapp-web.js que mantém sessão e expõe `GET /daily-messages?date=YYYY-MM-DD`. Deploy separado (ex.: Railway).
2. **Zazu (fluxo n8n)** (`apps/admin/n8n_workflows/whatsapp_groups_agent/whatsapp-groups-daily-v1.json`): Schedule 18h BRT → chama o worker → formata → POST `/api/csuite/founder-report`. Título do relatório: "WhatsApp Grupos — resumo DD/MM/YYYY".
3. **C-Suite:** Já inclui founder reports (últimos 7 dias) no contexto; o Cagan passa a ter esse resumo (via Zazu) para escopo, briefing e priorização.

## Onde o Cagan usa

- Em `adv_founder_reports` aparecem relatórios com título "WhatsApp Grupos — resumo …" (gerados pelo agente Zazu). O agente Cagan (CPO) deve considerar esse conteúdo ao planejar escopo, briefing e priorização quando relevante para o cliente.

## Arquivamento opcional

- Tabela `adv_whatsapp_daily`: histórico por grupo/data. Inserção via `POST /api/cron/whatsapp-daily` (protegido por CRON_SECRET). Documentação em `apps/admin/n8n_workflows/whatsapp_groups_agent/README.md`.

## Referências

- Plano n8n: [docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md](../../../docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md) (sec. 3.6).
- Worker: [apps/whatsapp-worker/README.md](../../../apps/whatsapp-worker/README.md).
