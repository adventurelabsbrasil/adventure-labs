# C-Suite e relatórios do Founder — integração n8n e Admin

**Atualizado:** 2026-03-17

Este documento descreve a integração entre os **relatórios do founder** (tela Diário da Equipe no Admin) e o **workflow C-Suite** no n8n: o que foi alterado e como os dados fluem.

**Zazu (WhatsApp):** o POST `/api/csuite/founder-report` pode incluir `csuite_memory: { type: "founder_csuite_daily", date, source: ["zazu_whatsapp"] }` (CRON_SECRET). Nesse caso há **dual-write** para `adv_csuite_memory` — listagem em `/dashboard/csuite-diario`. Ver [ADV_CSUITE_MEMORY_METADATA.md](ADV_CSUITE_MEMORY_METADATA.md).

**Versão em produção:** o C-Suite publicado no n8n (Railway) é o **V11** — *C-Suite Autonomous Loop - V11 (Fase 4: Paralelização + Histórico + Founder Reports)*. Para manutenções futuras, ver [apps/admin/n8n_workflows/README.md](../apps/admin/n8n_workflows/README.md).

---

## 1. Resumo

- Os relatórios gravados em **`/dashboard/relatorio`** (tabela `adv_founder_reports`) passam a ser **lidos pelo workflow C-Suite** no n8n.
- O contexto enviado aos agentes (CFO, CTO, COO, CMO, CPO) e ao Grove inclui uma seção **"Relatórios do Founder (últimos 7 dias)"**.
- Nenhuma escrita automática de feedback do Grove nos relatórios foi implementada: o campo `feedback` em `adv_founder_reports` continua sendo preenchido manualmente na UI quando desejado.

---

## 2. Alterações realizadas

### 2.1 n8n — workflow C-Suite

**Arquivos alterados / versões com founder reports:**

- `apps/admin/n8n_workflows/n8n-csuite-autonomous-loop.json`
- `apps/admin/n8n_workflows/csuite/production/csuite-loop-v9.json`
- **`apps/admin/n8n_workflows/C-Suite Autonomous Loop - V11 (Fase 4_ Paralelização + Histórico + Founder Reports).json`** — versão publicada (evolução do V10). Para publicar no n8n via CLI: rode o script a partir do repositório `01_ADVENTURE_LABS`; o script carrega credenciais de `apps/admin/.env.local` ou de **`GEMINI_CLI/.env`** (repositório irmão), onde podem estar `N8N_HOST_URL` e `N8N_API_KEY` (aceitos como alias de `N8N_API_URL` e `N8N_API_TOKEN`). Exemplo:
  ```bash
  cd /caminho/para/01_ADVENTURE_LABS
  ./apps/admin/scripts/n8n/import-to-railway.sh "n8n_workflows/C-Suite Autonomous Loop - V11 (Fase 4_ Paralelização + Histórico + Founder Reports).json"
  ```

**Mudanças:**

1. **Novo nó "Fetch Founder Reports"** (ou "Fetch Founder Reports1" no v9 / V11)
   - **Tipo:** Postgres (executeQuery).
   - **Query:**  
     `SELECT id, title, content, created_at FROM adv_founder_reports WHERE tenant_id = '00000000-0000-0000-0000-000000000000' AND created_at > NOW() - INTERVAL '7 days' ORDER BY created_at DESC LIMIT 15;`
   - Posicionado na sequência após **Fetch Vector Memory** e antes de **Build Context**.

2. **Conexões**
   - Antes: `Fetch Vector Memory` → `Build Context`.
   - Depois: `Fetch Vector Memory` → `Fetch Founder Reports` → `Build Context`.

3. **Build Context (código)**
   - Passa a ler os itens do nó **Fetch Founder Reports**.
   - Monta a string `reportsText` com título, data e até 500 caracteres do conteúdo de cada relatório.
   - Inclui no contexto uma seção **"=== RELATÓRIOS DO FOUNDER (últimos 7 dias) ==="** no início do bloco de contexto (no template principal; no v9 a seção entra no `baseContext`, antes de memória e tarefas).

Com isso, o C-Suite (e o Grove) passam a “saber” o que foi registrado nos relatórios do founder nos últimos 7 dias.

### 2.2 App Admin

**Arquivo alterado:**

- `apps/admin/src/app/dashboard/relatorio/page.tsx`

**Mudança:**

- Texto da `description` do `PageShell` da página **Diário da Equipe** atualizado para informar que os relatórios dos últimos 7 dias são lidos pelo workflow C-Suite (n8n) para contexto nas análises do Grove.

### 2.3 Documentação

**Arquivos alterados/criados:**

- **`docs/SUPABASE_ROLES_MATRIZ_ACESSOS.md`**
  - Inclusão de `adv_founder_reports` e `adv_daily_summaries` na tabela de uso por app (Admin) e na tabela por tabela/grupo (Admin adv_*), com nota de que o n8n C-Suite faz SELECT em `adv_founder_reports` (últimos 7 dias).
- **`docs/CSuite_relatorios_founder.md`** (este arquivo)
  - Registro do que foi alterado na integração C-Suite + relatórios do founder.

---

## 3. O que o C-Suite lê e escreve (referência)

| Ação   | Tabela / sistema     | Detalhe |
|--------|----------------------|--------|
| **Lê**  | `adv_tasks`          | Últimos 7 dias (até 50) |
| **Lê**  | `adv_ideias`         | Últimos 30 dias (até 20) |
| **Lê**  | `adv_csuite_memory`  | Últimas 10 entradas |
| **Lê**  | `adv_founder_reports` | Últimos 7 dias (até 15) — **incluído nesta alteração** |
| **Escreve** | `adv_csuite_memory` | INSERT da decisão do Grove (com embedding) |
| **Escreve** | GitHub / Google Chat | Issue e notificação (inalterado) |

O C-Suite **não** escreve em `adv_founder_reports` (nem em `feedback`); esse campo segue apenas pela UI do Admin.

---

## 4. Referências no repositório

- **Versão em uso e manutenção:** [apps/admin/n8n_workflows/README.md](../apps/admin/n8n_workflows/README.md) — indica V11 como produção e como reimportar
- Workflows n8n: `apps/admin/n8n_workflows/` (V11 na raiz), `apps/admin/n8n_workflows/csuite/production/` (v7–v9)
- Página de relatórios: `apps/admin/src/app/dashboard/relatorio/page.tsx`
- Tabela: migration `apps/admin/supabase/migrations/20250303100000_adv_founder_reports.sql`
- Matriz de acessos: [SUPABASE_ROLES_MATRIZ_ACESSOS.md](SUPABASE_ROLES_MATRIZ_ACESSOS.md)
- Plano de automações n8n: [PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md](PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md)
