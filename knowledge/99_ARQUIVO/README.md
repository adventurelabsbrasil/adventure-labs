# 99_ARQUIVO

Pasta para arquivos avulsos, seeds e imports pontuais.

**Política:** Use 99 para arquivo avulso, histórico por pessoa ou por projeto (ex.: pasta por contato/cliente, exports, BrainDump, atividades mensais). Processos, templates oficiais e checklists ficam em `00_GESTAO_CORPORATIVA` (e subpastas processos, templates, checklists_config, etc.). O que for versão antiga ou duplicata pode ser arquivado aqui com prefixo `_arquivado-`.

## Conteúdo mantido (memória / uso)

- **seed-cenario-atual.sql** — Seed do cenário atual (produtos, sessões do programa, vínculos). Executar após a migration `20250302100000_adv_cenario_atual.sql`. Referência: [cenario_atual_clientes_planos.md](../00_GESTAO_CORPORATIVA/cenario_atual_clientes_planos.md).
- **import-projects-config.example.ts** — Exemplo de config para o script de import de projetos via CSV. Copie para `import-projects-config.json` (formato JSON), ajuste os mapeamentos e coloque o CSV na pasta; o script gera `import-projects.sql` para executar no Supabase.
- **Templates de relatório founder** estão em [00_GESTAO_CORPORATIVA/templates/](../00_GESTAO_CORPORATIVA/templates/) (relatorio-founder-TEMPLATE.md, template-respostas-questionario-founder.md). Processo: [processo-relatorio-founder.md](../00_GESTAO_CORPORATIVA/processos/processo-relatorio-founder.md). Coloque relatórios brutos (ex.: `relatorio-YYYY-MM-DD.md`) aqui em 99 ou em 00/operacao e referencie no chat com @arquivo para o Grove organizar.

## Import de projetos (CSV)

1. Coloque o CSV na pasta e crie `import-projects-config.json` a partir do example (propriedade → cliente/interno; status → stage).
2. Na raiz do monorepo: `pnpm --filter admin run import:projects`.
3. Revise e execute o `import-projects.sql` gerado no Supabase SQL Editor.

CSV e `import-projects-config.json` estão no `.gitignore`; o SQL gerado também.

## Conciliação financeira (Sueli / Buffett)

Para conciliação bancária e categorização (ex.: 01/01/2026 até agora), use a estrutura abaixo. A pasta `financeiro/` e `conciliacao_2026/` estão no `.gitignore` (dados sensíveis).

- **financeiro/** — NFs, boletos e recibos (facilitam cruzar transações do OFX/CSV com comprovantes):
  - `nfs_entrada/` — Notas fiscais de entrada (receitas / compras a contabilizar)
  - `nfs_saida/` — Notas fiscais de saída (despesas)
  - `boletos/` — Boletos pagos/recebidos
  - `recibos/` — Recibos e comprovantes
- **conciliacao_2026/** — Opcional: `nubank/`, `cartao/` para extratos de outras contas.

CSV de controle e OFX Sicredi podem estar em `knowledge/99_ARQUIVO/` (ex.: `202601_POP_Controle_Financeiro - Contas.csv`, `sicredi/*.ofx`). Ver skill [sueli-conciliacao-bancaria](../../agents/skills/sueli-conciliacao-bancaria/SKILL.md), seção "Conciliação em lote".

### Checklist — Primeira conciliação completa (01/01/2026 até agora)

Antes de acionar o Buffett (ou Grove) para a conciliação em lote, confira:

| Item | Onde verificar | Status |
|------|----------------|--------|
| Plano de contas | `context/00_GESTAO_CORPORATIVA/checklists_config/plano-de-contas-categorias.md` | OK se o arquivo existir |
| CSV de controle | `knowledge/99_ARQUIVO/202601_POP_Controle_Financeiro - Contas.csv` (ou outro CSV em knowledge/99_ARQUIVO ou context/99_ARQUIVO) | Colar/confirmar |
| OFX Sicredi | `knowledge/99_ARQUIVO/sicredi/*.ofx` (ex.: jan, fev, mar 2026) | Colar/confirmar |
| NFs, boletos, recibos | `context/99_ARQUIVO/financeiro/` (raiz ou subpastas nfs_entrada, nfs_saida, boletos, recibos) | Colar/confirmar |
| Outras contas (opcional) | `context/99_ARQUIVO/conciliacao_2026/nubank/`, `cartao/` | Só se for usar |

**Como iniciar:** No Cursor, peça ao **Buffett** (ou Grove): *"Faça a conciliação em lote de 01/01/2026 até agora: analise o plano de contas, o CSV de controle, os OFX do Sicredi e os documentos em financeiro/; categorize, liste dúvidas e me pergunte o que não souber."* O agente segue os passos 1–7 da skill sueli-conciliacao-bancaria.
