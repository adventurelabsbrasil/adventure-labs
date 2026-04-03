#!/usr/bin/env bash
# enable-tls.sh — Gera certificados TLS e ativa HTTPS para todos os subdomínios
# Executar SOMENTE após os registros DNS apontarem para 187.77.251.199
# Uso: ./enable-tls.sh [email]

set -euo pipefail

EMAIL="${1:-ops@adventurelabs.com.br}"
VPS_IP="187.77.251.199"
DOMAINS="flow.adventurelabs.com.br bi.adventurelabs.com.br api-wa.adventurelabs.com.br status.adventurelabs.com.br vault.adventurelabs.com.br"

echo "=== Verificando DNS antes de gerar certificados ==="
ALL_OK=true
for domain in $DOMAINS; do
  ip=$(dig +short "$domain" A | head -1)
  if [[ "$ip" == "$VPS_IP" ]]; then
    echo "  ✅ $domain -> $ip"
  else
    echo "  ❌ $domain -> $ip (esperado: $VPS_IP)"
    ALL_OK=false
  fi
done

if [[ "$ALL_OK" != "true" ]]; then
  echo ""
  echo "ERRO: DNS não propagado. Configure os registros A no seu provedor DNS."
  echo "Todos os subdomínios devem apontar para $VPS_IP"
  exit 1
fi

echo ""
echo "=== DNS OK. Gerando certificados TLS ==="

for domain in $DOMAINS; do
  echo "Gerando certificado para $domain..."
  certbot certonly --nginx \
    -d "$domain" \
    --email "$EMAIL" \
    --agree-tos \
    --non-interactive \
    --redirect 2>&1 | tail -5
done

echo ""
echo "=== Ativando config HTTPS no Nginx ==="
cp /opt/adventure-labs/nginx/conf.d/adventure-labs-https.conf /etc/nginx/conf.d/adventure-labs.conf
nginx -t && systemctl reload nginx
echo "✅ HTTPS ativado com sucesso!"
echo ""
echo "=== Renovação automática (certbot.timer) ==="
systemctl status certbot.timer --no-pager | head -5
echo ""
echo "✅ TLS ativo para todos os serviços Adventure Labs!"
