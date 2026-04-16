# Stack Completa — Adventure Labs
**Data:** 2026-04-16 | **Revisão:** v5 (Rodrigo + Commander)
**Fontes:** ACORE Constitution, Wiki VPS, Claude Memory, Auditoria ao vivo, respostas diretas do Founder
**Objetivo:** Referência estratégica para decisões de contratar, escalar ou reduzir stack

---

## 1. Infraestrutura & Hospedagem

### VPS (Produção principal)
| Item | Detalhe |
|------|---------|
| Provedor | Hostinger VPS KVM2 |
| IP | 187.77.251.199 |
| OS | Ubuntu 24.04 LTS |
| Disco | 96 GB — 46G usados (47%) |
| RAM | 7.8 GB — 4.9G usados (swap: 973M/2G ativo ⚠️) |
| CPU Load | ~0.3 avg — saudável |
| Uptime | 15 dias, 19h (em 2026-04-16) |
| Acesso | SSH root + Tailscale |

> ⚠️ **RAM sob pressão:** 20 containers + OpenClaw. Upgrade de RAM ou migração para KVM4 a considerar em escala.

### Cloud & SaaS de Hospedagem
| Serviço | Uso | Plano | Custo |
|---------|-----|-------|-------|
| Vercel | Deploy Next.js (5 projetos ativos) | Hobby (free) | R$ 0 |
| Supabase | Banco + Auth + Storage | Free tier | R$ 0 |
| GitHub | Monorepo `adventurelabsbrasil/adventure-labs` | Free | R$ 0 |
| Registro.br | `adventurelabs.com.br` — 3 anos | Pago | (ver domínios) |
| Cloudflare | DNS legado — status e função exatos não confirmados | ⚠️ Legado | Provavelmente free |

### DNS & Domínios
| Domínio | Titular | Registrador | Observação |
|---------|---------|-------------|------------|
| adventurelabs.com.br | Adventure Labs | Registro.br | Plano 3 anos |
| bendittamarcenaria.com.br | Cliente | — | Gerenciado pela Adventure |
| youngempreendimentos.com.br + hotsites | Cliente | — | Gerenciado pela Adventure |
| somoslidera.com.br | Cliente Lidera | — | Gerenciado pela Adventure |
| capclear.com.br | — | — | Domínio ativo (verificar uso) |
| roseportaladvocacia.com.br | Cliente Rose | — | Gerenciado pela Adventure |

> ⚠️ **Cloudflare:** existe configuração legada. Status real (se é DNS ativo, redirect ou apenas conta vazia) precisa ser auditado. Risco de resolver DNS conflitante com Registro.br.

### Rede & Segurança
| Item | Detalhe | Status |
|------|---------|--------|
| **Nginx** | Reverse proxy VPS — SSL Let's Encrypt, roteamento de subdomínios | ✅ Ativo |
| Tailscale | VPN Mac → VPS (acesso privado sem expor portas) | ✅ |
| Infisical | Self-hosted VPS (`vault.adventurelabs.com.br`) | ✅ Container ativo — **scripts do hivemind ainda leem .env direto, não via Infisical** |
| Vaultwarden | Senhas (`pw.adventurelabs.com.br`) | ✅ |
| Uptime Kuma | Monitor (`status.adventurelabs.com.br`) | ✅ |

> 💡 **Infisical: VPS e cloud são complementares.** A instância self-hosted VPS está ativa. O Infisical Cloud (free tier) poderia sincronizar segredos com Vercel e GitHub Actions sem SSH. Atualmente nenhum dos dois está integrado ao hivemind — gap de segurança (scripts leem `.env` diretamente).

---

## 2. Docker Stack — 20 Containers Ativos

### Adventure Stack
| Container | Serviço | Porta | Status |
|-----------|---------|-------|--------|
| adventure-n8n | n8n automações | 5678 | ✅ healthy |
| adventure-evolution | Evolution API (WhatsApp) | 8081 | ✅ healthy |
| adventure-infisical | Infisical secrets | 8082 | ✅ healthy |
| adventure-metabase | Metabase BI | 3000 | ✅ healthy |
| adventure-vaultwarden | Vaultwarden senhas | 3002 | ✅ healthy |
| adventure-postgres | PostgreSQL compartilhado | 5432 | ✅ |
| adventure-uptime | Uptime Kuma | 3001 | ✅ healthy |
| adventure-infisical-redis | Redis (Infisical) | 6379 | ✅ |

### Plane Stack (gestão de projetos — 12 containers)
Todos os containers `plane-app-*` estão ativos há 7 dias. Inclui: web, api, admin, space, live, worker, beat-worker, proxy, db, mq (RabbitMQ), redis, minio.

> ⚠️ **Plane subutilizado:** infraestrutura de 12 containers rodando 24/7 para uma ferramenta que ainda não tem uso efetivo de tasks/projects/issues. Representa custo real de RAM da VPS.

---

## 3. Stack Tecnológica (ACORE v1.0)

| Camada | Ferramenta | Status |
|--------|-----------|--------|
| Frontend | Next.js + Tailwind | ✅ |
| Backend/Bots | n8n + Evolution API | ✅ self-hosted VPS |
| Banco/Auth | Supabase (Free tier) | ✅ |
| Cérebro IA | OpenClaw / OpenRouter | ✅ routing ativo |
| Secrets | Infisical self-hosted | ✅ (parcialmente integrado) |
| Monorepo | pnpm workspaces + GitHub | ✅ |
| Deploy | Vercel (apps) + SSH scripts (VPS) | ✅ GitOps parcial |

**Filosofia:** Multi-tenancy first · GitOps over SSH · IA-First

---

## 4. Produtividade & Gestão

| Ferramenta | Plano | Custo/mês | Uso real | Status |
|------------|-------|-----------|----------|--------|
| Google Workspace Business Standard | Annual (monthly payment) — 2 licenças atribuídas | $2.20/usuário × 2 = **$4.40 (~R$ 22)** | Email, Drive, Docs, Chat interno, Gemini AI | ✅ Ativo |
| Plane (self-hosted) | Free (self-hosted) | R$ 0 (custo = RAM VPS) | Tentativa de uso, sem monitoramento efetivo | ⚠️ Subutilizado |
| Omie ERP | Pago (só Rose por ora) | A confirmar com Sueli | NF + financeiro. Certificado A3/A1 não integrado | ⚠️ Parcial |
| GitHub | Free | R$ 0 | Código + CI + wiki | ✅ |
| Registro.br | Pago | A confirmar | Domínio principal 3 anos | ✅ |

> **Google Workspace:** 2 contas atribuídas, 0 disponíveis. Plano Standard inclui 150GB Drive/usuário, Meet, Chat, Gemini AI. Se escalar equipe, cada nova conta = $2.20/mês.

---

## 5. IA, APIs e Modelos

### Custos de APIs (referência: ~R$ 247/mês total de APIs variáveis)
> Documentação detalhada existe com Sueli / Buffett / Chaves. OFX e recibos disponíveis para conciliação.

| Provedor | Uso principal | Faturamento | Nota |
|----------|--------------|-------------|------|
| Anthropic API | Agentes VPS (hivemind C-Suite + gerentes) | Variável | Parte dos ~R$ 247 |
| OpenAI API | GPT-5.4 fallback OpenClaw | Variável | Parte dos ~R$ 247 |
| Google Gemini API | Gemini 3.1 Pro primary OpenClaw | Variável | Parte dos ~R$ 247 |
| OpenRouter | Roteamento modelos OpenClaw | Variável | **Confirmado em uso** |
| ElevenLabs | TTS/voz (pago, Starter) | ~$5/mês fixo | VoiceId configurado |
| Groq | Fallback LLM ultra-rápido | Variável (low) | API key ativa |
| Mistral | Fallback + embeddings C-Suite | Variável | `mistral-embed` em uso |
| Cerebras | Fallback Qwen 3 | Variável (low) | API key ativa |
| Together.ai | Fallback Llama 3.3 70B | Variável (low) | API key ativa |
| DeepSeek | Fallback | Variável (low) | API key ativa |
| Jina Reader | Web scraping/leitura | Variável | ⚠️ **Nunca usado** — revogar key |
| Manus AI | Desconhecido | — | ⚠️ **Uso não confirmado** — verificar e revogar se não usar |

> 💡 **Revogar Jina e Manus:** keys ativas sem uso = superfície de ataque desnecessária. Revogar nas respectivas dashboards e remover do openclaw.json.

### Distinção crítica: Claude Code Max vs. Anthropic API
| Item | O que é | Custo | Observação |
|------|---------|-------|------------|
| **Claude Code Max** | Assinatura da ferramenta de dev (IDE assistant, auditoria, automação de código) | **> R$ 1.100/mês** | **Não consome tokens da API** — é produto separado |
| **Anthropic API** | Chamadas diretas de API pelo hivemind VPS | Variável (dentro dos ~R$ 247) | Cobrado por token |

> 💡 São orçamentos distintos e devem ser monitorados separado. Claude Code Max é custo de "desenvolvedor AI" (substitui dev humano). Anthropic API é custo de "operação dos agentes".

### Ferramentas de Desenvolvimento IA
| Ferramenta | Custo/mês | Uso | Status |
|------------|-----------|-----|--------|
| **Claude Code Max** | **> R$ 1.100** | Dev principal + auditoria + automações | ✅ Maior item da stack |
| Cursor AI Pro | ~R$ 100 ($20) | IDE + agente de código | ✅ |
| Ollama (Mac local) | R$ 0 | Modelos locais — vibecoding / fallback offline | ✅ Instalado |

### OpenClaw / Buzz
| Item | Detalhe | Status |
|------|---------|--------|
| Processo | `openclaw-gateway` (VPS, bare process) | ✅ |
| Modelo primary | `google/gemini-3.1-pro-preview` | ✅ |
| Fallbacks | Claude Sonnet 4.6 → GPT-5.4 | ✅ |
| Canal Telegram | `@ceo_buzz_Bot` (chat 1069502175) | ✅ |
| Canal WhatsApp | Evolution API configurado, `enabled: false` | ⚠️ Inativo |
| Plugins | 56 carregados, 0 erros | ✅ |

---

## 6. Agentes Autônomos — Hivemind

### C-Suite (13 jobs crontab VPS)
| Agente | Cron (UTC) | BRT | Freq |
|--------|-----------|-----|------|
| csuite-davinci (CINO) | `27 10 * * 1-5` | 7h seg-sex | Diário |
| csuite-ohno (COO) | `3 11 * * 1-5` | 8h seg-sex | Diário |
| csuite-ogilvy (CMO) | `7 12 * * 1-5` | 9h seg-sex | Diário |
| csuite-buffett (CFO) | `13 11 * * 1` | 8h seg | Semanal |
| csuite-torvalds (CTO) | `17 11 * * 3` | 8h qua | Semanal |
| csuite-cagan (CPO) | `23 11 * * 5` | 8h sex | Semanal |
| gerente-rose | `33 10 * * 1-5` | 7h seg-sex | Diário |
| gerente-young | `11 12 * * 2` | 9h ter | Semanal |
| gerente-benditta | `19 12 * * 3` | 9h qua | Semanal |
| hivemind-heartbeat | `17 */4 * * *` | A cada 4h | Monitor |
| backup-vps | `30 6 * * *` | 3:30 BRT | Diário |
| mercadopago-sync | `*/30 * * * *` | A cada 30min | ⚠️ Bug ativo |
| sync_analytics_local | `0 */2 * * *` | A cada 2h | Ativo |

**Skills mapeadas (~40):** supabase-migrations, code-review, monorepo-pnpm, rls-tenant, github-specialist, sla-prazos, kanban, google-drive-adventure, google-workspace-inspector, relatorio-kpis-campanhas, copy-brief, benchmark (×6), one-pager-financeiro, sueli-conciliacao, metricas-saas, cronos-monitor, escopo-projeto, briefing-cliente, dashboard-kpis, contexto-clientes (×3), e outros.

---

## 7. Apps & Produtos

### Portfólio Ativo
| App | Tipo | Cliente | Deploy | Fase |
|-----|------|---------|--------|------|
| Admin (ACORE) | Internal | Próprio | Vercel | Produção |
| CRM Adventure | SaaS | Próprio | Vercel | Produção |
| Landing ELITE | Landing | Próprio | Vercel | Produção |
| LideraSpace | SaaS LMS | Lidera | Vercel | Produção |
| Lidera DRE | App | Lidera | — | Produção |
| Rose Portal Advocacia | Portal | Rose | — | Produção |
| Young Talents | SaaS | Young | — | Produção |
| Ranking Vendas | App | Young | — | Produção |
| Benditta LP | Landing | Benditta | Vercel | Produção |
| Xpostr | Ferramenta | Interno | Vercel | MVP |

### Supabase — Projetos e Tabelas
| Projeto | Ref | Plano | Uso |
|---------|-----|-------|-----|
| Adventure (principal) | `ftctmseyrqhckutpfdeq` | Free | `adv_*` — agentes, MP, analytics, tasks |
| Lidera | `xiqlaxjtngwecidyoxbs` | Free | `lms_*` — LMS, auth |

> **Supabase:** Free tier suporta 500MB storage e 2 projetos ativos. Com escala de clientes e volume de dados, upgrade para Pro ($25/mês) será necessário. Considerar quando atingir 400MB de storage ou 3º projeto ativo.

---

## 8. Marketing & Ads & Automações

| Plataforma | Clientes | Status |
|------------|---------|--------|
| Meta Business/Ads | Rose, Young, Benditta | ✅ Ativo |
| Google Ads | Rose, Young (admin) | ✅ Ativo |
| Instagram Business | Múltiplos | ✅ |
| TikTok Business/Ads | — | Cadastrado, sem uso ativo |
| LinkedIn Business | — | Cadastrado |
| Google Analytics 4 | LPs e apps | ✅ |
| GTM | LPs e apps | ✅ |
| **Make.com** | Email + Meta Insights | ✅ **1 automação ativa (free)** — descoberto em 2026-04-16 |
| **Agendamento social** | — | ❌ **Não existe** — tudo manual via Meta Business Suite |
| **Email marketing (ESP)** | — | ❌ **Não existe** — gap estratégico |

> 💡 **Make.com free:** 1 automação ativa de email/Meta Insights. Com n8n self-hosted já na VPS, vale migrar essa automação para n8n a médio prazo e concentrar tudo num lugar. Make free tem 1.000 ops/mês e 15 min de polling — bom para começar, pode virar gargalo com escala.

---

## 9. Design & Criativos

| Ferramenta | Plano | Custo | Status | Risco |
|------------|-------|-------|--------|-------|
| Figma | Free | R$ 0 | ✅ Principal (criativos ficam aqui) | Limite de 3 projetos/Free |
| Canva Pro | Emprestado — conta `contato@adventurelabs.com.br` via parceiro Vaqeano | R$ 0 (custo do parceiro) | ✅ Em uso | ⚠️ Depende de terceiro |
| CapCut (pago) | Emprestado da sócia Young | R$ 0 (custo da sócia) | ✅ Em uso | ⚠️ Depende de terceiro |
| Adobe Illustrator | 1 mês pago para trabalho pontual | Pago (descontinuar) | ⚠️ Verificar se está cancelado | Cancelar se ainda ativo |

> ⚠️ **Dependência de licenças emprestadas:** Canva Pro e CapCut são acessados via contas de parceiros. Se a relação com Vaqeano ou sócia Young mudar, acesso é cortado sem aviso. Avaliar contratação própria se uso for frequente (Canva Pro ~R$ 75/mês, CapCut Pro ~R$ 50/mês).
>
> 💡 **Automação de criativos:** interesse identificado em API do Figma ou Canva para automatizar produção. Canva API é mais madura para automação de templates; Figma API permite mais controle mas exige desenvolvimento.

---

## 10. Comunicação

### Interna (equipe)
| Canal | Uso | Status |
|-------|-----|--------|
| WhatsApp grupos | Principal canal interno | ✅ Em uso diário |
| Google Workspace Chat | Tentativa de uso — disponível | 🟡 Subutilizado |
| Plane (tarefas) | Tentativa — sem uso efetivo | ⚠️ Não adotado |
| Telegram | Bot Buzz apenas | ✅ (não usado p/ equipe) |

### Com Clientes
| Canal | Uso |
|-------|-----|
| WhatsApp (individual + grupos) | Principal meio de comunicação com clientes |
| Email | Secundário — Google Workspace |

> ⚠️ **Número pessoal como canal profissional:** `+55 51 99873-0488` (Rodrigo) é o número principal de contato com clientes e operações. Sem chip exclusivo Adventure Labs. Risco: mistura de pessoal/profissional, sem automação de atendimento escalável.
>
> 💡 **Chip Adventure Labs:** Contratar chip dedicado habilitaria: WhatsApp Business API via Evolution API, automações Buzz no WhatsApp, separação profissional/pessoal. Custo: ~R$ 30-50/mês (operadora pré ou pós).

---

## 11. Financeiro & Pagamentos

### Dados Corporativos
| Item | Detalhe |
|------|---------|
| Razão Social | ADVENTURE COMUNICACOES LTDA |
| CNAE Principal | 73.19-0-04 — Consultoria em publicidade |
| CNAEs Secundários | 73.11-4-00 (Agências de publicidade) · 70.20-4-00 (Consultoria em gestão empresarial) |
| Regime Tributário | Lucro Real |
| Sede | Santo Antônio da Patrulha / RS |
| Início da operação | 02/01/2026 |
| Sociedade | Rodrigo Ribas Ferreira (sócio administrador) + Young Empreendimentos (Eduardo Tebaldi) |

> ⚠️ **Young é sócia E cliente.** Eduardo Tebaldi criou o Pingolead e montou n8n. Essa dupla relação exige cuidado na separação de receita de serviço vs. movimentações societárias.

### Bancos PJ
| Banco | Status | Uso |
|-------|--------|-----|
| Sicredi | ✅ Conta principal | OFX disponível para conciliação (jan–mar/2026) |
| Inter | ✅ Ativo | CDB aplicação + operacional |
| C6 Bank | 🟡 Abertura em andamento | — |

### Processadores de Pagamento
| Plataforma | Status | Observação |
|------------|--------|------------|
| Mercado Pago | ✅ Cadastrado + sync Supabase | Cartão virtual/débito. Cobrança de clientes **não configurada** |
| Kiwify | ⚠️ Legado | Sem uso ativo |
| Stripe | ⚠️ Legado | Sem uso ativo |

> ⚠️ **Nenhum gateway operacional para cobranças recorrentes de clientes.** Recebimentos atualmente via PIX/TED avulsos. Automação de cobrança = gap.

### DRE Consolidado — Jan a Mar 2026
*Fonte: OFX Sicredi + CSV POP_Controle_Financeiro. Elaborado pela Sueli.*

| Período | Receita Operacional | Despesas | Resultado Op. |
|---------|-------------------|----------|---------------|
| Jan/2026 | R$ 940,00 ¹ | R$ 1.721,10 | -R$ 781 |
| Fev/2026 | R$ 6.358,33 | R$ 11.310,22 ² | -R$ 4.952 |
| Mar/2026 | R$ 6.750,00 | R$ 8.156,85 | -R$ 1.407 |
| **Q1 total** | **R$ 14.048,33** | **~R$ 21.188** | **-R$ 7.140** |

> ¹ Janeiro sem contar integralização Young R$50k (movimento societário)
> ² Fevereiro sem CDB R$40k (investimento/transferência entre contas)

### Receita por Cliente — Março 2026 (mês mais recente)
| Cliente | Valor | Tipo |
|---------|-------|------|
| Rose Portal Advocacia | R$ 3.500,00 | Recorrente |
| Benditta Marcenaria | R$ 2.000,00 | Recorrente |
| Lidera | R$ 450,00 | Pontual |
| ITY / Young | R$ 800,00 | Pontual |
| **Total março** | **R$ 6.750,00** | |

### MRR (Março 2026 — contratos recorrentes)
| Cliente | MRR |
|---------|-----|
| Rose Portal Advocacia | R$ 3.500 |
| Benditta Marcenaria | R$ 2.000 |
| **MRR Base** | **R$ 5.500** |

> ⚠️ **MRR de R$5.500 não cobre os custos operacionais de ~R$8.000+/mês.** A empresa ainda depende de serviços pontuais e da execução do plano 100k/trimestre para fechar o break-even.

### Despesas Operacionais Recorrentes Identificadas
| Fornecedor | Custo/mês | Categoria |
|------------|-----------|-----------|
| Omie ERP | R$ 247,20 | Adm |
| Hostinger VPS | R$ 70,99 | Adm (infra) |
| Google Cloud/Ads | ~R$ 265 | Adm + Marketing |
| Rupe Creative | R$ 562–1.187 | Marketing (criativos) |
| Meta Ads (mídia clientes) | ~R$ 200–800 | Marketing |
| Pró-labore Rodrigo | R$ 3.000–6.000 | Pessoal |

### Cartão Nubank PF — Despesas Adventure (jan–mar/2026)
| Item | Valor | Categoria |
|------|-------|-----------|
| Cursor (2 cobranças) | R$ 224,84 | Adm |
| Google Ads Rose (reembolso via NF) | R$ 400,00 | Marketing |
| Adobe Illustrator (1 mês — **cancelar**) | R$ 98,00 | Adm |
| IOF | R$ 7,86 | Financeiro |
| **Total** | **R$ 730,70** | Custo real da empresa via PF |

> 💡 Lançar como passivo com sócio (reembolso a pagar) para não distorcer DRE.

### Contabilidade & Fiscal
| Item | Detalhe | Status |
|------|---------|--------|
| Contadora | Claudia — Procor | ✅ Ativa |
| Certificado Digital | A3 + A1 (Claudia + empresa) | ✅ Disponível — **não integrado ao Omie ainda** |
| ERP Omie | R$ 247,20/mês | ⚠️ Assinatura ativa, uso parcial |
| Conciliação bancária | Sueli (AI) + Buffett (CFO) | 🟡 Estruturado — OFX jan–mar processado |
| Destino único de OFX/recibos | ❌ Não configurado | Pipeline OFX → Supabase pendente |
| Emissão de NF | ❌ Manual / pendente integração Omie | Bloqueado por certificado não integrado |

> 💡 **Prioridade financeira:** Integrar certificado A3/A1 ao Omie → habilitar NF automática → melhorar Receita formal no DRE.

---

## 12. Email & Comunicação Digital

| Serviço | Tipo | Status | Observação |
|---------|------|--------|------------|
| Google Workspace | Email principal (@adventurelabs.com.br) | ✅ | 2 contas: contato@ + provável rodrigo@ |
| Resend | Email transacional | ⚠️ Legado/configurado — precisa de atenção | Verificar se domínio está verificado e enviando |
| **Email marketing (ESP)** | — | ❌ Não existe | Gap: sem RD Station, Mailchimp, Brevo ou similar |
| **Push notification** | — | ❌ Não existe | Sem OneSignal, Firebase, etc. |
| **SMS** | — | ❌ Não existe | Sem Twilio, Zenvia, etc. |
| **Chip exclusivo Adventure Labs** | — | ❌ Não existe | Usando número pessoal do Rodrigo |

---

## 13. Vídeo & Mídia

| Canal | Uso | Status |
|-------|-----|--------|
| YouTube | Hospedagem de vídeos (embed no LideraSpace e LPs) | ✅ Ativo — não organizado |
| Google Drive | Vídeos e assets — backup e distribuição | ✅ Ativo — não organizado |
| Panda Video / Vimeo | — | ❌ Não contratado |

> ⚠️ **Vídeos no YouTube/Drive:** funciona para uso atual, mas tem limitações para um LMS (controle de acesso, analytics de consumo, anti-download). Se LideraSpace escalar, avaliar Panda Video (~R$ 100-200/mês) ou Bunny Stream (mais barato).

---

## 14. Devices & Ambiente Local

### Computadores
| Device | Spec | Localização | Uso atual | Potencial |
|--------|------|-------------|-----------|-----------|
| **MacBook Air M4** | Apple M4, 16GB RAM | Rodrigo | Dev principal (Claude Code, Cursor, Ollama, Tailscale) | ✅ Máquina primária |
| **Asus Vivobook M1502IA-EJ252** | AMD Ryzen, SN: S1N0B601856203D, MDF: 2024-01 | Escritório | Igor (manhãs) — livre nas tardes | 🟡 Nó de automação / dev secundário. Windows pirata — considerar Ubuntu dual-boot ou formatação |
| **Beelink T4 Pro** | Celeron N3350, 4GB RAM, 64GB | Escritório (com internet cabeada + HDMI TV Sony) | **Nunca usado — instalando Ubuntu 24.04 LTS** | 💡 Nó Ollama pequeno (modelos <3B), cron agent leve, ou mirror de scripts VPS. Tailscale integra à rede sem expor porta |
| **VPS Hostinger** | 8GB RAM, 96GB disk | Remoto (187.77.251.199) | Produção total | ✅ Core da infraestrutura |

### Smartphones
| Device | Spec | Uso | Status |
|--------|------|-----|--------|
| iPhone 15 Pro Max | — | Telegram Founder, monitoramento, WhatsApp profissional | ✅ Primário |
| Motorola Moto G52 | 4GB/128GB, Android 13 (T2SRS33.72-22-4-11), 2400×1080, NFC, dual chip — câm: 16MP frontal / 50+8+2MP | Disponível | 🟡 Potencial: testes Android, chip Adventure Labs, Evolution API test device |

> 💡 **Moto G52 + chip Adventure Labs:** combinação ideal para ter número exclusivo da empresa no WhatsApp Business sem expor número pessoal do Rodrigo. NFC abre possibilidade de pagamentos por aproximação em contexto físico.

---

## 15. Orçamento Real da Stack (Abr/2026)

### Custos confirmados
| Item | Custo/mês | Tipo |
|------|-----------|------|
| Claude Code Max | **> R$ 1.100** | Fixo — maior item |
| APIs LLM (Anthropic + OpenAI + Gemini + OpenRouter + ElevenLabs) | **~R$ 247** | Variável (documentado Sueli/Buffett) |
| Google Workspace Business Standard (2x) | ~R$ 22 ($4.40) | Fixo |
| Cursor AI Pro | ~R$ 100 ($20) | Fixo |
| VPS Hostinger | ~R$ 50 ($10) | Fixo |
| ElevenLabs Starter | ~R$ 25 ($5) | Fixo |
| **TOTAL CONFIRMADO** | **~R$ 1.544/mês** | |

### Custos a confirmar com Sueli/Buffett
| Item | Estimativa | Status |
|------|-----------|--------|
| Omie ERP | A confirmar | Pago (ao menos Rose) |
| Registro.br (domínio) | ~R$ 40/ano ≈ R$ 3/mês | A confirmar |
| Adobe Illustrator | R$ 0 (deve estar cancelado) | Verificar |
| Canva Pro / CapCut | R$ 0 (emprestados) | Risco de corte |
| **TOTAL GERAL ESTIMADO** | **~R$ 1.550–1.700/mês** | |

### Contexto de ROI
> Claude Code Max (R$ 1.100+) representa ~65-70% do custo total de stack. É a ferramenta que mais impacta na velocidade de desenvolvimento e automação. Para justificar, deve substituir ao menos 1 dev sênior parcial (~R$ 4.000-8.000/mês) em output.

---

## 16. Gaps Estratégicos

| Gap | Prioridade | Status | Ação sugerida |
|-----|-----------|--------|---------------|
| **Chip exclusivo Adventure Labs** | 🔴 Alta | ❌ Não existe | Contratar linha (~R$ 35/mês) → Moto G52 como device WhatsApp Business |
| **Gateway de pagamento operacional** | 🔴 Alta | ⚠️ Legado | Ativar Stripe (internacional) ou Kiwify (nacional) para cobranças recorrentes |
| **Email marketing (ESP)** | 🔴 Alta | ❌ Não existe | Brevo (free até 300/dia) como entrada; ou integrar Resend para transacional primeiro |
| **Resend auditoria** | 🔴 Alta | ⚠️ Legado | Verificar se domínio está verificado, se há templates, se há envios acontecendo |
| **Pipeline OFX → Supabase** | 🔴 Alta | 🟡 Parcial | Definir destino único de OFX/recibos → Sueli automatiza conciliação |
| **Omie + certificado A3/A1** | 🔴 Alta | ⚠️ Não integrado | Instalar cert + integrar Omie para NF automatizada |
| **Cloudflare legado** | 🟡 Média | ⚠️ Desconhecido | Auditar conta → manter (DNS + CDN free) ou remover para evitar conflito |
| **Plane — adoção real** | 🟡 Média | ⚠️ Subutilizado | Ou adotar de verdade (treinar Igor) ou desligar 12 containers e usar issues GitHub |
| **Agendamento de redes sociais** | 🟡 Média | ❌ Manual | mLabs (~R$ 40/mês) ou Buffer free como entrada |
| **Vídeo para LideraSpace** | 🟡 Média | YouTube/Drive | Panda Video se escalar para curso pago com controle de acesso |
| **Memória longa (RAG/pgvector)** | 🟡 Média | ❌ Não implementado | pgvector já disponível no Supabase — implementar para agentes |
| **Routing de IAs** | ✅ Resolvido | ✅ OpenClaw configurado 2026-04-16 | — |
| **Push notification / SMS** | 🟢 Baixa | ❌ | Avaliar quando tiver produto B2C com engajamento |
| **Figma — licenças próprias** | 🟢 Baixa | Emprestado | Contratar se Vaqeano/Young revogar acesso |
| **Supabase Pro** | 🟢 Baixa | Free tier | Upgrade quando >400MB storage ou 3+ projetos ativos |

---

## 17. Issues Técnicas Abertas

| # | Issue | Impacto | Ação |
|---|-------|---------|------|
| 🔴 | Chave Supabase Lidera exposta (git) | Segurança | **Rodrigo** revoga manualmente |
| 🔴 | mercadopago-sync.sh REPO_ROOT errado | Sem dados MP há ~1 dia | Claude corrige |
| 🔴 | Heartbeat buscando container errado | Alertas falsos Telegram | Claude corrige |
| 🟡 | 5 package-lock.json proibidos | Security Scan bloqueando PRs | Claude corrige |
| 🟡 | Supabase memory write falha (C-Suite) | Agentes sem persistência | Investigar |
| 🟡 | Vercel rate limit (Hobby) | PRs aguardando reset (~24h) | Automático |
| 🟡 | Main local 2 ahead / 9 behind origin | Git drift | Push pendente |

---

---

## 18. Análise Estratégica — Pronto para Escalar?

### Diagnóstico atual (Abr/2026)
| Dimensão | Score | Observação |
|----------|-------|------------|
| Receita vs. custo de stack | ⚠️ 4/10 | MRR R$5.500 < custo stack ~R$1.700 + time |
| Automação operacional | ✅ 7/10 | Hivemind rodando, 13 cron jobs, Sueli estruturada |
| Infraestrutura técnica | ✅ 7/10 | VPS sólida, containers healthy, CI/CD parcial |
| Cobrança/financeiro | ❌ 3/10 | PIX manual, sem NF automatizada, sem gateway recorrente |
| Gestão de tarefas | ❌ 2/10 | Plane instalado mas não adotado |
| Controle de pipeline/leads | ❌ 2/10 | WhatsApp informal, sem CRM operacional |
| Comunicação profissional | ⚠️ 4/10 | Número pessoal, sem chip próprio, sem ESP |

### Vercel vs. Wix vs. WordPress — qual usar?

| Cenário | Recomendação |
|---------|-------------|
| Landing pages de campanha (Rose, Benditta, Young) | ✅ **Vercel (Next.js)** — melhor performance, GTM integrado, já está funcionando |
| Site institucional Adventure Labs | 🤔 **WordPress** ou **Webflow** — se Igor/Rodrigo precisam editar sem dev. Vercel exige dev para cada mudança de copy |
| Plataformas (LideraSpace, Young Talents, Admin) | ✅ **Vercel obrigatório** — são apps Next.js, não sites estáticos |
| Blog / conteúdo editorial | 📝 **WordPress.com** (free) ou **Ghost** (self-hosted) — melhores para SEO e gestão de conteúdo |

> **Conclusão:** Vercel fica para apps e LPs técnicas. Se quiser um site aventure-labs.com.br editável pelo time sem dev, considerar WordPress em subdomínio separado.

### OpenRouter vs. OpenPanel
| Ferramenta | O que é | Uso na Adventure |
|------------|---------|-----------------|
| **OpenRouter** | API gateway para múltiplos LLMs (Gemini, Claude, GPT, etc.) | ✅ **Em uso** — OpenClaw roteia modelos via OpenRouter |
| **OpenPanel** | Painel de controle para VPS (alternativa ao cPanel) | ❌ **Não instalado, não necessário** — gerenciam VPS via SSH + Docker direto |

### OpenClaw — está sendo bem aproveitado?
**Resposta curta: não ainda.** Potencial vs. uso atual:

| Capacidade | Potencial | Uso atual |
|------------|-----------|-----------|
| Telegram chatbot | Alto | ✅ Ativo (Buzz) |
| WhatsApp Business | Alto | ❌ `enabled: false` |
| Multi-agent routing | Alto | ❌ C-Suite roda via cron direto, não via OpenClaw |
| Skills (SAG) | 19 elegíveis | ⚠️ Parcialmente configuradas |
| Memória persistente | Alto | ⚠️ Memory write falhando |
| Model routing | Configurado hoje | ✅ Gemini → Claude → GPT |

> O maior potencial não aproveitado é **WhatsApp**: com chip próprio + Evolution API + OpenClaw, o Buzz poderia atender clientes, qualificar leads e responder perguntas no WhatsApp automaticamente — sem custo adicional de API de WhatsApp Business oficial.

### Maiores atritos para escalar (ordenados por impacto)

1. **🔴 Sem cobrança recorrente automática** — cada fatura é um PIX manual. Com 5 clientes ok; com 15-20 clientes vira gargalo.
2. **🔴 MRR R$5.500 < break-even estimado ~R$10.000+** — empresa ainda não se paga sozinha. Escalar a stack antes de fechar essa conta pode piorar o caixa.
3. **🔴 Rodrigo é gargalo** — faz estratégia + dev oversight + account management + operação. Sem delegação estruturada, crescimento tem teto humano.
4. **🟡 Nenhum funil de aquisição automatizado** — sem ESP, sem lead nurturing, sem pipeline CRM. Novos clientes chegam via rede/indicação.
5. **🟡 Plane instalado mas não adotado** — 12 containers de gestão de projetos sem usar = custo de RAM + zero benefício.
6. **🟡 Vercel Hobby** — 5 projetos. Cada novo cliente webapp = novo projeto. Pro ($20/mês) se torna obrigatório ao 6º projeto ou se builds aumentarem.
7. **🟢 Supabase Free** — 2 projetos. O 3º projeto ou crescimento de storage exige Pro ($25/mês).
8. **🟢 VPS RAM pressionada** — 4.9G/7.8G. Adicionar mais agentes/containers requer upgrade para KVM4 (~$20/mês a mais).

### O que seria o "próximo nível" de stack?
Para ir de R$5.500 para R$20.000+ MRR sem travar:
- [ ] Gateway de cobrança recorrente (Stripe ou Kiwify) → faturamento automático
- [ ] Chip próprio + WhatsApp Business via OpenClaw → atendimento e qualificação automatizada
- [ ] ESP básico (Brevo free ou Resend funcionando) → nurturing e comunicação em escala
- [ ] Plane ou GitHub Issues adotado de verdade → delegação real para Igor/Mateus
- [ ] NF automática via Omie + certificado integrado → formalização da receita

*v5 — Atualizado com respostas diretas do Founder em 2026-04-16.*
*Fontes: ACORE Constitution, wiki VPS, Claude Memory, auditoria ao vivo 2026-04-15/16, Rodrigo Ribas.*
*Próxima revisão recomendada: 2026-05-01*
