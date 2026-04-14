# Metabase Setup — Young CRM (passo-a-passo UI)

Guia clicável para montar o BI da Young dentro do Metabase Adventure (`bi.adventurelabs.com.br`), conectando ao Supabase Pingolead (`vvtympzatclvjaqucebr`) e criando os 5 dashboards do MVP.

**Tempo estimado total:** ~3 horas (das quais ~2h são Fase D — criar as Questions a partir de `QUERIES_CRM.sql`).

**Credenciais necessárias antes de começar:**
- Login admin em `bi.adventurelabs.com.br`
- Senha `looker_reader` no Vaultwarden (item "Young Pingolead Looker Reader")
- 1 email Young de teste (Caroline indica)

---

## Fase A — Conectar Supabase Young ao Metabase (~10 min)

1. Acessar `https://bi.adventurelabs.com.br` com conta admin
2. Top-right **⚙️ → Admin settings**
3. Aba **Databases → Add database**
4. Preencher:

   | Campo | Valor |
   |-------|-------|
   | Database type | **PostgreSQL** |
   | Display name | `Young Pingolead (CRM)` |
   | Host | `db.vvtympzatclvjaqucebr.supabase.co` _(tentativa 1: direct)_ |
   | Port | `5432` |
   | Database name | `postgres` |
   | Username | `looker_reader` |
   | Password | _(do Vaultwarden)_ |
   | Schemas | `public` _(ou deixar vazio = todos)_ |
   | Use a secure connection (SSL) | **✓ ON** |
   | Additional JDBC connection string | _(vazio)_ |

5. **Save**. Deve aparecer "**Successfully connected**" em ~5 s.

### Se falhar com "DNS resolution" ou "connection timeout":

A VPS Adventure pode não ter IPv6 → direct não resolve. Trocar para pooler IPv4:

   | Campo | Valor |
   |-------|-------|
   | Host | `aws-0-sa-east-1.pooler.supabase.com` |
   | Port | `6543` |
   | Username | `looker_reader.vvtympzatclvjaqucebr` _(com sufixo!)_ |

   _(Se `sa-east-1` falhar, conferir região no Supabase dashboard → Settings → Database → Connection pooling)_

### Se falhar com "no encryption" ou "SSL required":

Adicionar ao **Additional JDBC connection string**:
```
sslmode=require
```

### Verificação

Após save, Metabase roda **auto-sync** (~30 s). Quando acabar:

1. Admin → Databases → Young Pingolead (CRM) → aba **"Sync schedules"** → botão **"Sync now"**
2. Voltar ao home do Metabase, sidebar esquerda → **Browse data → Young Pingolead (CRM)** → deve listar as 9 tabelas `crm_*`

---

## Fase B — Descobrir funil real do Pingolead (~5 min)

1. Top-right **+ New → SQL query**
2. Selecionar database: **Young Pingolead (CRM)**
3. Colar as 3 queries de `scripts/03_enum_values.sql` (ou as 5 primeiras daqui):

```sql
-- 1. Enum crm_deals.status
SELECT status, COUNT(*) FROM public.crm_deals GROUP BY status ORDER BY 2 DESC;

-- 2. Enum crm_deals.qualificacao
SELECT qualificacao, COUNT(*) FROM public.crm_deals GROUP BY qualificacao ORDER BY 2 DESC;

-- 3. Títulos distintos em crm_tasks
SELECT titulo, COUNT(*) FROM public.crm_tasks GROUP BY titulo ORDER BY 2 DESC LIMIT 30;

-- 4. Fontes de lead
SELECT f.nome, COUNT(d.id) AS leads
FROM public.crm_deals d LEFT JOIN public.crm_fontes_lead f ON d.fonte_id = f.id
GROUP BY f.nome ORDER BY leads DESC;

-- 5. Formas de pagamento
SELECT forma_pagamento, COUNT(*) FROM public.crm_deals
WHERE forma_pagamento IS NOT NULL GROUP BY forma_pagamento ORDER BY 2 DESC;
```

4. Rodar cada uma (Cmd+Enter), **copiar os resultados** para `FUNIL_PINGOLEAD.md` (preencher o template desse arquivo)
5. Cruzar com funil oficial Young (`lead recebido → contato feito → visita agendada → visita realizada → proposta recebida`):
   - Os valores reais do enum `status` batem com o funil oficial?
   - Se SIM, `QUERIES_CRM.sql` já está correto (chute acertou)
   - Se NÃO, fazer **replace-all** em `QUERIES_CRM.sql` dos valores fictícios pelos reais (ex.: `'contato'` → `'contato_feito'`, `'venda'` → `'won'`, etc.)

---

## Fase C — Collection "Young Empreendimentos" + Group "Young" (~10 min)

### Criar Collection

1. Sidebar esquerda → **Collections → + New collection**
2. Name: `Young Empreendimentos`
3. Description: `BI da Young — CRM/vendas. Alimentado por Supabase Pingolead via role looker_reader.`
4. Icon: escolher algo distintivo (🏠, 📊, ou uma letra Y)
5. **Create**

### Criar Group

1. Admin → **People → Groups → + Create a group**
2. Name: `Young`
3. **Save**

### Configurar Collection Permissions

1. Volta em **Collections → Young Empreendimentos**
2. Top-right ⚙️ → **Edit permissions**
3. Configurar:
   - **Administrators:** Curate _(default, deixar)_
   - **All Users:** **No access** _(trocar)_
   - **Young:** **View** _(adicionar)_
4. **Save changes**

### Configurar Data Permissions

1. Admin → **Permissions → Data**
2. Selecionar **Group: Young** à esquerda
3. Para cada database:
   - **Young Pingolead (CRM):** Data access = **View data**, Query Builder = **Query builder and native**
   - **Todos outros databases (incl. `adventurelabsbrasil`):** Data access = **No self-service**
4. **Save changes**

### Verificação

1. Incógnito ou lógout-login com uma conta teste (pode usar você mesmo num outro email se quiser)
2. Deve ver **somente** a Collection "Young Empreendimentos" (além da pessoal)

---

## Fase D — Criar Questions + Dashboards (~2h)

Para cada bloco SQL em `QUERIES_CRM.sql`:

1. Top-right **+ New → SQL query**
2. Database: **Young Pingolead (CRM)**
3. Colar o SQL do bloco (ex.: Q1.1, Q1.2, etc.)
4. **Clicar no símbolo "⚙️"** ao lado das variáveis detectadas (`start_date`, `end_date`) → tipo **Date**, label amigável
5. Rodar a query (Cmd+Enter)
6. Ajustar a visualização no painel direito (Number, Line, Bar, Funnel, Pivot Table etc. — ver notas no final do `QUERIES_CRM.sql`)
7. **Save** → nome = código da Question (ex.: "Q1.1 — Total de leads") → Collection: **Young Empreendimentos**

### Criar os 5 Dashboards

Após salvar todas as Questions:

1. Collection Young Empreendimentos → top-right **+ New → Dashboard**
2. Nomear conforme guia no final do `QUERIES_CRM.sql`:
   - `Young — Visão Geral` (Q1.1 até Q1.6)
   - `Young — Funil` (Q2.1, Q2.2)
   - `Young — Consultores` (Q3.1 a Q3.3)
   - `Young — Empreendimentos` (Q4.1 a Q4.3)
   - `Young — Perdas` (Q5.1, Q5.2)
3. Em cada dashboard, **+ Add a question** para as Qs do grupo
4. Organizar os tiles (arrastar, redimensionar)
5. **Topo do dashboard → + Add a filter** → **Date** → label "Período" → conectar às variáveis `start_date`/`end_date` de cada Question

### Dica de execução

Faça UM dashboard completo primeiro (recomendo "Visão Geral", são os KPIs principais). Depois que estiver 100% OK, replica o padrão pros outros 4 — o gosto da vitória acelera o resto.

---

## Fase E — Acesso MVP (~10 min)

### Colher email da pessoa-teste Young

Com Caroline, pedir:
> "Pra primeiro acesso ao BI novo, quem da Young usa os relatórios de vendas no dia-a-dia? Precisamos de 1 email pra convidar como teste antes de liberar pro time todo."

Perfil ideal: Mateus Fraga ou pessoa do comercial que usa o Looker atual. Precisa saber dar feedback técnico ("o número X tá errado porque Y") — se for só leitor passivo, o teste vale menos.

### Convidar no Metabase

1. Admin → **People → Invite someone**
2. Email: _(o que Caroline passou)_
3. First name / Last name: preencher
4. Add this person to groups: **✓ All Users**, **✓ Young** _(não marcar Administrators)_
5. **Create**

Metabase envia e-mail com link de setup de senha.

### Validação da pessoa-teste

Pedir pra pessoa (por WhatsApp, reunião rápida de 15 min, ou DM):

1. Criar senha pelo link do e-mail
2. Login em `bi.adventurelabs.com.br`
3. Sidebar esquerda → **Collections** → deve ver **Young Empreendimentos**
4. Abrir os 5 dashboards, um por um
5. **NÃO deve ver:**
   - Outras Collections (Adventure internal, outros clientes)
   - SQL Editor livre em outros databases (só Young Pingolead CRM)
6. Spot check: puxar 1–2 números que ela conhece de cor (ex.: "quantos leads chegaram em abril?") e conferir

### Critério de aprovação

- ✅ Permissões corretas (vê só o que deve)
- ✅ Números passam no spot check (± 5% vs percepção dela é OK — detalhes no enum ajustam depois)
- ✅ Performance aceitável (queries em < 5 s)

Se passar, **missão está pronta**. Conversar com Caroline para convidar resto do time (fase pós-MVP, tarefa separada).

Se falhar, investigar caso a caso:
- Permissões erradas → refazer Fase C
- Números errados → enum de status incorreto, refazer Fase B + replace-all em QUERIES_CRM.sql
- Performance ruim → adicionar índice no Supabase Young (coordenar com Eduardo)

---

## Fase F — Subdomínio `bi.young.adventurelabs.com.br` (OPCIONAL)

Só se Caroline/Young pedirem URL branded. Procedimento:

1. SSH na VPS → editar `/opt/adventure-labs/tools/vps-infra/nginx/conf.d/adventure-labs-https.conf`
2. Duplicar o bloco `server { server_name bi.adventurelabs.com.br; ... }`
3. No duplicado, trocar `server_name` → `bi.young.adventurelabs.com.br`
4. `proxy_pass http://127.0.0.1:3000;` fica igual (mesmo Metabase)
5. Salvar + `nginx -t && nginx -s reload` (via systemctl ou docker exec conforme stack)
6. Criar registro DNS A `bi.young.adventurelabs.com.br → 187.77.251.199`
7. Rodar `/opt/adventure-labs/tools/vps-infra/scripts/enable-tls.sh ops@adventurelabs.com.br` para emitir o cert Let's Encrypt
8. Metabase: Admin → Settings → General → **Site URL** → pode atualizar pra `https://bi.young.adventurelabs.com.br` (afeta links de invite e-mail — só fazer se Young for o uso dominante)

---

## Fase G — Cutover (quando tudo estiver validado)

1. **Comunicar Young** (WhatsApp grupo + e-mail):
   > "Oi time! A partir de hoje o dashboard de CRM/vendas da Young está em `bi.adventurelabs.com.br` (cada um recebeu convite individual). O Looker antigo vai ficar disponível por 30 dias como consulta e depois é desativado. Dúvidas com a Caroline."
2. **Renomear Looker antigo:** https://lookerstudio.google.com/reporting/0449c5e9-... → editar título para `[DEPRECATED 2026-04] Young — Marketing e Vendas`
3. **Trocar permissões do Looker antigo:** editor → viewer (só leitura)
4. **Arquivar planilha Sheets:** Drive → mover `1jJRFPzxCl...` para pasta `99_ARQUIVO_2026/`
5. **Atualizar Hive Mind:**
   - `agent_context` key `young.pingostudio.looker_migration` → `status_missao: completed_metabase`
   - `adv_csuite_memory` nova entrada tipo `csuite_decision` com o cutover
   - `HANDOFF.md` deste diretório: seção "Cutover 2026-MM-DD"

---

## Troubleshooting conhecido

| Sintoma | Causa provável | Fix |
|---------|----------------|-----|
| "Host unreachable" no Add Database | VPS sem IPv6 | Usar pooler IPv4 (ver Fase A alternativa) |
| "Password authentication failed" | Senha errada ou conta diferente | Conferir Vaultwarden; se suspeitar de rotação, Eduardo confirma |
| "Permission denied for table crm_deals" | looker_reader sem GRANT | Rodar a migration `supabase/migrations/20260413000000_create_looker_reader.sql` de novo |
| Funnel chart vazio mesmo com 21k linhas | Enum `status` diferente do chute | Fase B revela valores reais; replace-all em `QUERIES_CRM.sql` |
| Dashboard lento (> 10 s) | Sem índice em `crm_deals.status` ou `created_at` | Pedir pro Eduardo: `CREATE INDEX ON crm_deals(status); CREATE INDEX ON crm_deals(created_at);` |
| Pessoa Young vê Collection de outro cliente | Data Permissions mal configuradas | Admin → Permissions → Data → Group Young → `No self-service` em todas outras databases |

---

## Referências

- **Metabase docs:** https://www.metabase.com/docs/latest/
- **Supabase pooler:** https://supabase.com/docs/guides/database/connecting-to-postgres#connection-pooler
- **Plano aprovado:** `/root/.claude/plans/cosmic-greeting-wadler.md`
- **QUERIES_CRM.sql:** todas as Questions versionadas
- **FUNIL_PINGOLEAD.md:** mapeamento real dos status (preencher após Fase B)
- **HANDOFF.md:** estado + credenciais
- **agent_context key `young.pingostudio.looker_migration`:** estado cross-agent
