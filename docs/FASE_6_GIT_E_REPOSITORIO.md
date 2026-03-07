# Fase 6 — Git e Versionamento

## Estrutura adotada: Repo + Submodules

- **Repo "adventure-labs"** versiona: knowledge/, docs/, .cursor/, .github/, AGENTS.md, workflows/, etc.
- **Apps e clientes** são **submodules** (cada um = repo separado no GitHub)
- **Symlink:** `apps/admin/context -> ../../knowledge` (sem duplicação)

### Submodules atuais

| Path | URL |
|------|-----|
| apps/admin | https://github.com/adventurelabsbrasil/admin.git |
| apps/adventure | https://github.com/adventurelabsbrasil/adventure.git |
| apps/elite | https://github.com/adventurelabsbrasil/elite.git |
| apps/finfeed | https://github.com/adventurelabsbrasil/finfeed.git |
| clients/01_lidera/lidera-space | https://github.com/adventurelabsbrasil/lidera-space.git |
| clients/02_rose/roseportaladvocacia | https://github.com/adventurelabsbrasil/roseportaladvocacia.git |
| clients/04_young/young-emp | https://github.com/adventurelabsbrasil/young-emp.git |
| clients/04_young/ranking-vendas | https://github.com/rodrigoribasyoung/ranking-vendas.git |

**Nota:** `young-talents` pode ser adicionado com `git submodule add https://github.com/adventurelabsbrasil/young-talents.git clients/04_young/young-talents` se necessário.

### Setup após clone

```bash
./scripts/setup.sh
```

Cria o symlink `admin/context -> ../../knowledge`.

## Checklist de secrets

Antes do primeiro commit:

- [ ] `git log --all -p` em cada sub-repo para verificar se há credenciais no histórico
- [ ] Usar `git filter-repo` ou `BFG` para remover secrets do histórico, se necessário
- [ ] `.env.example` existe onde há `.env` em uso
