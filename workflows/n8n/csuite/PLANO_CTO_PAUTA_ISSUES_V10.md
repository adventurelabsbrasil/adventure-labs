# Plano: CTO Pauta Diária (V10) — Issues novas + normalização de nomes + executor

Versão atualizada do plano: revisão diária de issues novas para o CTO, **correção dos nomes dos nós** (remover "1" do final) e **executor explícito no fluxo** (skill/tool), já que o CTO não executa.

---

## 1. Normalização de nomes dos nós (remover "1")

Ao criar a versão V10 do workflow a partir do V9, **renomear todos os nós** que terminam em "1" para o nome sem sufixo. As **connections** e todas as **referências em código** (expressões `$('Nome1')`) devem usar o novo nome.

### Mapeamento nome antigo → nome normal

| Nome atual (V9) | Nome normal (V10) |
|----------------|------------------|
| Fetch Tasks1 | Fetch Tasks |
| Fetch Ideias1 | Fetch Ideias |
| Fetch Vector Memory1 | Fetch Vector Memory |
| Build Context1 | Build Context |
| Fetch Context Docs1 | Fetch Context Docs |
| CFO Agent Buffett1 | CFO Agent Buffett |
| Gemini Model (CFO)1 | Gemini Model (CFO) |
| CTO Agent Torvalds1 | CTO Agent Torvalds |
| Gemini Model (CTO)1 | Gemini Model (CTO) |
| COO Ohno1 | COO Ohno |
| CMO Ogilvy1 | CMO Ogilvy |
| CPO Cagan1 | CPO Cagan |
| Validate Outputs1 | Validate Outputs |
| Compile C-Level Reports1 | Compile C-Level Reports |
| Fields1 | Fields |
| CEO Grove Synthesis1 | CEO Grove Synthesis |
| Parse CEO Decision1 | Parse CEO Decision |
| Generate Embeddings1 | Generate Embeddings |
| Prepare pgvector Insert1 | Prepare pgvector Insert |
| Store Memory pgvector1 | Store Memory pgvector |
| Create an issue1 | Create an issue |
| Sticky Note1 | Sticky Note (ou Sticky Note C-Suite) |

**Nós que já estão sem "1":** GitHub API Tool2, GitHub API Tool3, Schedule 18:00, Schedule 08:00 — manter. Opcional: renomear para "GitHub API Tool (CTO)" e "GitHub API Tool (CFO)" para clareza.

**Onde atualizar no JSON:**
- Em cada nó: `"name": "Nome1"` → `"name": "Nome"`.
- Em `connections`: cada chave `"Nome1"` → `"Nome"` e cada `"node": "OutroNome1"` → `"node": "OutroNome"`.
- Em todo **jsCode** e **jsonBody** que usam `$('Nome1')` ou `$('Build Context1')`, etc.: trocar para `$('Nome')`, `$('Build Context')`, etc.

---

## 2. CTO não executa — executor no fluxo (skill / tool / agente)

O CTO (Torvalds) **planeja, delega e revisa**; não executa código. Por isso o fluxo precisa de um **executor** que:
- Receba a pauta do dia (bugs e melhorias).
- Para cada item: implementar correção/melhoria e abrir PR.
- Founder aprova o PR (merge).

**Onde o executor pode viver:**

| Opção | Onde | Papel |
|-------|------|--------|
| **Skill (Cursor)** | `apps/core/admin/agents/skills/cto-executar-item-pauta/` ou `cto-pauta-issues-diaria` | O Torvalds (ou Grove) **delega** a essa skill quando for “executar item X da pauta”. A skill descreve: obter issue, criar branch, implementar, abrir PR, Founder aprova. Quem “executa” no Cursor pode ser humano ou agente seguindo a skill. |
| **Tool (n8n)** | Novo nó “Tool” no CTO Agent (ex.: HTTP Request para API do Admin ou GitHub) | Limitado: n8n pode abrir branch/PR via GitHub API, mas **não** implementa o código. Serve para “registrar” que um item foi escolhido ou criar branch vazia/PR draft. |
| **Agente no fluxo n8n** | Segundo agente “Executor” após o CTO | Também não escreve código; no máximo orquestra chamadas de API. A implementação real continua no Cursor/repo. |

**Recomendação:**  
- **Executor principal:** uma **skill** no Cursor (`cto-executar-item-pauta` ou integrada à `cto-pauta-issues-diaria`) que o CTO **delega** quando alguém pedir para “executar a pauta” ou “fazer o item X”. A skill é o “contrato” de execução: branch → implementar → PR → aprovação Founder.  
- **No n8n:** o CTO Agent pode ser instruído (system message / prompt) a incluir na resposta algo como: *“Para executar cada item da pauta, delegar à skill **cto-executar-item-pauta** (ou **cto-pauta-issues-diaria**) no Cursor; cada item deve resultar em PR para o Founder aprovar.”* Assim o fluxo n8n produz a pauta e deixa explícito **quem** executa (a skill no Cursor).

Opcional: um **tool** no n8n que chame uma API do Admin para “registrar item da pauta como em execução” ou “criar tarefa adv_tasks” vinculada à issue, para rastreio. Isso não substitui a skill; só complementa.

---

## 3. Resumo das alterações para a V10

1. **Normalizar nomes:** todos os nós "X1" → "X"; atualizar `connections` e todas as referências em código (`$('...')`).
2. **Novo nó:** Fetch GitHub Issues New (issues `created:>=ontem`, org:adventurelabsbrasil), alimentando o Build Context.
3. **Build Context:** incluir seção "ISSUES NOVAS (últimas 24h)" em `contextCTO`.
4. **CTO Agent:** instrução para montar "Pauta do dia" (bugs/melhorias) e indicar que a **execução** é feita delegando à **skill cto-executar-item-pauta** (ou cto-pauta-issues-diaria) no Cursor; cada item vira PR para o Founder aprovar.
5. **Opcional:** POST para `/api/csuite/founder-report` com "CTO Pauta — DD/MM/YYYY".
6. **Skill(s) no Cursor:**
   - **cto-pauta-issues-diaria:** revisar issues novas, montar/atualizar pauta, registrar onde for (founder report / knowledge).
   - **cto-executar-item-pauta:** (ou seção da mesma skill) executar um item da pauta: branch → implementar → abrir PR → Founder aprova. Assim o fluxo tem um **executor** explícito que o CTO delega.

---

## 4. Arquivos

- **Workflow:** criar `csuite-loop-v10.json` a partir do V9 com as alterações acima (nomes normalizados + Fetch GitHub Issues New + Build Context + CTO prompt + opcional founder-report).
- **Skills:** `apps/core/admin/agents/skills/cto-pauta-issues-diaria/SKILL.md` e, se desejado, `cto-executar-item-pauta/SKILL.md` (ou uma única skill com duas “modos”: montar pauta e executar item).
- **Docs:** atualizar `workflows/n8n/csuite/README.md` com V10, nomes normalizados e papel da skill como executor.
