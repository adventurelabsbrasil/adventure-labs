# Auditoria de referência — `adv_csuite_memory`, `adv_tasks`, `adv_ideias`

**Objetivo:** registrar expectativas RLS/multitenant e consumidores, para operação OpenClaw híbrido + n8n.

## `adv_csuite_memory`

| Aspecto | Estado esperado |
|---------|------------------|
| Colunas | `id`, `content`, `metadata` (jsonb), `embedding` (vector, nullable), `created_at`, `updated_at` — ver [apps/core/admin/docs/n8n-csuite-workflow-documentacao.md](../apps/core/admin/docs/n8n-csuite-workflow-documentacao.md). |
| Escritores | Workflow C-Suite (INSERT decisão Grove + embedding), Memory Cleanup, **POST `/api/csuite/founder-report`** com `csuite_memory` (espelho Zazu, embedding NULL). |
| Leitores | n8n (últimas N entradas + RAG), futuro Admin `/dashboard/csuite-diario`. |
| RLS | Tabelas `adv_*` do Admin seguem políticas do projeto compartilhado; **n8n e cron usam credenciais com bypass** (service role ou API Admin). Inserções via API Admin respeitam `tenant_id` implícito Adventure (`00000000-0000-0000-0000-000000000000`) onde aplicável. |
| Contrato `metadata` | [ADV_CSUITE_MEMORY_METADATA.md](./ADV_CSUITE_MEMORY_METADATA.md). |

## `adv_tasks`

| Aspecto | Estado esperado |
|---------|------------------|
| Multitenant | `tenant_id` + RLS por projeto (`adv_can_access_project` / migration `20260308100001`). |
| Uso | Admin UI tarefas; C-Suite lê via n8n. |

## `adv_ideias`

| Aspecto | Estado esperado |
|---------|------------------|
| Uso | Backlog editorial; C-Suite lê últimos 30 dias no n8n. |
| RLS | Autenticado Admin; automações via service role no n8n. |

## Ação contínua

Ao alterar políticas RLS no Supabase, atualizar [SUPABASE_ROLES_MATRIZ_ACESSOS.md](./SUPABASE_ROLES_MATRIZ_ACESSOS.md) e [SUPABASE_ROLES_VERIFICACAO.md](./SUPABASE_ROLES_VERIFICACAO.md) se existir.
