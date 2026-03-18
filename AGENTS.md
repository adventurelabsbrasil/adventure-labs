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
