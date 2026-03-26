---
module: M08
title: Infra, servidores e CI/CD
ssot: true
owner: Torvalds (CTO)
updated: 2026-03-26
version: 1.1.0
apps_scope: [admin, adventure, monorepo]
review_sla: por PR + quinzenal
sources:
  - docs/VERCEL_GITHUB_DEPLOY.md
  - docs/ACORE_ROADMAP.md
  - docs/inventario/_raw/RAW_DATA_v2.md
  - .github/workflows/
  - knowledge/00_GESTAO_CORPORATIVA/operacao/vps-hostinger-diagnostico-2026-03-26.md
  - knowledge/00_GESTAO_CORPORATIVA/operacao/runbook-openclaw-n8n-vps-24x7-2026-03-26.md
  - knowledge/00_GESTAO_CORPORATIVA/operacao/registro-continuidade-openclaw-n8n-2026-03-26.md
  - knowledge/00_GESTAO_CORPORATIVA/operacao/checklist-vps-24x7-openclaw-n8n.md
---

# M08 — Infra, servidores e CI/CD

## Infra/servidores

| nome | tipo | provider | região | acesso | finalidade | status |
|---|---|---|---|---|---|---|
| Vercel apps web | hosting | Vercel | global (managed) [INFERIDO] | CI/CD + dashboard | deploy front/fullstack | ativo |
| Supabase projeto compartilhado | db/auth | Supabase | us-east-1 [INFERIDO] | dashboard + migrations | dados transacionais | ativo |
| n8n runtime | automação | Railway [INFERIDO] | us-east-1 [INFERIDO] | API token | orquestração workflows | ativo |
| Railway/OpenClaw superfícies | serviço | Railway | us-east-1 [INFERIDO] | CLI/MCP | suporte agentic | ativo |
| VPS KVM 2 (`srv1526292.hstgr.cloud`) | servidor VPS | Hostinger | data center id `22` | SSH + MCP Hostinger | runtime dedicado, Docker e serviços self-hosted | ativo |
| Workloads Docker na VPS | containers | Hostinger VPS (`1526292`) | mesmo DC da VPS | Coolify + Docker Compose | orquestração de apps e n8n self-hosted | ativo |

## CI/CD e deploy

| item | tipo | caminho | owner | criticidade | status | ultima_atualizacao |
|---|---|---|---|---|---|---|
| GitHub Actions deploy | pipeline | `apps/clientes/04_young/ranking-vendas/.github/workflows/deploy.yml` | Torvalds (CTO) | média | ativo | 2026-03-25 |
| GitHub Actions backup | pipeline | `apps/clientes/04_young/young-talents/.github/workflows/backup.yml` | Torvalds (CTO) | alta | ativo | 2026-03-25 |
| Docker build template | pipeline | `tools/railway-openclaw/clawdbot-railway-template/.github/workflows/docker-build.yml` | Torvalds (CTO) | média | ativo | 2026-03-25 |
| Scripts workspace QA | script pipeline | `tools/scripts/typecheck-workspaces.sh`, `lint-workspaces.sh`, `test-workspaces.sh` | Torvalds (CTO) | alta | ativo | 2026-03-25 |

## Domínios e subdomínios (snapshot)

| item | tipo | caminho | owner | criticidade | status | ultima_atualizacao |
|---|---|---|---|---|---|---|
| `TARGET_DOMAIN` | env de domínio | `tools/dbgr/.env.example` | Torvalds (CTO) | baixa | ativo | 2026-03-25 |
| `NEXT_PUBLIC_APP_URL` | url pública app | `apps/clientes/*/admin/.env.example` | Torvalds (CTO) | média | ativo | 2026-03-25 |
| `domain/baseUrl/hostname` | ocorrências de código | múltiplos `*.ts` | Torvalds (CTO) | baixa | ativo | 2026-03-25 |
| `coolify.adventurelabs.com.br` | subdomínio operação | DNS Vercel -> VPS | Torvalds (CTO) | alta | ativo | 2026-03-26 |
| `n8n.adventurelabs.com.br` | subdomínio automação | DNS Vercel -> VPS | Torvalds (CTO) | alta | ativo | 2026-03-26 |
| `openclaw.adventurelabs.com.br` | subdomínio agente | DNS Vercel -> VPS | Torvalds (CTO) | alta | parcialmente ativo | 2026-03-26 |

## Itens de infraestrutura estendida

| termo | status | observacao |
|---|---|---|
| `VPS` | ativo | VM `1526292` em `running`; baseline em `knowledge/00_GESTAO_CORPORATIVA/operacao/vps-hostinger-diagnostico-2026-03-26.md` |
| `SSH` | ativo | porta `22` validada externamente no IPv4 `187.77.251.199` |
| `Backups VPS` | atenção | sem backups listados via MCP no snapshot de 2026-03-26 |
| `Firewall VPS` | atenção | sem firewall cadastrado via MCP no snapshot de 2026-03-26 |
| `OpenClaw runtime` | atenção | código presente em `/root/openclaw`, sem publicação estável via Coolify no snapshot atual |
| `POPs` | ativo [INFERIDO] | edge global do provider Vercel para apps web; sem lista nominal de POPs no repositório |
| `Storage tiers` | ativo | referências no OS registry (Git/Supabase/Drive/Vault) |

## Como atualizar este módulo

- Gatilho:
  - novo workflow de deploy;
  - mudança de provider/região/runtime;
  - inclusão de domínio/subdomínio novo.
- Checklist:
  - atualizar tabela de infraestrutura;
  - revisar pipelines `.github/workflows`;
  - sincronizar status com M02 e M07.
- Módulo pai:
  - `docs/WIKI_CORPORATIVO_INDEX.md`

## Cobertura e fora de escopo

- Cobre: infraestrutura, runtime e esteira de CI/CD.
- Fora de escopo:
  - scripts funcionais por app (M02);
  - integrações de negócio com terceiros (M07).
