# AI_WORKFLOW — Operação NEXUS: Cérebro Local Adventure Labs

> **TL;DR:** Rode `sync-infra-context.sh` → abra o Cursor → use `@Codebase` → debug em segundos.

---

## O que é a Operação NEXUS

**NEXUS** (Neural EXecution Unified System) transforma este monorepo no cérebro local da Adventure Labs, conectando três camadas:

```
[Ollama local]  ←→  [Cursor @Codebase]  ←→  [.adventure_brain/ (estado real da VPS)]
      ↓                      ↓                          ↓
 qwen2.5-coder          Análise de código          docker ps, logs, nginx
 nomic-embed-text        + contexto infra           copiados em tempo real
```

Sem NEXUS, o Cursor/Ollama só enxerga o código. **Com NEXUS**, ele enxerga containers rodando, erros de produção e configs de infra — tudo local, sem expor secrets.

---

## Setup Inicial (faça uma vez)

### 1. Verificar Ollama

```bash
# Checar se está rodando
curl -s http://localhost:11434/api/tags | jq '.models[].name'

# Se não estiver rodando (macOS/Linux):
ollama serve &
```

### 2. Baixar os modelos necessários

```bash
# Modelo principal para código (7B — roda bem em 8GB RAM)
ollama pull qwen2.5-coder:7b

# Modelo de embeddings para RAG local
ollama pull nomic-embed-text

# Verificar instalação
ollama list
```

### 3. Configurar Cursor para usar Ollama como fallback

No Cursor → Settings → Models → Add model:
- **Base URL:** `http://localhost:11434/v1`
- **Model:** `qwen2.5-coder:7b`
- **API Key:** `ollama` (qualquer string não vazia)

### 4. Configurar SSH para a VPS (se ainda não tiver)

```bash
# Gerar chave (pule se já tiver)
ssh-keygen -t ed25519 -C "adventure-labs-nexus"

# Copiar para a VPS
ssh-copy-id root@187.77.251.199

# Testar
ssh root@187.77.251.199 "echo 'SSH OK'"
```

### 5. Primeiro sync

```bash
chmod +x tools/vps-infra/sync-infra-context.sh
./tools/vps-infra/sync-infra-context.sh
```

---

## Workflow de Debug (uso diário)

### Passo 1 — Sincronizar estado da VPS

```bash
./tools/vps-infra/sync-infra-context.sh
# Com notificação silenciosa:
./tools/vps-infra/sync-infra-context.sh --quiet
# Com handoff detalhado para o Buzz:
./tools/vps-infra/sync-infra-context.sh --report
```

Isso popula `.adventure_brain/` com:
- `current_infra/containers.txt` — quais containers estão up/down
- `current_infra/docker-compose.yml` — configuração real da VPS
- `current_infra/nginx/` — configs de domínio/proxy
- `logs/n8n-errors.txt` — últimos 50 erros do n8n
- `logs/evolution-errors.txt` — últimos 50 erros do WhatsApp API

### Passo 2 — Abrir Cursor e incluir o contexto

No Cursor, ao iniciar um chat:

```
@Codebase inclua .adventure_brain/current_infra/containers.txt e .adventure_brain/logs/n8n-errors.txt

O workflow "Relatório Semanal Young" não está disparando. O que pode estar errado?
```

O Cursor vai cruzar o código em `workflows/n8n/` com o estado real dos containers e os logs de erro recentes.

### Exemplos de perguntas úteis

```
# Debug de container caído
@Codebase [containers.txt] O adventure-evolution está unhealthy. O que checar?

# Debug de workflow n8n
@Codebase [n8n-errors.txt] [workflows/n8n/] Quais workflows podem estar falhando baseado nesses erros?

# Análise de infra
@Codebase [docker-compose.yml] Esse docker-compose.yml tem alguma configuração de memória problemática?

# Review de nginx
@Codebase [nginx/] Todos os domínios *.adventurelabs.com.br estão roteados corretamente?
```

---

## Estrutura do .adventure_brain/

```
.adventure_brain/            # gitignored — estado runtime local
├── last_sync.txt            # quando foi o último sync (ISO 8601)
├── current_infra/
│   ├── containers.txt       # docker ps formatado
│   ├── docker-compose.yml   # cópia da VPS
│   └── nginx/
│       └── *.conf           # configs de domínio
└── logs/
    ├── n8n-errors.txt       # erros recentes do n8n
    └── evolution-errors.txt # erros recentes da Evolution API
```

**Referência de estrutura:** `.adventure_brain.example/` (este está versionado no Git).

---

## Sync Recorrente (opcional)

### Alias rápido (adicione ao ~/.zshrc ou ~/.bashrc)

```bash
alias nexus-sync='cd ~/adventure-labs && ./tools/vps-infra/sync-infra-context.sh --quiet'
alias nexus-report='cd ~/adventure-labs && ./tools/vps-infra/sync-infra-context.sh --report'
```

### Cron local (a cada 4 horas, silencioso)

```bash
# crontab -e
0 */4 * * * cd /path/to/adventure-labs && ./tools/vps-infra/sync-infra-context.sh --quiet >> /tmp/nexus-sync.log 2>&1
```

---

## Serviços de Referência (VPS 187.77.251.199)

| Serviço | Container | URL |
|---------|-----------|-----|
| Automações | `adventure-n8n` | flow.adventurelabs.com.br |
| BI | `adventure-metabase` | bi.adventurelabs.com.br |
| Secrets | `adventure-infisical` | vault.adventurelabs.com.br |
| Senhas | `adventure-vaultwarden` | pw.adventurelabs.com.br |
| Tasks | `adventure-plane` | tasks.adventurelabs.com.br |
| WhatsApp | `adventure-evolution` | api-wa.adventurelabs.com.br |
| Uptime | `adventure-uptime` | status.adventurelabs.com.br |

**Agentes VPS:** `/opt/adventure-labs/scripts/agents/` — dispatcher: `adventure-agent.sh`
**Buzz/OpenClaw:** systemd `openclaw-gateway.service`, porta 18789 loopback

---

## Limitações e Segurança

- O sync **NÃO copia** arquivos `.env` ou qualquer secret da VPS
- Credentials ficam no **Infisical** (`vault.adventurelabs.com.br`) — nunca no `.adventure_brain/`
- `.adventure_brain/` está no `.gitignore` — nunca será commitado acidentalmente
- O script usa SSH com chave — sem senhas trafegando

---

## Troubleshooting

**SSH falha:**
```bash
ssh -v root@187.77.251.199  # modo verbose para debug
# Checar se a chave pública está em /root/.ssh/authorized_keys na VPS
```

**Ollama não responde:**
```bash
ps aux | grep ollama
ollama serve  # subir manualmente se necessário
```

**Containers.txt vazio:**
```bash
# Testar manualmente:
ssh root@187.77.251.199 "docker ps"
```

**Telegram não notifica:**
```bash
# Exportar as vars antes de rodar:
export TELEGRAM_BOT_TOKEN="seu_token_aqui"
./tools/vps-infra/sync-infra-context.sh
```
