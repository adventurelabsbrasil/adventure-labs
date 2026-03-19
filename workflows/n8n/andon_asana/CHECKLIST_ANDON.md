# Checklist — Andon em produção

O Andon já está implementado (API, relatório em Markdown, dashboard). Para ele **começar a rodar**, falta só configurar env e disparar o fluxo.

---

## 1. Vercel (Admin)

No projeto **admin** na Vercel, definir:

| Variável | Onde obter |
|----------|------------|
| `CRON_SECRET` | Mesmo valor usado por Zazu/Lara; header `x-admin-key` nas chamadas cron |
| `ASANA_ACCESS_TOKEN` | `tools/asana-cli`: `node asana-login.mjs oauth --write-admin-env` ou PAT no Asana |
| `ASANA_PROJECT_GIDS` | GIDs dos projetos Asana, vírgula (ex.: `123456,789012`). Se vazio, o GET de diagnóstico lista projetos disponíveis |

Já devem existir: `NEXT_PUBLIC_SUPABASE_URL`, `SUPABASE_SERVICE_ROLE_KEY` (POST grava em `adv_founder_reports` e `adv_csuite_memory`).

---

## 2. n8n (Railway)

1. **Importar o workflow**  
   `workflows/n8n/andon_asana/andon-asana-daily-v1.json`  
   (ex.: `apps/core/admin/scripts/n8n/import-to-railway.sh` com caminho para esse JSON).

2. **Criar credencial**  
   Tipo **Header Auth**:  
   - Nome do header: `x-admin-key`  
   - Valor: o mesmo `CRON_SECRET` do Vercel.

3. **Vincular credencial** ao nó **"POST Andon Asana Run"**.

4. **Ativar** o workflow (toggle **Active**).  
   Padrão do JSON: 07:00 BRT (10:00 UTC) todo dia.

---

## 3. Validar

**Diagnóstico (não grava):**
```bash
curl -sS "https://admin.adventurelabs.com.br/api/csuite/andon-asana-run" \
  -H "x-admin-key: SEU_CRON_SECRET" | jq .
```
Esperado: `asanaTokenValid: true`, `projects` com nomes.

**Primeiro snapshot (grava relatório):**
```bash
curl -sS -X POST "https://admin.adventurelabs.com.br/api/csuite/andon-asana-run" \
  -H "Content-Type: application/json" \
  -H "x-admin-key: SEU_CRON_SECRET" \
  -d '{}' | jq .
```
Esperado: `ok: true`, `report.id`, `memorySync.ok: true`.

Depois: abrir **Dashboard → Diário da Equipe** e conferir o relatório na lista (link para `/dashboard/relatorio/[id]`).

---

## Resumo

| Item | Status |
|------|--------|
| API Andon (POST/GET) | ✅ Implementado |
| Relatório em Markdown sintético | ✅ Implementado |
| Gravação em adv_founder_reports + adv_csuite_memory | ✅ Implementado |
| Página de relatórios no dashboard | ✅ Implementado |
| Workflow n8n (JSON) | ✅ Pronto para importar |
| **Env no Vercel** (CRON_SECRET, ASANA_*, Supabase) | ⬜ Configurar |
| **n8n: import + credencial + ativar** | ⬜ Fazer |
| **Primeiro POST** (manual ou pelo cron) | ⬜ Executar |

Depois disso, o Andon passa a rodar sozinho no horário agendado e a preencher o diário com snapshots Asana.
