# Relatório parcial — PINGOSTUDIO-264

**Data:** 2026-04-14
**Cliente:** Young Empreendimentos
**Stakeholders Adventure:** Rodrigo Ribas (Founder), Caroline (account/ops)
**Stakeholders Young/parceiros:** Eduardo Tebaldi (dono do Pingolead, sócio Adventure ex-Young)
**Executor:** Claude Code (sessão de 2026-04-13 a 2026-04-14)
**Branch:** `claude/migrate-looker-supabase-1DHBz`
**Commits:** 13 (de `90887f3` a `f4752ff`)
**PR:** não aberto (aguardando validação + decisão de cutover)

---

## Objetivo da missão

Migrar o relatório Looker Studio da Young (hoje alimentado por Google Sheets) para apontar direto no Supabase do **Pingolead** (`vvtympzatclvjaqucebr`, org `julbtdksnxavhlulygun`), onde o CRM próprio já escreve. Escopo: camada de visualização — nenhuma migração de dados históricos.

---

## Estado atual — o que já está entregue

### ✅ Infraestrutura no Supabase da Young

- Role read-only `looker_reader` criado no Postgres da Pingolead:
  - `BYPASSRLS` ativo (permite BI externo ler tabelas com RLS)
  - `GRANT SELECT` apenas nas **9 tabelas `crm_*`** (decisão Founder 2026-04-14 — escopo CRM puro, nada de RH/cobrança/financeiro)
- Senha forte gerada e documentada para inserção no Vaultwarden
- **Validado via direct IPv6:** 21.898 linhas em `crm_deals`, INSERT negado, isolamento de `rh_folha_mensal` funcionando

### ✅ Descoberta do schema (introspect completo)

- 123 tabelas em `public` (Pingolead é o operacional inteiro da Young: CRM, RH, cobrança, construção, ATS, Sienge)
- Schema CRM mapeado: `crm_deals`, `crm_empreendimentos`, `crm_consultores`, `crm_tasks`, `crm_fontes_lead`, `crm_motivos_perda`, `crm_deal_images`, `crm_deal_phones`, `crm_task_images`
- Output bruto em `scripts/01_introspect.out.txt`

### ✅ Plano completo de remap de fields (Sheets → Postgres)

- PDF do Looker atual analisado (5 páginas, 12+ gráficos, 8 taxas de conversão de funil)
- `FIELD_MAPPING.md` mapeia cada KPI, cada gráfico, cada filtro e cada métrica calculada com a fórmula SQL correspondente
- Fluxo híbrido desenhado: **Postgres para CRM/vendas** + **Sheets para dados de mídia** (Meta Ads, Google Ads, Outdoor, Mobília, Sala comercial, Renders), com Blending no Looker para CPA/CPL/ROAS

### ✅ Gap crítico identificado

**Pingolead NÃO tem dados de marketing/ads.** Todas as métricas do dashboard que dependem de investimento (Impressões, Cliques, Investimento R$, CTR, CPC, CPA, CPL, ROAS, breakdown por canal) continuarão vindo do Sheets após o cutover. Isso é um achado estratégico — decisão futura: continuar híbrido ou criar pipeline de ads na Pingolead (tarefa separada, maior).

### ✅ Protocolo Hive Mind registrado

Missão gravada na infraestrutura Adventure para futuras sessões:
- `agent_context` (Supabase `ftctmseyrqhckutpfdeq`) — key `young.pingostudio.looker_migration`, TTL 30 dias, visibilidade `shared`
- `adv_csuite_memory` — entrada `csuite_decision` com ID `a47d1c66-19aa-4ee3-912e-be9dc2bb1272`
- Handoffs em `openclaw/memory/` (pro Buzz) e `clients/03_young/` (contexto do cliente)

### ✅ Artefatos no repo

```
apps/clientes/04_young/pingostudio/
├── README.md                            # arquitetura, como aplicar, como validar
├── HANDOFF.md                           # estado técnico detalhado, senha gerada, cola-pronto
├── FIELD_MAPPING.md                     # 287 linhas de plano de remap Sheets→CRM
├── RELATORIO_PARCIAL_2026-04-14.md     # este arquivo
├── reference/
│   └── looker_atual_2026-04-13.pdf     # PDF do report atual
├── scripts/
│   ├── 00_connect.sh                   # helper direct/pooler
│   ├── 01_introspect.sql + .out.txt    # schema discovery
│   ├── 02_validate_looker_reader.sh    # 3 validações automáticas
│   ├── 02_validate.out.txt             # validação executada via direct IPv6
│   ├── 03_enum_values.sql              # queries p/ refinar fórmulas
│   ├── 99_diagnose.sh                  # diagnóstico rede/auth
│   └── 99_pooler_diagnose.sh           # diagnóstico pooler + 4 fixes conhecidos
└── supabase/
    └── migrations/
        └── 20260413000000_create_looker_reader.sql
```

---

## O que falta (e por que travou)

### 🔶 Pendente (ordem real de criticidade)

1. **Pooler IPv4 ainda não validado** — O Buzz validou `looker_reader` via direct IPv6 (porta 5432). Looker Studio roda no GCP e tipicamente precisa de IPv4 via pooler (porta 6543). Antes de fazer a Fase 4 no Looker, precisa confirmar que o pooler reconhece a role nova. Se não reconhecer, fix conhecido: `GRANT looker_reader TO authenticator`.
2. **Enum values reais** — `crm_deals.status` e `crm_deals.qualificacao` são enums. As fórmulas do FIELD_MAPPING assumem valores como `'venda'` e `'qualificada'`, mas podem ser diferentes (ex.: `'won'/'lost'` ou `'MQL'/'SQL'`). Script `03_enum_values.sql` pronto — 1 execução resolve.
3. **Cópia + remap no Looker Studio** — trabalho manual no browser seguindo `FIELD_MAPPING.md` (estimativa: 2–3h de cliques, a maior parte em validação visual por página)
4. **Compartilhar novo relatório** com stakeholders Young e depreciar o antigo

### 🔴 Por que a execução via Claude Code ficou lenta

- Sandbox Claude não alcança hosts `*.supabase.co` nem `api.telegram.org` (egress proxy allowlist restrita)
- MCP Supabase atual está na org **Adventure Labs** (`xmijkpuquwzgtrhznabs`), não na org **Young** (`julbtdksnxavhlulygun`) onde vive `vvtympzatclvjaqucebr`
- Tentamos adicionar um segundo MCP (`supabase-young`) via `.claude/settings.local.json`, mas o Desktop app não expõe arquivos gitignored e o slash `/mcp` não é built-in
- Caminho real pra destravar: setar o PAT novo no MCP da cloud Claude (fica para próxima sessão quando tiver tempo de configurar)

---

## O que cada stakeholder precisa validar

### 👤 Founder (Rodrigo)

- [ ] Escopo **só CRM** no Looker foi a decisão certa? (alternativa era incluir Sienge/comercial/cidades — dá pra expandir GRANT sem refazer a role)
- [ ] Abordagem **híbrida Sheets + Postgres** está OK pro MVP, ou prefere adiar cutover até ter dados de ads na Pingolead?
- [ ] Senha gerada `XC5rD1kuO4thTnVPynD6WAx9PGaD6ibz` — colocar no Vaultwarden quando retomar
- [ ] Merge da branch `claude/migrate-looker-supabase-1DHBz` em `main` — só após Fase 4 validada

### 🤝 Eduardo Tebaldi (dono do Pingolead)

- [ ] Confirma que **`crm_deals`** continua sendo a fonte canônica de leads/deals/vendas da operação Young? (21.898 linhas, ativo)
- [ ] Os enums `status` e `qualificacao` têm quais valores hoje? (libera a refinação das fórmulas sem precisar rodar query)
- [ ] Existem tabelas de marketing/ads em produção em algum outro schema/projeto que eu não vi? (se sim, reabre possibilidade de Looker 100% Postgres)
- [ ] Confirma que `crm_tasks.titulo` diferencia agendamento vs visita? (a taxa de funil depende disso)
- [ ] A role `looker_reader` criada no banco é aceitável? Se preferir, a gente recria com nome padronizado da sua convenção

### 📊 Caroline (account/ops Young)

- [ ] O dashboard Looker atual é o **único relatório ativo** pra Young ou tem outras instâncias que precisam migrar junto?
- [ ] Lista de stakeholders que precisam ter acesso ao Looker novo (para replicar permissões do antigo)
- [ ] O report antigo pode ser marcado `[DEPRECATED]` após cutover ou precisa manter funcional em paralelo por X dias?
- [ ] A planilha Google Sheets que alimenta hoje pode ser arquivada, ou continua como fonte única de ads?

---

## Como retomar

Quando voltar a essa missão (semana que vem, próximo sprint, quando fizer sentido), qualquer pessoa (Claude, Buzz, humano) consulta:

1. **`agent_context`** (Supabase ftctmseyrqhckutpfdeq) — key `young.pingostudio.looker_migration` — estado, decisões, bloqueios
2. **`apps/clientes/04_young/pingostudio/HANDOFF.md`** — cola-pronto de comandos, senha gerada, links de assets
3. **`FIELD_MAPPING.md`** — plano de remap pronto pra Fase 4
4. **Este relatório** — status executivo + checklist de validação por stakeholder

Caminho mais curto pra destrave técnico quando retomar:
- Adicionar MCP `supabase-young` na config da Claude Code cloud (10 min)
- Rodar enum discovery via MCP (1 min)
- Aplicar `GRANT looker_reader TO authenticator` se pooler falhar (30s)
- Fase 4 manual no Looker Studio (2–3h)

**Ou delegar** ao Buzz diretamente via Telegram, referenciando `openclaw/memory/2026-04-13-pingostudio-264-buzz-task.md`.

---

## Balanço

**Entregue:** 70% do trabalho de plataforma + 100% do planejamento da Fase 4.
**Falta:** 30% de plataforma (validação pooler + enum values) + 100% do trabalho manual no Looker.
**Custo até aqui:** ~6 horas ativas de Claude Code; bloqueios principais foram limites de sandbox/MCP, não complexidade técnica.
**Valor gerado mesmo incompleto:**
- Descoberta do gap de ads (economiza surpresa em produção)
- Infraestrutura do `looker_reader` pronta e testada
- Plano de remap versionado — qualquer executor continua de onde paramos
- Protocolo Hive Mind aplicado (primeira vez com `agent_context` + `adv_csuite_memory` para missão de cliente)
