# Plano de Organização — Monorepo Privado Adventure Labs

**Versão:** 1.0  
**Data:** 2026-03-07  
**Objetivo:** Transformar o ambiente GitHub em um monorepo privado, organizado e seguro, com taxonomia profissional para ML, skills e multi-agentes.

---

## 1. Visão Geral

### 1.1 Estado Atual (Diagnóstico)

| Aspecto | Situação |
|---------|----------|
| **Estrutura** | Pastas soltas (`01_ADVENTURE_LABS`, `GEMINI_CLI`), sem repositório único na raiz |
| **Repositórios** | ~35+ repos Git independentes espalhados |
| **Duplicação** | ~~7 clones~~ → Arquivados em `_internal/archive/` (Fase 1 concluída) |
| **Clientes** | Lidera com múltiplas variantes (lidera-, lidera-space, lideraspace, Lidera/*) |
| **Contexto** | `context/` com taxonomia boa (00–99) mas duplicada em admin e admin_repo |
| **Segurança** | Credenciais em `credenciais-adventure.md` (em .gitignore, mas em disco) |
| **Skills/IA** | Skills e rules espalhados, sem mapeamento claro para pastas |

### 1.2 Princípios do Plano

1. **Segurança em camadas** — Dados sensíveis nunca no repositório; vault separado
2. **Taxonomia consistente** — Nomenclatura padronizada e previsível
3. **Preparado para IA** — Pastas e arquivos mapeáveis como skills/contextos
4. **Machine Learning** — Estrutura que facilite indexação, embeddings e RAG
5. **Escalabilidade** — Fácil adicionar novos clientes e projetos

---

## 2. Estrutura Proposta do Monorepo

```
adventure-labs/                    # Raiz do monorepo (repo único privado)
├── .cursor/
│   ├── rules/                    # Regras globais do Cursor
│   │   ├── adventure-labs-identity.mdc
│   │   ├── security-sensitives.mdc
│   │   └── monorepo-conventions.mdc
│   ├── skills/                   # Skills por domínio (mapeáveis)
│   │   ├── gestao-corporativa/
│   │   ├── comercial/
│   │   ├── marketing/
│   │   ├── desenvolvimento/
│   │   └── clientes/
│   └── AGENTS.md                 # Diretrizes para multi-agentes
│
├── .github/
│   ├── ISSUE_TEMPLATE/
│   ├── workflows/
│   └── CODEOWNERS
│
├── _internal/                    # Uso interno, nunca exposto
│   ├── vault/                    # Referências a secrets (não os secrets em si)
│   │   ├── README.md             # Instruções: onde buscar credenciais
│   │   └── .gitkeep
│   ├── temp/                     # Workspaces temporários (gitignore)
│   └── archive/                  # Código/projetos descontinuados
│
├── apps/                         # Aplicações principais
│   ├── admin/                   # Adventure Labs OS (canônico)
│   ├── adventure/               # Produto principal
│   ├── elite/
│   ├── finfeed/
│   └── ...
│
├── packages/                     # Pacotes compartilhados
│   ├── ui/                      # Componentes UI
│   ├── db/                      # Schemas, migrations
│   └── config/                  # Configs compartilhadas
│
├── clients/                      # Projetos por cliente
│   ├── 01_lidera/
│   │   ├── lidera-space/
│   │   ├── lidera-skills/
│   │   ├── capclear-site/
│   │   └── README.md            # Resumo do cliente (sem dados sensíveis)
│   ├── 02_rose/
│   │   └── roseportaladvocacia/
│   ├── 03_speed/
│   ├── 04_young/
│   │   ├── young-emp/
│   │   ├── young-talents/
│   │   └── ranking-vendas/
│   └── 05_benditta/
│
├── knowledge/                     # Base de conhecimento (indexável para ML/RAG)
│   ├── 00_gestao_corporativa/
│   ├── 01_comercial/
│   ├── 02_marketing/
│   ├── 03_projetos_internos/
│   ├── 04_projetos_clientes/
│   ├── 05_laboratorio/
│   ├── 06_conhecimento/
│   └── 99_arquivo/
│
├── tools/                        # Ferramentas internas
│   ├── xtractor/
│   ├── dbgr/
│   ├── gdrive-migrator/
│   ├── notebooklm/
│   └── musicalart/
│
├── workflows/                    # n8n, automações (definições, não secrets)
│   ├── n8n/
│   │   └── *.json               # Workflows versionados
│   └── docs/
│
├── pnpm-workspace.yaml
├── .gitignore
├── README.md
└── CONTRIBUTING.md
```

---

## 3. Camadas de Segurança e Sigilo

### 3.1 O Que NUNCA Entra no Repo

| Tipo | Exemplo | Onde Guardar |
|------|---------|--------------|
| Credenciais | Senhas, API keys, tokens | 1Password, Vault, variáveis de ambiente |
| Dados de clientes | Extratos, CPF, dados bancários | Drive criptografado, banco isolado |
| Respostas sigilosas | Questionários, NDA | `_internal/vault` (apenas referência) |
| `.env`, `.env.local` | Variáveis de ambiente | `.env.example` versionado; valores em Vercel/Railway |
| `token.json`, `token.pickle` | OAuth, sessões | Local + .gitignore |

### 3.2 Estrutura do Vault (Referências)

```
_internal/vault/
├── README.md
│   Conteúdo: "Credenciais vivem em 1Password (vault Adventure Labs).
│   Arquivos .env são gerados localmente a partir de .env.example.
│   Nunca commitar credenciais."
├── .gitkeep
└── (nenhum arquivo com dados reais)
```

### 3.3 Padrões de .gitignore na Raiz

```gitignore
# Secrets e credenciais
.env
.env.*
!.env.example
*credenciais*.md
*secret*
token*.json
token.pickle
*.secret

# Dados sensíveis de clientes
**/extratos/
**/sicredi/
**/respostas-sigilosas*.md
**/respostas-questionario*.md

# Temp e clones
_internal/temp/
**/temp_*/
**/node_modules/
**/.next/
**/dist/
**/build/
```

### 3.4 Regra Cursor para Segurança

Criar `.cursor/rules/security-sensitives.mdc`:

```markdown
---
description: Previne exposição de dados sensíveis e credenciais
alwaysApply: true
---

# Segurança e Dados Sensíveis

- Nunca sugerir ou escrever credenciais, senhas, API keys ou tokens em código versionado.
- Arquivos como credenciais-adventure.md, .env, token.json devem permanecer em .gitignore.
- Ao criar exemplos, use placeholders: `process.env.API_KEY`, `[REDACTED]`.
- Dados de clientes (CPF, extratos, respostas sigilosas) nunca no repositório.
```

---

## 4. Taxonomia da Base de Conhecimento

### 4.1 Estrutura `knowledge/` (Espelho do context atual)

| Pasta | Conteúdo | Uso para IA |
|-------|----------|-------------|
| `00_gestao_corporativa` | Financeiro, jurídico, pessoas, processos | Skills de gestão, templates |
| `01_comercial` | Pipeline, propostas, programas | Skills comerciais |
| `02_marketing` | Campanhas, entregas, KPIs | Skills de marketing |
| `03_projetos_internos` | Projetos internos, tarefas | Contexto de roadmap |
| `04_projetos_clientes` | Entregas por cliente (sem dados sensíveis) | Resumos, status |
| `05_laboratorio` | Inventário de apps, experimentos | Skills de dev |
| `06_conhecimento` | Arquitetura, manuais, backlogs | RAG, embeddings |
| `99_arquivo` | Histórico, arquivados | Referência sob demanda |

### 4.2 Convenções de Nomenclatura

- **Pastas:** `NN_nome_snake_case` (ex: `01_gestao_corporativa`)
- **Arquivos:** `kebab-case.md` ou `snake_case.md`
- **Clientes:** `NN_nome_cliente` (ex: `01_lidera`, `02_rose`)
- **Projetos:** `nome-projeto` (ex: `lidera-space`, `young-talents`)

---

## 5. Mapeamento para Skills e Multi-Agentes

### 5.1 Skills por Domínio

| Skill | Pasta de Contexto | Quando Usar |
|-------|-------------------|-------------|
| `gestao-corporativa` | `knowledge/00_gestao_corporativa` | Processos, financeiro, jurídico |
| `comercial` | `knowledge/01_comercial` | Propostas, pipeline, vendas |
| `marketing` | `knowledge/02_marketing` | Campanhas, tráfego, KPIs |
| `desenvolvimento` | `knowledge/05_laboratorio`, `apps/`, `packages/` | Código, arquitetura |
| `clientes` | `clients/`, `knowledge/04_projetos_clientes` | Contexto de cliente específico |

### 5.2 AGENTS.md (Raiz)

Arquivo que orienta o multi-agente sobre:

- Identidade (Adventure Labs OS, Grove, C-Suite)
- Onde buscar contexto (`knowledge/`, `clients/`)
- Regras de sigilo e segurança
- Mapeamento skills ↔ pastas

### 5.3 Preparação para ML/RAG

1. **Indexação:** Manter `knowledge/` em Markdown estruturado, com frontmatter opcional:
   ```yaml
   ---
   title: Nome do documento
   domain: gestao_corporativa
   tags: [processo, financeiro]
   updated: 2026-03-07
   ---
   ```
2. **Embeddings:** Pastas `knowledge/*` são candidatas naturais para vetorização
3. **Skills dinâmicos:** Skills podem referenciar pastas inteiras como contexto

---

## 6. Plano de Migração (Fases)

### Fase 1 — Limpeza e Consolidação (1–2 dias) ✅ Concluída 2026-03-07

1. **Remover clones temporários** ✅
   - Arquivados em `_internal/archive/` (temp_admin_report_*, temp_admin_repo2, temp_admin_vercel_fix)
   - Admin canônico: `01_ADVENTURE_LABS/00_LABORATÓRIO/admin/`

2. **Consolidar Lidera**
   - LIDERA-- (vazio) removido
   - Demais projetos mantidos; consolidação completa na Fase 2

3. **Mover artefatos** ✅
   - `.gitignore` raiz criado com `gh_*`, `_internal/temp/`, secrets

4. **Documentação e skill** ✅
   - `01_ADVENTURE_LABS/docs/MANUAL_TAXONOMIA_REPOSITORIO.md`
   - `admin/context/00_GESTAO_CORPORATIVA/MANUAL_TAXONOMIA_REPOSITORIO.md`
   - Skill `agents/skills/taxonomia-repositorio/SKILL.md` (owner: CEO/Grove)

### Fase 2 — Nova Estrutura de Pastas (2–3 dias) ✅ Concluída 2026-03-07

1. Criar estrutura raiz conforme seção 2 ✅
2. Mover `00_LABORATÓRIO/*` → `apps/` ou `tools/` ✅
3. Mover `01_CLIENTES/NN_*` → `clients/NN_*` ✅
4. Unificar `context/` em `knowledge/` (uma única fonte) ✅
5. Criar `_internal/vault` e README de referência ✅

### Fase 3 — Configuração do Monorepo (1–2 dias) ✅ Concluída 2026-03-07

1. pnpm-workspace.yaml na raiz 01_ADVENTURE_LABS ✅
2. Configurar `pnpm-workspace.yaml` com apps/*, packages/*, tools/dbgr ✅
3. `.gitignore` raiz robusto ✅
4. Configurar `.cursor/rules` e `AGENTS.md` ✅
5. Skills permanecem em `apps/core/admin/agents/skills/` ✅

### Fase 4 — Segurança e Documentação (1 dia) ✅ Concluída 2026-03-07

1. `.gitignore` com *credenciais*.md, extratos, respostas sigilosas ✅
2. README e CONTRIBUTING criados ✅
3. CODEOWNERS para _internal/vault e knowledge/00_GESTAO_CORPORATIVA ✅

### Fase 5 — Integração com GEMINI_CLI / Workflows (opcional) ✅ Concluída 2026-03-07

1. Workflows copiados para `01_ADVENTURE_LABS/workflows/n8n/` ✅
2. GEMINI_CLI permanece separado (meus-workflows preservado) ✅

### Fase 6 — Git e Versionamento ✅ Implementada 2026-03-07

**Implementação:** Repo "adventure-labs" com submodules.

- **Repo raiz** versiona: knowledge/, docs/, .cursor/, workflows/, etc.
- **Submodules:** admin, adventure, elite, finfeed, lidera-space, lidera-skills, roseportaladvocacia, young-emp, ranking-vendas, young-talents
- **Symlink:** `apps/core/admin/context -> ../../knowledge` (sem duplicação)
- **Setup:** `./scripts/setup.sh` após clone
- **Documentação:** `docs/FASE_6_GIT_E_REPOSITORIO.md`

### Fase 7 — Pós-Fase 6 ✅ Implementada 2026-03-07

- **Auditoria de secrets:** Script `./scripts/audit-secrets.sh --report`; instruções em `docs/FASE_6_GIT_E_REPOSITORIO.md`
- **ML/RAG:** Frontmatter YAML em docs de knowledge; instruções em `knowledge/README.md`
- **Packages:** Estrutura inicial `packages/ui`, `packages/db`, `packages/config`
- **Tools:** Mantidos como pastas; `pnpm-workspace` inclui `tools/*`
- **Submodules Lidera:** lidera-skills adicionado

---

## 7. Checklist de Validação

Antes de considerar o monorepo pronto:

- [x] Executar `./scripts/audit-secrets.sh --report` e revisar; nenhum secret no histórico
- [x] `.env.example` existe onde há `.env` em uso (admin, adventure, elite, rose, young-talents, dbgr, xtractor)
- [x] `knowledge/` é fonte canônica; `apps/core/admin/context` é symlink para `../../knowledge` (ver knowledge/README.md)
- [x] Clientes seguem padrão `clients/NN_nome/projeto`
- [x] Skills mapeiam para pastas de conhecimento (`.cursor/skills/` + `apps/core/admin/agents/skills/`)
- [x] AGENTS.md e .cursor/rules estão configurados
- [x] pnpm workspaces funcionam em `apps/`, `packages/` e `tools/`
- [x] README raiz explica estrutura e como contribuir

---

## 8. Próximos Passos (opcional)

1. **Auditoria de secrets** — Executar `./scripts/audit-secrets.sh --report` periodicamente
2. **Packages** — Migrar componentes/schemas comuns para `packages/ui` e `packages/db` conforme necessidade
3. **Embeddings/RAG** — Indexar `knowledge/` para vetorização quando houver pipeline de ML

---

## 9. Referências

- Estrutura atual: `01_ADVENTURE_LABS/`, `GEMINI_CLI/`
- Taxonomia existente: `knowledge/` (00–99); `apps/core/admin/context` → symlink para `../../knowledge`
- Skills Cursor: `~/.cursor/skills-cursor/`
- Regras Cursor: `.cursor/rules/` (formato .mdc)

---

*Documento gerado como parte do plano de organização do monorepo Adventure Labs. Atualizar conforme a migração avançar.*
