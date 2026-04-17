# Fluxo de Trabalho — Adventure Labs

> **SSOT para decisão de ferramenta.** Leia antes de iniciar qualquer trabalho.
> Founder, Igor ou qualquer agente: se a demanda é X, qual ferramenta usar?
> Atualizado: 2026-04-17

---

## 1. Matriz de Decisão — Qual Ferramenta Usar

| Tipo de Demanda | Ferramenta | Por quê |
|----------------|-----------|---------|
| Projeto de cliente (Rosa, Young, Benditta) | **Plane** `tasks.adventurelabs.com.br` | SSOT operacional de clientes |
| Projeto interno (LideraSpace, ACORE, labs) | **Plane** (board LABS / CORE) | SSOT operacional interno |
| Bug de código, feature técnica, infra, CI/CD | **GitHub Issues** + Claude Code | Rastreabilidade técnica no repo |
| Automação de marketing (fluxo n8n, workflow) | **Plane** → n8n executa | n8n orquestra, Plane rastreia |
| Tarefa de IA de longa duração (análise, redação, pesquisa) | **Beelink** via `beelink-delegate.sh` | Async, libera Mac/VPS |
| Urgência operacional (container caído, deploy quebrado) | **Telegram** → Buzz escalona | Canal de alerta já configurado |
| Campanha nova / briefing de cliente | **Plane** → gerente-agente executa | Agentes AM leem Plane |
| Segredo ou credencial nova | **Infisical Cloud** → Plane rastreia | Vault centralizado |
| Ideia / braindump / insight estratégico | **ROADMAP_IDEAS.md** ou `adv_ideias` (Supabase) | DaVinci (CINO) varre diariamente |

---

## 2. Fluxograma de Decisão

```
Chegou uma demanda?
│
├── É sobre código, bug, deploy, CI, infra?
│   └── → GitHub Issue + Claude Code (Mac ou Beelink)
│
├── É sobre cliente (campanha, entrega, resultado)?
│   └── → Plane (board do cliente) + gerente-agente
│
├── É sobre projeto interno / produto (LideraSpace, etc)?
│   └── → Plane (board LABS/CORE)
│
├── É uma análise, pesquisa ou tarefa de IA demorada?
│   └── → beelink-delegate.sh (async, sem bloquear Mac)
│
├── É uma automação / workflow de marketing?
│   └── → n8n (criar/ajustar flow) + Plane rastreia
│
├── É um segredo, senha ou credencial?
│   └── → Infisical Cloud (vault.adventurelabs.com.br → Cloud)
│
├── É uma ideia ou insight não urgente?
│   └── → ROADMAP_IDEAS.md ou Supabase adv_ideias
│
└── É uma urgência (sistema fora do ar)?
    └── → Telegram ceo_buzz_Bot (Buzz escalona)
```

---

## 3. Dispositivos — Quem Faz o Quê

| Device | Quem usa | Quando | Tipo de trabalho |
|--------|----------|--------|-----------------|
| **MacBook Air M4** (Rodrigo) | Rodrigo | Manhã / tarde — sessões interativas | Claude Code Max: código, decisões, arquitetura, PRs |
| **Asus** (Igor) | Igor | Tardes | Claude Code: tarefas de marketing-tech, criação de conteúdo, análise |
| **Beelink T4 Pro** | Agentes (autônomo) | 24/7 — proativo | Claude Code CLI: tarefas longas delegadas por n8n, OpenClaw, cron |
| **VPS Hostinger** | Agentes cron | 24/7 — scheduled | C-Suite, gerentes, hivemind, backup, mercadopago-sync |

### Regra de Ouro dos Devices

> **Mac = decisão e interação.  VPS = agentes 24/7.  Beelink = delegação async.**

Nunca use o Mac para tarefas que podem rodar offline no Beelink. Nunca coloque no Beelink o que precisa de resposta imediata (use Mac). Nunca mova agentes de produção para o Beelink (VPS é mais estável para 24/7).

---

## 4. Padrão de Delegação para o Beelink

### Quando delegar para o Beelink?

- Tarefa leva mais de 5 minutos no Mac e não precisa de resposta imediata
- Análise de código grande, geração de docs, auditoria de arquivos
- Tarefas disparadas por n8n, OpenClaw, ou cron (proativo)
- Tarefas paralelas enquanto o Mac está em reunião ou outra sessão

### Como delegar (1 comando)

```bash
# Sintaxe:
./tools/scripts/beelink-delegate.sh "descrição da tarefa" "prompt para Claude"

# Exemplos:
./tools/scripts/beelink-delegate.sh \
  "auditoria _internal/" \
  "Audite todos os arquivos em _internal/ e liste inconsistências com o CLAUDE.md"

./tools/scripts/beelink-delegate.sh \
  "análise logs n8n" \
  "Leia os últimos erros de n8n em /opt/adventure-labs/logs/ e sugira fixes"
```

### Fluxo automático (Beelink proativo)

```
n8n workflow detecta evento
   → chama beelink-delegate.sh via SSH
      → Claude Code executa no Beelink
         → resultado salvo em adv_csuite_memory (Supabase)
            → Telegram notifica Buzz/Rodrigo
```

O Beelink também pode ser acionado por:
- **OpenClaw** (Buzz recebe mensagem no Telegram → roteia para Beelink)
- **Cron VPS** (tarefas agendadas que requerem Claude Code)
- **n8n webhook** (evento externo → delegação automática)

---

## 5. OpenClaw (Buzz) — Além da Conversa

O Buzz não é apenas um chatbot. Capacidades subutilizadas:

| Capacidade | Como usar |
|-----------|-----------|
| **Inbox routing** | Buzz recebe mensagem → decide se responde, escalona para humano, ou delega para Beelink |
| **Delegação para Claude Code** | Buzz pode acionar `beelink-delegate.sh` via SSH do VPS |
| **Plugin ecosystem** | Buzz tem acesso a plugins configuráveis — mapear quais estão ativos |
| **Dual-Mode** | Workspace `adventure/` (profissional) e `personal/` (pessoal) — evita ruído cross-contexto |
| **Memória persistente** | `adv_csuite_memory` + `/root/.openclaw/workspace/MEMORY.md` — contexto sempre atualizado |

**Próxima exploração:** mapear todos os plugins ativos do OpenClaw e criar fluxo Buzz→Beelink para tarefas técnicas que chegam via Telegram.

---

## 6. n8n — Orquestrador Subutilizado

O n8n é o cérebro das automações. Capacidades não exploradas:

| Oportunidade | Descrição |
|-------------|-----------|
| **Gatilho → Beelink** | n8n detecta evento → SSH para Beelink → Claude Code executa |
| **Intake de tarefas** | Formulário/webhook → cria task no Plane automaticamente |
| **Relatório automático** | n8n agrega métricas de ads → gera relatório → envia ao Telegram |
| **Sync bidirecional** | n8n como ponte entre Supabase ↔ Plane ↔ GitHub Issues |
| **Alert inteligente** | n8n monitora Supabase → detecta anomalia → aciona C-Suite ou Buzz |

**Próxima exploração:** mapear os workflows ativos no n8n e identificar os 3 que trariam mais valor se completados.

---

## 7. Gestão de Segredos — Fluxo Correto

> O gargalo das vaults resolve 80% dos problemas repetitivos de credencial.

### Estado Atual (2026-04-17)

| Vault | Status | Uso |
|-------|--------|-----|
| **Infisical Cloud** | ✅ Ativo (44 secrets em `dev`, 2 em `prod`) | SSOT de segredos |
| **Infisical self-hosted** | ⚠️ Google OAuth quebrado — migrar de volta ao Cloud | Desativar |
| **Vaultwarden** | ✅ Ativo | Senhas pessoais + clientes (71 entradas) |

### Fluxo Correto de Segredos

```
Novo segredo criado
   → Infisical Cloud (ambiente correto: prod para VPS, dev para local)
      → Path organizado: /llm/, /google/, /vps/, /supabase/, /mcp/, /n8n/
         → Sync automático via Infisical CLI ou Vercel integration
            → NUNCA hardcoded em .env commitado
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
| `/apis/` | CEREBRAS, MAKE, MANUS (revogar), RESEND_*, TWILIO |

**Issue rastreando:** #33 (Infisical Cloud migration)

---

## 8. Checklist de Início de Sessão

### Rodrigo (manhã — Mac)
- [ ] Abrir Claude Code: `claude` na raiz do repo
- [ ] Verificar Telegram: urgências do Buzz / alertas do hivemind?
- [ ] Verificar Plane: tasks `in_progress` com prazo hoje
- [ ] `git log --oneline -5` — o que mudou overnight no Beelink?

### Igor (tarde — Asus)
- [ ] Abrir Claude Code no repo adventure-labs
- [ ] Ver tasks do Plane atribuídas a Igor
- [ ] Executar tarefas de marketing-tech via Claude Code
- [ ] Registrar resultados no Plane (não no WhatsApp)

### Qualquer agente autônomo (VPS/Beelink)
- [ ] Ler `adv_csuite_memory` (últimas decisões)
- [ ] Ler tasks `in_progress` / `to_do` de Supabase `adv_tasks`
- [ ] Executar + registrar resultado no Supabase
- [ ] Notificar via Telegram se relevante

---

*Gerado em 2026-04-17 pelo Commander (Claude Code). Revisado com Founder.*
*Próxima atualização: quando o fluxo Beelink→n8n→OpenClaw estiver operacional.*
