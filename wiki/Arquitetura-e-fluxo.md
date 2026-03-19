## Arquitetura agêntica — visão geral e fluxo

Esta página resume a arquitetura descrita em `knowledge/06_CONHECIMENTO/arquitetura-agentic-csuite-skills.md` em formato de Wiki.

- **C-Suite (Managers):** planejam, quebram em passos, escolhem skills, revisam output.
- **Skills (Executors):** executam tarefas específicas com contexto estreito.
- **Grove (CEO Agent):** orquestra e delega ao C-Level adequado.

### Fluxo principal

```mermaid
flowchart TD
    founder[Founder]
    grove[Grove_CEO]
    cSuite[C_Suite]
    skillNode[Skill_Executor]
    reviewNode[C_Suite_Review]
    result[Resposta_ou_Próximo_Passo]

    founder --> grove
    grove --> cSuite
    cSuite --> skillNode
    skillNode --> reviewNode
    reviewNode --> result
```

### Camadas da arquitetura

```mermaid
flowchart LR
    subgraph orchestrationLayer["Orquestração"]
        founderNode["Founder"]
        groveNode["Grove (CEO Agent)"]
    end

    subgraph managementLayer["C-Suite (Managers)"]
        torvaldsNode["Torvalds (CTO)"]
        ohnoNode["Ohno (COO)"]
        ogilvyNode["Ogilvy (CMO)"]
        buffettNode["Buffett (CFO)"]
        caganNode["Cagan (CPO)"]
    end

    subgraph executionLayer["Skills e Agentes de apoio"]
        skillsNode["Skills em apps/admin/agents/skills"]
        supportAgentsNode["Agentes de apoio (Andon, benchmark_*, Zazu, etc.)"]
    end

    orchestrationLayer --> managementLayer
    managementLayer --> executionLayer
```

Para detalhes completos (regras, exemplos por diretor e pacote de agente), veja:

- `knowledge/06_CONHECIMENTO/arquitetura-agentic-csuite-skills.md`
- `AGENTS.md`

