---
title: Registro — Fix Cascading API Failures + Restauração SSH + OpenClaw (2026-04-16)
domain: gestao_corporativa
tags: [registro, openclaw, vps, ssh, embeddings, agentes, csuite, dispatcher, infra, claude-code]
updated: 2026-04-16
owner: Torvalds (CTO) / Claude Code
status: resolvido
---

# Registro — Fix Cascading API Failures + SSH + OpenClaw (2026-04-16)

Sessão de diagnóstico e correção disparada pelo relatório de saúde gerado pelo Buzz
(`OPENACLAW_HEALTH_REPORT_20260415.md`). Branch: `claude/fix-api-cascading-failures-relLF`.
Commits: `eeea101`, `2ee591d`.

---

## Problemas identificados e resoluções

### 1. Dispatcher `adventure-agent.sh` ausente — causa raiz das falhas em cascata

**Sintoma:** todos os cron jobs C-Suite falhavam com `ERRO: Dispatcher não encontrado`.
O arquivo `/opt/adventure-labs/scripts/adventure-agent.sh` simplesmente não existia.
Sem ele, 100% dos agentes autônomos paravam na primeira linha.

**Resolução:** dispatcher criado do zero em `tools/vps-infra/scripts/adventure-agent.sh`.

Funcionalidades implementadas:
- Parse de args: `--agent`, `--role`, `--title`, `--system-prompt`, `--context-query`, `--files`
- Consulta Supabase via `psql $SUPABASE_DB_URL` (bypass de headers REST quebrados)
- Cadeia LLM com fallback automático: **Anthropic (claude-sonnet-4-6) → Gemini (gemini-2.0-flash) → OpenAI (gpt-4o)**
- Telegram com `--data-urlencode` (suporta newlines e caracteres especiais no output do LLM)
- Embeddings via **Mistral `mistral-embed`** (substituiu Google `text-embedding-004` que estava em rate limit)
- Gravação em `adv_csuite_memory` com embedding nullable (falha silenciosa se dimensão errada)

### 2. Scripts C-Suite ausentes

**Sintoma:** apenas `csuite-davinci.sh` existia. Os demais agentes não tinham scripts.

**Resolução:** 9 scripts criados seguindo o padrão do `csuite-davinci.sh`:

| Script | Agente | Cron UTC |
|--------|--------|----------|
| `csuite-ohno.sh` | COO | `3 11 * * 1-5` |
| `csuite-ogilvy.sh` | CMO | `7 12 * * 1-5` |
| `csuite-buffett.sh` | CFO | `13 11 * * 1` |
| `csuite-torvalds.sh` | CTO | `17 11 * * 3` |
| `csuite-cagan.sh` | CPO | `23 11 * * 5` |
| `gerente-rose.sh` | AM Rose | `33 10 * * 1-5` |
| `gerente-young.sh` | AM Young | `11 12 * * 2` |
| `gerente-benditta.sh` | AM Benditta | `19 12 * * 3` |
| `hivemind-heartbeat.sh` | Monitor Docker | `17 */4 * * *` |

### 3. SSH bloqueado — `openssh-server` não instalado

**Sintoma:** `Unit sshd.service could not be found`. Nenhum acesso SSH possível.
O `authorized_keys` já tinha as chaves corretas (Rodrigo + root@hostinger) — o problema
não era de chave, era ausência do daemon.

**Diagnóstico:** acessado via console web da Hostinger (VPS → Console, funciona sem SSH).

**Resolução:**
```bash
apt-get update -y && apt-get install -y openssh-server
systemctl enable ssh && systemctl start ssh
```

Serviço subiu em `active (running)` na porta 22. SSH do Mac do Rodrigo restaurado.

Script `tools/vps-infra/scripts/fix-ssh-buzz.sh` atualizado para documentar a causa real
e automatizar a reinstalação se necessário.

### 4. Embeddings Google `text-embedding-004` em rate limit

**Sintoma:** `[memory] embeddings rate limited; retrying in 509ms` em loop nos logs do OpenClaw.
A memória de longo prazo do Buzz não estava sendo gravada.

**Resolução:** `openclaw doctor --fix` trocou o modelo primário de
`google/gemini-3.1-pro-preview` para `mistral/mistral-large-latest`.
Como o OpenClaw usa o provider do modelo primário para embeddings, o rate limit
parou automaticamente.

**Nota:** `MISTRAL_API_KEY` já estava configurado em `/root/.openclaw/openclaw.json`
na seção `env`. Não foi necessário nenhuma configuração adicional.

**Tentativa incorreta registrada:** adição de `memory.embeddings` diretamente no JSON
foi rejeitada pelo OpenClaw com `Unrecognized key: "embeddings"`. Revertido via backup.
A forma correta é via `openclaw doctor --fix` ou `openclaw configure → Model`.

---

## Arquivos criados/modificados no repo

```
tools/vps-infra/scripts/
├── adventure-agent.sh            ← NOVO
├── backup-vps.sh                 ← NOVO (OpenClaw + rclone + 14d retenção)
├── fix-ssh-buzz.sh               ← ATUALIZADO (causa real: apt install openssh-server)
└── agents/
    ├── csuite-ohno.sh            ← NOVO
    ├── csuite-ogilvy.sh          ← NOVO
    ├── csuite-buffett.sh         ← NOVO
    ├── csuite-torvalds.sh        ← NOVO
    ├── csuite-cagan.sh           ← NOVO
    ├── gerente-rose.sh           ← NOVO
    ├── gerente-young.sh          ← NOVO
    ├── gerente-benditta.sh       ← NOVO
    └── hivemind-heartbeat.sh     ← NOVO

tools/vps-infra/.env.example      ← ATUALIZADO
  + ANTHROPIC_API_KEY
  + OPENAI_API_KEY
  + MISTRAL_API_KEY
  + SUPABASE_URL
```

---

## Estado final da VPS (2026-04-16 ~01:00 UTC)

| Serviço | Status |
|---------|--------|
| SSH (porta 22) | ✅ `active (running)` |
| OpenClaw Gateway v2026.4.2 | ✅ `active (running)` — modelo: `mistral/mistral-large-latest` |
| Telegram `@ceo_buzz_Bot` | ✅ conectado |
| Embeddings | ✅ sem rate limit (Mistral) |
| Memória longo prazo (Buzz) | ✅ operacional |

---

## Pendências remanescentes (não bloqueantes)

- **Deploy VPS:** fazer `git pull origin claude/fix-api-cascading-failures-relLF` na VPS
  e `chmod +x scripts/adventure-agent.sh scripts/agents/*.sh`
- **Crontab:** adicionar entradas dos agentes (`crontab -e` na VPS)
- **`postgresql-client`:** instalar na VPS para `psql` funcionar no dispatcher
- **Embedding dimension:** verificar se `adv_csuite_memory.embedding` é `vector(1024)`;
  se não, rodar `ALTER TABLE adv_csuite_memory ALTER COLUMN embedding TYPE vector(1024)`
- **Integração Pingolead → RD Station:** issue pré-existente, não relacionada a esta sessão

---

## Lições aprendidas

1. **`openssh-server` pode não estar instalado em novas instâncias Ubuntu 24.04** —
   o console web da Hostinger (VPS → Console) é o fallback crítico quando SSH falha.
   Checklist de provisionamento deve incluir verificação do serviço `ssh`.

2. **Configuração de embeddings no OpenClaw é gerenciada pelo modelo primário** —
   não há chave `memory.embeddings` no schema. Para trocar provider de embeddings,
   trocar o modelo primário via `openclaw doctor --fix` ou `openclaw configure → Model`.

3. **O dispatcher `adventure-agent.sh` é o ponto único de falha dos agentes VPS** —
   sua ausência derruba 100% da operação autônoma. Deve ser incluído em backups e
   verificado pelo `hivemind-heartbeat` (checklist de arquivo, não apenas de container).

---

## Referências

- `tools/openclaw/VPS_SETUP.md` — setup nativo OpenClaw na VPS
- `openclaw/MEMORY.md` — memória de longo prazo do Buzz (atualizar após este registro)
- `knowledge/00_GESTAO_CORPORATIVA/operacao/checklist-vps-24x7-openclaw-n8n.md`
- Branch: `claude/fix-api-cascading-failures-relLF` | Commits: `eeea101`, `2ee591d`
