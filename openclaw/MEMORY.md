# MEMORY.md

> Memória de longo prazo do Buzz. Lida em toda sessão principal (chat direto com o Comandante).
> Atualizado: 2026-04-09 — Hivemind SSOT estabelecido.

---

## Identidade

- Buzz é o Líder Assistente do Comando Estelar da Adventure Labs.
- Missão central: orquestrar a infraestrutura ACORE com sincronia absoluta entre sistemas humanos e digitais.
- Tom: heroico, focado em alta performance, resolutivo e profundamente leal aos objetivos do Comandante.
- Assinatura: 🚀 | Lema: "Ao infinito e além!"
- Aliados humanos: commanders. Aliados virtuais: rovers.

---

## BHAG da Adventure Labs

> "Nos tornarmos uma marca de referência estilo a RedBull — uma martech 99% autônoma e comunidade híbrida de soluções criativas entre agentes e humanos. Um laboratório de aventuras calculadas que usa a criatividade para explorar e dados para decidir."

**North Star:** Ser reconhecida como o laboratório que prova que é possível construir uma empresa de marketing + tecnologia operada majoritariamente por agentes. Humanos definem estratégia e criatividade; o sistema executa. Métrica: % de operações rodando sem intervenção humana por semana.

---

## Direção Operacional

- Buzz atua como guardião dos processos inteligentes e estrategista por trás das automações.
- Traduz falhas técnicas em soluções táticas e mantém a soberania do código como prioridade.
- **Ao iniciar sessão:** verificar `adv_csuite_memory` no Supabase para o que mudou nas últimas 24h.
- **Fonte da verdade estável:** `CLAUDE.md` na raiz do repo `01_ADVENTURE_LABS` — lido pelo Claude Code e Cursor.
- **Fonte da verdade viva:** Supabase `adv_*` tables — lido pelos agentes VPS.

---

## Stack VPS Atual (187.77.251.199)

Todos os serviços com TLS/HTTPS via Nginx:

| Serviço | URL | Notas |
|---------|-----|-------|
| n8n | flow.adventurelabs.com.br | INFISICAL_TOKEN via docker-compose env only |
| Metabase | bi.adventurelabs.com.br | Conectado ao Supabase via IPv4 Pooler |
| Evolution API | api-wa.adventurelabs.com.br | WhatsApp API v2.3.7, instância `adventure` |
| Infisical | vault.adventurelabs.com.br | Gestão de segredos |
| Vaultwarden | pw.adventurelabs.com.br | 71 senhas pessoais + senhas clientes |
| Uptime Kuma | status.adventurelabs.com.br | Monitor de uptime |
| Plane.so | tasks.adventurelabs.com.br | Gestão de projetos (SSOT tarefas) |
| Buzz/OpenClaw | port 18789 loopback | v2026.4.x, systemd, Dual-Mode ativo |

**Regras críticas:**
- Plane: `SITE_ADDRESS=:80` (interno Caddy), nunca `:3003`. `--env-file` sempre obrigatório.
- n8n: `INFISICAL_TOKEN` apenas via `docker-compose environment`, nunca UI.
- OpenClaw: roda SOMENTE na VPS. Mac = nunca.

---

## Backup VPS (Diário 6:30 UTC)

Script: `/opt/adventure-labs/scripts/backup-vps.sh`
Destino: `gdrive-adventure:99_ARQUIVO/VPS_BACKUPS/YYYY-MM-DD/`
Conteúdo: n8n workflows/credentials, Plane DB, Infisical DB, Vaultwarden sqlite, Supabase REST dump, configs (env+compose+scripts+nginx), **crontab** e **OpenClaw config/workspace**.
Retenção: 14 dias.
Output: Telegram `ceo_buzz_Bot` com status e tamanhos.

---

## Agentes Autônomos (VPS Crontab)

| Agente | Cron UTC | Função |
|--------|---------|--------|
| hivemind-heartbeat | `17 */4 * * *` | Monitor containers críticos → Telegram se falha |
| csuite-ohno | `3 11 * * 1-5` | COO: ops diária, bloqueios |
| csuite-ogilvy | `7 12 * * 1-5` | CMO: campanhas Rose/Young/Benditta |
| csuite-buffett | `13 11 * * 1` | CFO: review de custos (sem R$) |
| csuite-torvalds | `17 11 * * 3` | CTO: saúde código + VPS |
| csuite-cagan | `23 11 * * 5` | CPO: pulse clientes |
| csuite-davinci | `27 10 * * 1-5` | CINO: braindumps, insights, inovação |
| gerente-rose | `33 10 * * 1-5` | AM Rose diário |
| gerente-young | `11 12 * * 2` | AM Young semanal |
| gerente-benditta | `19 12 * * 3` | AM Benditta semanal |
| faisca | `43 9 * * 2,5` | Token Spark: balanço tokens/custos IA |
| barsi | `7 10 * * 5` | Gestor Patrimônio: foto semanal PJ (dual-mode PJ/PF) |

Scripts: `/opt/adventure-labs/scripts/agents/`
Dispatcher: `/opt/adventure-labs/scripts/adventure-agent.sh`
Contexto: Supabase `adv_tasks` + `adv_ideias` + `adv_csuite_memory`

---

## Clientes Ativos

| Cliente | Status | Repo |
|---------|--------|------|
| Rose Portal Advocacia | Google Ads rodando, Meta pendente | `apps/clientes/02_rose/` |
| Young Empreendimentos | Mateus (coord) de férias | `apps/clientes/03_young/` |
| Benditta | LPs live no Vercel | `apps/clientes/05_benditta/` |
| LideraSpace | SaaS interno ativo | `apps/labs/lideraspace/` |

---

## Time

| Pessoa | Papel |
|--------|-------|
| Rodrigo Ribas | Founder / Comandante / Investidor-Visionário |
| Igor | Assistente marketing (Google Ads, editorial, GTM) |
| Mateus Fraga | Coord. marketing Young (férias 15 dias) |
| Mateus (cunhado) | Gestão de tráfego (júnior, 6h/sem, em avaliação) |
| Eduardo Tebaldi | Sócio (vem do Young), criou Pingolead, montou n8n |
| Sueli | Agente Financeira AI — OCR, OFX, conciliação com Buffett |

---

## Governance: Quem Responde o Quê

| Tipo de pergunta | Para quem |
|-----------------|-----------|
| Código, infra, arquitetura | Claude Code |
| Campanhas, performance | Gerentes VPS + Buzz |
| Estratégia, roadmap | C-Suite VPS + Buzz |
| Dados operacionais | Supabase `adv_*` |
| Senhas, credenciais | Vaultwarden |
| Decisões | Rodrigo Ribas |
| Urgências | Telegram ceo_buzz_Bot |

---

## Pendências Críticas (2026-04-09)

- Branch `claude/zen-dhawan`: PR/merge pendente. Usar `gh` CLI (Git local tem SIGBUS).
- WebSocket em `claw.adventurelabs.com.br`: bloqueado no Nginx — delegado ao Torvalds (CTO).
- Pingolead → RD Station migration: leads Young não chegam no RD.
- Supabase `adv_conversion_forms`: tabela não criada ainda (404 no backup REST).

---

## Protocolo LLM Routing

Arquivo: `LLM_ROUTING.md` (raiz do workspace VPS)
- N1 Estratégico: Gemini Pro
- N2 Técnico/Código: Claude Sonnet/Code
- N3 Operacional: Gemini Flash
- N4 Micro/Automação: Claude Haiku
**Regra:** Nunca gastar motor caro em tarefa braçal.

---

## Dual-Mode

Workspace separado: `adventure/` (profissional) e `personal/` (pessoal). Memórias isoladas. Operacional desde 2026-04-09.
