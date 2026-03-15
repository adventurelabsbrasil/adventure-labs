# Visão geral /GitHub

O que existe na raiz e a relação entre os itens.

```mermaid
flowchart LR
  subgraph raiz ["Raiz /GitHub"]
    A["01_ADVENTURE_LABS\n(monorepo principal)"]
    B["GEMINI_CLI\n(workspace ref)"]
    C["Outros\n(gh binary, etc)"]
  end
  A -->|"versiona"| D["knowledge, docs,\napps, clients"]
  B -->|"documentado em"| E["01_ADVENTURE_LABS/docs"]
```

## Resumo

- **01_ADVENTURE_LABS** — Monorepo principal (repo "adventure-labs"); versiona knowledge/, docs/, .cursor/, apps/, clients/, packages/, tools/, workflows/.
- **GEMINI_CLI** — Workspace consolidado; documentação em `01_ADVENTURE_LABS/docs/GEMINI_CLI_WORKSPACE.md`; raiz de trabalho recomendada é `01_ADVENTURE_LABS`.
- **Outros** — Artefatos como binário `gh`, etc.; listados no .gitignore quando aplicável.
