# AGENTS — Diretrizes para Multi-Agentes Adventure Labs

## Identidade

- **Adventure Labs OS** — Orquestrador principal (persona Grove, CEO Agent)
- **C-Suite:** Ohno (COO), Torvalds (CTO), Ogilvy (CMO), Buffett (CFO), Cagan (CPO)
- **Founder:** Rodrigo Ribas — superior direto

## Estrutura de agente (OpenClaw-aligned)

**Agente ≠ skill:** o agente é a persona + governança; as **skills** em `agents/skills/` são executores pontuais. Novos agentes devem usar o pacote mínimo abaixo (espelho conceitual de `openclaw/AGENTS.md`, `SOUL.md`, `HEARTBEAT.md`).

| Arquivo | Função |
|---------|--------|
| `AGENT.md` | Índice: ordem de leitura, owner C-Level, lista de skills |
| `SOUL.md` | Personalidade e boundaries |
| `USER.md` | Contexto do Founder |
| `COMPANY.md` | Contexto Adventure Labs |
| `REDLINES.md` | Proibições (dados, ações destrutivas, tenant) |
| `VOICE.md` | Tom por canal (pt-BR) |
| `PERMISSIONS.md` | Leitura/escrita (paths, APIs, envs sem segredos) |
| `HEARTBEAT.md` | Checklist periódico (vazio se sem poll) |
| `MEMORY.md` | Política: `knowledge/` vs `adv_csuite_memory` |

**Template:** copiar [`apps/admin/agents/_template_agent/`](apps/admin/agents/_template_agent/). **Bootstrap na sessão:** ler na ordem `AGENT.md` → `SOUL.md` → `USER.md` → `COMPANY.md` → `REDLINES.md` → `PERMISSIONS.md` → `VOICE.md` → `MEMORY.md` → `HEARTBEAT.md` → skills necessárias.

Exemplo de agente de apoio completo: [`apps/admin/agents/andon_asana/`](apps/admin/agents/andon_asana/) (Asana → base híbrida C-Suite + Founder).

**Gerentes de conta:** três agentes (um por cliente ativo) — `gerente_rose`, `gerente_benditta`, `gerente_young` — owner Cagan (CPO). Cada um usa skills compartilhadas (relatório-kpis-campanhas, copy-brief-campanha, analise-performance-canal, briefing-cliente-template, escopo-projeto-checklist, dashboard-kpis-especificacao) e a skill de contexto do cliente: `rose-portal-advocacia-contexto`, `benditta-marcenaria-contexto`, `young-empreendimentos-contexto`. Acionados pelo Grove ou Cagan para demandas de CX, marketing, produtos e escopo daquele cliente.

**Benchmark martech (três agentes de apoio):**
- **benchmark_adventure** (owner Ogilvy/CMO): exclusivo para a Adventure — tendências martech, concorrentes, dashboards/BI/automações, SaaS/microsaas. Skills: `benchmark-martech-tendencias`, `benchmark-concorrentes-adventure`, `benchmark-dashboards-bi-automacoes`. Acionado pelo Grove ou Ogilvy para inovação interna.
- **benchmark_clientes** (owner Cagan/CPO): exclusivo para clientes da Adventure — mercado/setor/nicho do cliente, concorrência no setor, tendências por nicho. Skills: `benchmark-mercado-setor-cliente`, `benchmark-concorrencia-setor`, `benchmark-tendencias-por-nicho`. Acionado pelo Grove, Cagan ou gerentes de conta.
- **benchmark_conteudo** (owner Ogilvy/CMO): trend topics, criatividade, inovação, educação martech. Skills: `benchmark-trend-topics-conteudo`, `benchmark-martech-criatividade-inovacao`, `benchmark-educacao-novidades-martech`. Acionado pelo Grove ou Ogilvy para conteúdo e educação. Estes agentes estão previstos para integrações com C-Suite e equipe.

## Onde buscar contexto

| Recurso | Path |
|---------|------|
| Base de conhecimento | `knowledge/` (00_GESTAO_CORPORATIVA … 99_ARQUIVO) |
| Admin (contexto interno) | `apps/admin/context/` (symlink → `knowledge/`) |
| Clientes | `clients/01_lidera/`, `clients/02_rose/`, etc. |
| Skills dos agentes | `apps/admin/agents/skills/` |
| WorkOS (Admin) p/ agentes | `knowledge/06_CONHECIMENTO/workos-admin-contexto-agentes.md` |
| Manual de taxonomia | `knowledge/00_GESTAO_CORPORATIVA/MANUAL_TAXONOMIA_REPOSITORIO.md` |
| OpenClaw (local + Railway) | `knowledge/00_GESTAO_CORPORATIVA/processos/openclaw-local-e-railway.md` → manual completo: `tools/openclaw/OPENCLAW-MANUAL-LOCAL-E-RAILWAY.md`. WhatsApp: `tools/openclaw/whatsapp/`. **Workspace** = pasta `openclaw/` na raiz do monorepo; `~/.openclaw/workspace` e `OPENCLAW_HOME` devem apontar para `.../01_ADVENTURE_LABS/openclaw`. |

## Regras de sigilo

- Nunca versionar credenciais, .env, extratos ou respostas sigilosas
- Vault: `_internal/vault/` (apenas referências)
- Ver regra `security-sensitives` em `.cursor/rules/`

## Comandos de validação para agentes

- Para validar rapidamente o estado técnico do monorepo, priorize:
  - `./tools/scripts/typecheck-workspaces.sh` — roda type-check onde houver script configurado nos workspaces.
  - `./tools/scripts/lint-workspaces.sh` — executa lint em apps/packages/tools que expõem script `lint`.
  - `./tools/scripts/test-workspaces.sh` — roda `test` apenas onde o script existir.
- Use esses scripts antes de propor merges maiores ou refactors que afetem múltiplos apps.

## Mapeamento skills ↔ pastas

| Domínio | Pasta |
|---------|-------|
| Gestão | `knowledge/00_gestao_corporativa` |
| Comercial | `knowledge/01_comercial` |
| Marketing | `knowledge/02_marketing` |
| Projetos internos | `knowledge/03_projetos_internos` |
| Projetos clientes | `knowledge/04_projetos_de_clientes` |
| Laboratório | `knowledge/05_laboratorio` |
| Conhecimento | `knowledge/06_conhecimento` |

## Regra de sobrescrita

Em conflito de dados ou código: PARE → mostre o existente → pergunte ao Founder: [1] Substituir | [2] Manter | [3] Mescla.
