# OpenClaw VPS — Setup Real (Hostinger, instalação nativa)

**Atualizado:** 2026-04-02 — reflete o estado real após configuração de 2026-04-01.

> Esta doc substitui referências anteriores a Docker/Coolify para este host.
> O OpenClaw **não roda em container** na VPS atual — é instalação nativa gerenciada por systemd.

---

## Infraestrutura

| Item | Valor |
|------|-------|
| VPS | Hostinger KVM 2 — `187.77.251.199` |
| OS | Ubuntu 24.04 LTS |
| Hostname | `hostinger.adventurelabs.com.br` |
| OpenClaw versão | `2026.3.28` |
| Processo | `openclaw-gateway` (systemd user service) |
| Config dir | `/root/.openclaw/` |
| Workspace | `/root/.openclaw/workspace/` |
| Gateway port | `18789` (loopback) |

---

## Gerenciar o serviço

```bash
# Status
systemctl --user status openclaw-gateway

# Reiniciar (necessário após editar openclaw.json)
systemctl --user restart openclaw-gateway

# Logs em tempo real
journalctl --user -u openclaw-gateway -f

# Parar / iniciar
systemctl --user stop openclaw-gateway
systemctl --user start openclaw-gateway
```

---

## Roteamento LLM — fallback automático

O OpenClaw troca de modelo automaticamente ao detectar **429 / quota esgotada / billing error**.

### Cadeia configurada

```
Primary:     google/gemini-3.1-pro-preview
Fallback 1:  anthropic/claude-sonnet-4-6
Fallback 2:  openai/gpt-5.4
Fallback 3:  google/gemini-3.1-pro-preview   (retry após cooldown)
```

### Arquivo de config

`/root/.openclaw/openclaw.json` — seção relevante:

```json
{
  "auth": {
    "profiles": {
      "anthropic:default": { "provider": "anthropic", "mode": "api_key" },
      "anthropic:manual":  { "provider": "anthropic", "mode": "token" },
      "google:default":    { "provider": "google",    "mode": "api_key" },
      "openai:default":    { "provider": "openai",    "mode": "api_key" }
    },
    "order": {
      "anthropic": ["anthropic:default", "anthropic:manual"],
      "google":    ["google:default"],
      "openai":    ["openai:default"]
    }
  },
  "agents": {
    "defaults": {
      "model": {
        "primary": "google/gemini-3.1-pro-preview",
        "fallbacks": [
          "anthropic/claude-sonnet-4-6",
          "openai/gpt-5.4",
          "google/gemini-3.1-pro-preview"
        ]
      }
    }
  }
}
```

### Alterar modelos ou ordem

1. Editar `/root/.openclaw/openclaw.json` diretamente na VPS
2. Fazer backup antes: `cp openclaw.json openclaw.json.bak.$(date +%Y%m%d-%H%M)`
3. Reiniciar: `systemctl --user restart openclaw-gateway`

> As chaves de API (ANTHROPIC, OPENAI, GEMINI) são armazenadas encriptadas
> internamente pelo OpenClaw — **não ficam em variáveis de ambiente nem em arquivos
> de texto**. Para atualizar uma chave: `openclaw configure` na VPS.

### Comportamento de cooldown

| Tipo de erro | Cooldown do provider |
|-------------|----------------------|
| Rate limit (429) | 1 min → exponencial → máx 1h |
| Billing / saldo zerado | 5h – 24h |

---

## Canais ativos

| Canal | Status | Notas |
|-------|--------|-------|
| Telegram | ativo | bot configurado via `openclaw.json` |
| WhatsApp | ativo | allowlist: `+5551998730488` |

---

## Backups do openclaw.json

Ficam em `/root/.openclaw/` com sufixo `.bak.*`:

```
openclaw.json.bak          ← backup automático do OpenClaw
openclaw.json.bak.1 … .4  ← backups anteriores
openclaw.json.bak.YYYYMMDD-HHMM  ← backups manuais antes de edições
```

---

## Referência cruzada

- Arquitetura geral: [`docs/ARQUITETURA_OPENCLAW_HIBRIDO.md`](../../docs/ARQUITETURA_OPENCLAW_HIBRIDO.md)
- Playbook de uso: [`docs/PLAYBOOK_OPENCLAW_ADVENTURE_LABS.md`](../../docs/PLAYBOOK_OPENCLAW_ADVENTURE_LABS.md)
