# Apps e funções

Aplicações principais do monorepo e repositórios (submodules) correspondentes.

```mermaid
flowchart LR
  subgraph apps ["apps/"]
    admin["admin\n(Adventure Labs OS)\nNext.js, Supabase, :3001"]
    adventure["adventure\n(produto principal)\nVite, Supabase"]
    elite["elite"]
    finfeed["finfeed"]
  end
  admin -->|"submodule"| repo1["admin.git"]
  adventure -->|"submodule"| repo2["adventure.git"]
  elite -->|"submodule"| repo3["elite.git"]
  finfeed -->|"submodule"| repo4["finfeed.git"]
```

## Apps

| App | Função | Stack | Repo (submodule) |
|-----|--------|-------|------------------|
| **admin** | Adventure Labs OS — painel interno (tarefas, projetos, clientes, relatórios C-Suite, docs) | Next.js, Supabase, porta 3001 | adventurelabsbrasil/admin |
| **adventure** | Produto principal (CRM) | Vite, React, Supabase | adventurelabsbrasil/adventure |
| **elite** | App Elite | — | adventurelabsbrasil/elite |
| **finfeed** | App Finfeed | — | adventurelabsbrasil/finfeed |

Setup após clone: `./scripts/setup.sh` (inicializa submodules e symlink `apps/core/admin/context -> ../../../knowledge`).
