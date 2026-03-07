# Guia de sigilo — Questionário Resumo Executivo

Orientações para o Founder responder o [questionario-resumo-executivo.md](questionario-resumo-executivo.md) sem expor dados sensíveis no repositório (Git pode ser compartilhado ou acessado por terceiros).

---

## Como usar

- **🔒 Sigiloso:** não coloque no `/context` versionado. Use **chat** (me envie na conversa) ou um arquivo **local não versionado** (veja abaixo).
- **✅ Pode no context:** respostas agregadas, prioridades sem valores, estrutura sem números — podem ir no questionário ou em doc no repo.

---

## Classificação por bloco

### 1. Estrutura e sociedade
| #   | Pergunta | Sigilo | Onde responder |
|-----|----------|--------|-----------------|
| 1.1 | % participação sócios (Young x Rodrigo) | 🔒 | Chat ou arquivo local |
| 1.2 | CNPJ Adventure e Young | 🔒 | Chat ou arquivo local (nunca no repo) |
| 1.3 | Conta Sicredi (de quem) e uso do Inter PJ | 🔒 | Chat ou arquivo local |

**No context pode:** “Sociedade Young + Rodrigo; conta principal hoje Sicredi; Inter PJ em abertura para [uso genérico].”

---

### 2. Financeiro
| #   | Pergunta | Sigilo | Onde responder |
|-----|----------|--------|-----------------|
| 2.1 | Onde está controle interno / link Sheets | 🔒 | Chat ou link em arquivo não versionado |
| 2.2 | Extratos Sicredi (PDFs) | 🔒 | Não subir no repo; enviar no chat se quiser conciliação |
| 2.3 | Plano de contas (lista) | ⚠️ | Pode ser genérico no context (ex.: Receita Assessoria, Custo Tráfego); detalhes no chat |
| 2.4 | Receita bruta jan/fev e origem | 🔒 | Chat ou arquivo local |
| 2.5 | Custos fixos mensais | 🔒 | Chat ou arquivo local |
| 2.6 | Meta receita/resultado semestre | 🔒 | Chat ou arquivo local |

**No context pode:** “Controle interno em Sheets; plano de contas com categorias X, Y, Z; conciliação em andamento.”

---

### 3. Clientes e pipeline
| #   | Pergunta | Sigilo | Onde responder |
|-----|----------|--------|-----------------|
| 3.1 | Lista clientes fixos + valor mensal | 🔒 | Chat ou arquivo local (valores nunca no repo) |
| 3.2 | Clientes pontuais + último projeto/valor | 🔒 | Idem |
| 3.3 | Young como cliente: serviço e valor | 🔒 | Idem |
| 3.4 | Propostas ativas (quem, estágio) | ⚠️ | Nomes e estágios podem ir no context; valores no chat |
| 3.5 | Expectativa fechamento semestre | ⚠️ | Pode ser qualitativo no context (“2–3 negociações em andamento”); números no chat |

**No context pode:** “N clientes fixos, M pontuais; pipeline com Valmir e [nomes sem valor]; expectativa de X fechamentos no semestre (número só no chat).”

---

### 4. Operação e pessoas
| #   | Pergunta | Sigilo | Onde responder |
|-----|----------|--------|-----------------|
| 4.1 | Igor e Mateus: vínculo e custo fixo | 🔒 | Chat ou arquivo local |
| 4.2 | Andressa: retorno, alocação | ⚠️ | Pode resumo no context (“parceira a definir; retorno em conciliação”); detalhes no chat |
| 4.3 | Adventrack: data e quem entra | ⚠️ | Data e nomes podem no context; detalhes de custo no chat |
| 4.4 | SLA / prazo padrão por tipo de projeto | ✅ | Pode documentar no context (ex.: “relatório 5 dias, criativos 10”) |

---

### 5. Marketing e conteúdo
| #   | Pergunta | Sigilo | Onde responder |
|-----|----------|--------|-----------------|
| 5.1 | Meta ELITE (webinars, diagnósticos, vendas) | 🔒 | Números no chat; no context só “metas definidas para ELITE” |
| 5.2 | Orçamento mídia (teto) semestre | 🔒 | Chat ou arquivo local |
| 5.3 | Cronograma editorial (onde existe) | ⚠️ | “Em construção” ou “em [ferramenta]” no context; link/detalhe no chat |

---

### 6. Produto e tecnologia
| #   | Pergunta | Sigilo | Onde responder |
|-----|----------|--------|-----------------|
| 6.1 | Prioridade roadmap (transcrição vs Omie vs KPIs) | ✅ | Pode no context (ordem de prioridade) |
| 6.2 | Previsão transcrição no CRM (trimestre) | ✅ | Pode no context |
| 6.3 | Omie: data início (depende A1?) | ✅ | Pode no context |

---

### 7. Indicadores e board meet
| #   | Pergunta | Sigilo | Onde responder |
|-----|----------|--------|-----------------|
| 7.1 | Indicadores desejados (MRR, margem, etc.) | ✅ | Lista de indicadores pode no context |
| 7.2 | Frequência acompanhamento | ✅ | Pode no context (semanal/quinzenal/mensal) |
| 7.3 | O que o Grove sempre deve incluir | ✅ | Pode no context |

---

## Onde guardar respostas sigilosas

1. **No chat:** me envie as respostas 🔒 na conversa; eu uso para conciliação, one-pager e diretrizes **sem** escrever valores/CNPJs em arquivos do repo.
2. **Arquivo local não versionado:** crie um arquivo (ex.: `respostas-sigilosas.md`) em `context/99_ARQUIVO/` e adicione ao `.gitignore`:
   ```
   context/99_ARQUIVO/respostas-sigilosas.md
   context/99_ARQUIVO/respostas-questionario*.md
   ```
   Assim você pode preencher no próprio repo e não sobe no Git.
3. **Acessos e credenciais de clientes (GreatPages, Google Ads, hospedagem, etc.):** 🔒 **apenas no App Admin**, na seção **Acessos** da Ficha do Cliente (tabela `adv_client_accesses`). Nunca em arquivos do `/context` ou do repositório. Ver [ficha-do-cliente-modelo.md](ficha-do-cliente-modelo.md).

---

## Resumo para você

- **Não coloque no repo:** CNPJ, valores em R$, receita/custos/meta, valor por cliente, vínculos e custos de pessoas, orçamento mídia, links de Sheets/PDFs internos.
- **Pode colocar no repo:** prioridades, prazos tipo “relatório 5 dias”, lista de indicadores desejados, frequência de board, estágio qualitativo do pipeline, que “existem N clientes fixos” sem nomes/valores se preferir.

Quando tiver respondido (no chat e/ou no questionário com as partes não sigilosas), avise e eu atualizo o resumo executivo e o que for necessário no `/context` mantendo sigilo.

---

*Criado pelo Grove em 03/03/2026.*
