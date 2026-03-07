# Fase 6 — Git e Versionamento

## Decisão: Repos por App

**Apps internos e de clientes permanecem como repositórios separados.** Cada app tem funções específicas e precisa de versionamento independente (deploy, histórico, releases).

### Estrutura adotada

| Tipo | Exemplo | Repo |
|------|---------|------|
| **App interno** | admin, adventure, elite, finfeed | Cada um = 1 repo |
| **App de cliente** | lidera-space, roseportaladvocacia, young-talents | Cada um = 1 repo |
| **Base de conhecimento** | knowledge/, docs/, .cursor/ | Sem repo na raiz (ou repo separado) |
| **Tools** | xtractor, dbgr | Cada um = 1 repo (se aplicável) |

A pasta `01_ADVENTURE_LABS` é **estrutura de organização**, não um repo único. Cada app mantém seu `.git`.

### Opções alternativas (não adotadas)

**Opção A — Monorepo único:** Remove sub-repos, perde histórico. Não recomendado.

**Opção B — Git submodules:** Repo raiz referencia apps como submodules. Possível se quiser um "índice" versionado.

**Opção C — Repos separados (adotado):** Sem git na raiz. Cada app = repo. Organização via pastas.

## Checklist de secrets

Antes do primeiro commit:

- [ ] `git log --all -p` em cada sub-repo para verificar se há credenciais no histórico
- [ ] Usar `git filter-repo` ou `BFG` para remover secrets do histórico, se necessário
- [ ] `.env.example` existe onde há `.env` em uso
