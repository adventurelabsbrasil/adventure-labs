#!/usr/bin/env bash
# claude-yesterday-log.sh — Varredura diaria dos transcripts do Claude Code.
# Deploy: /opt/adventure-labs/scripts/agents/claude-yesterday-log.sh
# Cron:   0 3 * * * /opt/adventure-labs/scripts/agents/claude-yesterday-log.sh \
#           >> /opt/adventure-labs/logs/claude-yesterday-log.log 2>&1
#
# 03:00 UTC == 00:00 BRT. Le ~/.claude/projects/**/*.jsonl, filtra entradas do dia
# anterior, agrega sessoes/tokens/ferramentas, detecta mudancas em settings.json e
# arquivos modificados via git log, grava um .md em _internal/claude-logs/ e insere
# um registro em adv_claude_daily_logs (Supabase adventurelabsbrasil).
#
# Variaveis esperadas (Infisical ou /opt/adventure-labs/.env):
#   SUPABASE_URL                ex.: https://ftctmseyrqhckutpfdeq.supabase.co
#   SUPABASE_SERVICE_ROLE_KEY   service role (writer)
#   TELEGRAM_BOT_TOKEN, TELEGRAM_CHAT_ID  (opcionais)
#   CLAUDE_PROJECTS_DIR         default ~/.claude/projects
#   ADVENTURE_REPO_DIR          default /opt/adventure-labs/repo
#   CLAUDE_LOG_HOST             default $(hostname -s)

set -euo pipefail

SUPABASE_URL="${SUPABASE_URL:-}"
SUPABASE_SERVICE_ROLE_KEY="${SUPABASE_SERVICE_ROLE_KEY:-}"
TELEGRAM_BOT_TOKEN="${TELEGRAM_BOT_TOKEN:-}"
TELEGRAM_CHAT_ID="${TELEGRAM_CHAT_ID:-}"
CLAUDE_PROJECTS_DIR="${CLAUDE_PROJECTS_DIR:-$HOME/.claude/projects}"
ADVENTURE_REPO_DIR="${ADVENTURE_REPO_DIR:-/opt/adventure-labs/repo}"
CLAUDE_LOG_HOST="${CLAUDE_LOG_HOST:-$(hostname -s)}"

# Timezone BRT (America/Sao_Paulo == UTC-3 sem DST). Calcula "ontem" em BRT.
BRT_NOW=$(TZ=America/Sao_Paulo date +%Y-%m-%d)
LOG_DATE=$(TZ=America/Sao_Paulo date -d 'yesterday' +%Y-%m-%d)
BRT_START="${LOG_DATE}T00:00:00-03:00"
BRT_END="${LOG_DATE}T23:59:59.999-03:00"

LOG_DIR="${ADVENTURE_REPO_DIR}/_internal/claude-logs"
MD_PATH="${LOG_DIR}/${LOG_DATE}.md"
STATE_DIR="/var/tmp/claude-yesterday-log"
mkdir -p "$LOG_DIR" "$STATE_DIR"

log() { echo "[$(date -u +'%Y-%m-%dT%H:%M:%SZ')] claude-yesterday-log: $*"; }

notify_telegram() {
  local msg="$1"
  if [[ -n "$TELEGRAM_BOT_TOKEN" && -n "$TELEGRAM_CHAT_ID" ]]; then
    curl -sS --max-time 15 -X POST \
      "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
      --data-urlencode "chat_id=${TELEGRAM_CHAT_ID}" \
      --data-urlencode "text=${msg}" \
      -d "parse_mode=HTML" \
      -d "disable_web_page_preview=true" >/dev/null 2>&1 || true
  fi
}

# Coleta commits/settings changes do dia anterior no repo (se disponivel).
COMMITS_JSON="[]"
MODIFIED_FILES_JSON="[]"
SETTINGS_CHANGES_JSON="[]"
if [[ -d "$ADVENTURE_REPO_DIR/.git" ]]; then
  pushd "$ADVENTURE_REPO_DIR" >/dev/null
  COMMITS_JSON=$(git log --since="$BRT_START" --until="$BRT_END" \
    --pretty=format:'{"sha":"%H","author":"%an","subject":"%s","ts":"%cI"}' \
    | python3 -c "import sys,json; print(json.dumps([json.loads(l) for l in sys.stdin if l.strip()]))")
  MODIFIED_FILES_JSON=$(git log --since="$BRT_START" --until="$BRT_END" \
    --name-only --pretty=format: \
    | awk 'NF' | sort -u \
    | python3 -c "import sys,json; print(json.dumps([l.strip() for l in sys.stdin if l.strip()]))")
  SETTINGS_CHANGES_JSON=$(git log --since="$BRT_START" --until="$BRT_END" \
    --pretty=format:'%H|%cI|%s' -- \
    '.claude/settings.json' '.claude/settings.local.json' \
    '**/.claude/settings.json' '**/.claude/settings.local.json' \
    | python3 -c "
import sys,json
out=[]
for l in sys.stdin:
    l=l.strip()
    if not l: continue
    sha,ts,subj=l.split('|',2)
    out.append({'sha':sha,'ts':ts,'subject':subj})
print(json.dumps(out))")
  popd >/dev/null
fi

# Parser principal: agrega transcripts do dia.
# Produz JSON no stdout.
PAYLOAD_JSON=$(python3 - "$LOG_DATE" "$CLAUDE_PROJECTS_DIR" \
  "$COMMITS_JSON" "$MODIFIED_FILES_JSON" "$SETTINGS_CHANGES_JSON" "$CLAUDE_LOG_HOST" <<'PY'
import json, os, sys, glob, datetime, collections

log_date = sys.argv[1]
projects_dir = sys.argv[2]
commits = json.loads(sys.argv[3] or "[]")
modified_files = json.loads(sys.argv[4] or "[]")
settings_changes = json.loads(sys.argv[5] or "[]")
host = sys.argv[6] or ""

BRT = datetime.timezone(datetime.timedelta(hours=-3))
day = datetime.date.fromisoformat(log_date)
start = datetime.datetime.combine(day, datetime.time(0,0), BRT)
end   = start + datetime.timedelta(days=1)

sessions = collections.defaultdict(lambda: {
    "session_id": None,
    "project": None,
    "cwd": None,
    "start": None,
    "end": None,
    "events": 0,
    "user_turns": 0,
    "assistant_turns": 0,
    "tokens_input": 0,
    "tokens_output": 0,
    "tokens_cache_read": 0,
    "tokens_cache_write": 0,
    "tools": collections.Counter(),
    "models": set(),
})

def parse_ts(s):
    if not s: return None
    try:
        return datetime.datetime.fromisoformat(s.replace("Z","+00:00"))
    except Exception:
        return None

paths = sorted(glob.glob(os.path.join(projects_dir, "*", "*.jsonl")))
for p in paths:
    project = os.path.basename(os.path.dirname(p))
    try:
        f = open(p, "r", encoding="utf-8", errors="replace")
    except Exception:
        continue
    with f:
        for line in f:
            line = line.strip()
            if not line: continue
            try:
                o = json.loads(line)
            except Exception:
                continue
            ts = parse_ts(o.get("timestamp"))
            if not ts: continue
            if ts < start or ts >= end: continue
            sid = o.get("sessionId") or "unknown"
            s = sessions[sid]
            s["session_id"] = sid
            s["project"] = project
            if o.get("cwd"): s["cwd"] = o["cwd"]
            if s["start"] is None or ts < s["start"]: s["start"] = ts
            if s["end"]   is None or ts > s["end"]:   s["end"]   = ts
            s["events"] += 1
            t = o.get("type")
            if t == "user": s["user_turns"] += 1
            if t == "assistant":
                s["assistant_turns"] += 1
                m = o.get("message") or {}
                if m.get("model"): s["models"].add(m["model"])
                u = m.get("usage") or {}
                s["tokens_input"]       += int(u.get("input_tokens") or 0)
                s["tokens_output"]      += int(u.get("output_tokens") or 0)
                s["tokens_cache_read"]  += int(u.get("cache_read_input_tokens") or 0)
                s["tokens_cache_write"] += int(u.get("cache_creation_input_tokens") or 0)
                for c in (m.get("content") or []):
                    if isinstance(c, dict) and c.get("type") == "tool_use":
                        s["tools"][c.get("name") or "?"] += 1

def serialize(s):
    dur = 0
    if s["start"] and s["end"]:
        dur = int((s["end"] - s["start"]).total_seconds())
    return {
        "session_id": s["session_id"],
        "project": s["project"],
        "cwd": s["cwd"],
        "start": s["start"].isoformat() if s["start"] else None,
        "end":   s["end"].isoformat()   if s["end"]   else None,
        "duration_seconds": dur,
        "events": s["events"],
        "user_turns": s["user_turns"],
        "assistant_turns": s["assistant_turns"],
        "tokens_input": s["tokens_input"],
        "tokens_output": s["tokens_output"],
        "tokens_cache_read": s["tokens_cache_read"],
        "tokens_cache_write": s["tokens_cache_write"],
        "tools": dict(s["tools"]),
        "models": sorted(list(s["models"])),
    }

serialized = [serialize(v) for v in sessions.values()]
serialized.sort(key=lambda x: x["start"] or "")

total_tools = collections.Counter()
agg = {"tokens_input":0,"tokens_output":0,"tokens_cache_read":0,"tokens_cache_write":0,"total_duration_seconds":0}
for s in serialized:
    for k in ("tokens_input","tokens_output","tokens_cache_read","tokens_cache_write"):
        agg[k] += s[k]
    agg["total_duration_seconds"] += s["duration_seconds"]
    for k,v in s["tools"].items():
        total_tools[k] += v

payload = {
    "log_date": log_date,
    "host": host,
    "sessions_count": len(serialized),
    "total_duration_seconds": agg["total_duration_seconds"],
    "tokens_input": agg["tokens_input"],
    "tokens_output": agg["tokens_output"],
    "tokens_cache_read": agg["tokens_cache_read"],
    "tokens_cache_write": agg["tokens_cache_write"],
    "tools_used": dict(total_tools),
    "modified_files": modified_files,
    "settings_changes": settings_changes,
    "commits": commits,
    "sessions": serialized,
}
print(json.dumps(payload, ensure_ascii=False))
PY
)

log "Sessoes coletadas para $LOG_DATE"

# Monta o markdown de briefing a partir do payload.
python3 - "$PAYLOAD_JSON" "$MD_PATH" "$LOG_DATE" "$CLAUDE_LOG_HOST" <<'PY'
import json, sys, os
payload = json.loads(sys.argv[1])
md_path = sys.argv[2]
log_date = sys.argv[3]
host = sys.argv[4]

def h(n):
    if n is None: return "0"
    n=int(n)
    if n >= 1_000_000: return f"{n/1_000_000:.2f}M"
    if n >= 1_000:     return f"{n/1_000:.1f}k"
    return str(n)

def dur(s):
    s=int(s or 0)
    h_=s//3600; m=(s%3600)//60; sec=s%60
    if h_: return f"{h_}h{m:02d}m"
    if m:  return f"{m}m{sec:02d}s"
    return f"{sec}s"

tools_line = ", ".join(f"{k} ({v})" for k,v in sorted(payload["tools_used"].items(), key=lambda x:-x[1])[:15]) or "—"

lines = []
lines.append(f"# Claude Code — Log de {log_date} ({host})")
lines.append("")
lines.append("> Gerado automaticamente pelo cron `claude-yesterday-log` a 00:00 BRT.")
lines.append("> Leia antes de bootar sua sessao para saber o que aconteceu no dia anterior.")
lines.append("")
lines.append("## Resumo")
lines.append("")
lines.append(f"- **Sessoes:** {payload['sessions_count']}")
lines.append(f"- **Duracao total:** {dur(payload['total_duration_seconds'])}")
lines.append(f"- **Tokens in/out:** {h(payload['tokens_input'])} / {h(payload['tokens_output'])}")
lines.append(f"- **Cache read/write:** {h(payload['tokens_cache_read'])} / {h(payload['tokens_cache_write'])}")
lines.append(f"- **Ferramentas mais usadas:** {tools_line}")
lines.append(f"- **Commits no repo:** {len(payload['commits'])}")
lines.append(f"- **Arquivos alterados:** {len(payload['modified_files'])}")
lines.append(f"- **Mudancas em settings.json:** {len(payload['settings_changes'])}")
lines.append("")

if payload["settings_changes"]:
    lines.append("## Settings modificados")
    lines.append("")
    for c in payload["settings_changes"]:
        lines.append(f"- `{c['sha'][:8]}` ({c['ts']}) — {c['subject']}")
    lines.append("")

if payload["commits"]:
    lines.append("## Commits do dia")
    lines.append("")
    for c in payload["commits"]:
        lines.append(f"- `{c['sha'][:8]}` — {c['subject']} _(autor: {c['author']})_")
    lines.append("")

if payload["modified_files"]:
    lines.append("## Arquivos alterados")
    lines.append("")
    for f in payload["modified_files"][:200]:
        lines.append(f"- `{f}`")
    if len(payload["modified_files"]) > 200:
        lines.append(f"- …(+{len(payload['modified_files'])-200} arquivos)")
    lines.append("")

lines.append("## Sessoes")
lines.append("")
if not payload["sessions"]:
    lines.append("_Nenhuma sessao registrada no dia._")
else:
    for s in payload["sessions"]:
        top_tools = ", ".join(f"{k}:{v}" for k,v in sorted(s["tools"].items(), key=lambda x:-x[1])[:5]) or "—"
        models = ", ".join(s["models"]) or "—"
        lines.append(f"### `{s['session_id'][:8]}` — {s['start']} → {s['end']}")
        lines.append("")
        lines.append(f"- **cwd:** `{s['cwd'] or '—'}`")
        lines.append(f"- **Duracao:** {dur(s['duration_seconds'])} · **turnos:** {s['user_turns']} user / {s['assistant_turns']} assistant")
        lines.append(f"- **Tokens:** in {h(s['tokens_input'])}, out {h(s['tokens_output'])}, cache r/w {h(s['tokens_cache_read'])}/{h(s['tokens_cache_write'])}")
        lines.append(f"- **Ferramentas:** {top_tools}")
        lines.append(f"- **Modelos:** {models}")
        lines.append("")
lines.append("---")
lines.append("")
lines.append("_Fonte: `~/.claude/projects/*/*.jsonl` + `git log` + Supabase `adv_claude_daily_logs`._")

os.makedirs(os.path.dirname(md_path), exist_ok=True)
with open(md_path, "w", encoding="utf-8") as f:
    f.write("\n".join(lines) + "\n")
PY

log "Markdown salvo em $MD_PATH"

# Grava no Supabase (upsert por tenant_id+log_date+host).
if [[ -n "$SUPABASE_URL" && -n "$SUPABASE_SERVICE_ROLE_KEY" ]]; then
  UPSERT=$(python3 - "$PAYLOAD_JSON" "$MD_PATH" <<'PY'
import json, sys, os
p = json.loads(sys.argv[1])
md = sys.argv[2]
rel_md = md.replace(os.environ.get("ADVENTURE_REPO_DIR",""),"").lstrip("/")
summary = (
    f"Sessoes:{p['sessions_count']} · Dur:{p['total_duration_seconds']}s · "
    f"In:{p['tokens_input']} Out:{p['tokens_output']} · Commits:{len(p['commits'])} · "
    f"Files:{len(p['modified_files'])} · Settings:{len(p['settings_changes'])}"
)
body = {
    "log_date": p["log_date"],
    "host": p["host"] or None,
    "sessions_count": p["sessions_count"],
    "total_duration_seconds": p["total_duration_seconds"],
    "tokens_input": p["tokens_input"],
    "tokens_output": p["tokens_output"],
    "tokens_cache_read": p["tokens_cache_read"],
    "tokens_cache_write": p["tokens_cache_write"],
    "tools_used": p["tools_used"],
    "modified_files": p["modified_files"],
    "settings_changes": p["settings_changes"],
    "commits": p["commits"],
    "sessions": p["sessions"],
    "summary_text": summary,
    "md_path": rel_md,
    "raw_stats": {"tools_used": p["tools_used"]},
}
print(json.dumps(body, ensure_ascii=False))
PY
)
  HTTP=$(curl -sS -o /tmp/claude-yesterday-log.resp -w "%{http_code}" \
    -X POST "${SUPABASE_URL}/rest/v1/adv_claude_daily_logs?on_conflict=tenant_id,log_date,host" \
    -H "apikey: ${SUPABASE_SERVICE_ROLE_KEY}" \
    -H "Authorization: Bearer ${SUPABASE_SERVICE_ROLE_KEY}" \
    -H "Content-Type: application/json" \
    -H "Prefer: resolution=merge-duplicates,return=minimal" \
    --data-binary "$UPSERT") || HTTP="000"
  if [[ "$HTTP" =~ ^2 ]]; then
    log "Supabase upsert OK ($HTTP)"
  else
    log "Supabase upsert FAIL ($HTTP): $(cat /tmp/claude-yesterday-log.resp 2>/dev/null | head -c 400)"
    notify_telegram "🚨 <b>claude-yesterday-log</b>%0AFalha ao inserir em adv_claude_daily_logs (HTTP ${HTTP}) — log_date=${LOG_DATE}"
  fi
else
  log "SUPABASE_URL/KEY ausentes — pulando upsert"
fi

# Commit opcional do .md no repo se houver git + branch de logs.
if [[ -d "$ADVENTURE_REPO_DIR/.git" && -n "${CLAUDE_LOG_COMMIT:-}" ]]; then
  pushd "$ADVENTURE_REPO_DIR" >/dev/null
  git add "_internal/claude-logs/${LOG_DATE}.md" 2>/dev/null || true
  if ! git diff --cached --quiet; then
    git -c user.email="bot@adventurelabs.com.br" -c user.name="claude-yesterday-log" \
      commit -m "chore(claude-log): ${LOG_DATE} — ${CLAUDE_LOG_HOST}" >/dev/null 2>&1 || true
    git push origin HEAD 2>/dev/null || true
  fi
  popd >/dev/null
fi

SUMMARY="✅ <b>Claude Code — Log ${LOG_DATE}</b>%0AHost: ${CLAUDE_LOG_HOST}%0ASessoes: $(python3 -c 'import json,sys;print(json.loads(sys.argv[1])["sessions_count"])' "$PAYLOAD_JSON")%0AMD: <code>_internal/claude-logs/${LOG_DATE}.md</code>"
notify_telegram "$SUMMARY"

log "OK — log_date=$LOG_DATE"
