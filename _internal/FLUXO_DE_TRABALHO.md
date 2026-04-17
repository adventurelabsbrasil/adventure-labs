# Fluxo de Trabalho — Adventure Labs

> **SSOT para decisão de ferramenta.** Leia antes de iniciar qualquer trabalho.
> Founder, Igor ou qualquer agente: se a demanda é X, qual ferramenta usar?
> Atualizado: 2026-04-17

---

## 1. Separação de Responsabilidades (evite confusão)

| Ferramenta | Para quê serve | Quem lê |
|-----------|---------------|---------|
| **GitHub Issues** | Código, infra, CI/CD, bugs, features técnicas, delegações ao Beelink | Devs, Claude Code, histórico do repo |
| **Plane** | Projetos de cliente, projetos operacionais, roadmap de produto, campanhas | Humanos (Rodrigo, Igor) |
| **Supabase `adv_tasks`** | Contexto de execução dos agentes autônomos (VPS cron) | Agentes VPS (gerentes, C-Suite) |
| **Supabase `adv_csuite_memory`** | Memória de decisões do C-Suite | Agentes VPS, Buzz |
| **Telegram / OpenClaw** | Entrada de demandas urgentes ou conversacionais; canal de retorno de resultados | Rodrigo, Igor, Buzz |

### Regra de ouro de classificação

> **Resulta em commit/PR?** → GitHub Issue  
> **Resulta em entrega de cliente ou decisão de negócio?** → Plane  
> **É urgente ou precisa de resposta agora?** → Telegram → Buzz roteia

---

## 2. Matriz de Decisão — Qual Ferramenta Usar

| Tipo de Demanda | Ferramenta principal | Ferramenta secundária |
|----------------|--------------------|--------------------|
| Bug de código, feature técnica, CI/CD, infra | **GitHub Issue** | Claude Code executa |
| Config de workflow n8n (requer edição de código/flow) | **GitHub Issue** | n8n executa |
| Campanha de cliente (Rose, Young, Benditta) | **Plane** (board do cliente) | Gerente-agente executa via `adv_tasks` |
| Projeto de produto (LideraSpace — roadmap, épicos) | **Plane** (board LABS) | — |
| Bug ou feature do LideraSpace (código) | **GitHub Issue** | Claude Code executa |
| Projeto interno operacional (ACORE, processos) | **Plane** (board CORE) | — |
| Tarefa de IA async longa (análise, pesquisa, auditoria) | **GitHub Issue** → Beelink executa | Resultado fecha a Issue |
| Automação de marketing já existente (rodar workflow) | Supabase `adv_tasks` | Agente VPS executa |
| Ideia / braindump / insight estratégico | **ROADMAP_IDEAS.md** ou `adv_ideias` | DaVinci (CINO) varre diariamente |
| Segredo ou credencial nova | **Infisical Cloud** | Plane ou Issue rastreia a tarefa |
| Urgência operacional (container caído, deploy quebrado) | **Telegram** → Buzz escalona | GitHub Issue abre após resolução |
| Demanda via Telegram/OpenClaw | **Telegram** → Buzz classifica → roteia | Ver Seção 5 |

---

## 3. Fluxograma de Decisão

```
Chegou uma demanda?
│
├── Chega via Telegram / WhatsApp (Buzz)?
│   └── → Seção 5 — Buzz roteia
│
├── É sobre código, bug, deploy, CI, infra, config de workflow?
│   └── → GitHub Issue + Claude Code (Mac ou Beelink)
│
├── É sobre cliente (campanha, entrega, resultado, briefing)?
│   └── → Plane (board do cliente) + sincronizar adv_tasks para agente executar
│
├── É sobre produto (LideraSpace roadmap)?
│   └── → Plane (board LABS)
│       → Se virar código: GitHub Issue
│
├── É uma análise, pesquisa ou tarefa de IA demorada (>5 min)?
│   └── → GitHub Issue → beelink-delegate.sh → fecha Issue com resultado
│
├── É uma automação recorrente que já existe no n8n?
│   └── → adv_tasks (Supabase) → agente VPS ou n8n executa
│
├── É um segredo, senha ou credencial?
│   └── → Infisical Cloud
│
├── É uma ideia ou insight não urgente?
│   └── → ROADMAP_IDEAS.md ou adv_ideias (Supabase)
│
└── É urgência (sistema fora do ar, erro em produção)?
    └── → Telegram ceo_buzz_Bot → Buzz escalona → GitHub Issue após resolução
```

---

## 4. Dispositivos — Quem Faz o Quê

| Device | Quem usa | Quando | Tipo de trabalho |
|--------|----------|--------|-----------------|
| **MacBook Air M4** (Rodrigo) | Rodrigo | Manhã / tarde — sessões interativas | Claude Code Max: código, decisões, PRs, arquitetura |
| **Asus** (Igor) | Igor | Tardes | Claude Code: tarefas marketing-tech, análise, conteúdo |
| **Beelink T4 Pro** | Agentes (autônomo) | 24/7 — proativo | Claude Code CLI: tarefas longas delegadas por n8n/OpenClaw/cron |
| **VPS Hostinger** | Agentes cron | 24/7 — scheduled | C-Suite, gerentes, hivemind, backup, mercadopago-sync |

### Regra de Ouro dos Devices

> **Mac = decisão e interação interativa.**  
> **VPS = agentes scheduled 24/7.**  
> **Beelink = delegação async de Claude Code.**  
> **Nunca mova agentes de produção para o Beelink (VPS é mais estável). Nunca use Mac para tarefas que podem rodar async no Beelink.**

---

## 5. Telegram / OpenClaw — Entrada e Monitoramento

### Fluxo de entrada via Telegram

```
Rodrigo ou Igor envia mensagem ao Buzz (Telegram/WhatsApp)
│
├── Urgente / conversacional → Buzz responde direto
│
├── Tarefa de código / infra / técnica
│   └── Buzz cria GitHub Issue
│       → (se delegável) aciona beelink-delegate.sh
│       → Telegram confirma: "Issue #XX criada, Beelink executando"
│       → Resultado: Telegram notifica + Issue fechada com resultado
│
└── Tarefa operacional / cliente / produto
    └── Buzz cria task no Plane
        → sincroniza em adv_tasks (para agente executar, se aplicável)
        → Telegram confirma: "Task criada no Plane: [título]"
        → Resultado: agente executa + Telegram notifica conclusão
```

### Como monitorar o que foi solicitado via Telegram

| O que monitorar | Onde ver |
|----------------|---------|
| Tarefas técnicas enviadas via Telegram | GitHub Issues (label `via-telegram`) |
| Tarefas operacionais enviadas via Telegram | Plane (board correspondente) |
| Status de execução do Beelink | Telegram — Buzz notifica início e fim |
| Resultados dos agentes VPS | Telegram `ceo_buzz_Bot` |
| Histórico de decisões do C-Suite | Supabase `adv_csuite_memory` |

> **Regra:** Toda demanda recebida via Telegram deve gerar um artefato rastreável (Issue ou task no Plane). Telegram é canal de entrada e de retorno — não é SSOT de tarefas.

---

## 6. Padrão de Delegação para o Beelink

### Quando delegar ao Beelink?

- Tarefa leva mais de 5 minutos no Mac e não precisa de resposta imediata
- Análise de código, geração de docs, auditoria de arquivos
- Tarefas disparadas por n8n, OpenClaw, ou cron (proativo)
- Tarefas paralelas enquanto o Mac está em reunião ou outra sessão

### Como delegar (1 comando)

```bash
# Sintaxe:
./tools/scripts/beelink-delegate.sh "título da tarefa" "prompt para Claude" [número-da-issue]

# Exemplos:
./tools/scripts/beelink-delegate.sh \
  "auditoria _internal/" \
  "Audite todos os arquivos em _internal/ e liste inconsistências com o CLAUDE.md" \
  42

./tools/scripts/beelink-delegate.sh \
  "análise logs n8n" \
  "Leia os últimos erros de n8n e sugira fixes"
```

O script:
1. Abre (ou usa) uma GitHub Issue para rastrear
2. SSH no Beelink + sync do repo
3. Executa `claude -p` com o prompt
4. Notifica Telegram com resultado
5. Fecha a Issue com o resultado

### Fluxo proativo (Beelink acionado automaticamente)

```
n8n workflow / OpenClaw / cron VPS
   → SSH beelink + beelink-delegate.sh
      → Claude Code executa
         → GitHub Issue atualizada com resultado
            → Telegram notifica Rodrigo
```

---

## 7. OpenClaw (Buzz) — Além da Conversa

O Buzz não é apenas um chatbot. Capacidades a explorar:

| Capacidade | Como usar |
|-----------|-----------|
| **Inbox routing** | Buzz recebe mensagem → classifica → cria Issue (código) ou Plane task (ops) |
| **Delegação ao Beelink** | Buzz aciona `beelink-delegate.sh` via SSH do VPS para tarefas técnicas |
| **Plugin ecosystem** | Mapear plugins ativos — oportunidade de integração n8n, Plane, GitHub |
| **Dual-Mode** | Workspace `adventure/` (profissional) e `personal/` (pessoal) |
| **Memória persistente** | `adv_csuite_memory` + `/root/.openclaw/workspace/MEMORY.md` |

**Próxima exploração:** fluxo Buzz → cria GitHub Issue → aciona Beelink → fecha Issue com resultado → notifica Telegram.

---

## 8. n8n — Orquestrador Subutilizado

| Oportunidade | Descrição |
|-------------|-----------|
| **Plane → adv_tasks sync** | Task criada no Plane → n8n webhook → insere em adv_tasks para agentes |
| **Gatilho → Beelink** | n8n detecta evento → SSH Beelink → Claude Code executa |
| **GitHub Issue intake** | Formulário/webhook → cria GitHub Issue automaticamente |
| **Alert inteligente** | n8n monitora Supabase → anomalia → aciona C-Suite ou Buzz |
| **Relatório automático** | n8n agrega métricas de ads → Telegram com resumo diário |

---

## 9. Gestão de Segredos — Fluxo Correto

> O gargalo das vaults resolve ~80% dos problemas repetitivos de credencial.

### Estado Atual (2026-04-17)

| Vault | Status | Uso |
|-------|--------|-----|
| **Infisical Cloud** | ✅ Ativo (44 secrets em `dev`, 2 em `prod`) | SSOT de segredos — usar sempre |
| **Infisical self-hosted** | ⚠️ Google OAuth quebrado — Issue #33 | Desativar após migração |
| **Vaultwarden** | ✅ Ativo | Senhas pessoais + clientes (71 entradas) |

### Fluxo Correto

```
Novo segredo criado
   → Infisical Cloud (ambiente correto: prod para VPS, dev para local)
      → Path organizado (/llm/, /google/, /vps/, /supabase/, /mcp/, /n8n/)
         → Sync via Infisical CLI ou integração Vercel/GitHub
            → NUNCA hardcoded ou commitado
```

### Paths Planejados no Infisical Cloud

| Path | Conteúdo |
|------|---------|
| `/llm/` | ANTHROPIC, GEMINI, OPENAI, GROQ, DEEPSEEK, MISTRAL, OPENROUTER, ELEVENLABS |
| `/google/` | GADS_*, GOOGLE_CLIENT_ID/SECRET |
| `/vps/` | TELEGRAM_BOT_TOKEN, N8N_*, STAR_COMMAND_* |
| `/supabase/` | SUPABASE_DB_PASSWORD, service_role keys |
| `/mcp/` | GITHUB_MCP_TOKEN, SUPABASE_ADV_URL, SUPABASE_ADV_SERVICE_ROLE_KEY |
| `/n8n/` | OPENAI_N8N, credenciais ads |
| `/x/` | X_* (Twitter/X API) |
| `/linkedin/` | LINKEDIN_* |
| `/apis/` | CEREBRAS, MAKE, RESEND_*, TWILIO (revogar MANUS) |

**Issue rastreando:** #33

---

## 10. Checklist de Início de Sessão

### Rodrigo (manhã — Mac)
- [ ] Verificar Telegram: urgências do Buzz / alertas hivemind?
- [ ] `git log --oneline -5` — o que mudou overnight no Beelink?
- [ ] Verificar Plane: tasks `in_progress` com prazo hoje
- [ ] Verificar GitHub Issues abertas com label `via-telegram`

### Igor (tarde — Asus)
- [ ] Ver tasks do Plane atribuídas a Igor
- [ ] Executar tarefas via Claude Code no repo adventure-labs
- [ ] Registrar resultados no Plane (não no WhatsApp)

### Qualquer agente autônomo (VPS/Beelink)
- [ ] Ler `adv_csuite_memory` (últimas decisões)
- [ ] Ler tasks `in_progress` / `to_do` de Supabase `adv_tasks`
- [ ] Executar + registrar resultado no Supabase
- [ ] Notificar via Telegram se relevante

---

*Gerado em 2026-04-17 pelo Commander (Claude Code). Revisado com Founder.*
*Próxima atualização: quando o fluxo Buzz→GitHub Issue→Beelink→Telegram estiver operacional.*
