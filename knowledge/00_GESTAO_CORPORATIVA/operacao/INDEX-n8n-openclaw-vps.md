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

### Buzz — commit canónico no Git e alinhamento na VPS

O nome **Buzz** e a persona “Líder Assistente do Comando Estelar” entraram no workspace em:

| Campo | Valor |
|-------|--------|
| **Commit (curto)** | `cfa04e7` |
| **Commit (completo)** | `cfa04e72f32b6839d5f6e7f4b129af42eaa18117` |
| **Mensagem** | `chore(openclaw): persist workspace identity and session memory` |
| **Data** | 2026-03-26 |

Nesse commit foram tocados, entre outros: `openclaw/IDENTITY.md`, `openclaw/MEMORY.md`, `openclaw/USER.md`, `openclaw/memory/2026-03-26*.md`.

**Lote completo do mesmo dia (2026-03-26, UTC)** — tudo o que entrou no Git para o OpenClaw nessa janela está no intervalo **`a128d42` → `da2b849`** (7 commits, ordem cronológica):

1. `a128d42` — `docs(openclaw): add Adventure Labs usage playbook` (+ [`docs/PLAYBOOK_OPENCLAW_ADVENTURE_LABS.md`](../../../docs/PLAYBOOK_OPENCLAW_ADVENTURE_LABS.md))
2. `a0ff879` — skills core (repo-map, pre-pr-checklist, supabase-guard)
3. `94fbd2b` — workflow-locator
4. `e61205c` — client-context
5. `d7bf51a` — sandra (Asana)
6. `cfa04e7` — Buzz (`IDENTITY`, `MEMORY`, `USER`, memory do dia)
7. `da2b849` — marcel (Vercel)

Para ver só ficheiros tocados nesse lote:  
`git diff --stat a128d42^..da2b849 -- openclaw/ docs/PLAYBOOK_OPENCLAW_ADVENTURE_LABS.md`

**Manter o Buzz na nuvem (clone na VPS):** o gateway lê o workspace no disco do contentor (ex.: symlink para `/root/repos/adventure-labs/openclaw`). Na máquina onde está o clone:

```bash
cd /caminho/do/adventure-labs   # ex.: clone usado pelo contentor
git fetch origin
git checkout main
git pull origin main
# opcional: confirmar que main contém Buzz
git merge-base --is-ancestor cfa04e7 HEAD && echo "Buzz está no histórico desta branch"
```

Garante **permissões** para o utilizador `node` ler o workspace (ver secção EACCES / `/root` neste índice). O estado de **pairing/credenciais** não vem do Git — continua em `/home/node/.openclaw` no contentor e nas Secrets do Coolify.

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

## Painel do Gateway (UI): erro «pairing required»

Isto **não** é falha de rede: o gateway está no ar (ex.: `GET /health` → `live`). O OpenClaw exige [aprovação explícita de “node”](https://docs.openclaw.ai/pairing) antes de aceitar a ligação WebSocket do painel.

**O que fazer (ordem típica):**

1. No browser, tenta **Conectar** outra vez no painel (`wss://openclaw.adventurelabs.com.br` + token correto) para gerar um pedido pendente.
2. Na **VPS**, com o mesmo estado que o container usa (`OPENCLAW_CONFIG_DIR`, volume do OpenClaw no Coolify):
   - `openclaw devices list` — ver pedidos pendentes e o `requestId`.
   - `openclaw devices approve <requestId>` — aprovar o teu browser/painel como dispositivo.
3. O comando acima corre **dentro do contexto** onde está o estado (ex.: `docker exec -it <container_openclaw> sh` e depois os comandos, ou SSH se o CLI estiver no host com `~/.openclaw` apontado para o volume).

**Se aparecer «gateway token mismatch»:** o token do painel tem de corresponder ao `gateway.auth.token` configurado no gateway — alinhar variáveis no Coolify e no Infisical (`/vps-openclaw`), redeploy se necessário. Referência: [`tools/railway-openclaw/clawdbot-railway-template/README.md`](../../../tools/railway-openclaw/clawdbot-railway-template/README.md) (secção Troubleshooting).

**PM2 vs Coolify:** se antes usavas PM2 no host, o estado podia estar em `/root/.openclaw`; agora, com Docker/Coolify, o estado está no **volume do contentor**. A aprovação tem de ser feita contra o **mesmo** diretório de estado que o gateway em produção está a usar.

### Erro `EACCES: permission denied, mkdir '.../workspace'`

O gateway corre como utilizador **`node`**. Este erro volta quando:

1. **`/home/node/.openclaw` pertence a root** — o `mkdir` do processo `node` falha.
2. **`workspace` é um symlink** para algo em **`/root/...`** — o utilizador `node` **não** consegue atravessar `/root` (permissoes tipicas `700`), e o runtime pode ainda tentar `mkdir` no caminho e falhar.

**A) Só permissões (sem symlink problemático):**

```bash
docker exec -u 0 NOME_DO_CONTAINER mkdir -p /home/node/.openclaw/workspace
docker exec -u 0 NOME_DO_CONTAINER chown -R node:node /home/node/.openclaw
docker restart NOME_DO_CONTAINER
```

**B) Se `workspace` for symlink para `/root/repos/...` (visto com `ls -la /home/node/.openclaw/workspace`):**

O utilizador **`node` não atravessa `/root`** se este estiver `700` — **Permission denied** mesmo com `chown` no repo. É preciso **permitir atravessar** `/root` (ou mover o repo para fora de `/root`).

Opção **B1a — atravessar `/root` + dono no repo** (rápido; reduz o isolamento de `/root` dentro do contentor):

```bash
docker exec -u 0 NOME_DO_CONTAINER chmod o+x /root
docker exec -u 0 NOME_DO_CONTAINER chown -R node:node /root/repos/adventure-labs
docker restart NOME_DO_CONTAINER
```

Opção **B1 — só `chown` no repo** (só funciona se `/root` já permitir execução a outros ou o workspace **não** passar por `/root`):
`chown -R node:node /root/repos/adventure-labs`

Opção **B2 — workspace real sob `/home/node`** (sem depender de `/root`): apaga o symlink, cria pasta, copia ou clona o monorepo para lá, `chown -R node:node`, e no Coolify define **`OPENCLAW_WORKSPACE_DIR`** para esse caminho (ex.: `/home/node/workspace/adventure-labs/openclaw`).

**Verificar se o `node` consegue ler o workspace:**

```bash
docker exec -u node NOME_DO_CONTAINER ls -la /home/node/.openclaw/workspace
docker exec -u node NOME_DO_CONTAINER test -r /home/node/.openclaw/workspace/IDENTITY.md && echo OK || echo FALTA_ACESSO
```

Reinicia o serviço no Coolify após alterações. Opcional: confirma **`OPENCLAW_WORKSPACE_DIR`** no Coolify alinhado com o caminho real que o `node` consegue ler.

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
