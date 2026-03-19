---
title: Wiki GitHub — Manual agêntico (Adventure Labs)
---

# Wiki GitHub — Manual agêntico (C-Suite, agentes, skills, automações)

Esta Wiki vive em **https://github.com/adventurelabsbrasil/adventure-labs/wiki** e é o frontend navegável do manual agêntico:

- C-Suite (Grove, Ohno, Torvalds, Ogilvy, Buffett, Cagan)
- Agentes de apoio (Andon, gerentes de conta, benchmark_*, etc.)
- Skills por owner (cto, coo, cmo, cfo, cpo, contexto cliente)
- Automações e integrações (n8n, workers, OpenClaw, Google Workspace)

## Estrutura de arquivos

Conteúdo-fonte fica **no próprio monorepo**, em `wiki/`:

- `wiki/Home.md`
- `wiki/_Sidebar.md`
- `wiki/Arquitetura-e-fluxo.md`
- `wiki/C-Suite-e-Grove.md`
- `wiki/Agentes-de-apoio.md`
- `wiki/Skills-por-owner.md`
- `wiki/Automacoes-e-integracoes.md`

A Wiki é um **espelho** dessa pasta — edições diretas na UI da Wiki serão sobrescritas quando o script de publicação rodar.

## Pré-requisitos (uma vez)

1. Estar autenticado(a) no GitHub CLI:

   ```bash
   gh auth login
   ```

2. Criar a **primeira página** na Wiki via interface do GitHub:
   - Abra `https://github.com/adventurelabsbrasil/adventure-labs/wiki`
   - Clique em “Create the first page”
   - Título: `Home`
   - Conteúdo mínimo: por exemplo `# init`
   - Salve a página

Sem isso, o repositório `.wiki.git` ainda não existe e o script não consegue clonar.

## Publicar / atualizar a Wiki

Sempre que editar arquivos em `wiki/`, publique assim:

```bash
cd /caminho/para/01_ADVENTURE_LABS
chmod +x scripts/publish-github-wiki.sh   # apenas na primeira vez
./scripts/publish-github-wiki.sh
```

O script:

- Clona `https://github.com/adventurelabsbrasil/adventure-labs.wiki.git` em um diretório temporário
- Copia todos os `.md` de `wiki/` para lá
- Cria um commit com mensagem `docs(wiki): sync from repo wiki/(YYYY-MM-DD)`
- Dá push para a Wiki

## Relação com o manual em `knowledge/`

- Índice canônico de documentos (incluindo esta Wiki): `knowledge/06_CONHECIMENTO/manual-agentes-e-skills.md`
- A Wiki é uma **vista de leitura navegável** do que já está no repositório (não substitui `knowledge/` nem o submódulo `apps/admin`).

