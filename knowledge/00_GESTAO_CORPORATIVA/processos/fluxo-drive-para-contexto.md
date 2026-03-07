# Fluxo: Google Drive → Contexto → App Admin → Frontend

Documento que define como o Founder (Rodrigo) dá acesso ao conteúdo do Google Drive (Desktop) para o Grove analisar, estruturar no `/context`, organizar no App Admin e planejar uso no frontend. **Pasta por pasta**, de forma controlada.

---

## 1. Como o Grove acessa o Drive

O Grove **não** tem acesso direto à API do Google Drive a partir do ambiente de desenvolvimento. Para analisar pastas e arquivos, usamos uma destas formas:

| Opção | Descrição | Quando usar |
|-------|-----------|-------------|
| **A. Workspace no Cursor** | Adicionar a pasta do Google Drive (Desktop) como pasta do workspace no Cursor. O Grove passa a poder listar e ler arquivos dentro dessa pasta. | Quando quiser dar acesso amplo a uma árvore de pastas (ex.: `Meu Drive/Adventure Labs`). |
| **B. Cópia pontual** | Copiar uma pasta específica (ou seus arquivos) para dentro do repo, ex.: `context/99_ARQUIVO/drive-import/[nome-da-pasta]`. O Grove analisa e depois move/estrutura no `/context` conforme a taxonomia 00–99. Arquivos sensíveis podem ser gitignored. | Quando a pasta for pequena ou quando não quiser expor todo o Drive. |
| **C. Estrutura + conteúdo no chat** | Você envia: (1) lista ou screenshot da estrutura da pasta; (2) cola o conteúdo de arquivos chave ou anexa. O Grove estrutura em `.md` no `/context` e sugere cadastros no Admin. | Para pastas com poucos arquivos ou quando preferir não colocar arquivos no repo. |

**Recomendação:** Começar pela **Opção A** (adicionar a raiz do Drive ou uma pasta “Adventure Labs” no workspace) para ir **pasta por pasta**; o Grove analisa, sugere o que virar documento no `/context`, o que virar dado no Admin e o que pode ir para o frontend depois.

---

## 2. Fluxo pasta por pasta

1. **Definir a pasta de início** (ex.: `Adventure Labs/00_GESTAO_CORPORATIVA` ou `Adventure Labs/Clientes`).
2. **Grove analisa** a estrutura e o conteúdo (leitura de arquivos, se a pasta estiver no workspace).
3. **Grove propõe:**
   - **Context:** quais arquivos viram ou alimentam documentos em `/context` (taxonomia 00–99) — ex.: processo, diretriz, one-pager.
   - **App Admin:** quais informações viram entidades ou listas (clientes, projetos, entregas, cards de Kanban).
   - **Frontend (futuro):** o que faz sentido expor no site/área do cliente (ex.: cronograma, relatórios).
4. **Founder valida** e decide o que sobe; o Grove executa (cria/atualiza docs, sugere migrations ou telas).
5. **Próxima pasta** — repetir.

---

## 3. Regras de sigilo no fluxo

- **Não versionar no Git:** extratos bancários, contratos com valores, dados de pessoas (salários, CPF), planilhas com receita/custos. Podem ficar em `99_ARQUIVO` com entrada no `.gitignore` ou só no Drive.
- **Pode versionar no `/context`:** processos, diretrizes, estrutura de pastas, listas de indicadores, prioridades, cronogramas sem valores sensíveis.
- **App Admin:** dados de clientes/projetos já seguem RLS e multitenant; números financeiros só no backend e com cuidado (não expor em frontend público sem necessidade).

---

## 4. Primeira pasta — 00_GESTAO_CORPORATIVA (feita)

A pasta **00_GESTAO_CORPORATIVA** do Drive (conta contato@adventurelabs.com.br) foi adicionada ao workspace e analisada. Resultado:

- **Mapeamento:** [mapeamento-drive-00-gestao-corporativa.md](../operacao/mapeamento-drive-00-gestao-corporativa.md) — estrutura, o que é sigiloso, o que pode vir para context/app, e próximos passos (Manual do Drive, POPs, plano de contas, board).

**Próxima pasta sugerida:** `01_COMERCIAL` ou `Clientes` (conforme estrutura do seu Drive), quando quiser seguir pasta por pasta.

---

## 5. Extratos Sicredi (jan/fev 2026)

Os arquivos OFX de entradas e saídas 2026 (jan e fev) estão em:

- `context/99_ARQUIVO/sicredi/sicredi_1772470610.ofx`
- `context/99_ARQUIVO/sicredi/sicredi_1772470634.ofx`

A pasta `context/99_ARQUIVO/sicredi/` está no `.gitignore` e **não é versionada**. Uso: conciliação quando o Founder solicitar (no chat ou em ferramenta interna); o Grove não expõe valores em documentos versionados.

---

*Criado pelo Grove em 03/03/2026.*
