# Handoff — Operação Linha Essencial Digital
**Missão:** Operação Linha Essencial Digital
**Data:** 15/04/2026
**Executor:** Claude Code (claude-sonnet-4-6 → claude-opus-4-6 no final)
**Duração estimada:** ~8 horas (14h00 → 22h30 BRT)
**Tokens estimados:** ~400k–600k (sessão longa com muitos ciclos de debug de API)
**Branch:** `claude/benditta-meta-ads-campaign-cqkbW`
**Commits desta sessão:** 12 commits

---

## Para o C-Suite e Buzz

Esta missão saiu de **zero estrutura de campanha** e chegou a **campanha no ar com budget rodando**, estrutura de conhecimento completa e scripts de automação versionados. Abaixo o estado real de cada entrega.

---

## O que foi feito

### 1. Estrutura de Conhecimento (knowledge base)

Criados/atualizados em `knowledge/04_PROJETOS_DE_CLIENTES/benditta/`:

| Documento | O que contém |
|-----------|-------------|
| `CAMPANHA_META_LINHA_ESSENCIAL_FASE2_2026-04.md` | Estratégia completa da campanha para validação com a cliente |
| `CONCEITO_LINHA_ESSENCIAL.md` | Tagline, persona "Otimizador de Resultados", vocabulário de marca, processo 4 etapas |
| `PERFIL_COMPORTAMENTAL_LISA.md` | SSOT de comunicação com Lisa (fragmentado, curto, "Oie/Show/Boa") |
| `MENSAGEM_WHATS_QUINZENA_ABR_LISA_2026-04.md` | Mensagem calibrada para quinzena 2 abr / quinzena 1 mai |
| `BRIEFING_ADS_MANUAL_IGOR_FASE2_2026-04.md` | Briefing completo para Igor/Mateus criarem os 2 ads no Gerenciador |
| `MISSAO_LINHA_ESSENCIAL_META_FASE2_HANDOFF.md` | Este documento |

### 2. Scripts de automação

**`scripts/meta-ads/create_campaign_benditta_fase2.py`**
- Cria campanha CBO completa via Meta Marketing API v20
- Upload de vídeos do Drive → Meta (com cache de IDs)
- Criação de formulários nativos MQL (6 campos qualificadores)
- 2 ad sets com geo RMPA + Litoral RS, idade 30-45, Instagram only
- 12 commits de fixes iterativos (erros de API documentados no histórico)
- Flags: `--dry-run`, `--only-forms`, `--search-geo CIDADE`

**`scripts/meta-ads/monitor_meta_insights.py`**
- Coleta semanal: gasto, leads, CPL, alcance, cliques
- Relatório Telegram via Buzz (chat 1069502175)
- Suporta benditta/young/rose
- **Ainda não adicionado ao crontab** (pendente)

### 3. Campanha Meta criada (parcialmente)

**Conta:** `act_763660518134498` — Benditta Marcenaria

| Item | ID | Status |
|------|----|--------|
| Vídeo VD03 (Arquitetos) | `1483771220427043` | ✅ |
| Vídeo VD04 (Cliente Final) | `962407639593956` | ✅ |
| Formulário Cliente Final | `1428224111958811` | ✅ |
| Formulário Arquitetos | `1537753711101879` | ✅ |
| Campanha CBO (OUTCOME_LEADS) | `120241798663620353` | ✅ **ACTIVE** |
| Ad Set — Cliente Final | `120241798663800353` | ✅ **ACTIVE** |
| Ad Set — Arquitetos | `120241798664090353` | ✅ **ACTIVE** |
| Ad VD04 — Cliente Final | `120241798812150353` | ✅ **ACTIVE** |
| Ad VD03 — Arquitetos | `120241798722960353` | ✅ **ACTIVE** |

**Geo final (confirmado via API):** Porto Alegre +40km + Capão da Canoa +40km (Litoral Norte RS)

**Endpoints de insights para automação:**
```
# Campanha
GET /120241798663620353/insights?fields=impressions,reach,clicks,spend,actions

# Por ad set
GET /120241798664090353/insights?fields=impressions,spend,actions   # Arquitetos
GET /120241798663800353/insights?fields=impressions,spend,actions   # Cliente Final

# Por anúncio
GET /120241798722960353/insights?fields=impressions,spend,actions   # VD03
GET /120241798812150353/insights?fields=impressions,spend,actions   # VD04

# Leads (action_type: onsite_conversion.lead_grouped)
GET /120241798663620353/insights?fields=actions&action_breakdowns=action_type
```

**Budget:** R$50/dia total · Período: 17/04 → 30/04/2026 · Total previsto: ~R$650

---

## Problemas encontrados e resolvidos

| Problema | Causa | Fix |
|----------|-------|-----|
| Nomes de vídeo errados | Script esperava "BENDITTA 3", Drive tem "BEN_VD_03" | Corrigido no script |
| Page ID errado | `61585089129277` é o ID da URL do Facebook, não da Graph API | Correto: `968517269687411` |
| `LEAD_GENERATION` inválido | Meta migrou para ODAX | `OUTCOME_LEADS` + `destination_type: ON_AD` |
| `follow_up_action_url` ausente | Campo obrigatório no form | Adicionado |
| `leadgen_form_id` no promoted_object | Inválido com OUTCOME_LEADS | Removido — form só no creative |
| `targeting_automation` fora do lugar | Precisa estar dentro do JSON de targeting | Movido |
| Geo targeting errado | City keys antigos apontavam para Taiwan/China | Keys corretos: Porto Alegre `264859`, Torres `272663` |
| App em modo desenvolvimento | AdventureLabs app (ID `757053927263543`) não publicado | **Pendente resolução** — Business Verification em análise |

---

## Pendências imediatas

### ✅ Anúncios
- Criados manualmente por **Rodrigo** no Gerenciador em 15/04/2026
- Igor participou da estratégia inicial (documento de briefing) e atendimento, não da execução técnica
- Campanha pronta para ativação

### 🟡 Meta (sistema)
- Business Verification da Adventure Labs em análise (~2 dias úteis)
- Quando aprovada: script consegue criar tudo end-to-end sem intervenção manual

### 🟡 VPS (Rodrigo ou CTO)
- Adicionar cron do `monitor_meta_insights.py` ao crontab:
  ```
  0 10 * * 3 cd /opt/adventure-labs && python3 scripts/meta-ads/monitor_meta_insights.py benditta
  ```

---

## Próximo ciclo — Automações Benditta (planejado)

Prioridade definida com Rodrigo ao final da sessão:

1. **Lead em tempo real** — Meta Webhook → n8n → WhatsApp Laís Lima + Supabase `adv_leads`
2. **Monitor semanal** — cron `monitor_meta_insights.py` ativo
3. **gerente-benditta** — enriquecer com dados reais do Supabase (leads, CPL)
4. **Rotação de criativos** — quando app verificado, automatizar pausa/ativação via performance

---

## Contexto técnico relevante para próximas sessões

- **Token do sistema Meta:** `META_SYSTEM_USER_TOKEN` em `/opt/adventure-labs/.env` na VPS
- **App ID Meta:** `757053927263543` (AdventureLabs, em verificação)
- **Page ID:** `968517269687411` (Graph API ID real da Benditta)
- **Business ID:** `1159646178468576`
- **Drive folder vídeos:** ID `128YsEU3UrbBfM4v-7IMnlOD0_AI969BO`
- **IDs de vídeo cacheados:** `scripts/meta-ads/benditta_campaign_ids.json` na VPS (gitignored)
- **WA comercial Laís Lima:** `5551998252983`
- **WA financeiro Angélica:** `5551984641841`

---

## Decisões estratégicas registradas

1. **Formulário nativo** (não WhatsApp direto) — filtro MQL com orçamento declarado antes do contato
2. **Targeting amplo** (geo+idade sem interests) — Meta otimiza melhor para leads com budget pequeno
3. **2 públicos separados** — Cliente Final (VD04, 30-45y, residencial) e Arquitetos (VD03, profissionais)
4. **Verificação Business Meta iniciada** — desbloqueará automação total via API

---

_Gerado ao final da sessão Claude Code em 15/04/2026._
_Próxima ação recomendada: Igor ativa campanha → monitor cron → planejar n8n webhook._
