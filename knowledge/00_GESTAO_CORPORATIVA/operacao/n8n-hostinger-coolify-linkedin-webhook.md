# n8n (Hostinger VPS / Coolify) + webhook LinkedIn → Supabase

**Fonte canónica (detalhe + checklist E2E):** [`workflows/n8n/linkedin/HOSTINGER_VPS_N8N_DEPLOY.md`](../../../workflows/n8n/linkedin/HOSTINGER_VPS_N8N_DEPLOY.md)

## Instância em produção (Adventure)

- **Nome no Coolify:** Comando Estelar (template n8n).
- **URL pública:** `https://n8n.adventurelabs.com.br`
- **Preservação de dados:** volumes em `/home/node/.n8n` (e `/files` conforme template); **não** apagar o serviço nem trocar `N8N_ENCRYPTION_KEY` sem plano.
- **Reativação:** prioridade **reativar este serviço** (Secrets + Deploy) em vez de criar um segundo n8n no mesmo domínio — ver secção **§2** do runbook.

## Infra

- VPS Hostinger `1526292` (Ubuntu 24.04), Coolify no projeto Docker `app`, painel `http://187.77.251.199:3000/`.
- A API Hostinger `VPS_getProjectListV1` pode **não** listar o contentor n8n (stacks geridas pelo Coolify); estado do n8n no **Coolify** ou `docker ps` na VPS.

## Artefatos no repositório

- Workflow: `workflows/n8n/linkedin/adv-linkedin-native-form-webhook-to-supabase.json`
- Compose de referência: `workflows/n8n/linkedin/docker-compose.n8n.yml`
- Variáveis (nomes apenas): `workflows/n8n/linkedin/.env.example`

## Admin CRM

- Aquisição: `/dashboard/crm/aquisicao`
- Kanban leads: `/dashboard/crm/leads`
