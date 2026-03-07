# Mapeamento: Drive 00_GESTAO_CORPORATIVA → Context / App

Primeira análise da pasta **00_GESTAO_CORPORATIVA** do Google Drive (conta contato@adventurelabs.com.br), feita pelo Grove após inclusão da pasta no workspace do Cursor. Objetivo: organizar conteúdo no `/context`, no App Admin e, no futuro, no frontend, respeitando sigilo.

**Origem no Drive:** `Meu Drive/00_GESTAO_CORPORATIVA` (Google Drive for Desktop).

---

## 1. Estrutura encontrada (resumo)

| Pasta / arquivo | Tipo | Observação |
|-----------------|------|------------|
| **01_FINANCEIRO** | Pasta | Ver seção 2. |
| **02_JURIDICO** | Pasta | Dados cadastrais e processos; sigiloso. Ver seção 3. |
| **03_PESSOAS** | Pasta | Igor/Mateus (follow-up, reuniões); sigiloso. Ver seção 4. |
| **04_PROCESSOS** | Pasta | Manual do Drive, taxonomia. Ver seção 5. |
| **Certificado Digital** | Pasta | PDF certificado; sigiloso, manter no Drive. |
| **Registro BR** | Pasta | Comprovante; sigiloso, manter no Drive. |
| **Fluxo de Caixa.gsheet** | Planilha | Conteúdo não legível daqui (.gsheet = atalho). |
| **Controle de Projetos.gsheet** | Planilha | Idem. |
| **Plano de Contas** (01_FINANCEIRO) | .gsheet / .gdoc | Idem. |
| **202601_POP_Controle_Financeiro.gsheet** | Planilha | POP; ideal exportar resumo para `/context`. |
| **202601_POP_Controles_Internos.gsheet** | Planilha | Idem. |
| **202601_POP_Controle_de_Acessos.gsheet** | Planilha | Idem. |
| **POP_Controle de Automações.gsheet** | Planilha | Idem. |
| **202601_Atividades.gdoc** | Doc | Atividades jan/2026; pode alimentar plano do dia / ações. |
| **Consolidação de Tarefas e Estratégias Diárias.gdoc** | Doc | Alinhado com plano do dia / ações no Admin. |
| **Adventure Labs ♚ Board.gdoc** | Doc | Board estratégico; pode virar doc de indicadores. |
| **Tarefas (Segundamente).gsheet** | Planilha | Tarefas semanais; pode espelhar no Admin. |
| **Comercial - Locais.gdoc** | Doc | Locais comerciais; pode alimentar pipeline/context. |

---

## 2. 01_FINANCEIRO

- **EXTRATOS_MENSAIS:** 202601.pdf, 202602_parcial.pdf — sigiloso; manter no Drive (ou em `99_ARQUIVO` não versionado). Já existem OFX jan/fev em `context/99_ARQUIVO/sicredi/` para conciliação.
- **01_RECEBIMENTOS** (202601, 202602): NFs e comprovantes por cliente (Lidera, Rose, ITY, etc.) — sigiloso; uso interno e conciliação.
- **02_PAGAMENTOS** (202601, 202602): Comprovantes (Workspace, OMIE, Meta Ads, certificado, etc.) — sigiloso.
- **Plano de Contas.gsheet / Plano de Contas Omie.gsheet / Plano de Contas para Omie ERP.gdoc:** Estrutura do plano de contas. Para o Grove usar na conciliação ou one-pager: exportar lista (ou colar no chat) sem valores; pode virar doc genérico em `00_GESTAO_CORPORATIVA` (ex.: `plano-de-contas-categorias.md`) sem números.
- **202601_SICREDI / 202602_SICREDI:** Pastas com dados Sicredi — sigiloso.

**Proposta:** Criar em `/context` um doc **não sigiloso** com apenas as **categorias** do plano de contas (ex.: Receita – Assessoria, Custo – Tráfego), se você exportar ou colar. Valores e PDFs permanecem só no Drive.

---

## 3. 02_JURIDICO

- Contém dados cadastrais da empresa (razão social, endereço, sócios, contabilidade, etc.) e processos de abertura. **Tudo sigiloso** — não replicar no repo.
- **Uso:** Manter apenas no Drive. Se no futuro o Admin tiver módulo jurídico (com acesso restrito), podemos falar em espelhar “existência” de documentos (nome + pasta) sem conteúdo.

---

## 4. 03_PESSOAS

- **Igor - Follow up.gdoc**, **Mateus - Reuniões de Alinhamento.gdoc**, **Igor.gsheet:** Conteúdo de pessoas; sigiloso. Manter no Drive.
- **Proposta:** No `/context` podemos ter um doc genérico de **estrutura de pessoas** (ex.: “Equipe: Founder, Designer, Gestor de Tráfego; reuniões de alinhamento e follow-up documentados no Drive”) sem nomes de arquivos sensíveis ou valores.

---

## 5. 04_PROCESSOS

- **Manual do Drive: Armazenamento e Taxonomia.gdoc:** Alinhado à taxonomia 00–99 do repo. **Prioridade para trazer ao context:** exportar como texto ou colar resumo no chat; o Grove vira um `manual-drive-taxonomia.md` em `00_GESTAO_CORPORATIVA` ou `06_CONHECIMENTO`, sem dados sigilosos.

---

## 6. Arquivos soltos (raiz)

- **POPs (.gsheet):** Controle Financeiro, Controles Internos, Controle de Acessos, Controle de Automações. Exportar **resumos** (passos principais, responsáveis) para o Grove transformar em `.md` em `/context`, sem valores ou dados pessoais.
- **202601_Atividades.gdoc** e **Consolidação de Tarefas e Estratégias Diárias.gdoc:** Podem alimentar o conceito de “plano do dia” e “ações prioritárias” já existentes no Admin; se quiser, exporte ou cole trechos e o Grove sugere como refletir no app (listas, tarefas).
- **Adventure Labs ♚ Board.gdoc:** Indicadores e board meet; boa fonte para o doc de indicadores semestrais e para o “board meet” citado no resumo executivo. Exportar ou colar resumo para o Grove estruturar em `00_GESTAO_CORPORATIVA`.
- **Comercial - Locais.gdoc:** Pode alimentar pipeline ou contexto comercial (onde atuamos, tipos de cliente); exportar/colar se quiser no context.
- **Tarefas (Segundamente).gsheet:** Se a estrutura for genérica (tipos de tarefa, dias), pode virar referência para o Admin; se tiver dados sensíveis, manter só no Drive.

---

## 7. Limitação técnica: .gsheet e .gdoc

Arquivos **.gsheet** e **.gdoc** no disco são atalhos do Google; o Grove **não** consegue ler o conteúdo pelo sistema de arquivos. Para usar no context ou no app:

- **Exportar** do Google (Download como .txt, .md ou .pdf) para uma pasta que o Grove leia, ou  
- **Colar** trechos relevantes no chat e o Grove estrutura em `.md` no repo.

---

## 8. Próximos passos sugeridos

1. ~~**Manual do Drive (04_PROCESSOS):**~~ **Feito.** Conteúdo em [06_CONHECIMENTO/manual-drive-taxonomia.md](../06_CONHECIMENTO/manual-drive-taxonomia.md).
2. ~~**Plano de contas (apenas categorias):**~~ **Feito.** Conteúdo em [plano-de-contas-categorias.md](plano-de-contas-categorias.md).
3. **Controles internos:** Lista em [controles-internos.md](controles-internos.md). POPs (resumos) ainda podem ser exportados para docs de processo.
4. **Board / indicadores:** Ainda não temos documento formal; em construção quando houver conteúdo.
5. **Atividades:** Fonte em `99_ARQUIVO/202601_Atividades.md` para plano do dia e ações prioritárias no Admin.
6. **Estado financeiro:** Controle em `99_ARQUIVO/financeiro.csv` (não versionado; colunas alinhadas ao plano de contas).

Quando tiver exportado resumos dos POPs ou conteúdo do Board, avise e o Grove segue com a estruturação no `/context` e sugestões para o App Admin.

---

*Elaborado pelo Grove em 03/03/2026. Fonte: pasta Drive `Meu Drive/00_GESTAO_CORPORATIVA` (Google Drive contato@adventurelabs.com.br).*
