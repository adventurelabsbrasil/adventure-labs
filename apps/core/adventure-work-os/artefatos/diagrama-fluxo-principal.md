# Diagrama — fluxo principal (Mermaid)

```mermaid
flowchart TB
  subgraph captura [1 Captura]
    ASANA_IN[Asana]
    TG[Telegram - card novo ou comentario]
  end

  subgraph triagem [2 Triagem]
    CEO[CEO IA - orquestrador]
  end

  subgraph roteamento [3 Roteamento]
    CSUITE[C-Suite + skills]
  end

  subgraph exec [4 Execucao operacional]
    OPS[Agentes / Cursor / tools]
  end

  subgraph pos [4b Pos-producao IA]
    QA[Revisao IA pos-operacao]
  end

  subgraph humano [5 Revisao humana]
    KANBAN[Kanban Asana]
  end

  subgraph registro [6 Registro]
    KNOW[knowledge]
    DOCS[Docs]
  end

  ASANA_IN --> CEO
  TG --> CEO
  CEO --> CSUITE
  CSUITE --> OPS
  OPS --> QA
  QA --> KANBAN
  KANBAN -->|aprovado| KNOW
  KANBAN -->|aprovado - material pesado| DOCS
  KANBAN -->|recusa ou comentario| FIX{Tipo de feedback}
  FIX -->|ajuste| QA
  FIX -->|ajuste| OPS
  FIX -->|escopo| CSUITE
  FIX -->|politica ou ambiguidade| CEO
  CEO -.->|dúvida para humano| KANBAN
```

**Notas:**

- **4b** pode ser saltada quando **não** for sensível (checklist) **nem** reformulação de pipeline — ver [checklist-sensivel.md](./checklist-sensivel.md).  
- Colunas exatas do kanban: definidas pelo **CEO IA** quando o C-Suite estiver maduro.
