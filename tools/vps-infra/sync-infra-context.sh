#!/usr/bin/env bash
# =============================================================================
# sync-infra-context.sh — Operação NEXUS: sincroniza estado da VPS para .adventure_brain/
# =============================================================================
# Uso:
#   ./tools/vps-infra/sync-infra-context.sh           # sync + notificação Telegram
#   ./tools/vps-infra/sync-infra-context.sh --quiet   # sync silencioso (sem Telegram)
#   ./tools/vps-infra/sync-infra-context.sh --report  # sync + handoff detalhado para Buzz
#
# Pré-requisitos:
#   - Chave SSH configurada: ~/.ssh/id_rsa ou ~/.ssh/id_ed25519 autorizada em root@187.77.251.199
#   - (Opcional) TELEGRAM_BOT_TOKEN e TELEGRAM_CHAT_ID como env vars para notificações
#
# Saída: .adventure_brain/ na raiz do repo (gitignored)
#   ├── last_sync.txt          — timestamp ISO 8601
#   ├── current_infra/
#   │   ├── containers.txt     — docker ps da VPS
#   │   ├── docker-compose.yml — copiado de /opt/adventure-labs/
#   │   └── nginx/             — configs de /etc/nginx/conf.d/
#   └── logs/
#       ├── n8n-errors.txt     — últimos 50 erros do adventure-n8n
#       └── evolution-errors.txt — últimos 50 erros do adventure-evolution
# =============================================================================

set -euo pipefail

# ── Configuração ──────────────────────────────────────────────────────────────
VPS_HOST="root@187.77.251.199"
VPS_INFRA_PATH="/opt/adventure-labs"
REPO_ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
BRAIN_DIR="$REPO_ROOT/.adventure_brain"
INFRA_DIR="$BRAIN_DIR/current_infra"
LOGS_DIR="$BRAIN_DIR/logs"
TIMESTAMP=$(date +%Y-%m-%dT%H:%M:%S)
MODE="${1:-}"

TELEGRAM_BOT_TOKEN="${TELEGRAM_BOT_TOKEN:-}"
TELEGRAM_CHAT_ID="${TELEGRAM_CHAT_ID:-1069502175}"

# ── Helpers ───────────────────────────────────────────────────────────────────
log() {
  echo "[$(date +'%Y-%m-%d %H:%M:%S')] $*"
}

notify_telegram() {
  local msg="$1"
  if [[ -n "$TELEGRAM_BOT_TOKEN" ]]; then
    curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
      -d "chat_id=${TELEGRAM_CHAT_ID}" \
      --data-urlencode "text=${msg}" \
      -d "parse_mode=HTML" > /dev/null 2>&1 || true
  fi
}

fail() {
  log "ERRO: $*"
  notify_telegram "🚨 <b>NEXUS sync — FALHA</b>
$(date)
Erro: $*"
  exit 1
}

check_ssh() {
  log "Verificando conectividade SSH com $VPS_HOST..."
  if ! ssh -o ConnectTimeout=10 -o BatchMode=yes "$VPS_HOST" "echo ok" > /dev/null 2>&1; then
    fail "Não foi possível conectar via SSH em $VPS_HOST. Verifique sua chave SSH (~/.ssh/id_rsa ou ~/.ssh/id_ed25519)."
  fi
  log "SSH OK."
}

# ── Início ────────────────────────────────────────────────────────────────────
log "=== Operação NEXUS — Sync de Infra VPS ==="
log "VPS: $VPS_HOST | Destino: $BRAIN_DIR"

check_ssh

mkdir -p "$INFRA_DIR/nginx" "$LOGS_DIR"

# ── a) Status containers ──────────────────────────────────────────────────────
log "Capturando docker ps..."
ssh "$VPS_HOST" \
  "docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Image}}\t{{.Ports}}'" \
  > "$INFRA_DIR/containers.txt" || fail "Falha ao capturar docker ps"
log "containers.txt: OK ($(wc -l < "$INFRA_DIR/containers.txt") containers)"

# ── b) docker-compose.yml principal ──────────────────────────────────────────
log "Baixando docker-compose.yml da VPS..."
scp "$VPS_HOST:$VPS_INFRA_PATH/docker-compose.yml" \
  "$INFRA_DIR/docker-compose.yml" 2>/dev/null \
  || log "AVISO: docker-compose.yml não encontrado em $VPS_INFRA_PATH (continuando...)"

# ── c) Configs Nginx ──────────────────────────────────────────────────────────
log "Baixando configs Nginx..."
NGINX_CONFIGS=$(ssh "$VPS_HOST" "ls /etc/nginx/conf.d/*.conf 2>/dev/null || true")
if [[ -n "$NGINX_CONFIGS" ]]; then
  while IFS= read -r conf_file; do
    [[ -z "$conf_file" ]] && continue
    local_name="$(basename "$conf_file")"
    scp "$VPS_HOST:$conf_file" "$INFRA_DIR/nginx/$local_name" 2>/dev/null \
      && log "  nginx/$local_name: OK" \
      || log "  AVISO: falha ao copiar $conf_file"
  done <<< "$NGINX_CONFIGS"
  log "Nginx configs: OK"
else
  log "AVISO: Nenhuma config Nginx encontrada em /etc/nginx/conf.d/ (Caddy? Traefik?)"
  # Tentar Caddy como alternativa
  CADDY_FILE=$(ssh "$VPS_HOST" "ls /etc/caddy/Caddyfile 2>/dev/null || true")
  if [[ -n "$CADDY_FILE" ]]; then
    scp "$VPS_HOST:/etc/caddy/Caddyfile" "$INFRA_DIR/nginx/Caddyfile" 2>/dev/null \
      && log "  Caddyfile: OK" || true
  fi
fi

# ── d) Logs de erro — n8n ─────────────────────────────────────────────────────
log "Capturando logs de erro adventure-n8n (últimos 50)..."
ssh "$VPS_HOST" \
  "docker logs adventure-n8n --tail 300 2>&1 | grep -iE 'error|warn|fail|exception|critical' | tail -50" \
  > "$LOGS_DIR/n8n-errors.txt" 2>/dev/null || true
log "n8n-errors.txt: OK ($(wc -l < "$LOGS_DIR/n8n-errors.txt") linhas)"

# ── e) Logs de erro — Evolution API ──────────────────────────────────────────
log "Capturando logs de erro adventure-evolution (últimos 50)..."
ssh "$VPS_HOST" \
  "docker logs adventure-evolution --tail 300 2>&1 | grep -iE 'error|warn|fail|exception|critical' | tail -50" \
  > "$LOGS_DIR/evolution-errors.txt" 2>/dev/null || true
log "evolution-errors.txt: OK ($(wc -l < "$LOGS_DIR/evolution-errors.txt") linhas)"

# ── f) Timestamp ──────────────────────────────────────────────────────────────
echo "$TIMESTAMP" > "$BRAIN_DIR/last_sync.txt"

# ── Sumário ───────────────────────────────────────────────────────────────────
CONTAINERS_UP=$(grep -c "Up " "$INFRA_DIR/containers.txt" 2>/dev/null || echo "?")
N8N_ERRORS=$(wc -l < "$LOGS_DIR/n8n-errors.txt" 2>/dev/null || echo "?")
EVOLUTION_ERRORS=$(wc -l < "$LOGS_DIR/evolution-errors.txt" 2>/dev/null || echo "?")

log "=== Sync concluído: $TIMESTAMP ==="
log "  Containers ativos: $CONTAINERS_UP"
log "  Erros n8n: $N8N_ERRORS linhas"
log "  Erros Evolution: $EVOLUTION_ERRORS linhas"
log "  Destino: $BRAIN_DIR"
log ""
log "Próximos passos:"
log "  1. Abra o Cursor → @Codebase → inclua .adventure_brain/"
log "  2. Consulte AI_WORKFLOW.md para o guia completo"

# ── Notificação Telegram ──────────────────────────────────────────────────────
if [[ "$MODE" == "--quiet" ]]; then
  exit 0
fi

if [[ "$MODE" == "--report" ]]; then
  # Handoff detalhado para Buzz
  MSG="🧠 <b>Operação NEXUS — Handoff para Buzz</b>
📅 $TIMESTAMP
🖥 VPS: $VPS_HOST

<b>Estado da infra sincronizada:</b>
• Containers ativos: $CONTAINERS_UP
• Erros n8n (últimas 300 linhas): $N8N_ERRORS ocorrências
• Erros Evolution API: $EVOLUTION_ERRORS ocorrências

<b>Arquivos locais atualizados:</b>
• .adventure_brain/current_infra/containers.txt
• .adventure_brain/current_infra/docker-compose.yml
• .adventure_brain/current_infra/nginx/
• .adventure_brain/logs/n8n-errors.txt
• .adventure_brain/logs/evolution-errors.txt

<b>Missão NEXUS ativa.</b> Cursor+Ollama agora tem contexto real da VPS.
Use @Codebase no Cursor incluindo .adventure_brain/ para debug instantâneo."
else
  MSG="🧠 <b>NEXUS sync OK</b>
$TIMESTAMP
Containers: $CONTAINERS_UP ativos | Erros n8n: $N8N_ERRORS | Evolution: $EVOLUTION_ERRORS
Use @Codebase no Cursor com .adventure_brain/ para debug."
fi

notify_telegram "$MSG"

exit 0
