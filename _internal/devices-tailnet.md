# Devices na Tailnet — Adventure Labs

> Referência operacional para todos os dispositivos conectados à Tailnet da Adventure Labs.
> Atualizado: 2026-04-17

---

## Mapa de Devices

| Device | IP Tailscale | IP Local | User | SO | Função |
|--------|-------------|----------|------|----|--------|
| VPS Hostinger | 187.77.251.199 (público) | — | root | Ubuntu 22.04 | Produção: n8n, Metabase, Plane, Evolution, Infisical, Vaultwarden |
| MacBook Air M4 (Rodrigo) | — | — | ribasrodrigo91 | macOS | Dev principal, Claude Code, Cursor |
| Beelink T4 Pro | 100.110.39.45 | 192.168.1.2 (WiFi) | adventurelabs | Ubuntu 24.04 | Nó edge AI always-on |

---

## Beelink T4 Pro — Referência Completa

### Acesso
```bash
ssh beelink                        # via ~/.ssh/config (alias)
ssh adventurelabs@100.110.39.45    # direto via Tailscale
ssh adventurelabs@192.168.1.2      # fallback rede local (mesma rede WiFi)
```

### Stack Instalada
| Ferramenta | Versão | Localização |
|-----------|--------|------------|
| Docker | 29.4.0 | `/usr/bin/docker` |
| Node.js | v24.14.1 | `/usr/bin/node` |
| Claude Code | 2.1.112 | `/usr/bin/claude` |
| Repositório | main | `~/adventure-labs/` |

### Credenciais e Chaves
| Chave | Onde está | Como consultar |
|-------|-----------|----------------|
| `ANTHROPIC_API_KEY` | `~/.bashrc` (Beelink) | `ssh beelink "grep ANTHROPIC ~/.bashrc"` |
| SSH authorized keys | `~/.ssh/authorized_keys` | `ssh beelink "cat ~/.ssh/authorized_keys"` |
| GitHub token (clone) | `~/adventure-labs/.git/config` (URL) | Rotar a cada 90 dias — console.github.com |

### Plano de Restart após Queda de Energia

O Beelink retoma automaticamente ao ligar:
1. **Tailscaled** (systemd) — reconecta à Tailnet automaticamente
2. **Docker** (systemd) — sobe com `restart: unless-stopped` ou `always`
3. **Cron** (crontab do usuário `adventurelabs`) — retoma no próximo intervalo
4. **Claude Code** — é um CLI, não daemon; não precisa restart automático

Verificação pós-reboot:
```bash
ssh beelink "systemctl is-active tailscaled docker && crontab -l"
```

### Rota Alternativa se Tailscale Desconectar

| Cenário | Rota | Comando |
|---------|------|---------|
| Mesma rede WiFi (192.168.1.x) | IP local | `ssh adventurelabs@192.168.1.2` |
| Fora da rede local | Reconectar Tailscale no device | `ssh adventurelabs@192.168.1.2 "sudo tailscale up"` |
| Tailscale inacessível + fora da rede | Acesso físico ao Beelink | — |

Para reconectar Tailscale remotamente via rede local:
```bash
ssh adventurelabs@192.168.1.2 "sudo tailscale up --authkey <TS_AUTH_KEY>"
```
Auth key gerada em: **login.tailscale.com → Settings → Keys → Generate auth key**

### Cron Jobs Configurados
```
0 5 * * *  git -C ~/adventure-labs pull origin main >> ~/repo-sync.log 2>&1
```

---

## VPS Hostinger — Referência Rápida

### Acesso
```bash
ssh root@187.77.251.199    # SSH direto (IP público)
```

### Serviços Docker (containers críticos monitorados pelo hivemind)
| Container | URL | Status check |
|-----------|-----|-------------|
| adventure-n8n | flow.adventurelabs.com.br | `docker logs adventure-n8n --tail 20` |
| adventure-metabase | bi.adventurelabs.com.br | `docker logs adventure-metabase --tail 20` |
| adventure-evolution | api-wa.adventurelabs.com.br | `docker logs adventure-evolution --tail 20` |
| adventure-infisical | vault.adventurelabs.com.br | `docker logs adventure-infisical --tail 20` |
| adventure-vaultwarden | pw.adventurelabs.com.br | `docker logs adventure-vaultwarden --tail 20` |
| adventure-uptime | status.adventurelabs.com.br | `docker logs adventure-uptime --tail 20` |
| plane-app-web-1 | tasks.adventurelabs.com.br | `docker logs plane-app-web-1 --tail 20` |

### Scripts Operacionais
| Script | Cron | Função |
|--------|------|--------|
| `hivemind-heartbeat.sh` | `17 */4 * * *` | Monitor containers → Telegram |
| `mercadopago-sync.sh` | `*/30 * * * *` | Sync MP → Supabase (adv_mp_payments) |
| `backup-vps.sh` | `30 6 * * *` | Backup completo → Google Drive |
| `adventure-agent.sh` | dispatcher | Executa todos os agentes C-Suite |

Scripts em: `/opt/adventure-labs/scripts/agents/`
Logs em: `/opt/adventure-labs/logs/`

---

## Tailscale — Gestão da Rede

**Dashboard:** login.tailscale.com
**Rede:** `tailf7a1ad.ts.net`

### Comandos úteis
```bash
# Ver devices conectados (em qualquer device)
tailscale status

# Reconectar device
sudo tailscale up

# Gerar auth key para novo device
# → login.tailscale.com → Settings → Keys → Generate auth key (reusable: false, ephemeral: false)
```

### Adicionar novo device à Tailnet
1. Instalar Tailscale: `curl -fsSL https://tailscale.com/install.sh | sh`
2. Autenticar: `sudo tailscale up` (abre browser ou usa `--authkey`)
3. Aprovar no dashboard: login.tailscale.com → Machines
4. Documentar aqui neste arquivo
