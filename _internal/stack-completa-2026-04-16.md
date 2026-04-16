# Stack Completa — Adventure Labs
**Data:** 2026-04-16 | **Fontes:** ACORE Constitution, Wiki VPS, Claude Memory, Auditoria ao vivo
**Status:** Levantamento consolidado (VPS + monorepo + cloud + local)

---

## 1. Infraestrutura & Hospedagem

### VPS (Produção principal)
| Item | Detalhe |
|------|---------|
| Provedor | Hostinger VPS KVM2 |
| IP | 187.77.251.199 |
| OS | Ubuntu 24.04 LTS |
| Disco | 96 GB — 46G usados (47%) |
| RAM | 7.8 GB — 4.9G usados (swap: 973M/2G ativo) |
| CPU Load | ~0.3 avg — saudável |
| Uptime atual | 15 dias, 19h |
| Acesso | SSH root + Tailscale |

### Cloud & SaaS de Hospedagem
| Serviço | Uso | Plano |
|---------|-----|-------|
| Vercel | Deploy Next.js (5 projetos ativos) | Hobby (free) |
| Supabase | Banco + Auth + Storage (múltiplos projetos) | Free tier + eventual Pro |
| GitHub | Monorepo `adventurelabsbrasil/adventure-labs` | Free |
| Registro.br | Domínios (adventurelabs.com.br, etc.) | Pago |

### Rede & Segurança
| Item | Detalhe |
|------|---------|
| Reverse Proxy | Nginx + SSL Let's Encrypt (Caddy no Plane) |
| VPN Mac | Tailscale |
| Secrets | Infisical self-hosted (`vault.adventurelabs.com.br`) |
| Senhas | Vaultwarden/Bitwarden (`pw.adventurelabs.com.br`) |
| Monitor | Uptime Kuma (`status.adventurelabs.com.br`) |

---

## 2. Docker Stack — 20 Containers Ativos

### Adventure Stack (serviços próprios)
| Container | Serviço | Porta host | Status |
|-----------|---------|-----------|--------|
| adventure-n8n | n8n automações | 5678 | ✅ healthy |
| adventure-evolution | Evolution API (WhatsApp) | 8081 | ✅ healthy |
| adventure-infisical | Infisical secrets | 8082 | ✅ healthy |
| adventure-metabase | Metabase BI | 3000 | ✅ healthy |
| adventure-vaultwarden | Vaultwarden senhas | 3002 | ✅ healthy |
| adventure-postgres | PostgreSQL compartilhado | 5432 (interno) | ✅ |
| adventure-uptime | Uptime Kuma | 3001 | ✅ healthy |
| adventure-infisical-redis | Redis (Infisical) | 6379 (interno) | ✅ |

### Plane Stack (gestão de projetos)
| Container | Status |
|-----------|--------|
| plane-app-web-1 | ✅ healthy |
| plane-app-api-1 | ✅ |
| plane-app-admin-1 | ✅ healthy |
| plane-app-space-1 | ✅ healthy |
| plane-app-live-1 | ✅ |
| plane-app-worker-1 | ✅ |
| plane-app-beat-worker-1 | ✅ |
| plane-app-proxy-1 | ✅ (porta 3003) |
| plane-app-plane-db-1 | ✅ |
| plane-app-plane-mq-1 | ✅ (RabbitMQ) |
| plane-app-plane-redis-1 | ✅ |
| plane-app-plane-minio-1 | ✅ (MinIO) |

---

## 3. Stack Tecnológica (A.C.O.R.E. Baseline v1.0 — Mar/2026)

| Camada | Ferramenta atual | Decisão |
|--------|-----------------|---------|
| Frontend | Next.js + Tailwind | Deploy Vercel (multi-tenant) |
| Backend/Bots | n8n + Evolution API | VPS Hostinger via Docker |
| Banco/Auth | Supabase | Postgres + Auth + pgvector + RLS rigoroso |
| Cérebro | OpenClaw / OpenRouter | Routing: Gemini 3.1 Pro → Claude Sonnet → GPT-5.4 |
| Secrets | Infisical (self-hosted) | Injeção centralizada de .env |
| Monorepo | pnpm workspaces | GitHub Actions CI/CD |
| Deploy | Vercel (apps) + SSH scripts (VPS) | GitOps parcial |

### Filosofia (ACORE v1.0)
1. **Multi-tenancy first** — nenhuma tabela sem `tenant_id`
2. **GitOps over SSH** — código entra via GitHub → não só via SSH
3. **IA-First** — Claude Code / Cursor como desenvolvedor principal; humano como arquiteto

---

## 4. Produtividade & Gestão

| Ferramenta | Uso | Status |
|------------|-----|--------|
| Plane (self-hosted) | SSOT de projetos e tarefas | ✅ Ativo (substituiu Asana) |
| Google Workspace | 2 contas pagas + IA Gemini | ✅ |
| Omie ERP | Financeiro/NF | ✅ |
| Registro.br | Domínios | ✅ |
| GitHub | Código + CI/CD + wiki | ✅ |

---

## 5. IA, APIs e Modelos

### APIs com faturamento ativo
| Provedor | Uso | Nota |
|----------|-----|------|
| Anthropic API | Claude Code + agentes VPS | Faturamento ativo |
| OpenAI API | GPT-5.4 fallback | Faturamento ativo |
| Google Gemini API | Gemini 3.1 Pro primary | Faturamento ativo |
| OpenRouter | Roteamento de modelos no OpenClaw | Faturamento ativo — **CONFIRMADO em uso** |
| ElevenLabs | TTS/voz (pago) | VoiceId `wknp9mNGQgmlPWf9VpAd` |
| Groq | Fallback LLM (ultra-rápido) | API Key ativa |
| Mistral | Fallback + embeddings (`mistral-embed`) | API Key ativa |
| Cerebras | Fallback (Qwen 3) | API Key ativa |
| Together.ai | Fallback (Llama 3.3 70B) | API Key ativa |
| DeepSeek | Fallback | API Key ativa |
| Jina Reader | Web scraping/leitura | API Key ativa |
| Manus AI | — | API Key ativa (uso a confirmar) |

### Ferramentas de desenvolvimento IA
| Ferramenta | Plano | Uso |
|------------|-------|-----|
| Claude Code Max | Pago | Dev principal + auditoria |
| Cursor AI Pro | Pago | IDE + agente de código |
| Ollama (local Mac) | Free | Modelos locais (Macbook Air M4) |

### OpenClaw / Buzz (Gateway IA)
| Item | Detalhe |
|------|---------|
| Processo | `openclaw-gateway` (bare process, não systemd) |
| Porta | 18789 (loopback VPS) |
| Modelo primary | `google/gemini-3.1-pro-preview` |
| Fallback 1 | `openrouter/anthropic/claude-sonnet-4-6` |
| Fallback 2 | `openai/gpt-5.4` |
| Canais ativos | Telegram (`@ceo_buzz_Bot`, chat 1069502175) |
| Canal WhatsApp | Configurado mas `enabled: false` |
| Workspace VPS | `/root/.openclaw/workspace/` |
| Plugins carregados | 56 (0 erros) |
| Skills SAG | 19 elegíveis |

---

## 6. Agentes Autônomos — Hivemind

### C-Suite (crontab VPS)
| Agente | Persona | Cron (UTC) | BRT | Frequência |
|--------|---------|-----------|-----|------------|
| csuite-davinci | Da Vinci (CINO) | `27 10 * * 1-5` | 7h seg-sex | Diário |
| csuite-ohno | Ohno (COO) | `3 11 * * 1-5` | 8h seg-sex | Diário |
| csuite-ogilvy | Ogilvy (CMO) | `7 12 * * 1-5` | 9h seg-sex | Diário |
| csuite-buffett | Buffett (CFO) | `13 11 * * 1` | 8h seg | Semanal |
| csuite-torvalds | Torvalds (CTO) | `17 11 * * 3` | 8h qua | Semanal |
| csuite-cagan | Cagan (CPO) | `23 11 * * 5` | 8h sex | Semanal |

### Gerentes de Conta
| Agente | Cliente | Cron (UTC) | BRT |
|--------|---------|-----------|-----|
| gerente-rose | Rose Portal Advocacia | `33 10 * * 1-5` | 7h seg-sex |
| gerente-young | Young Empreendimentos | `11 12 * * 2` | 9h ter |
| gerente-benditta | Benditta Marcenaria | `19 12 * * 3` | 9h qua |

### Jobs Operacionais
| Job | Cron | O que faz |
|-----|------|-----------|
| hivemind-heartbeat | `17 */4 * * *` | Monitor containers críticos → Telegram se falha |
| backup-vps | `30 6 * * *` | Backup VPS → Google Drive (2.1G) |
| mercadopago-sync | `*/30 * * * *` | Sync incremental MP → Supabase `adv_mp_payments` |
| sync_analytics_local | `0 */2 * * *` | Sync analytics PF + Adventure (1.537 registros) |
| mufasa_buzz.py | `0 11 * * *` | Script Python (11h UTC / 8h BRT) |

**Scripts:** `/opt/adventure-labs/scripts/agents/` (VPS)
**Dispatcher:** `/opt/adventure-labs/scripts/adventure-agent.sh`

### Skills do C-Suite (Admin — apps/core/admin/agents/skills/)

**CTO (Torvalds):** supabase-migrations, code-review, monorepo-pnpm, api-routes, ui-components, cto-pauta-issues-diaria, cto-executar-item-pauta, rls-tenant, github-specialist

**COO (Ohno):** sla-prazos-entrega, fluxo-vida-projeto, kanban-board-checklist, google-drive-adventure, google-workspace-inspector, asana-csuite-ingest

**CMO (Ogilvy):** relatorio-kpis-campanhas, copy-brief-campanha, analise-performance-canal, referencias-ideias-editorial, benchmark-martech-tendencias, benchmark-concorrentes-adventure, benchmark-dashboards-bi-automacoes, benchmark-trend-topics-conteudo, benchmark-martech-criatividade-inovacao, benchmark-educacao-novidades-martech

**CFO (Buffett):** one-pager-financeiro, reconciliacao-custos, sueli-conciliacao-bancaria, contas-a-pagar-receber, metricas-saas-agencia, cronos-monitor-custos

**CPO (Cagan):** escopo-projeto-checklist, briefing-cliente-template, dashboard-kpis-especificacao, benchmark-mercado-setor-cliente, benchmark-concorrencia-setor, benchmark-tendencias-por-nicho, rose-portal-advocacia-contexto, benditta-marcenaria-contexto, young-empreendimentos-contexto

---

## 7. Apps & Produtos

### Apps em Produção
| App | Tipo | Repo path | Deploy | Cliente |
|-----|------|-----------|--------|---------|
| Admin (ACORE) | internal | `apps/core/admin` | Vercel | Interno |
| CRM Adventure | saas | `apps/core/adventure` | Vercel | Interno |
| Landing ELITE | landing | `apps/core/elite` | Vercel | Interno |
| LideraSpace | saas | `apps/labs/lideraspace` | Vercel | Lidera |
| Lidera DRE | app | `apps/clientes/01_lidera/lidera-dre` | — | Lidera |
| Rose Portal Advocacia | app | `apps/clientes/02_rose/roseportaladvocacia` | — | Rose |
| Young Talents | saas | `apps/clientes/04_young/young-talents` | — | Young |
| Ranking Vendas | app | `apps/clientes/04_young/ranking-vendas` | — | Young |
| Benditta LP | landing | `apps/clientes/05_benditta/benditta/app` | Vercel | Benditta |
| Xpostr | tool | `apps/labs/xpostr` | Vercel | Interno |

### Supabase — Projetos
| Projeto | ID ref | Org | Uso |
|---------|--------|-----|-----|
| Adventure Labs (principal) | `ftctmseyrqhckutpfdeq` | adventurelabs | Tabelas `adv_*` — agentes, C-Suite, MP, analytics |
| Lidera | `xiqlaxjtngwecidyoxbs` | contato@somoslidera.com.br | LMS (lms_*), autenticação |
| Admin | (sub-projeto) | — | `adv_apps`, `adv_clients`, `adv_tasks` |

### Supabase — Tabelas principais (adv_*)
| Tabela | Uso |
|--------|-----|
| `adv_csuite_memory` | Memória diária dos agentes C-Suite |
| `adv_tasks` | Tasks ativas (SSOT operacional) |
| `adv_mp_payments` | Pagamentos Mercado Pago (sync incremental) |
| `adv_ads_daily_metrics` | Métricas diárias de ads (Meta/Google) |
| `adv_apps` | Catálogo de apps e ativos |
| `adv_clients` | Clientes cadastrados |
| `adv_projects` | Projetos |

---

## 8. Marketing & Ads

| Plataforma | Uso | Status |
|------------|-----|--------|
| Meta Business/Ads | Campanhas Rose, Young, Benditta | ✅ Ativo |
| Google Ads | Conta admin + clientes | ✅ Ativo |
| TikTok Business/Ads | — | Cadastrado |
| LinkedIn Business/Ads | — | Cadastrado |
| Instagram Business | — | Ativo |
| Google Analytics 4 | Tracking LP/apps | ✅ |
| GTM (Google Tag Manager) | Tracking + conversões | ✅ |

---

## 9. Automações & Integrações

### n8n (flow.adventurelabs.com.br)
| Workflow | Integração | Status |
|----------|-----------|--------|
| Andon (Asana ingest) | Asana → knowledge → C-Suite | Documentado |
| WhatsApp worker | Evolution API → n8n → Admin | Configurado |
| Google Drive / Workspace | Google APIs → skills | Ativo |
| Backup VPS | rclone → Google Drive | ✅ Rodando diário |
| Resumo diário | Agentes → Telegram/WhatsApp | Parcial |
| Sueli conciliação bancária | n8n + Buffett | Documentado |
| mercadopago-sync | MP API → Supabase | ⚠️ Bug no REPO_ROOT |

### Integrações de terceiros (APIs ativas no .env VPS)
`ASANA_PAT` · `META_SYSTEM_USER_TOKEN` · `GOOGLE_ADS_CUSTOMER_ID` · `GOOGLE_ADS_DEVELOPER_TOKEN` · `GOOGLE_CLIENT_ID/SECRET` · `GOOGLE_SA_COMANDOESTELAR_KEY` · `EVOLUTION_API_KEY` · `PLANE_API_KEY` · `METABASE_API_KEY` · `TELEGRAM_BOT_TOKEN`

---

## 10. Devices & Ambiente Local

| Device | Spec | Uso |
|--------|------|-----|
| MacBook Air M4 | 16GB RAM | Dev principal — Claude Code, Cursor, Ollama local |
| iPhone 15 Pro Max | — | Telegram Founder, monitoramento |
| VPS Hostinger | 8GB RAM / 96GB disk | Produção total |

### Ferramentas Mac
| Ferramenta | Versão/Status |
|------------|---------------|
| Claude Code Max | Ativo |
| Cursor AI Pro | Ativo |
| Ollama | Local (modelos a confirmar) |
| Tailscale | VPN ativa → VPS |
| pnpm | Gerenciador de pacotes padrão |
| gh CLI | GitHub CLI configurado |

---

## 11. Orçamento Baseline (ACORE v1.0 — referência Mar/2026)

| Item | USD/mês | BRL/mês |
|------|---------|---------|
| VPS Hostinger | $10 | R$ 50 |
| Supabase Pro | $25 | R$ 125 |
| Cursor AI Pro | $20 | R$ 100 |
| ElevenLabs | $5 | R$ 25 |
| Vercel (Hobby = free) | $0 | — |
| **Subtotal fixo** | **$60** | **R$ 300** |
| APIs LLM (variável) | ~$20–50 | R$ 100–250 |
| **Total estimado** | **~$80–110** | **R$ 400–550** |

> *Cotação referência: US$ 1 = R$ 5,00 (Mar/2026). Claude Code Max não incluído acima — plano separado.*

---

## 12. Gaps Identificados (levantamento Chaves / Claude Memory)

| Gap | Prioridade | Status atual |
|-----|-----------|-------------|
| CRM robusto | Alta | Parcial — `apps/core/adventure` em produção |
| Real-time dashboards | Média | Metabase ativo, mas sem real-time |
| Wiki interno estruturado | Alta | Wiki VPS existe mas módulos M01–M12 vazios |
| Roteador de IAs (routing inteligente) | Alta | ✅ **RESOLVIDO** — OpenClaw routing configurado em 2026-04-16 |
| Memória de longo prazo (pgvector/RAG) | Alta | pgvector disponível no Supabase, não implementado |
| ElevenLabs no Telegram (TTS) | Baixa | API key ativa, integração pendente |
| Infisical integrado ao hivemind | Alta | Scripts de agentes leem .env direto (Infisical pendente) |
| Rotação de credenciais VPS | Crítica | `ANTHROPIC_API_KEY`, `TELEGRAM_BOT_TOKEN` — aguardando Infisical |

---

## 13. Issues Abertas & Pendências Técnicas

| # | Issue | Impacto | Responsável |
|---|-------|---------|-------------|
| 🔴 | Rotação chave Supabase Lidera (DEDEF961 HS256 exposta no git) | Segurança — bloqueia PR #23 | **Rodrigo** (manual) |
| 🔴 | mercadopago-sync.sh com REPO_ROOT errado — falha a cada 30min | Sueli/Buffett sem dados MP | Claude (pode corrigir agora) |
| 🔴 | hivemind-heartbeat buscando `adventure-plane` (não existe) — alertas falsos | Ruído no Telegram | Claude (pode corrigir agora) |
| 🟡 | 5 `package-lock.json` proibidos (governance) bloqueando Security Scan | PRs #22, #26 bloqueadas | Claude (pode corrigir agora) |
| 🟡 | Supabase memory write falhando — agentes C-Suite sem persistência de memória | Degradação de contexto | Investigar |
| 🟡 | Vercel rate limit (Hobby) — PRs #22, #26 aguardando reset | Deploy bloqueado ~18h | Automático |
| 🟡 | PR #23 aguardando rotação de chave para merge | CI bloqueado | Após rotação |
| 🟡 | Main local 2 ahead / 9 behind origin/main | Git drift | Push pendente |
| 🟡 | Módulos M01–M12 do wiki corporativo (VPS) vazios | Documentação incompleta | Backlog |

---

*Fontes consolidadas: ACORE_CONSTITUTION.md (Mar/2026), wiki VPS `/opt/adventure-labs/wiki/`, `.claude/memory/project_stack_inventory.md`, auditoria ao vivo 2026-04-15/16.*
*Próxima revisão recomendada: 2026-05-01*
