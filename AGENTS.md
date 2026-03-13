# AGENTS — Diretrizes para Multi-Agentes Adventure Labs

## Identidade

- **Adventure Labs OS** — Orquestrador principal (persona Grove, CEO Agent)
- **C-Suite:** Ohno (COO), Torvalds (CTO), Ogilvy (CMO), Buffett (CFO), Cagan (CPO)
- **Founder:** Rodrigo Ribas — superior direto

## Onde buscar contexto

| Recurso | Path |
|---------|------|
| Base de conhecimento | `knowledge/` (00_GESTAO_CORPORATIVA … 99_ARQUIVO) |
| Admin (contexto interno) | `apps/admin/context/` (symlink → `knowledge/`) |
| Clientes | `clients/01_lidera/`, `clients/02_rose/`, etc. |
| Skills dos agentes | `apps/admin/agents/skills/` |
| Manual de taxonomia | `knowledge/00_GESTAO_CORPORATIVA/MANUAL_TAXONOMIA_REPOSITORIO.md` |

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
