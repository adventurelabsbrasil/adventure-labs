# Handoff — Automações Benditta + Template Multi-Cliente
**Missão:** Operação Automações Benditta
**Data:** 16/04/2026
**Executor:** Claude Code (claude-sonnet-4-6)
**Sessão:** Continuação de `MISSAO_LINHA_ESSENCIAL_META_FASE2_HANDOFF.md` (15/04/2026)
**Branch:** `claude/benditta-meta-ads-campaign-cqkbW`
**Commits desta sessão:** 3 commits adicionais (total 15 na branch)

---

## Resumo Executivo para C-Suite e Buzz

Saímos de campanha ativa sem nenhuma automação e chegamos com:
- Lead pipeline completo estruturado (Supabase + n8n + WhatsApp)
- Briefing semanal automatizado funcionando e enviando ao Telegram
- Template multi-cliente replicável para Young e Rose
- Bloqueio restante: Business Verification Meta (ETA ~2 dias úteis)

---

## O que foi entregue nesta sessão

### 1. Supabase — Tabela `adv_meta_leads` ✅

**Projeto:** `ftctmseyrqhckutpfdeq`
**Migration:** `supabase/migrations/20260415100000_adv_meta_leads.sql`
**Aplicada em:** 16/04/2026 via SQL Editor (Supabase Dashboard)

Campos principais:
- `lead_id TEXT UNIQUE` — idempotência (sem duplicatas)
- `client TEXT` — multi-tenant (`benditta` | `young` | `rose`)
- `mql BOOLEAN` — score de qualificação
- `notificado_wa BOOLEAN` — controle de notificação WhatsApp
- `raw_data JSONB` — payload completo do formulário Meta
- RLS habilitada: `authenticated` (leitura/escrita) + `service_role` (acesso total para n8n/scripts)

---

### 2. n8n Workflow — `benditta-lead-realtime` ✅ (aguardando Meta webhook)

**URL webhook:** `https://flow.adventurelabs.com.br/webhook/benditta-lead`
**Arquivo doc:** `scripts/n8n/workflows/benditta-lead-realtime.md`

**Fluxo:**
```
Meta Webhook → Webhook (n8n) → Extract Lead ID (Code) → Fetch Lead Data (Meta API)
→ Parse Fields + MQL → Supabase INSERT → IF MQL
  → true:  WhatsApp Laís Lima (5551998252983) → PATCH notificado_wa=true
  → false: Cold Lead (sem notificação)
```

**Lógica MQL:**
- Cliente Final: `orcamento IN [30k_50k, 50k_100k, 100k_200k, acima_200k]` → MQL
- Arquitetos: `ticket_medio IN [80k_150k, acima_150k]` → MQL

**Fix aplicado durante setup:**
- Set node substituído por Code node no `Extract Lead ID` (webhook encapsula payload em `$json.body`, não `$json`)

**Variáveis de ambiente adicionadas ao n8n (docker-compose):**
```yaml
- N8N_BLOCK_ENV_ACCESS_IN_NODE=false
- META_SYSTEM_USER_TOKEN=${META_SYSTEM_USER_TOKEN}
- SUPABASE_SERVICE_ROLE_KEY=${SUPABASE_SERVICE_ROLE_KEY}
- SUPABASE_URL=https://ftctmseyrqhckutpfdeq.supabase.co
- EVOLUTION_API_KEY=${EVOLUTION_API_KEY}
```

**Status:** Workflow ativo. Testado até Fetch Lead Data (falha esperada com ID fictício). Pendente: subscrição da página ao app Meta (bloqueada por Business Verification).

---

### 3. gerente-benditta com KPIs reais ✅ FUNCIONANDO

**Script:** `scripts/agents/gerente-benditta` (novo no repo)
**VPS:** `/opt/adventure-labs/scripts/agents/gerente-benditta`
**Dependência:** `scripts/agents/utils/meta_weekly_kpis.sh`
**Cron:** `19 12 * * 3` (quarta 12:19 UTC) — **ATIVO no crontab**

**O que faz:**
1. Chama `meta_weekly_kpis.sh benditta` → KPIs Meta (spend, CPL, leads) + Supabase (MQL, cold, notificados)
2. Gera briefing via Claude API (`claude-sonnet-4-6`, max 1024 tokens)
3. Envia ao Telegram chat `1069502175` (ceo_buzz_Bot)

**Testado em:** 16/04/2026 01:22 UTC — briefing completo entregue no Telegram ✅

**Incidente durante setup:**
- `ANTHROPIC_API_KEY` original (`ComandoEstelar`) estava com saldo zerado na Anthropic API
- Rodrigo adicionou US$6 créditos em `console.anthropic.com` + criou nova key
- Nova key configurada em `/opt/adventure-labs/.env`

---

### 4. Template Multi-Cliente ✅

**Arquivos criados:**
- `scripts/meta-ads/create_campaign.py` — script genérico com `--client benditta|young|rose`
- `scripts/meta-ads/configs/benditta.yaml` — config completa Benditta (geo, públicos, forms, IDs ativos)
- `scripts/meta-ads/configs/young.yaml` — stub Young Empreendimentos (TODO: preencher IDs)
- `scripts/meta-ads/configs/rose.yaml` — stub Rose Portal Advocacia (TODO: preencher IDs)

**CLI:**
```bash
python3 create_campaign.py --client benditta --dry-run
python3 create_campaign.py --client young --dry-run
python3 create_campaign.py --client rose --only-forms
```

---

## Estado atual das automações

| Automação | Status | Bloqueio |
|-----------|--------|----------|
| `adv_meta_leads` Supabase | ✅ Criada | — |
| n8n workflow lead realtime | ✅ Ativo | Meta webhook (Business Verification) |
| gerente-benditta semanal | ✅ Rodando | — |
| monitor_meta_insights.py cron | ⏳ Pendente | Cron não adicionado ainda |
| Meta webhook → n8n | ⏳ Bloqueado | Business Verification Meta (~ETA 18/04) |

---

## Pendências para próxima sessão

### 🔴 Quando Business Verification aprovar
```bash
export META_SYSTEM_USER_TOKEN=$(grep META_SYSTEM_USER_TOKEN /opt/adventure-labs/.env | cut -d= -f2)
PAGE_TOKEN=$(curl -s "https://graph.facebook.com/v20.0/me/accounts?access_token=$META_SYSTEM_USER_TOKEN" \
  | jq -r '.data[] | select(.id == "968517269687411") | .access_token')

# Subscrever página ao app
curl -X POST "https://graph.facebook.com/v20.0/968517269687411/subscribed_apps" \
  -d "subscribed_fields=leadgen" \
  -d "access_token=$PAGE_TOKEN"
```

Depois configurar webhook no app `757053927263543`:
- URL: `https://flow.adventurelabs.com.br/webhook/benditta-lead`
- Campo: `leadgen`
- Testar: `developers.facebook.com/tools/lead-ads-testing` → Criar lead → verificar Supabase + WA Laís

### 🟡 Monitor semanal (pode fazer agora)
```bash
(crontab -l 2>/dev/null; echo "0 10 * * 3 cd /opt/adventure-labs && META_SYSTEM_USER_TOKEN=\$(grep META_SYSTEM_USER_TOKEN /opt/adventure-labs/.env | cut -d= -f2) python3 scripts/meta-ads/monitor_meta_insights.py benditta >> /var/log/adventure/meta-insights.log 2>&1") | crontab -
```

---

## Referências técnicas consolidadas

| Item | Valor |
|------|-------|
| Supabase projeto | `ftctmseyrqhckutpfdeq` |
| Supabase URL | `https://ftctmseyrqhckutpfdeq.supabase.co` |
| n8n | `https://flow.adventurelabs.com.br` |
| Evolution API | `https://api-wa.adventurelabs.com.br` |
| Meta App ID | `757053927263543` |
| Meta Page ID | `968517269687411` |
| Meta Ad Account | `act_763660518134498` |
| Campanha ativa | `120241798663620353` |
| Ad Set Arquitetos | `120241798664090353` |
| Ad Set Cliente Final | `120241798663800353` |
| Formulário Arquitetos | `1537753711101879` |
| Formulário Cliente Final | `1428224111958811` |
| WA Laís Lima (AM) | `5551998252983` |
| Telegram Buzz | chat `1069502175` |
| ANTHROPIC_API_KEY VPS | `sk-ant-api03-oFDH...KQAA` (rotacionada em 16/04) |

---

## Decisões tomadas nesta sessão

1. **Code node > Set node no n8n** — Set node v3.2 não resolve `$json.body.*` corretamente na versão 2.14.2
2. **`N8N_BLOCK_ENV_ACCESS_IN_NODE=false`** — necessário para workflows acessarem `$env.*`; variáveis sensíveis passadas via docker-compose (não hardcoded no workflow)
3. **gerente-benditta standalone** — script autossuficiente, não depende de adventure-agent.sh dispatcher, mais fácil de manter e debugar
4. **ANTHROPIC_API_KEY rotacionada** — key antiga (`ComandoEstelar`) sem créditos; nova key criada no console.anthropic.com

---

_Gerado ao final da sessão Claude Code em 16/04/2026._
_Próxima ação recomendada: aguardar Business Verification Meta → ativar webhook → testar lead end-to-end._
