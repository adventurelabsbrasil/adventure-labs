---
title: Registro de continuidade OpenClaw + n8n (2026-03-30)
domain: gestao_corporativa
tags: [registro, continuidade, openclaw, n8n, hostinger, verificacao]
updated: 2026-03-30
owner: Torvalds (CTO)
status: ativo
---

# Registro de continuidade OpenClaw + n8n (2026-03-30)

Verificação objetiva pós-plano **n8n + OpenClaw always-on** (Hostinger VPS). SSH no host não foi executado nesta sessão (sem chave no ambiente do agente).

## Evidências de runtime (automáticas)

| Verificação | Resultado |
|-------------|-----------|
| DNS `coolify` / `n8n` / `openclaw` → `187.77.251.199` | OK (três subdomínios) |
| `curl -I https://coolify.adventurelabs.com.br` | `HTTP/2 200` |
| `curl -I https://n8n.adventurelabs.com.br` | `HTTP/2 401` (auth ativa, esperado) |
| `curl -I https://openclaw.adventurelabs.com.br` | `HTTP/2 200` (UI) |
| `curl https://openclaw.adventurelabs.com.br/health` | `{"ok":true,"status":"live"}` |
| TLS `openclaw.adventurelabs.com.br:443` (openssl) | **Let's Encrypt R12**, CN=`openclaw.adventurelabs.com.br`, válido até **2026-06-24** (não é certificado default Traefik inválido) |
| `curl http://187.77.251.199:18789/health` | Timeout (porta não exposta publicamente — coerente com acesso só via HTTPS reverso) |
| Hostinger `VPS_getVirtualMachinesV1` | VM **1526292**, `running`, `187.77.251.199`, plano KVM 2, Ubuntu 24.04 |
| Hostinger `VPS_getFirewallListV1` | **Lista vazia** (sem firewall cadastrado via API — risco em aberto; ver checklist 24/7) |
| Hostinger `VPS_getMetricsV1` (2026-03-23 a 2026-03-30) | Métricas disponíveis; uso dentro do esperado para host ativo |

## Comparação com 2026-03-26

No [registro de 26/03](registro-continuidade-openclaw-n8n-2026-03-26.md), o OpenClaw público ainda tinha TLS problemático (TRAEFIK DEFAULT / HSTS). Em **30/03/2026**, o certificado do host `openclaw.adventurelabs.com.br` é **Let's Encrypt** válido e o `/health` responde `live`.

## Próximos marcos (operacionais, fora deste commit)

- Criar regras de firewall na Hostinger (22, 80, 443; restringir 3000 se exposto).
- Habilitar backups/snapshots da VPS no painel (API de backups retornou rota não encontrada nesta chamada — validar no dashboard).
- SSH: `docker ps`, `pm2 status` (se PM2 ainda usado) para confirmar política de restart após reboot.

## Índice SSOT

Ver [`INDEX-n8n-openclaw-vps.md`](INDEX-n8n-openclaw-vps.md).
