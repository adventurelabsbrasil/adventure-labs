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
