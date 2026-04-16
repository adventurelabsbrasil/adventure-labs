# Adventure Labs — Cérebro Estável (SSOT para Claude Code e Cursor)

> **Leia este arquivo antes de qualquer tarefa.** É o ponto de entrada de toda entidade que interage com a Adventure Labs.
> Atualizado: 2026-04-09

---

## BHAG

> "Nos tornarmos uma marca de referência estilo a RedBull — uma martech 99% autônoma e comunidade híbrida de soluções criativas entre agentes e humanos. Um laboratório de aventuras calculadas que usa a criatividade para explorar e dados para decidir."

## North Star

> Ser reconhecida como o laboratório que prova que é possível construir uma empresa de marketing + tecnologia operada majoritariamente por agentes inteligentes — onde humanos definem estratégia e criatividade, e o sistema executa.
>
> **Métrica-guia:** % de operações semanais rodando sem intervenção humana.

---

## Quem Somos

**Adventure Labs** — agência martech brasileira fundada por Rodrigo Ribas. Serviços: gestão de tráfego (Meta Ads + Google Ads), landing pages de campanha, desenvolvimento de apps web, automações de marketing, consultoria de dados.

**Modelo:** B2B MarTech focada em empresas de serviço de alto faturamento. Squad autônomo de AI C-Suite (CMO, COO, CTO, CFO, CPO) orquestrado por Buzz. Account Managers agentes dedicados por cliente.

---

## Clientes Ativos

| Cliente | Serviço principal | Repo | Status |
|---------|------------------|------|--------|
| Rose Portal Advocacia | Google Ads + LP Auxílio-Maternidade | `apps/clientes/02_rose/` | Conta Google nova rodando, Meta pendente |
| Young Empreendimentos | Meta + Google Ads + apps (young-talents, young-emp, ranking-vendas) | `apps/clientes/03_young/` | Mateus (coord) de férias, interim Rodrigo |
| Benditta | LPs de campanha + Meta Ads | `apps/clientes/05_benditta/` | LPs live no Vercel |
| LideraSpace | SaaS interno (plataforma) | `apps/labs/lideraspace/` | Deploy ativo |

**Contexto detalhado de contas:** `clients/02_rose/`, `clients/03_young/`

---

## Arquitetura do Sistema

| Camada | Ferramenta | URL / Path | Propósito |
|--------|-----------|-----------|-----------|
| Planejamento | Plane (self-hosted) | tasks.adventurelabs.com.br | SSOT de projetos e tarefas |
| Dados runtime | Supabase | `adv_*` tables | Contexto dos agentes autônomos |
| Código | GitHub (este repo) | adventurelabsbrasil/01_ADVENTURE_LABS | Fonte da verdade de código e docs |
| Automações | n8n | flow.adventurelabs.com.br | Fluxos e workflows |
| BI | Metabase | bi.adventurelabs.com.br | Dashboards e análise de dados |
| Gateway IA | OpenClaw/Buzz | VPS port 18789 (loopback) | Telegram + WhatsApp → LLMs |
| WhatsApp API | Evolution API | api-wa.adventurelabs.com.br | Mensageria WhatsApp programática |
| Secrets | Infisical | vault.adventurelabs.com.br | Gestão de segredos e env vars |
| Senhas | Vaultwarden | pw.adventurelabs.com.br | Vault de senhas (clientes + pessoal) |
| Status | Uptime Kuma | status.adventurelabs.com.br | Monitor de uptime dos serviços |
| Mídia/Backup | Google Drive | `gdrive-adventure:` (rclone) | Assets, backups diários, arquivos |
| Infraestrutura | VPS Hostinger | 187.77.251.199 | Todos os serviços Docker + crons |

### ⚠️ Regras Operacionais Críticas de Infra

1. **`INFISICAL_TOKEN` do n8n** é gerenciado somente via `docker-compose environment` — nunca editar direto no n8n UI (a opção Variables não existe no community edition)
2. **Plane.so** nunca usa `SITE_ADDRESS=:3003` — usa sempre porta 80 (Caddy interno); `--env-file` é **obrigatório** em todo deploy. `LISTEN_HTTP_PORT=3003` é o mapeamento host→container
3. **Branch `claude/zen-dhawan`** existe com alterações pendentes — verificar antes de qualquer merge/push para evitar conflito. Usar `gh` CLI (Git local tem erro SIGBUS)

---

## Agentes Autônomos (VPS Crontab)

| Agente | Cron (UTC) | O que faz | Output |
|--------|-----------|-----------|--------|
| hivemind-heartbeat | `17 */4 * * *` | Monitor de saúde dos containers críticos | Telegram se houver falha |
| csuite-ohno (COO) | `3 11 * * 1-5` | Ops diária, bloqueios, top 3 ações | Telegram |
| csuite-ogilvy (CMO) | `7 12 * * 1-5` | Campanhas Rose/Young/Benditta, KPIs | Telegram |
| csuite-buffett (CFO) | `13 11 * * 1` | Review de custos da stack (sem valores R$) | Telegram |
| csuite-torvalds (CTO) | `17 11 * * 3` | Saúde do código, git branches, VPS | Telegram |
| csuite-cagan (CPO) | `23 11 * * 5` | Pulse clientes, entregas, riscos | Telegram |
| csuite-davinci (CINO) | `27 10 * * 1-5` | Varre ROADMAP_IDEAS.md, processa braindumps, lapida insights não-lineares | Telegram |
| gerente-rose | `33 10 * * 1-5` | Briefing diário conta Rose | Telegram |
| gerente-young | `11 12 * * 2` | Briefing semanal Young | Telegram |
| gerente-benditta | `19 12 * * 3` | Briefing semanal Benditta | Telegram |
| bill (Token Extractor) | `43 9 * * 2,5` | Balanço de tokens e custos de IA (APIs + subscriptions) | Telegram |
| barsi (Gestor Patrimônio) | `7 10 * * 5` | Foto patrimonial semanal PJ (saldos, investimentos, recebíveis, PL) | Telegram |
| backup-vps | `30 6 * * *` | Backup VPS → Drive (n8n, Plane, Infisical, Vaultwarden, Supabase, configs) | Telegram |

**Scripts:** `/opt/adventure-labs/scripts/agents/` (VPS)
**Dispatcher:** `/opt/adventure-labs/scripts/adventure-agent.sh` (Supabase context + Anthropic API + Telegram)
**Bot output:** Telegram `ceo_buzz_Bot` (chat 1069502175)

---

## Buzz (OpenClaw Gateway)

- **Identidade:** `openclaw/IDENTITY.md`, `openclaw/SOUL.md`
- **Roda em:** VPS apenas — systemd `openclaw-gateway.service`, port 18789 loopback
- **Mac = nunca.** Se processos openclaw aparecerem no Mac, são instâncias errôneas — matar
- **Workspace VPS:** `/root/.openclaw/workspace/` (MEMORY.md, AGENTS.md, SOUL.md lidos aqui)
- **Canais:** Telegram ativo, WhatsApp via Evolution API
- **Modelos:** Gemini 3.1 Pro (primary) → Claude Sonnet 4.6 → GPT-5.4 (fallback automático)
- **Dual-Mode:** workspace separado em `adventure/` e `personal/`
- **Sync GitHub → VPS:** ao atualizar `openclaw/*.md`, copiar manualmente para `/root/.openclaw/workspace/`

---

## Time

| Pessoa | Papel | Notas |
|--------|-------|-------|
| Rodrigo Ribas | Founder / Investidor-Visionário | Decisões estratégicas, alocação de capital |
| Igor | Assistente de marketing | Google Ads, cronograma editorial, GTM |
| Mateus Fraga | Coord. marketing Young | Em férias 15 dias; Rodrigo assume interim |
| Mateus (cunhado) | Gestão de tráfego | 6h/semana, júnior, em avaliação |
| Eduardo Tebaldi | Sócio Adventure Labs | Vem do grupo Young, criou Pingolead, montou n8n |
| Sueli | Agente Financeira AI | Opera via WhatsApp/Email, OCR e conciliação junto ao Buffett (CFO) |

---

## Governance — Quem Responde o Quê

| Tipo de pergunta | Quem responde |
|-----------------|--------------|
| Código, arquitetura, infraestrutura | Claude Code (você) |
| Campanhas, performance de cliente | Gerentes VPS + Buzz |
| Estratégia, roadmap, prioridade | C-Suite VPS + Buzz |
| Dados operacionais (tasks, leads) | Supabase `adv_*` tables |
| Senhas, credenciais | Vaultwarden (pw.adventurelabs.com.br) |
| Decisões finais | Founder (Rodrigo Ribas) |
| Tokens e custos de IA | Bill (Token Extractor) → Buffett (CFO) |
| Reportar urgências | Telegram ceo_buzz_Bot |

**Princípio:** A partir de 2026-04-09, não existe pergunta sobre algo interno sem resposta. Qualquer entidade — humana ou agente — que interaja com a Adventure Labs começa por aqui.

---

## Onde Buscar Contexto

| Preciso saber sobre... | Onde ir |
|----------------------|---------|
| Clientes (detalhes de conta) | `clients/02_rose/`, `clients/03_young/` |
| Tasks ativas | Supabase `adv_tasks` (status: in_progress, to_do) |
| Memória do C-Suite (últimas decisões) | Supabase `adv_csuite_memory` |
| Código de cliente | `apps/clientes/0N_cliente/` |
| Histórico de mudanças recentes | `git log --oneline --since="7 days ago"` |
| Segredos e env vars | Infisical (vault.adventurelabs.com.br) |
| Backup VPS | `gdrive-adventure:99_ARQUIVO/VPS_BACKUPS/` |
| Memória do Claude | `.claude/memory/` (neste repo) |
| Consumo de tokens IA | Supabase `adv_ai_providers`, `adv_token_usage`, `adv_token_alerts` |
| Patrimônio PJ | Supabase `adv_patrimony_accounts`, `adv_patrimony_snapshots`, `adv_patrimony_movements` |
| Patrimônio PF | `personal/barsi-patrimonio-pf/` (gitignored — somente Founder) |

---

## Branch Ativa com Pendências

- **`claude/zen-dhawan`** — tem alterações pendentes. Fazer PR/merge antes de criar branches novas que toquem nos mesmos arquivos. Usar `gh pr create` (Git local tem erro SIGBUS).
