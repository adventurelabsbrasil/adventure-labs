# LinkedIn Native Form → Supabase (n8n)

**Produção:** reativar o serviço **Comando Estelar** no Coolify (`https://n8n.adventurelabs.com.br`) — ver **§2** do runbook (preservar volumes e `N8N_ENCRYPTION_KEY`).

| Artefato | Descrição |
|-----------|-----------|
| [adv-linkedin-native-form-webhook-to-supabase.json](./adv-linkedin-native-form-webhook-to-supabase.json) | Workflow: Webhook → normalização → POST JSON na Edge Function |
| [HOSTINGER_VPS_N8N_DEPLOY.md](./HOSTINGER_VPS_N8N_DEPLOY.md) | Runbook: reativação vs novo serviço, Coolify, variáveis, importação, E2E |
| [CHECKLIST_OPERADOR_REATIVACAO_N8N_LINKEDIN.md](./CHECKLIST_OPERADOR_REATIVACAO_N8N_LINKEDIN.md) | Checklist resumido para salvar e executar depois (manter/apagar/configurar/testes) |
| [docker-compose.n8n.yml](./docker-compose.n8n.yml) | Compose de referência (Coolify ou fallback com TLS) |
| [.env.example](./.env.example) | Nomes das variáveis (sem segredos) |

**Variáveis no n8n (ambiente do container):** `LINKEDIN_EDGE_FUNCTION_URL`, `LINKEDIN_WEBHOOK_SECRET`, `SUPABASE_ANON_KEY`, mais `WEBHOOK_URL` / `N8N_ENCRYPTION_KEY` conforme doc de deploy.
