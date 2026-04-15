# Resumo operacional — sessão 2026-04-15

## Missão: Operação NEXUS
**Neural EXecution Unified System** — Cérebro Local Adventure Labs
**Branch:** `claude/setup-local-ai-brain-KbNZ4`
**Executado por:** Claude Code (Sonnet 4.6)
**Solicitado por:** Rodrigo Ribas (Comandante)

---

## O que foi feito

### 1. Estrutura de contexto local (`.adventure_brain`)

Criada estrutura de diretório para armazenar metadados de infra sincronizados da VPS:

- `.adventure_brain.example/` — versão versionada com README, containers.txt.example, logs.example (gitkeeps)
- `.gitignore` atualizado — `.adventure_brain/` adicionado (runtime nunca vai ao Git)
- **Intenção:** qualquer dev ou agente clona o repo, roda o sync e tem contexto real da VPS em segundos

### 2. `.cursorrules` expandido

Adicionadas duas novas seções ao arquivo existente (mantendo A.C.O.R.E. intacto):

- **Infraestrutura Ativa** — mapa completo dos 7 containers adventure-* com URLs, portas e regras (Infisical, secrets, tabelas adv_*)
- **IA Local (Ollama)** — endpoint, modelos, instrução de uso com @Codebase

Agora o Cursor/Ollama tem visibilidade da arquitetura completa sem precisar ler CLAUDE.md inteiro.

### 3. Script `sync-infra-context.sh` (Operação NEXUS)

Criado em `tools/vps-infra/sync-infra-context.sh` (executável, mesmo padrão do `adventure_ops.sh`):

- SSH na VPS → captura `docker ps` → salva `containers.txt`
- Copia `docker-compose.yml` de `/opt/adventure-labs/`
- Tenta baixar configs Nginx/Caddy
- Captura últimos 50 logs de erro de `adventure-n8n` e `adventure-evolution`
- Grava `last_sync.txt` com timestamp ISO 8601
- Notifica Buzz via Telegram (chat 1069502175) com sumário
- Modos: `--quiet` (silencioso), `--report` (handoff detalhado para Buzz)

**Primeiro sync executado com sucesso:**
- 20 containers ativos capturados
- docker-compose.yml baixado (8139 bytes)
- n8n: 8 linhas de erro detectadas → levou ao fix abaixo
- Evolution API: limpa (0 erros)
- Nginx: não encontrado (VPS usa Caddy — esperado)

### 4. `AI_WORKFLOW.md` (raiz do repo)

Guia completo de uso do cérebro local:
- Setup Ollama + pull de modelos (`qwen2.5-coder:7b`, `nomic-embed-text`)
- Configuração do endpoint OpenAI-compatible em `http://localhost:11434/v1`
- Workflow de debug com `@Codebase` no Cursor + exemplos de perguntas
- Alias e cron local sugeridos
- Troubleshooting SSH, Ollama e Telegram

### 5. Fix: `N8N_PROXY_HOPS=1` (bug detectado via NEXUS)

Os logs sincronizados revelaram `ValidationError: X-Forwarded-For` no n8n.

**Causa:** n8n atrás do Caddy sem trust proxy configurado → express-rate-limit lançava erro.

**Ação:**
- `N8N_PROXY_HOPS=1` adicionado ao `tools/vps-infra/docker-compose.yml` (repo)
- Mesmo fix aplicado diretamente em `/opt/adventure-labs/docker-compose.yml` (VPS) via `sed`
- Container `adventure-n8n` reiniciado na VPS com `docker compose up -d n8n` → `Started` ✅

---

## Commits nesta sessão

| Hash | Mensagem |
|------|----------|
| `5708fae` | `feat(nexus): Operação NEXUS — Cérebro Local Adventure Labs` |
| `3ec71ba` | `fix(n8n): add N8N_PROXY_HOPS=1 — corrige ValidationError X-Forwarded-For` |

---

## Estado pós-sessão

| Item | Status |
|------|--------|
| `.adventure_brain.example/` | ✅ versionado |
| `.cursorrules` expandido | ✅ aplicado |
| `sync-infra-context.sh` | ✅ funcional (testado pelo Comandante) |
| `AI_WORKFLOW.md` | ✅ criado |
| `N8N_PROXY_HOPS=1` no repo | ✅ commitado |
| `N8N_PROXY_HOPS=1` na VPS | ✅ aplicado + n8n reiniciado |

---

## Pendências identificadas (não resolvidas nesta sessão)

1. **`claude/zen-dhawan`** — branch com alterações pendentes, PR/merge ainda não feito
2. **Python task runner no n8n** — mensagem de erro cosmética; não impacta produção se não usam Python nodes
3. **Evolution API image tag** — compose tem `latest`, VPS roda `2.3.7`; recomendado fixar tag para reproduzibilidade
4. **Vaultwarden fora do docker-compose.yml do repo** — deploy manual na VPS; considerar versionamento
5. **45 updates pendentes na VPS** — `apt upgrade` necessário (5 são security updates); `*** System restart required ***`
6. **Telegram bot token** — não configurado localmente no Mac do Comandante; notificações NEXUS silenciosas até configurar `TELEGRAM_BOT_TOKEN` em `~/.zshrc`

---

## Para o Buzz

A Operação NEXUS está ativa. O Comandante agora tem um pipeline local:

```
sync-infra-context.sh → .adventure_brain/ → @Codebase no Cursor → debug em segundos
```

O primeiro uso real já gerou valor: detectou e corrigiu o bug do `N8N_PROXY_HOPS` que estava poluindo os logs do n8n.

Próxima evolução natural: agendar o sync via cron local (a cada 4h) e configurar o `TELEGRAM_BOT_TOKEN` para que o Buzz receba notificações automáticas de estado da VPS.

🚀 Ao infinito e além!
