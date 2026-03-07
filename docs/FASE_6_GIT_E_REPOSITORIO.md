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
| clients/04_young/young-talents | https://github.com/adventurelabsbrasil/young-talents.git |
| clients/01_lidera/lidera-skills | https://github.com/adventurelabsbrasil/lidera-skills.git |

### Setup após clone

```bash
./scripts/setup.sh
```

Cria o symlink `admin/context -> ../../knowledge`.

## Checklist de secrets

Antes do primeiro commit:

- [ ] Executar `./scripts/audit-secrets.sh --report` para auditoria automática
- [ ] Revisar `_internal/audit-secrets-report.md` (não versionado, pode conter dados sensíveis)
- [ ] O resumo `_internal/audit-secrets-summary.md` é commitável (sem conteúdo sensível)
- [ ] Se secrets forem encontrados: usar `git filter-repo` ou BFG para remover do histórico
- [ ] `.env.example` existe onde há `.env` em uso

### Remoção de secrets do histórico (git filter-repo / BFG)

Se a auditoria encontrar credenciais no histórico:

1. **git filter-repo** (recomendado):
   ```bash
   pip install git-filter-repo
   cd <submodule-path>
   git filter-repo --replace-text <(echo 'API_KEY=***REMOVED***')
   ```

2. **BFG Repo-Cleaner**:
   ```bash
   java -jar bfg.jar --replace-text passwords.txt <repo>
   ```

3. Após limpeza: `git push --force` (coordenar com equipe).
