#!/usr/bin/env bash
# buzz-vps-serve.sh — ativa Tailscale Serve HTTPS + origin HTTPS + restart gateway
#
# Arquitetura resultante:
#
#   iPhone/Mac ──(tailnet WireGuard)──→ <fqdn>.ts.net:443 (Tailscale Serve HTTPS)
#                                              ↓ reverse proxy
#                                       127.0.0.1:18789 (OpenClaw gateway loopback)
#
# - HTTPS real com cert Let's Encrypt → satisfaz "secure context" da Control UI
# - Gateway permanece em loopback (defesa em profundidade)
# - Acesso só via tailnet (Tailscale Serve, não Funnel)
#
# Pré-requisitos:
#   - Tailscale instalado e logado na VPS
#   - HTTPS Certificates habilitados em https://login.tailscale.com/admin/dns
#   - Gateway já com bind=loopback em /root/.openclaw/openclaw.json
#
# Uso (a partir do Mac):
#   scp scripts/buzz-vps-serve.sh root@hostinger:/tmp/
#   ssh root@hostinger 'bash /tmp/buzz-vps-serve.sh'

set -euo pipefail

CONFIG=/root/.openclaw/openclaw.json
STAMP=$(date +%Y%m%d-%H%M%S)
BACKUP="${CONFIG}.bak.${STAMP}"

TS_FQDN=$(tailscale status --json | python3 -c 'import json,sys; print(json.load(sys.stdin)["Self"]["DNSName"].rstrip("."))')
TS_IP=$(tailscale ip -4 | head -n1)

echo "=== 0) Ambiente ==="
echo "FQDN: $TS_FQDN"
echo "IP:   $TS_IP"

echo
echo "=== 1) Garante bind=loopback no openclaw.json ==="
cp "$CONFIG" "$BACKUP"
echo "backup: $BACKUP"
python3 <<PY
import json
p = "$CONFIG"
d = json.load(open(p))
d.setdefault("gateway", {})["bind"] = "loopback"
json.dump(d, open(p, "w"), indent=2)
print("bind:", d["gateway"]["bind"])
PY

echo
echo "=== 2) Reset serve anterior ==="
tailscale serve reset 2>/dev/null || true
sleep 2

echo
echo "=== 3) Ativa Tailscale Serve HTTPS ==="
# sintaxe v1.64+: --bg <backend>  (HTTPS assumido)
tailscale serve --bg http://127.0.0.1:18789
sleep 5

echo
echo "=== 4) Status do serve ==="
tailscale serve status

echo
echo "=== 5) Adicionando origins HTTPS à allowedOrigins ==="
python3 <<PY
import json
p = "$CONFIG"
fqdn = "$TS_FQDN"
d = json.load(open(p))
ui = d["gateway"].setdefault("controlUi", {})
origins = set(ui.get("allowedOrigins", []))
for o in [f"https://{fqdn}", f"https://{fqdn}:443"]:
    origins.add(o)
ui["allowedOrigins"] = sorted(origins)
json.dump(d, open(p, "w"), indent=2)
print("allowedOrigins:")
print(json.dumps(ui["allowedOrigins"], indent=2))
PY

echo
echo "=== 6) Restart gateway ==="
systemctl --user restart openclaw-gateway
sleep 12

echo
echo "=== 7) Portas escutando ==="
ss -tlnp | grep 18789 || echo "NADA"

echo
echo "=== 8) Teste HTTPS end-to-end ==="
curl -sS -o /dev/null -m 30 -w "HTTPS tailnet (%{url_effective}): %{http_code}\n" "https://${TS_FQDN}/" || echo "HTTPS falhou — cert provavelmente ainda provisionando, tente de novo em 30s"

echo
echo "=== DONE ==="
echo "URL: https://${TS_FQDN}/#token=<use token de ~/.config/buzz/token>"
echo "backup: $BACKUP"
