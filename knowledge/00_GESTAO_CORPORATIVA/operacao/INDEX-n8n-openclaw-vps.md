---
title: Índice SSOT — n8n + OpenClaw (VPS Hostinger)
domain: gestao_corporativa
tags: [ssot, n8n, openclaw, buzz, comando-estelar, coolify, vps]
updated: 2026-03-30
owner: Torvalds (CTO)
status: ativo
---

# Índice SSOT — n8n + OpenClaw (VPS Hostinger)

**Estado (2026-03-30):** produção na VPS `187.77.251.199` (VM Hostinger **1526292**). Coolify, n8n e OpenClaw (Buzz) respondem por HTTPS; detalhes em [`registro-continuidade-openclaw-n8n-2026-03-30.md`](registro-continuidade-openclaw-n8n-2026-03-30.md).

## Identidade OpenClaw (Buzz / Comando Estelar)

| Item | Caminho |
|------|---------|
| Nome e persona | [`openclaw/IDENTITY.md`](../../../openclaw/IDENTITY.md) |
| Arranque do agente | [`openclaw/AGENTS.md`](../../../openclaw/AGENTS.md), [`openclaw/README.md`](../../../openclaw/README.md) |
| Skills (ex.: Asana “Sandra”) | [`openclaw/skills/`](../../../openclaw/skills/) |

## Runtime — narrativas do monorepo (uma fonte por decisão)

| Modo | Quando usar | Onde está documentado |
|------|----------------|-------------------------|
| **Produção atual** | n8n + stack na VPS via **Coolify**; URLs `*.adventurelabs.com.br` | [`knowledge/00_GESTAO_CORPORATIVA/processos/n8n-railway-e-admin.md`](../processos/n8n-railway-e-admin.md), [`workflows/n8n/README.md`](../../../workflows/n8n/README.md) |
| **VPS direto (alternativa)** | `docker compose` + nginx + certbot — só com janela de manutenção (não disputar 80/443 com Coolify) | [`vps-direto-n8n-openclaw-nginx.md`](vps-direto-n8n-openclaw-nginx.md), [`tools/openclaw/docker-compose.vps-n8n-openclaw-nginx.yml`](../../../tools/openclaw/docker-compose.vps-n8n-openclaw-nginx.yml) |
| **Railway** | Arquivo / legado | Secção “Railway” em `n8n-railway-e-admin.md` |
| **OpenClaw local / Railway gateway** | Dev e histórico | [`tools/openclaw/openclaw-gateway-railway/README.md`](../../../tools/openclaw/openclaw-gateway-railway/README.md), [`openclaw-local-e-railway.md`](../processos/openclaw-local-e-railway.md) |

### Modo de borda canónico (2026-03-30)

- **Orquestração:** Coolify na VPS (Traefik / proxy com SSL).
- **OpenClaw:** imagem pública `ghcr.io/bmorphism/openclaw:latest` (Compose no Coolify **sem** clone do monorepo com submódulos privados — ver [registro 26/03](registro-continuidade-openclaw-n8n-2026-03-26.md)).
- **TLS:** certificado público válido para `openclaw.adventurelabs.com.br` (Let's Encrypt); health: `GET /health` → `{"ok":true,"status":"live"}`.
- **Não** publicar a porta **18789** na internet; acesso operacional via **HTTPS** no subdomínio.

## Runbooks e checklists

| Documento | Uso |
|-----------|-----|
| [`runbook-openclaw-n8n-vps-24x7-2026-03-26.md`](runbook-openclaw-n8n-vps-24x7-2026-03-26.md) | Operação 24/7, backup, TLS, Infisical |
| [`checklist-vps-24x7-openclaw-n8n.md`](checklist-vps-24x7-openclaw-n8n.md) | Checklist diário / aceite |
| [`workflows/n8n/linkedin/CHECKLIST_OPERADOR_REATIVACAO_N8N_LINKEDIN.md`](../../../workflows/n8n/linkedin/CHECKLIST_OPERADOR_REATIVACAO_N8N_LINKEDIN.md) | Coolify + n8n + LinkedIn |
| [`registro-continuidade-openclaw-n8n-2026-03-26.md`](registro-continuidade-openclaw-n8n-2026-03-26.md) | Histórico de falhas Coolify / PM2 |

## Workflows n8n versionados

| Pasta | Conteúdo |
|-------|----------|
| [`workflows/n8n/`](../../../workflows/n8n/README.md) | Índice geral + import CLI |
| [`workflows/n8n/ce-n8n/`](../../../workflows/n8n/ce-n8n/README.md) | Comando Estelar — exports estáveis |

## Plano de upgrade n8n (1.51 → atual)

1. **Snapshot** da VPS (painel Hostinger) + export de workflows (Public API ou backup do volume `.n8n`).
2. Consultar [documentação de migração n8n](https://docs.n8n.io) para salto major (1.x → 2.x).
3. No Coolify: subir **incrementalmente** a tag da imagem (última **1.x** estável antes de testar **2.x**); smoke test na UI.
4. **Nunca** alterar `N8N_ENCRYPTION_KEY` em produção sem migração planeado.
5. Se o template Coolify não aceitar 2.x: avaliar stack em [`docker-compose.vps-n8n-openclaw-nginx.yml`](../../../tools/openclaw/docker-compose.vps-n8n-openclaw-nginx.yml) com **tag fixa** (evitar `latest` em produção sem pin).

## Infisical

Mapa de pastas: [`docs/INFISICAL_SYNC.md`](../../../docs/INFISICAL_SYNC.md) (inclui `/n8n` e `/vps-openclaw`).

## Governança Git (agente no monorepo)

Branch `openclaw/*`, PRs, sem push direto em `main` — ver runbook §6.
