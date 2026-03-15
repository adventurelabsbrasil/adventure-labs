# Estrutura completa — um único diagrama (completo, cores e anotações)

Visão unificada com **regras de cor por seção**, **formas geométricas** distintas e **anotações** nas setas e nos blocos.

## Legenda de cores e formas

| Seção | Cor | Forma | Significado |
|-------|-----|--------|-------------|
| **1. Raiz /GitHub** | Azul | Retângulo / Círculo (outros) | Onde tudo começa |
| **2. Monorepo** | Verde | Hexágono | Estrutura de pastas |
| **3. Apps** | Laranja | Cilindro (stadium) | Aplicações e submodules |
| **4. Clientes** | Roxo | Losango | Por cliente e projeto |
| **5. Conexões** | Vermelho suave | Retângulo | Fluxos e integrações |

## Diagrama

```mermaid
flowchart TB
  subgraph raiz ["1. RAIZ /GITHUB — Onde tudo comeca"]
    A["01_ADVENTURE_LABS\nmonorepo principal"]
    B["GEMINI_CLI\nworkspace ref"]
    C(("Outros\ngh, artefatos"))
  end
  subgraph monorepo ["2. MONOREPO — Estrutura de pastas"]
    apps[["apps/"]]
    clients[["clients/"]]
    knowledge[["knowledge/"]]
    packages[["packages/"]]
    tools[["tools/"]]
    workflows[["workflows/n8n"]]
    internal[["_internal/"]]
    docs[["docs/"]]
  end
  subgraph aplicacoes ["3. APPS — Aplicacoes e submodules"]
    admin([admin\nAdventure Labs OS])
    adventure([adventure])
    elite([elite])
    finfeed([finfeed])
  end
  subgraph clientes ["4. CLIENTES — Por cliente e projeto"]
    L{01_lidera}
    R{02_rose}
    Y{04_young}
    AdminDB["Admin / Supabase\nadv_* tables"]
  end
  subgraph fluxos ["5. CONEXOES — Quem fala com quem"]
    Admin["Admin :3001"]
    Knowledge["knowledge/"]
    Context["context\nsymlink"]
    N8N["n8n C-Suite"]
    Supabase["Supabase"]
  end
  A -->|"versiona"| monorepo
  admin --> Admin
  clients --> L
  clients --> R
  clients --> Y
  L -->|"dados"| AdminDB
  R -->|"dados"| AdminDB
  Y -->|"dados"| AdminDB
  Knowledge -->|"fonte unica"| Context
  Context -->|"le documentacao"| Admin
  Admin -->|"persiste"| Supabase
  N8N -->|"le founder reports"| Supabase
  N8N -->|"contexto"| Knowledge
  classDef raizStyle fill:#e3f2fd,stroke:#1565c0,stroke-width:2px
  classDef monoStyle fill:#e8f5e9,stroke:#2e7d32,stroke-width:2px
  classDef appStyle fill:#fff3e0,stroke:#ef6c00,stroke-width:2px
  classDef clienteStyle fill:#f3e5f5,stroke:#7b1fa2,stroke-width:2px
  classDef fluxoStyle fill:#ffebee,stroke:#c62828,stroke-width:2px
  class A,B,C raizStyle
  class apps,clients,knowledge,packages,tools,workflows,internal,docs monoStyle
  class admin,adventure,elite,finfeed appStyle
  class L,R,Y,AdminDB clienteStyle
  class Admin,Knowledge,Context,N8N,Supabase fluxoStyle
```

Este diagrama está disponível como **um único FigJam** com o nome *"Estrutura GitHub e monorepos — Adventure Labs (completo, cores e anotações)"*. Use o link de claim na sua conta Figma para abrir e compartilhar com a equipe. Para o detalhe de cada parte, use os arquivos 01 a 05 nesta pasta.
