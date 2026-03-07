# Base de Conhecimento

Taxonomia 00–99, espelho do Google Drive da agência.

**Fonte canônica do monorepo.** O `apps/admin/context/` mantém cópia para uso interno do Admin; sincronizar quando houver alterações relevantes.

## Estrutura

- `00_GESTAO_CORPORATIVA` — Financeiro, jurídico, pessoas, processos
- `01_COMERCIAL` — Pipeline, propostas
- `02_MARKETING` — Campanhas, KPIs
- `03_PROJETOS_INTERNOS` — Roadmap, tarefas
- `04_PROJETOS_DE_CLIENTES` — Entregas (sem dados sensíveis)
- `05_LABORATORIO` — Inventário, experimentos
- `06_CONHECIMENTO` — Arquitetura, manuais
- `99_ARQUIVO` — Histórico, avulsos

## Frontmatter para ML/RAG

Para facilitar indexação e embeddings, novos documentos devem incluir frontmatter YAML no início:

```yaml
---
title: Nome do documento
domain: gestao_corporativa | comercial | marketing | laboratorio | conhecimento | projetos_clientes
tags: [tag1, tag2, tag3]
updated: YYYY-MM-DD
---
```

**Domínios sugeridos:** `gestao_corporativa`, `comercial`, `marketing`, `laboratorio`, `conhecimento`, `projetos_clientes`.
