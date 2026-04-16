# HYDRA — Plano de Implementação do Venture Studio Engine

> Gerado em: 2026-04-16 | Versão: 0.1.0
> Branch: `claude/venture-studio-engine-08uqS`

---

## Identidade do Projeto

**Nome:** HYDRA — Hybrid Revenue Development and Automation
**Tese Central:** O HYDRA opera como um account manager de IA que gerencia campanhas de tráfego pago para PMEs brasileiras com qualidade de agência a 60% do custo humano. A Adventure Labs já é o MVP vivo — basta produtizar e vender.

---

## Arquitetura de Agentes

```
┌───────────────────────────────────────────────────────────────┐
│                     main_hydra.py                             │
│                  (Orquestrador CLI)                           │
│  --phase scout | strategist | builder | audit | full          │
└───────────────┬───────────────────────────────┬───────────────┘
                │                               │
    ┌───────────▼───────────┐     ┌─────────────▼──────────────┐
    │   🔭 Scout Agent      │     │   🛡️ Auditor Agent         │
    │   (O Olheiro)         │     │   (O Guardião)             │
    │                       │     │                            │
    │ • Braindump reader    │     │ • LGPD compliance          │
    │ • adv_ideias (RO)     │     │ • Financial risk check     │
    │ • adv_csuite_memory   │     │ • Ethics/CONAR check       │
    │ • LLM enrichment      │     │ • Approve/Veto/Conditions  │
    └───────────┬───────────┘     └────────────────────────────┘
                │                          ▲       ▲
    ┌───────────▼───────────┐              │       │
    │   🧠 Strategist Agent │──── audit ───┘       │
    │   (O Cérebro)         │                      │
    │                       │                      │
    │ • MCDA scoring        │                      │
    │ • 5 modelos avaliados │                      │
    │ • Plano 90 dias       │                      │
    │ • Seleção do winner   │                      │
    └───────────┬───────────┘                      │
                │                                  │
    ┌───────────▼───────────┐                      │
    │   🏗️ Builder Agent    │──── audit ───────────┘
    │   (O Construtor)      │
    │                       │
    │ • SQL schema          │
    │ • Landing page        │
    │ • Outreach templates  │
    │ • n8n workflow spec   │
    │ • Infra checklist     │
    │ • Pivot protocol      │
    └───────────────────────┘
```

### Pipeline Completo (`--phase full`):

```
Scout → Strategist → Auditor(strategy) → Builder → Auditor(build) → Report
```

---

## Modelos de Negócio Avaliados (MCDA)

| # | Modelo | Score | Custo | Dias p/ Receita | MRR 90d |
|---|--------|-------|-------|-----------------|---------|
| 1 | **Hybrid AAAS** (Account Manager as a Service) | **9.60** | R$ 100 | 3 dias | R$ 105.000 |
| 2 | Agentes de Serviço B2B | 8.45 | R$ 120 | 5 dias | R$ 45.000 |
| 3 | Infoprodutos Dinâmicos | 6.95 | R$ 80 | 7 dias | R$ 8.000 |
| 4 | Micro-SaaS Função Única | 7.30 | R$ 150 | 14 dias | R$ 15.000 |
| 5 | Comunidades Gamificadas | 4.90 | R$ 200 | 30 dias | R$ 25.000 |

**Pesos MCDA:** Velocidade (30%) | Custo (20%) | Automação (25%) | Escala (15%) | Stack Fit (10%)

**Vencedor: Hybrid AAAS** — Score 9.60/10, custo R$ 100, receita em 3 dias.

---

## A Rota do Primeiro Real (7 Dias)

| Dia | Ação | Custo | Output |
|-----|------|-------|--------|
| 1 | Landing page HYDRA no Vercel + WhatsApp Business | R$ 0 | LP no ar |
| 2 | Lista de 50 prospects aquecidos (ex-contatos, referências, LinkedIn) | R$ 0 | Pipeline ativo |
| 3-4 | Abordagem via WhatsApp com pitch de 3 linhas + link para demo | R$ 0 | 5-10 demos agendadas |
| 5 | Demo de 30min mostrando reports reais da Adventure Labs | R$ 0 | Proposta enviada |
| 6 | Follow-up e fechamento do primeiro contrato | R$ 0 | **Contrato assinado: R$ 2.500-3.500** |
| 7 | Onboarding do cliente #1, acesso às contas de ads, primeiro relatório | R$ 50 (API) | Cliente ativo |

**Custo total do MVP:** ~R$ 100 (API costs + infra mínima)
**Saldo preservado:** R$ 900 para escala

---

## Plano de 90 Dias

### Fase 1: MVP e Primeiro Cliente (Dias 1-7)
- **Meta:** 1-2 contratos fechados → MRR R$ 5.000
- **Ações:**
  1. Criar landing page HYDRA no Vercel (1 dia, R$ 0)
  2. Definir pacotes: Starter R$ 2.500 | Pro R$ 3.500 | Agency R$ 5.000
  3. Ativar lista de 50 prospects via WhatsApp (script de 3 linhas)
  4. Realizar 5-10 demos mostrando reports reais da Adventure Labs
  5. Fechar primeiro contrato e onboarding em < 24h
- **Métricas:** demos_realizadas, propostas_enviadas, mrr_fechado

### Fase 2: Tração (Dias 8-30)
- **Meta:** 8 clientes ativos → MRR R$ 22.000
- **Ações:**
  1. Automatizar onboarding via n8n
  2. Criar sequência de follow-up automático (OpenClaw/Buzz)
  3. Ativar canal de indicações (comissão 10%)
  4. Publicar primeiros cases no LinkedIn
  5. Testar campanhas de aquisição pagas (R$ 500, ROI mínimo 5x)
- **Métricas:** churn_rate, nps_clientes, custo_de_aquisicao

### Fase 3: Aceleração (Dias 31-60)
- **Meta:** 20 clientes ativos → MRR R$ 55.000
- **Ações:**
  1. Lançar programa de parceiros (agências white-label)
  2. Criar conteúdo de autoridade: posts + vídeos curtos com resultados
  3. Automação 100% de relatórios e alertas (n8n + Supabase)
  4. Escalar aquisição paga (R$ 3.000/mês, ROI mínimo 10x)
  5. Contratar 1 assistente de suporte (part-time, R$ 1.500/mês)
- **Métricas:** ltv_medio, nps, receita_por_agente, autonomia_pct

### Fase 4: Escala R$ 100k (Dias 61-90)
- **Meta:** 35 clientes ativos → MRR R$ 105.000
- **Ações:**
  1. Lançar tier 'Agency' para agências revendedoras (R$ 5-10k/mês)
  2. Automação de sales pipeline completo (prospecção → demo → fechamento)
  3. Dashboard de performance em tempo real (Metabase)
  4. Reinvestir 30% do MRR em aquisição
  5. Avaliar hiring de 1 gestor de CS
- **Métricas:** mrr_total, pct_operacoes_autonomas, nps_minimo_8

---

## Redlines (Regras Invioláveis)

1. **Capital:** Nunca gastar > R$ 200 sem sinal de tração confirmado
2. **Legal:** Nunca prometer ROI garantido (violação CONAR + CDC)
3. **LGPD:** Nunca processar dados pessoais sem base legal documentada
4. **Founder:** Máximo 1% do tempo operacional — escalar com agentes
5. **Margem:** Custo de API por cliente ≤ R$ 150/mês (margem mínima R$ 2.350)

## Gatilhos de Pivô

| Gatilho | Timeframe | Ação |
|---------|-----------|------|
| Zero leads qualificados | 48h pós-lançamento | Mudar nicho ou oferta |
| Taxa de fechamento < 10% | Após 20 demos | Revisar pricing/proposta |
| Churn > 15% | Mês 2 | Auditoria de qualidade |

---

## Estrutura de Arquivos

```
project_hydra/
├── main_hydra.py                    # Entry point — python main_hydra.py --phase full
├── __init__.py                      # Package init (v0.1.0)
├── .env.hydra.example               # Template de variáveis de ambiente
├── requirements.hydra.txt           # Dependências Python
├── core/
│   ├── __init__.py
│   ├── config.py                    # Loader de .env.hydra + paths + flags
│   ├── models.py                    # 15+ Pydantic models
│   ├── logger.py                    # Logs rotativos → project_hydra/logs/
│   ├── llm_client.py                # Anthropic SDK + prompt caching + cost tracking
│   ├── supabase_client.py           # Wrapper com hydra_ prefix enforced
│   ├── telegram.py                  # Notificações ao Founder
│   └── budget_tracker.py            # Proteção do capital semente
├── agents/
│   ├── __init__.py
│   ├── base.py                      # BaseAgent abstrato
│   ├── scout.py                     # 🔭 Scout — market research
│   ├── strategist.py                # 🧠 Strategist — MCDA + plano 90d
│   ├── builder.py                   # 🏗️ Builder — artefatos + infra
│   └── auditor.py                   # 🛡️ Auditor — guardrails
├── data/
│   ├── business_models.json         # 5 modelos com scores
│   └── decision_matrix_weights.json # Pesos MCDA + redlines
├── prompts/
│   └── report_template.md           # Template do relatório final
├── sql/
│   └── hydra_schema.sql             # 6 tabelas Supabase com RLS
├── outputs/                         # Relatórios gerados por sessão
└── logs/                            # Logs de execução isolados
```

---

## Batches de Implementação

| Batch | Arquivos | Status |
|-------|----------|--------|
| ~~Pré~~ | core/*.py, data/*.json, agents/{base,scout,strategist}.py | ✅ Completo (12 arquivos, 2.264 linhas) |
| 1 | __init__.py (×3), .env.hydra.example, requirements.hydra.txt | ✅ Completo |
| 2 | sql/hydra_schema.sql, prompts/report_template.md | ⏳ Próximo |
| 3 | agents/builder.py, agents/auditor.py | ⏳ Pendente |
| 4 | main_hydra.py | ⏳ Pendente |

---

## Stack Utilizada (Read-Only da Adventure Labs)

| Componente | Uso no HYDRA | Tipo de Acesso |
|------------|-------------|----------------|
| Supabase | Persistência de estado (hydra_*) + leitura de ideias (adv_*) | Read/Write hydra_, Read-Only adv_ |
| n8n | Workflows de onboarding e automação | Wrapper/spec generation |
| OpenClaw/Buzz | Comunicação com clientes via WhatsApp/Telegram | Integration via API |
| Vercel | Deploy de landing pages | Deploy target |
| Anthropic API | Inteligência dos agentes (com prompt caching) | API client |
| Meta Ads API | Gestão de campanhas dos clientes HYDRA | Read/Write via n8n |
| Google Ads API | Gestão de campanhas dos clientes HYDRA | Read/Write via n8n |
| Metabase | Dashboards de performance | Read-Only |
| Telegram Bot | Notificações ao Founder | Send-Only |

---

## Orçamento Detalhado

| Item | Custo Estimado | Fase |
|------|---------------|------|
| API Anthropic (demos + onboarding) | R$ 50 | Fase 1 |
| Domínio (opcional) | R$ 40 | Fase 1 |
| WhatsApp Business (verificação) | R$ 0 | Fase 1 |
| Vercel (free tier) | R$ 0 | Fase 1 |
| Supabase (free tier) | R$ 0 | Fase 1 |
| **Total MVP** | **R$ 90-100** | **Dia 1-7** |
| Saldo preservado para escala | R$ 900 | Fase 2+ |
