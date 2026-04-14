# Handoff — Setup Mercado Pago (Conciliação Financeira Interna)

> **Status:** código pronto, pendente configuração de secrets + aplicação de migration + smoke test.
> **Criado:** 2026-04-14
> **Branch:** `claude/mercado-pago-integration-eHScy`
> **Último commit:** `bbf2258` — feat(mp): integração Mercado Pago para conciliação financeira interna
> **Quem pode assumir:** Founder (Rodrigo), Buzz (delegar para agente de setup), ou qualquer humano com acesso Infisical + Supabase + Mercado Pago Dashboard.

---

## Objetivo

Ter a Adventure Labs sincronizando **automaticamente** (a cada 30 min) os pagamentos recebidos na conta Mercado Pago para a tabela `adv_mp_payments` no Supabase, alimentando:

- **Sueli** (agente financeira AI) — responder "quanto caiu no MP hoje?" via WhatsApp/email
- **Buffett** (CFO agente C-Suite) — review semanal de custos/receitas
- **Metabase** — dashboards de conciliação (MP vs extratos bancários Sicredi)

**Não é checkout.** Não tem frontend pra cliente pagar. É APENAS leitura, uso interno.

---

## Arquitetura

```
Mercado Pago API  ──►  tools/scripts/mercadopago-cli.mjs  ──►  Supabase (adv_mp_payments)
     [✓ pronto]              [✓ código commitado]                 [⏳ falta migration + primeira carga]
                                      ▲
                                      │
                         Infisical path=/mp (dev e prod)
                              [⏳ falta popular]
```

- **CLI:** `tools/scripts/mercadopago-cli.mjs` (Node/ESM, fetch nativo, sem dependências extras além de `@supabase/supabase-js` que já está no root)
- **Migration:** `supabase/migrations/20260414150000_adv_mp_conciliacao.sql`
- **Wrapper VPS:** `tools/vps-infra/scripts/agents/mercadopago-sync.sh`
- **Scripts npm:** `pnpm mp:verify`, `pnpm mp:payments:search`, `pnpm mp:sync:payments`, `pnpm mp:sync:all`
- **Secrets:** Infisical path `/mp` (ver lista na Etapa 3)

---

## ✅ Já feito

- [x] **Código commitado na branch** — 6 arquivos:
  - `tools/scripts/mercadopago-cli.mjs` (CLI)
  - `supabase/migrations/20260414150000_adv_mp_conciliacao.sql` (migration)
  - `tools/vps-infra/scripts/agents/mercadopago-sync.sh` (wrapper VPS)
  - `package.json` (scripts `mp:*` adicionados)
  - `CLAUDE.md` (linha nova na tabela de agentes)
  - `docs/STACK_ADVENTURE_LABS.md` (seção MercadoPago expandida)
- [x] **Aplicação criada no painel Mercado Pago** — "Checkout Pro", User ID `3306667695`
- [x] **Credenciais rotacionadas** — o primeiro token foi exposto em chat e teve de ser renovado. As credenciais atuais (pós-rotação) estão com o Rodrigo, ainda **não** no Infisical.
- [x] **Branch pushed** — `origin/claude/mercado-pago-integration-eHScy`

---

## ⏳ O que falta fazer (5 etapas)

### ETAPA 1 — Baixar a branch limpa no Mac *(git local tinha refs duplicadas do Finder, já limpas manualmente)*

```bash
cd /Users/ribasrodrigo91/Documents/GitHub/01_ADVENTURE_LABS

# Confirmar que o git está limpo
find .git/refs .git/logs -name "* *"    # não deve imprimir nada

# Puxar branch
git fetch origin
git checkout claude/mercado-pago-integration-eHScy
git pull

# Validar que os arquivos chegaram
ls tools/scripts/mercadopago-cli.mjs
ls supabase/migrations/20260414150000_adv_mp_conciliacao.sql
```

**Se reaparecer sujeira:** `rm ".git/refs/heads/main 2" ".git/refs/heads/main 3.lock"` e tentar de novo. Se persistir, é provável que `.git` esteja em pasta sincronizada por iCloud — mover para fora.

---

### ETAPA 2 — Configurar Infisical (path `/mp`, env `dev` e `prod`)

**Onde:** https://vault.adventurelabs.com.br

**Ação:** no projeto principal `adventure-labs`, env `dev`, criar pasta `/mp` e adicionar 7 secrets. Depois repetir igual no env `prod`.

| Secret key | Valor | Origem |
|---|---|---|
| `MP_ACCESS_TOKEN` | `APP_USR-...` | Painel MP → Credenciais de produção → Access Token (pós-rotação) |
| `MP_PUBLIC_KEY` | `APP_USR-...` | Painel MP → Credenciais de produção → Public Key |
| `MP_CLIENT_ID` | `7558298778378534` | Público, pode copiar daqui |
| `MP_CLIENT_SECRET` | `...` | Painel MP → Credenciais de produção → Client Secret (pós-rotação) |
| `MP_USER_ID` | `3306667695` | Público, pode copiar daqui |
| `SUPABASE_URL` | `https://<ref>.supabase.co` | Supabase Dashboard → Project Settings → API → Project URL |
| `SUPABASE_SERVICE_ROLE_KEY` | `eyJhbG...` | Supabase Dashboard → Project Settings → API → Project API keys → **service_role** (não é a anon!) |

**Opcionais** (pra notificar erro no Telegram):
- `TELEGRAM_BOT_TOKEN` — token do `ceo_buzz_Bot`
- `TELEGRAM_CHAT_ID` — default `1069502175`

**Validação:**
```bash
cd /Users/ribasrodrigo91/Documents/GitHub/01_ADVENTURE_LABS
infisical secrets --env=dev --path=/mp
# Esperado: 7 (ou 9 com Telegram) nomes listados. Valores aparecem como *** (normal).
```

> ⚠️ **Se rotacionar novamente o token MP no futuro**, atualizar AMBOS os envs (`dev` e `prod`). O token antigo é invalidado imediatamente pela MP.

---

### ETAPA 3 — Aplicar migration no Supabase

**Onde:** https://supabase.com/dashboard → projeto Adventure Labs → SQL Editor

**Ação:**
1. Abrir o arquivo `supabase/migrations/20260414150000_adv_mp_conciliacao.sql`
2. Copiar o conteúdo completo (do Mac: `cat supabase/migrations/20260414150000_adv_mp_conciliacao.sql | pbcopy`)
3. No SQL Editor do Supabase: "+ New query" → colar → Run

**Esperado:** `Success. No rows returned`

**Validação** — nova query no SQL Editor:

```sql
SELECT to_regclass('public.adv_mp_payments') AS payments,
       to_regclass('public.adv_mp_sync_log') AS sync_log;
```

**Esperado:** duas colunas com os nomes das tabelas, nenhuma `NULL`.

O que a migration cria:
- `adv_mp_payments` (espelho de `/v1/payments/search` com `raw jsonb` completo)
- `adv_mp_sync_log` (auditoria de execuções do sync)
- Índices em `date_created`, `status`, `external_reference`
- RLS **service_role-only** em ambas (dados financeiros sensíveis)

---

### ETAPA 4 — Smoke test local (dev)

Rodar da **raiz do monorepo**. Os scripts usam `infisical run --env=dev --path=/mp` por trás.

```bash
cd /Users/ribasrodrigo91/Documents/GitHub/01_ADVENTURE_LABS

# 4.1 — Deps
pnpm install

# 4.2 — Test de conexão MP (não toca em nada)
pnpm mp:verify
# Esperado: {"ok": true, "id": 3306667695, "email": "...", "site_id": "MLB", "status": "active"}

# 4.3 — Listar 5 pagamentos reais (só lê, não grava)
pnpm mp:payments:search -- --limit 5
# Esperado: JSON com paging, count, sample_ids, results[]

# 4.4 — Primeira carga completa (GRAVA no Supabase dev)
pnpm mp:sync:payments -- --full --from 2024-01-01
# Esperado: {"ok": true, "pages_fetched": N, "rows_affected": M, "duration_ms": ...}
# Pode demorar alguns minutos dependendo do volume histórico.
```

**Validação no Supabase** — SQL Editor:

```sql
SELECT COUNT(*) AS total,
       MIN(date_created) AS primeiro,
       MAX(date_created) AS mais_recente,
       SUM(transaction_amount) FILTER (WHERE status = 'approved') AS total_aprovado_brl,
       SUM(net_received_amount) FILTER (WHERE status = 'approved') AS liquido_aprovado_brl
FROM adv_mp_payments;
```

Esperado: números batendo com o que aparece no painel do Mercado Pago (aba Relatórios → Atividades).

---

### ETAPA 5 — Deploy na VPS (cron a cada 30 min em prod)

**Pré-requisitos:** Etapas 2-4 concluídas em **prod** também (Infisical env=prod com as mesmas 7 secrets, migration já aplicada se o Supabase de prod for o mesmo projeto).

**Na VPS (SSH):**

```bash
# 5.1 — Atualizar repo
cd /opt/adventure-labs/repo
git fetch origin
git checkout claude/mercado-pago-integration-eHScy    # ou main depois do merge
git pull
pnpm install --frozen-lockfile

# 5.2 — Copiar script de agente
cp tools/vps-infra/scripts/agents/mercadopago-sync.sh /opt/adventure-labs/scripts/agents/
chmod +x /opt/adventure-labs/scripts/agents/mercadopago-sync.sh

# 5.3 — Testar execução manual uma vez
INFISICAL_MP_ENV=prod /opt/adventure-labs/scripts/agents/mercadopago-sync.sh

# 5.4 — Adicionar ao crontab (crontab -e)
# */30 * * * * INFISICAL_MP_ENV=prod /opt/adventure-labs/scripts/agents/mercadopago-sync.sh >> /opt/adventure-labs/logs/mercadopago-sync.log 2>&1
```

**Validação:** após 30 min, a tabela `adv_mp_sync_log` deve ter pelo menos uma linha nova com `kind='payments'` e `error IS NULL`.

---

## 🔙 Como reverter (rollback)

Nada irreversível foi feito. Pra desfazer tudo:

1. **Na VPS:** remover linha do crontab, deletar `/opt/adventure-labs/scripts/agents/mercadopago-sync.sh`
2. **No Supabase:** `DROP TABLE adv_mp_payments, adv_mp_sync_log CASCADE;`
3. **No Infisical:** deletar pasta `/mp`
4. **No MP:** painel → aplicação criada → Configurações → deletar aplicação (opcional — ela não cobra nada parada)
5. **No repo:** `git revert bbf2258` ou abandonar a branch

---

## 🚨 Pontos de atenção (leia antes de continuar)

1. **RLS é service_role-only.** Nenhum usuário autenticado consegue ler `adv_mp_payments` direto — é dado financeiro cru. Pra expor pra Sueli/Buffett, criar **views específicas** (ex: `v_mp_receitas_mes`) com policies próprias. Não relaxar a RLS.

2. **Rotação de credenciais.** O primeiro Access Token foi exposto em chat e teve de ser rotacionado. Nunca cole credenciais MP em chat (nem aqui, nem em issue do GitHub, nem no Slack). Sempre Infisical direto.

3. **Rate limit MP.** A API permite ~25 req/s. Com paginação de 100 items/req, 500 páginas máx por execução = 50k pagamentos. Suficiente pra histórico completo em uma execução. O script já tem guard `MAX_PAGES_PER_RUN`.

4. **`balance` e `activities` ficaram fora.** Endpoints de saldo e atividades do MP são historicamente instáveis (já mudaram 3× de path). Implementar quando tiver caso de uso concreto, não especulativo.

5. **Webhook IPN não configurado.** Pro nosso caso (polling a cada 30min é suficiente), não precisa. Se algum dia quisermos eventos em tempo real, apontar pro n8n (`flow.adventurelabs.com.br/webhook/mp`) e criar workflow que escreve direto em `adv_mp_payments`.

6. **Git local no Mac tem histórico de corrupção** (refs duplicadas pelo Finder, erros SIGBUS ocasionais). Se o Rodrigo delegar essa tarefa, a pessoa talvez prefira rodar tudo na VPS direto em vez de local.

---

## 📁 Referências

- **Código criado nesta branch:**
  - [`tools/scripts/mercadopago-cli.mjs`](../../tools/scripts/mercadopago-cli.mjs)
  - [`supabase/migrations/20260414150000_adv_mp_conciliacao.sql`](../../supabase/migrations/20260414150000_adv_mp_conciliacao.sql)
  - [`tools/vps-infra/scripts/agents/mercadopago-sync.sh`](../../tools/vps-infra/scripts/agents/mercadopago-sync.sh)
- **Docs atualizados:**
  - `CLAUDE.md` (tabela de agentes — linha `mercadopago-sync`)
  - `docs/STACK_ADVENTURE_LABS.md` (seção MercadoPago expandida)
- **Painéis externos:**
  - Mercado Pago Developers: https://www.mercadopago.com.br/developers/panel
  - Infisical: https://vault.adventurelabs.com.br
  - Supabase: https://supabase.com/dashboard
- **Commit do código:** `bbf2258` na branch `claude/mercado-pago-integration-eHScy`

---

## 🤝 Handoff para quem vai executar

Se for **você mesmo (Rodrigo) retomando**: começa pela Etapa 1, faz uma de cada vez, valida antes de avançar.

Se for **o Buzz delegando pra um agente de setup**: o agente precisa de acesso a Infisical (CLI autenticada), Supabase Dashboard (ou MCP Supabase) e um browser pra pegar as credenciais MP do painel (ou as credenciais já no Vaultwarden do Rodrigo). Ele NÃO deve criar token novo — usar o que o Rodrigo já rotacionou e guardou.

Se for **outro humano**: precisa de acesso Infisical admin + Supabase admin + credencial MP (via Vaultwarden ou passada pelo Rodrigo por canal seguro, **nunca por chat**).

**Ordem obrigatória:** Etapa 2 (Infisical) → Etapa 3 (Supabase migration) → Etapa 4 (smoke test dev) → Etapa 5 (deploy VPS prod). Não pular.

---

**Última atualização:** 2026-04-14 por Claude Code (sessão `claude/mercado-pago-integration-eHScy`).
