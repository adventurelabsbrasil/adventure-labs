#!/bin/bash
# Auditoria de secrets no histórico Git dos submodules
# Uso: ./scripts/audit-secrets.sh [--report]
# Sem --report: imprime no stdout
# Com --report: grava _internal/audit-secrets-report.md (completo, gitignore) e _internal/audit-secrets-summary.md (resumo, commitável)

set -e
REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_ROOT"

REPORT_FILE="_internal/audit-secrets-report.md"
SUMMARY_FILE="_internal/audit-secrets-summary.md"
WRITE_REPORT=false
[ "${1:-}" = "--report" ] && WRITE_REPORT=true

log() {
  if $WRITE_REPORT; then
    echo "$1" >> "$REPORT_FILE"
  else
    echo "$1"
  fi
}

if $WRITE_REPORT; then
  mkdir -p _internal
  : > "$REPORT_FILE"
  : > "$SUMMARY_FILE"
  log "# Relatório de Auditoria de Secrets"
  log ""
  log "Data: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
  log ""
  echo "# Resumo da Auditoria de Secrets" >> "$SUMMARY_FILE"
  echo "" >> "$SUMMARY_FILE"
  echo "Data: $(date -u +%Y-%m-%dT%H:%M:%SZ)" >> "$SUMMARY_FILE"
  echo "" >> "$SUMMARY_FILE"
fi

SUBMODULES=$(git config --file .gitmodules --get-regexp path | awk '{ print $2 }')
FOUND_ISSUES=0

for sub in $SUBMODULES; do
  if [ ! -d "$sub/.git" ]; then
    log "⚠ $sub: submodule não inicializado (pule)"
    $WRITE_REPORT && echo "- ⚠ \`$sub\`: não inicializado" >> "$SUMMARY_FILE"
    continue
  fi
  log "## $sub"
  HITS=$(cd "$sub" && git log -p --all 2>/dev/null | grep -E '(API_KEY|password|secret|token|Bearer|sk-|ghp_)' \
    | grep -v 'process\.env\.' \
    | grep -v 'REDACTED\|placeholder\|example\.com\|xxx\|dummy' \
    | head -20) || true
  if [ -n "$HITS" ]; then
    log "⚠ Possíveis hits (revisar manualmente):"
    log "\`\`\`"
    log "$HITS"
    log "\`\`\`"
    $WRITE_REPORT && echo "- ⚠ \`$sub\`: hits encontrados (ver relatório completo local)" >> "$SUMMARY_FILE"
    FOUND_ISSUES=$((FOUND_ISSUES + 1))
  else
    log "✓ Nenhum padrão suspeito encontrado"
    $WRITE_REPORT && echo "- ✓ \`$sub\`: ok" >> "$SUMMARY_FILE"
  fi
  log ""
done

log "---"
if [ $FOUND_ISSUES -gt 0 ]; then
  log "**Ação:** Revisar hits acima. Se forem secrets reais, usar \`git filter-repo\` ou BFG (ver docs/FASE_6_GIT_E_REPOSITORIO.md)"
  $WRITE_REPORT && echo "" >> "$SUMMARY_FILE" && echo "**Ação:** Revisar relatório completo. Ver docs/FASE_6_GIT_E_REPOSITORIO.md" >> "$SUMMARY_FILE"
else
  log "**Resultado:** Nenhum secret óbvio detectado. Auditoria manual ainda recomendada."
  $WRITE_REPORT && echo "" >> "$SUMMARY_FILE" && echo "**Resultado:** Nenhum hit detectado." >> "$SUMMARY_FILE"
fi

if $WRITE_REPORT; then
  echo "Relatório completo: $REPORT_FILE (não versionado)"
  echo "Resumo commitável: $SUMMARY_FILE"
fi
exit 0
