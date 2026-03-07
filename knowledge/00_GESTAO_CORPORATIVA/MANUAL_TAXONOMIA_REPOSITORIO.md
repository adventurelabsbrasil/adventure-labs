---
title: Manual de Taxonomia do Repositório — Adventure Labs
domain: gestao_corporativa
tags: [taxonomia, repositorio, skills, organizacao]
updated: 2026-03-07
---

# Manual de Taxonomia do Repositório — Adventure Labs

**Versão:** 1.0  
**Data:** 2026-03-07  
**Uso:** Referência para organização de pastas, arquivos e contexto. Base para skills de agentes C-Level.

---

## 1. Princípios Gerais

### 1.1 Objetivos da Taxonomia

- **Encontrável:** Qualquer pessoa ou agente sabe onde procurar e onde colocar.
- **Consistente:** Mesma regra em todo o repositório.
- **Escalável:** Fácil adicionar clientes, projetos e domínios.
- **Preparado para IA:** Estrutura indexável para ML, RAG e skills de agentes.

### 1.2 Regras de Ouro

1. **Um lugar, uma coisa** — Cada tipo de artefato tem um local canônico.
2. **Prefixo numérico para ordenação** — Pastas de domínio usam `NN_nome` (ex: `01_comercial`).
3. **Snake_case para pastas de domínio** — `01_gestao_corporativa`, não `01_GestaoCorporativa`.
4. **Kebab-case para projetos** — `lidera-space`, `young-talents`.
5. **Nunca dados sensíveis no repo** — Credenciais, extratos e respostas sigilosas ficam fora (vault, .gitignore).

---

## 2. Estrutura de Pastas (Visão Geral)

```
adventure-labs/
├── apps/              # Aplicações principais (admin, adventure, elite...)
├── clients/           # Projetos por cliente (01_lidera, 02_rose...)
├── knowledge/         # Base de conhecimento (taxonomia 00–99)
├── packages/          # Pacotes compartilhados (ui, db, config)
├── tools/             # Ferramentas internas (Xtractor, Dbgr...)
├── workflows/         # Definições n8n, automações
└── _internal/        # Uso interno, archive, vault (referências)
```

---

## 3. Taxonomia da Base de Conhecimento (`knowledge/` ou `context/`)

Espelha o Google Drive da agência. Respeitar estritamente.

| Código | Pasta | Conteúdo | Exemplos |
|--------|-------|----------|----------|
| 00 | `00_gestao_corporativa` | Financeiro, jurídico, pessoas, processos | Guidelines, credenciais-ref, templates |
| 01 | `01_comercial` | Pipeline, propostas, programas | Propostas, pipeline, webinars |
| 02 | `02_marketing` | Campanhas, entregas, KPIs | Campanhas, copy, métricas |
| 03 | `03_projetos_internos` | Projetos internos, tarefas | Roadmap, tarefas admin |
| 04 | `04_projetos_clientes` | Entregas por cliente (sem dados sensíveis) | Status, resumos, escopo |
| 05 | `05_laboratorio` | Inventário de apps, experimentos | Inventário martech, POCs |
| 06 | `06_conhecimento` | Arquitetura, manuais, backlogs | Arquitetura, manuais, RAG |
| 99 | `99_arquivo` | Histórico, arquivados, avulsos | Docs antigos, referências |

### 3.1 Subpastas Recomendadas (por domínio)

```
00_gestao_corporativa/
├── guidelines/       # Diretrizes, blueprints
├── processos/       # Processos operacionais
├── templates/       # Modelos reutilizáveis
├── backlogs_roadmap/
└── operacao/        # Operação do dia a dia

99_arquivo/
├── README.md        # Política de arquivamento
└── [ano_mes]/       # Opcional: agrupar por período
```

### 3.2 Política do 99_ARQUIVO

- Documentos avulsos, históricos ou que não se encaixam em 00–06.
- Antes de criar em 99, verificar se não cabe em 00–06.
- Manter README explicando critérios de arquivamento.

---

## 4. Clientes (`clients/`)

### 4.1 Padrão de Nomenclatura

```
clients/
├── 01_lidera/
│   ├── lidera-space/      # App principal
│   ├── lidera-skills/     # Skills do cliente
│   ├── capclear-site/
│   └── README.md          # Resumo do cliente (sem dados sensíveis)
├── 02_rose/
├── 03_speed/
└── NN_nome_cliente/
```

### 4.2 Regras para Clientes

- **Prefixo numérico:** `01_`, `02_`, etc. para ordenação.
- **Nome em minúsculas:** `lidera`, `rose`, não `LIDERA`.
- **Projetos em kebab-case:** `lidera-space`, `roseportaladvocacia`.
- **Cada projeto de cliente = repositório Git separado** — versionamento por funções específicas.
- **README por cliente:** Resumo do que o cliente tem, sem dados sensíveis.

---

## 5. Aplicações e Pacotes

### 5.1 `apps/`

- Uma pasta por aplicação.
- Nome em kebab-case: `admin`, `adventure`, `elite`, `finfeed`.
- **Cada app = repositório Git separado** — versionamento independente por funções específicas.

### 5.2 `packages/`

- Pacotes compartilhados: `ui`, `db`, `config`.
- Prefixo opcional para pacotes internos: `@adventure/ui`.

---

## 6. Nomenclatura de Arquivos

| Tipo | Padrão | Exemplo |
|------|--------|---------|
| Documentos Markdown | kebab-case ou snake_case | `relatorio-founder-2026-03.md`, `manual_drive.md` |
| Migrations SQL | `YYYYMMDDHHMMSS_descricao.sql` | `20250316100000_add_adv_tasks.sql` |
| Configs | kebab-case | `pnpm-workspace.yaml`, `.env.example` |
| Skills | `SKILL.md` | Dentro de `agents/skills/nome-skill/SKILL.md` |

---

## 7. Frontmatter para ML/RAG (Opcional)

Para documentos em `knowledge/`, usar frontmatter quando útil:

```yaml
---
title: Nome do documento
domain: gestao_corporativa  # ou comercial, marketing, etc.
tags: [processo, financeiro, template]
updated: 2026-03-07
---
```

---

## 8. O Que NUNCA Versionar

| Tipo | Onde guardar |
|------|---------------|
| Credenciais, senhas, API keys | 1Password, variáveis de ambiente |
| `.env`, `.env.local` | Local + .env.example versionado |
| Extratos bancários, CPF | Drive criptografado, fora do repo |
| Respostas sigilosas de questionários | Fora do repo, referência em vault |
| `credenciais-adventure.md` | .gitignore, valores em gerenciador de senhas |

---

## 9. Checklist de Validação

Ao criar ou mover arquivos/pastas:

- [ ] O local segue a taxonomia 00–99 quando for conhecimento?
- [ ] Clientes usam padrão `NN_nome/projeto`?
- [ ] Nenhum dado sensível será versionado?
- [ ] Nomenclatura segue snake_case (pastas domínio) ou kebab-case (projetos/arquivos)?
- [ ] Há README ou documentação quando a pasta é nova?

---

## 10. Referências

- Plano de reorganização: `PLANO_MONOREPO_ADVENTURE_LABS.md`
- Taxonomia em uso: `admin/context/` (00–99)
- Skills de agentes: `admin/agents/skills/`
- Skill de taxonomia: `agents/skills/taxonomia-repositorio/SKILL.md`
