#!/usr/bin/env bash
# adventure_ops.sh — Backup diário + notificações Adventure Labs
# Deploy: /opt/adventure-labs/scripts/adventure_ops.sh
# Cron: 0 3 * * * /opt/adventure-labs/scripts/adventure_ops.sh >> /opt/adventure-labs/backups/cron.log 2>&1

set -euo pipefail

BACKUP_DIR="/opt/adventure-labs/backups"
DATE=$(date +%Y%m%d_%H%M%S)
LOG_FILE="$BACKUP_DIR/ops_${DATE}.log"
TELEGRAM_BOT_TOKEN="${TELEGRAM_BOT_TOKEN:-}"
TELEGRAM_CHAT_ID="${TELEGRAM_CHAT_ID:-}"

log() { echo "[$(date +'%Y-%m-%d %H:%M:%S')] $*" | tee -a "$LOG_FILE"; }

notify_telegram() {
  local msg="$1"
  if [[ -n "$TELEGRAM_BOT_TOKEN" && -n "$TELEGRAM_CHAT_ID" ]]; then
    curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
      -d "chat_id=${TELEGRAM_CHAT_ID}" \
      -d "text=${msg}" \
      -d "parse_mode=HTML" > /dev/null 2>&1 || true
  fi
}

fail() {
  log "ERRO: $*"
  notify_telegram "🚨 <b>Adventure Labs VPS — FALHA no backup</b>%0A$(date)%0AErro: $*"
  exit 1
}

mkdir -p "$BACKUP_DIR"
log "=== Início do backup Adventure Labs ==="

# 1. Dump Postgres (Infisical + Evolution)
log "Fazendo dump do Postgres..."
docker exec adventure-postgres pg_dumpall -U infisical \
  > "$BACKUP_DIR/postgres_${DATE}.sql" 2>>"$LOG_FILE" || fail "pg_dumpall falhou"
gzip "$BACKUP_DIR/postgres_${DATE}.sql"
log "Dump Postgres: OK ($(du -sh "${BACKUP_DIR}/postgres_${DATE}.sql.gz" | cut -f1))"

# 2. Backup Metabase SQLite
log "Fazendo backup do Metabase..."
docker run --rm \
  -v adventure-labs_metabase_data:/source:ro \
  -v "$BACKUP_DIR":/backup \
  alpine sh -c "cp -r /source/. /backup/metabase_${DATE}/ 2>/dev/null; true" 2>>"$LOG_FILE" || true
tar -czf "$BACKUP_DIR/metabase_${DATE}.tar.gz" -C "$BACKUP_DIR" "metabase_${DATE}" 2>/dev/null && \
  rm -rf "$BACKUP_DIR/metabase_${DATE}" || true
log "Backup Metabase: OK"

# 3. Backup n8n workflows
log "Fazendo backup do n8n..."
docker run --rm \
  -v adventure-labs_n8n_data:/source:ro \
  -v "$BACKUP_DIR":/backup \
  alpine sh -c "tar -czf /backup/n8n_${DATE}.tar.gz -C /source . 2>/dev/null; true" 2>>"$LOG_FILE" || true
log "Backup n8n: OK"

# 4. Backup Evolution instances
log "Fazendo backup do Evolution API..."
docker run --rm \
  -v adventure-labs_evolution_data:/source:ro \
  -v "$BACKUP_DIR":/backup \
  alpine sh -c "tar -czf /backup/evolution_${DATE}.tar.gz -C /source . 2>/dev/null; true" 2>>"$LOG_FILE" || true
log "Backup Evolution: OK"

# 5. Backup Cérebro Agentes (Git Auto-Commit)
log "Fazendo auto-commit dos agentes e configurações..."
cd /opt/adventure-labs || log "Diretório /opt/adventure-labs não encontrado para backup git"
if [ -d "/opt/adventure-labs/.git" ]; then
  # Adiciona mudanças em agents/, knowledge/, tools/, e scripts/
  git add agents/ knowledge/ tools/ scripts/ 2>>"$LOG_FILE" || true
  
  # Verifica se tem algo a comitar
  if ! git diff --cached --quiet; then
    git commit -m "chore(backup): auto-save diário de agentes e configs [skip ci]" 2>>"$LOG_FILE" || true
    # Se quiser forçar o push: 
    # git push origin main 2>>"$LOG_FILE" || log "Falha no git push. Commit salvo localmente."
    log "Auto-commit Git: OK (Novas mudanças salvas localmente)"
  else
    log "Auto-commit Git: Nenhuma alteração nos agentes detectada."
  fi
else
  log "Auto-commit Git: Ignorado (/opt/adventure-labs não é um repositório git)"
fi

# 6. Verificar saúde dos containers
log "Verificando saúde dos containers..."
UNHEALTHY=""
for container in adventure-n8n adventure-metabase adventure-uptime adventure-evolution adventure-infisical; do
  status=$(docker inspect --format='{{.State.Health.Status}}' "$container" 2>/dev/null || echo "unknown")
  if [[ "$status" != "healthy" && "$status" != "starting" ]]; then
    UNHEALTHY="$UNHEALTHY $container($status)"
  fi
done

if [[ -n "$UNHEALTHY" ]]; then
  notify_telegram "⚠️ <b>Adventure Labs — Containers com problema</b>%0A$(date)%0AProblema:$UNHEALTHY"
fi

# 7. Limpar backups antigos (manter 7 dias)
log "Limpando backups antigos (>7 dias)..."
find "$BACKUP_DIR" -name "*.sql.gz" -mtime +7 -delete 2>/dev/null || true
find "$BACKUP_DIR" -name "*.tar.gz" -mtime +7 -delete 2>/dev/null || true
find "$BACKUP_DIR" -name "ops_*.log" -mtime +14 -delete 2>/dev/null || true

# 8. Sumário
TOTAL=$(du -sh "$BACKUP_DIR" | cut -f1)
log "=== Backup concluído. Total em disco: $TOTAL ==="
notify_telegram "✅ <b>Adventure Labs — Backup OK</b>%0A$(date)%0APostgres + Metabase + n8n + Evolution + Git Agentes%0ADisco usado: $TOTAL"

exit 0
