# OpenClaw Dashboard — Automação de Acesso

**Objetivo:** eliminar o fluxo manual de 5 passos (Hostinger → terminal web → `openclaw dashboard` → copiar SSH → colar no Mac → copiar URL → abrir Chrome) e permitir acesso ao dashboard do Buzz de qualquer lugar, inclusive celular.

**Estado atual (2026-04-14):**

- Gateway OpenClaw roda via systemd em `127.0.0.1:18789` na VPS (loopback-only; ver `tools/openclaw/VPS_SETUP.md`)
- Auth = token impresso por `openclaw dashboard`
- Acesso remoto exige SSH tunnel manual

---

## Decisão: três camadas complementares

| Camada | O que resolve | Complexidade | Recomendação |
|--------|--------------|--------------|--------------|
| **1. Script `buzz-dashboard`** | 1 comando no Mac abre tudo | baixa | **fazer já** |
| **2. Tailscale na VPS** | acesso de qualquer lugar, sem SSH tunnel, inclui celular | média | **fazer em seguida** |
| **3. Tailscale Serve (HTTPS)** | URL HTTPS limpa via MagicDNS, sem porta | baixa (pós-Tailscale) | opcional |

**Não expor `openclaw.adventurelabs.com.br` à internet pública** (nginx config existe em `tools/openclaw/nginx/openclaw.conf` mas não deve ser deployado). O token do dashboard não é credencial forte o suficiente para expor ao mundo.

---

## Camada 1 — Script local (`scripts/buzz-dashboard.sh`)

Substitui o fluxo manual. No Mac:

```bash
# primeira vez
ln -s "$(pwd)/scripts/buzz-dashboard.sh" /usr/local/bin/buzz-dashboard

# uso diário
buzz-dashboard             # abre tudo
buzz-dashboard --status    # tunnel vivo?
buzz-dashboard --stop      # fecha tunnel
```

**O que o script faz:**

1. SSH na VPS e executa `openclaw dashboard`, capturando a URL com token
2. Abre o tunnel `localhost:18789 → VPS:18789` em background (com keepalive)
3. Abre a URL no Chrome

**Pré-requisito:** chave SSH do Mac autorizada em `root@187.77.251.199`. Se você já cola `ssh -N -L ... root@187.77.251.199` e funciona, isso já está ok.

**Variáveis úteis** (em `~/.zshrc`):

```bash
export BUZZ_VPS_HOST=187.77.251.199   # ou "hostinger" quando Tailscale estiver ativo
export BUZZ_PORT=18789
```

---

## Camada 2 — Tailscale na VPS (RECOMENDADO)

**Por que:** Tailscale já roda no seu MacBook. Adicionar a VPS à tailnet remove completamente o SSH tunnel e dá acesso de **qualquer dispositivo autenticado** (Mac, iPhone, outro laptop) — de qualquer rede.

Responde diretamente à pergunta "contratei VPS para não depender do Macbook": sim, Tailscale resolve. Depois dela, você abre o dashboard do iPhone em qualquer café.

### Setup na VPS (uma vez)

Usar o script idempotente `scripts/vps-tailscale-setup.sh`:

```bash
# do Mac, mandar o script pra VPS e rodar
scp scripts/vps-tailscale-setup.sh root@187.77.251.199:/tmp/

# diagnóstico primeiro (não altera nada)
ssh root@187.77.251.199 'bash /tmp/vps-tailscale-setup.sh --check'

# instalação + tailscale up (vai imprimir URL de auth — abrir no browser)
ssh -t root@187.77.251.199 'bash /tmp/vps-tailscale-setup.sh --install'

# DEPOIS de confirmar que Mac acessa a VPS via Tailscale, bloquear 18789 público:
ssh -t root@187.77.251.199 'bash /tmp/vps-tailscale-setup.sh --lockdown'
```

Equivalente manual (se preferir):

```bash
curl -fsSL https://tailscale.com/install.sh | sh
tailscale up --hostname=hostinger --ssh --accept-routes
tailscale status && tailscale ip -4
```

`--ssh` habilita Tailscale SSH: você passa a entrar na VPS via `ssh root@hostinger` sem chave/senha (autenticação é a própria tailnet). Mantém chave tradicional como fallback se preferir.

### Depois do setup

1. OpenClaw continua em `127.0.0.1:18789` (loopback — correto, mantém segurança)
2. Acesso pelo Mac/iPhone via Tailscale **SSH tunnel sobre Tailscale** (ainda precisa de tunnel, mas agora via rede privada criptografada e disponível em qualquer lugar)
3. Ajustar script: `export BUZZ_VPS_HOST=hostinger`

### Opção mais limpa: bind no IP da tailnet (sem UFW)

Pra eliminar o tunnel e permitir acesso do iPhone, o gateway precisa ouvir em `tailscale0`. A forma mais segura é alterar o systemd unit pra passar `--host <IP_TAILNET>` ao gateway:

```bash
# Editar /root/.config/systemd/user/openclaw-gateway.service
# Linha ExecStart:
#   de:  ExecStart=/usr/bin/node .../index.js gateway --port 18789
#   pra: ExecStart=/usr/bin/node .../index.js gateway --host 100.122.165.119 --port 18789

systemctl --user daemon-reload
systemctl --user restart openclaw-gateway

# Validar
ss -tlnp | grep 18789   # deve listar 100.122.165.119:18789
```

Depois disso, `http://hostinger:18789/#token=...` funciona direto do Mac e iPhone (ambos na tailnet). **Sem UFW necessário** — o gateway literalmente não escuta em eth0.

> **Por que não `0.0.0.0` + UFW?** A VPS tem múltiplos serviços expostos em eth0 (n8n:5678, docker proxies 3000-3003, etc). Ativar UFW sem auditoria completa pode quebrar serviços. Bind explícito no IP da tailnet é defesa em profundidade sem depender de firewall.

### Celular

Instalar app Tailscale no iPhone, logar com a mesma conta. O iPhone passa a ser um node da tailnet e consegue abrir o dashboard direto.

---

## Camada 3 — Tailscale Serve (opcional, HTTPS sem porta)

Se quiser URL limpa (`https://hostinger.tail-xxxx.ts.net/buzz`) sem porta:

```bash
# na VPS
tailscale serve https / http://127.0.0.1:18789
tailscale serve status
```

Cert HTTPS é gerenciado pelo Tailscale (Let's Encrypt). Acesso permanece restrito à tailnet.

**Não usar `tailscale funnel`** (que expõe ao público) — mesmo motivo do nginx: token do OpenClaw não é auth forte.

---

## Camada 4 (fallback) — Mobile/macOS sem Tailscale

Para os raros casos em que Tailscale não funciona (rede corporativa muito restritiva):

- iPhone: app Termius/Blink → conecta SSH → tunnel 18789 → abre Safari em localhost
- Mac: o `buzz-dashboard.sh` resolve tudo

---

## Comparativo final

| Cenário | Antes | Depois (script + Tailscale) |
|---------|-------|------------------------------|
| Abrir dashboard do Mac (casa) | ~2 min, 5 passos, 3 copy/paste | `buzz-dashboard` (3s) |
| Abrir dashboard do Mac (fora de casa) | idem + VPN do Hostinger | `buzz-dashboard` (3s) |
| Abrir dashboard do iPhone | impraticável | clique em bookmark |
| Fechar o acesso | matar ssh manualmente | `buzz-dashboard --stop` |
| Exposição pública | zero | zero (mantém tailnet-only) |

---

## Como usar o Buzz no dia a dia — surfaces recomendadas

Pergunta do founder: "Telegram/WhatsApp vs dashboard vs terminal vs Claude Code — qual o melhor modo?"

Resposta honesta: **não existe "melhor", existe distribuição por tipo de tarefa.**

| Surface | Força | Quando usar | Quando evitar |
|---------|-------|-------------|---------------|
| **Claude Code (este ambiente)** | Contexto completo do repo, tools/MCPs, edição direta, plano + execução | **80% da engenharia:** implementar, refatorar, revisar PR, investigar código | Tarefa mobile ou fora do desktop |
| **Telegram `ceo_buzz_Bot`** | Push notification, mobile-first, rápido | Briefings C-Suite (já automatizados), alertas, comando de triagem rápida, "buzz me mostra o status" | Engenharia profunda, contexto de código longo |
| **Dashboard OpenClaw (`localhost:18789`)** | UI rica: histórico de sessões, memória do agente, observar failover Gemini→Claude→GPT | Debug de agente, auditoria do SOUL/MEMORY, comparar conversas, tunar config de skills | Tarefa rápida (overkill abrir browser) |
| **Terminal OpenClaw na VPS (`openclaw run`)** | Scriptável, cron-friendly | Integração com cron/n8n — é o que os C-Suite agents usam hoje | Uso humano direto |
| **WhatsApp (Evolution)** | Cliente/Sueli já vivem lá | Automações que tocam cliente ou financeiro Sueli | Comando interno (use Telegram) |

### Regra prática

- **Claude Code** = sala de cirurgia. Código, arquitetura, docs.
- **Telegram** = rádio do carro. Comandos e briefings em movimento.
- **Dashboard** = cockpit de ajuste fino. Quando quiser ver o agente *por dentro*.
- **Terminal VPS** = deixar pros crons (já roda assim).
- **WhatsApp** = canal de cliente; não canal de operação interna.

### Observação importante sobre "integrado ao Claude Code"

O **Claude Code já é o Buzz em modo engenharia**. Mesma família de modelos (Claude Sonnet/Opus), mesmo repo, mais contexto. Não precisa "integrar OpenClaw ao Claude Code" — o OpenClaw ganha valor real quando roda as superfícies que Claude Code **não cobre**:

- **Telegram/WhatsApp com voz-brand Buzz** (roteando para Gemini como primário, mais barato)
- **C-Suite agents autônomos no cron** (já operando)
- **Multi-LLM failover** (Gemini → Claude → GPT) para resiliência de custo
- **Dashboard de auditoria** de conversas e memória do agente

Em outras palavras: Claude Code é seu caso de uso mais profundo; OpenClaw é sua **presença distribuída** (celular, crons, canais de mensagem, multi-modelo).

---

## Próximos passos — execução

Do seu Mac, na raiz do repo, na ordem:

```bash
# 1) Instalar o comando buzz-dashboard
ln -sf "$(pwd)/scripts/buzz-dashboard.sh" /usr/local/bin/buzz-dashboard
buzz-dashboard                 # valida fluxo atual (SSH + tunnel + Chrome)

# 2) Tailscale na VPS (diagnóstico → install → lockdown)
scp scripts/vps-tailscale-setup.sh root@187.77.251.199:/tmp/
ssh root@187.77.251.199 'bash /tmp/vps-tailscale-setup.sh --check'
ssh -t root@187.77.251.199 'bash /tmp/vps-tailscale-setup.sh --install'
# autenticar a VPS na tailnet da Adventure Labs (URL impressa)

# 3) Apontar buzz-dashboard pro hostname Tailscale
echo 'export BUZZ_VPS_HOST=hostinger' >> ~/.zshrc
source ~/.zshrc
buzz-dashboard                 # agora entra via Tailscale SSH

# 4) iPhone: instalar app Tailscale e logar — bookmark http://hostinger:18789 fica em casa

# 5) (OPCIONAL, só depois de validar 3) fechar porta pública 18789
ssh -t root@187.77.251.199 'bash /tmp/vps-tailscale-setup.sh --lockdown'
```

**Invariantes de segurança:**
- Gateway permanece em `127.0.0.1:18789` (loopback) OU em `tailscale0` com firewall bloqueando eth0
- Token do dashboard **nunca** deve ir pra internet pública
- Nginx de `openclaw.adventurelabs.com.br` em `tools/openclaw/nginx/openclaw.conf` **não deve ser deployado**
