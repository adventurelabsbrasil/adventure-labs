#!/usr/bin/env bash
# backup-vps.sh — Backup diário Adventure Labs VPS + upload Google Drive
# Deploy: /opt/adventure-labs/scripts/backup-vps.sh
# Cron:   30 6 * * *  /opt/adventure-labs/scripts/backup-vps.sh >> /opt/adventure-labs/logs/backup-vps.log 2>&1
#
# Inclui: Postgres, n8n, Metabase, Evolution API, OpenClaw config/workspace,
#         crontab, scripts/configs → rclone → gdrive-adventure:99_ARQUIVO/VPS_BACKUPS/
# Retenção local: 14 dias | Google Drive: mantido por rclone (sem remoção automática)

set -euo pipefail

REPO_DIR="/opt/adventure-labs"
BACKUP_DIR="$REPO_DIR/backups"
ENV_FILE="$REPO_DIR/.env"
DATE=$(date -u +%Y-%m-%d)
DATE_FULL=$(date -u +%Y%m%d_%H%M%S)
LOG_DIR="$REPO_DIR/logs"
LOG_FILE="$LOG_DIR/backup-vps.log"
GDRIVE_DEST="gdrive-adventure:99_ARQUIVO/VPS_BACKUPS/${DATE}"
RETENTION_DAYS=14

mkdir -p "$BACKUP_DIR" "$LOG_DIR"

log()  { echo "[$(date -u +'%Y-%m-%d %H:%M:%S')] $*" | tee -a "$LOG_FILE"; }

# Carregar .env para Telegram e demais vars
if [[ -f "$ENV_FILE" ]]; then
  # shellcheck disable=SC1090
  set -a; source "$ENV_FILE"; set +a
fi

notify_telegram() {
  local msg="$1"
  if [[ -n "${TELEGRAM_BOT_TOKEN:-}" && -n "${TELEGRAM_CHAT_ID:-}" ]]; then
    curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
      -d "chat_id=${TELEGRAM_CHAT_ID}" \
      --data-urlencode "text=${msg}" \
      -d "parse_mode=HTML" > /dev/null 2>&1 || true
  fi
}

fail() {
  log "ERRO CRÍTICO: $*"
  notify_telegram "🚨 <b>Adventure Labs — FALHA no backup</b>
Data: $(date -u)
Erro: $*"
  exit 1
}

log "=== Início do backup Adventure Labs VPS — $DATE ==="

# ── 1. Postgres (Infisical + Evolution) ──────────────────────────────────────
log "Fazendo dump do Postgres..."
docker exec adventure-postgres pg_dumpall -U infisical \
  > "$BACKUP_DIR/postgres_${DATE_FULL}.sql" 2>>"$LOG_FILE" || fail "pg_dumpall falhou"
gzip "$BACKUP_DIR/postgres_${DATE_FULL}.sql"
log "Postgres: OK ($(du -sh "$BACKUP_DIR/postgres_${DATE_FULL}.sql.gz" | cut -f1))"

# ── 2. n8n workflows + data ───────────────────────────────────────────────────
log "Backup n8n..."
docker run --rm \
  -v adventure-labs_n8n_data:/source:ro \
  -v "$BACKUP_DIR":/backup \
  alpine sh -c "tar -czf /backup/n8n_${DATE_FULL}.tar.gz -C /source . 2>/dev/null; true" \
  2>>"$LOG_FILE" || log "WARN: backup n8n falhou (continuando)"
log "n8n: OK"

# ── 3. Metabase ───────────────────────────────────────────────────────────────
log "Backup Metabase..."
docker run --rm \
  -v adventure-labs_metabase_data:/source:ro \
  -v "$BACKUP_DIR":/backup \
  alpine sh -c "tar -czf /backup/metabase_${DATE_FULL}.tar.gz -C /source . 2>/dev/null; true" \
  2>>"$LOG_FILE" || log "WARN: backup Metabase falhou (continuando)"
log "Metabase: OK"

# ── 4. Evolution API instances ────────────────────────────────────────────────
log "Backup Evolution API..."
docker run --rm \
  -v adventure-labs_evolution_data:/source:ro \
  -v "$BACKUP_DIR":/backup \
  alpine sh -c "tar -czf /backup/evolution_${DATE_FULL}.tar.gz -C /source . 2>/dev/null; true" \
  2>>"$LOG_FILE" || log "WARN: backup Evolution falhou (continuando)"
log "Evolution: OK"

# ── 5. OpenClaw config + workspace ← NOVO ────────────────────────────────────
log "Backup OpenClaw..."
if [[ -d "/root/.openclaw" ]]; then
  tar -czf "$BACKUP_DIR/openclaw_${DATE_FULL}.tar.gz" \
    -C /root/.openclaw . 2>>"$LOG_FILE" || \
    log "WARN: backup OpenClaw falhou (continuando)"
  log "OpenClaw: OK ($(du -sh "$BACKUP_DIR/openclaw_${DATE_FULL}.tar.gz" | cut -f1))"
else
  log "OpenClaw: diretório /root/.openclaw não encontrado — pulando"
fi

# ── 6. Crontab ← NOVO ────────────────────────────────────────────────────────
log "Backup crontab..."
crontab -l > "$BACKUP_DIR/crontab_root_${DATE_FULL}.txt" 2>>"$LOG_FILE" || \
  log "WARN: crontab vazio ou falhou (continuando)"
log "Crontab: OK"

# ── 7. Scripts + configs + nginx ─────────────────────────────────────────────
log "Backup scripts e configs..."
tar -czf "$BACKUP_DIR/configs_${DATE_FULL}.tar.gz" \
  -C "$REPO_DIR" \
  --exclude='./backups' \
  --exclude='./.git' \
  --exclude='./logs' \
  --exclude='./node_modules' \
  scripts/ \
  docker-compose.yml \
  .env \
  nginx/ 2>>"$LOG_FILE" || log "WARN: backup configs falhou (continuando)"
log "Configs: OK"

# ── 8. Verificar saúde dos containers ────────────────────────────────────────
log "Verificando containers..."
UNHEALTHY=""
for container in adventure-n8n adventure-metabase adventure-evolution adventure-infisical adventure-uptime; do
  status=$(docker inspect --format='{{.State.Health.Status}}' "$container" 2>/dev/null || \
           docker inspect --format='{{.State.Status}}' "$container" 2>/dev/null || echo "not_found")
  if [[ "$status" != "healthy" && "$status" != "starting" && "$status" != "running" ]]; then
    UNHEALTHY="$UNHEALTHY  • $container ($status)"
  fi
done

if [[ -n "$UNHEALTHY" ]]; then
  notify_telegram "⚠️ <b>Adventure Labs — Containers com problema</b>
$(date -u)
$UNHEALTHY"
  log "Alerta de containers enviado: $UNHEALTHY"
fi

# ── 9. Upload Google Drive via rclone ← NOVO ─────────────────────────────────
log "Upload Google Drive (rclone)..."
GDRIVE_STATUS="skipped"
if command -v rclone &>/dev/null; then
  rclone copy "$BACKUP_DIR" "$GDRIVE_DEST" \
    --include "*_${DATE_FULL}*" \
    --log-level INFO \
    --log-file "$LOG_FILE" 2>&1 && GDRIVE_STATUS="OK" || {
    log "WARN: rclone upload falhou — backup local OK, verifique rclone config"
    GDRIVE_STATUS="falhou"
  }
else
  log "WARN: rclone não instalado — backup somente local"
  log "  Instalar: apt-get install -y rclone && rclone config (gdrive-adventure)"
fi

# ── 10. Limpar backups locais antigos (14 dias) ───────────────────────────────
log "Limpando backups locais > $RETENTION_DAYS dias..."
find "$BACKUP_DIR" \
  \( -name "*.sql.gz" -o -name "*.tar.gz" -o -name "*.txt" \) \
  -mtime +"$RETENTION_DAYS" -delete 2>/dev/null || true
find "$LOG_DIR" -name "backup-vps*.log" -mtime +$((RETENTION_DAYS * 2)) -delete 2>/dev/null || true

# ── Sumário ───────────────────────────────────────────────────────────────────
TOTAL_LOCAL=$(du -sh "$BACKUP_DIR" | cut -f1)
log "=== Backup concluído. Disco local: $TOTAL_LOCAL | Google Drive: $GDRIVE_STATUS ==="

notify_telegram "✅ <b>Adventure Labs — Backup OK</b>
$(date -u)
Componentes: Postgres + n8n + Metabase + Evolution + OpenClaw + Crontab + Configs
Google Drive: $GDRIVE_DEST ($GDRIVE_STATUS)
Disco local: $TOTAL_LOCAL"

exit 0
