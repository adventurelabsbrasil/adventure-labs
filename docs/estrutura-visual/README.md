# Documentação visual — Estrutura GitHub e monorepos

Mapas e diagramas que explicam o conteúdo de `/GitHub` e a estrutura do monorepo 01_ADVENTURE_LABS (apps, clientes, funções e conexões).

## Um único FigJam (recomendado para a equipe)

Existe um **único board no FigJam** com todo o mapa em um só lugar: **"Estrutura GitHub e monorepos — Adventure Labs (completo, cores e anotações)"**. Inclui:
- **Cores por seção:** azul (raiz), verde (monorepo), laranja (apps), roxo (clientes), vermelho (conexões)
- **Formas geométricas:** retângulos, hexágonos, cilindros/stadium, losangos, para facilitar leitura
- **Anotações:** rótulos nos subgrafos e nas setas (ex.: "versiona", "dados", "fonte unica", "persiste")

Use o link gerado pelo Cursor (claim no Figma) para abrir, editar e compartilhar. O mesmo conteúdo está em [00-estrutura-completa-unificado.md](00-estrutura-completa-unificado.md).

## Índice dos diagramas (detalhe por tema)

| # | Arquivo | Conteúdo |
|---|---------|----------|
| 0 | [00-estrutura-completa-unificado.md](00-estrutura-completa-unificado.md) | **Tudo em um só diagrama** (raiz, monorepo, apps, clientes, conexões) |
| 1 | [01-visao-geral-github.md](01-visao-geral-github.md) | O que existe na raiz (01_ADVENTURE_LABS, GEMINI_CLI) e relação entre eles |
| 2 | [02-mapa-monorepo.md](02-mapa-monorepo.md) | Árvore de pastas do monorepo (apps, clients, knowledge, packages, tools, etc.) |
| 3 | [03-apps-e-funcoes.md](03-apps-e-funcoes.md) | Apps (admin, adventure, elite, finfeed), funções e repositórios submodule |
| 4 | [04-clientes-e-projetos.md](04-clientes-e-projetos.md) | Estrutura clients/NN_nome, projetos por cliente e ligação ao Admin/Supabase |
| 5 | [05-conexoes-e-fluxos.md](05-conexoes-e-fluxos.md) | Admin, n8n (C-Suite), knowledge e Supabase — como se conectam |

## Como visualizar

- **No GitHub:** Os arquivos `.md` são renderizados com Mermaid; abra qualquer um no navegador do repositório.
- **No VS Code / Cursor:** Extensões como "Markdown Preview Mermaid Support" ou preview nativo exibem os diagramas.
- **No FigJam:** Use o **único board** "Estrutura completa GitHub e monorepos — Adventure Labs" (link de claim na sua conta Figma) para ver e editar tudo no mesmo arquivo; ou os 5 diagramas separados, se preferir por tema.
- **HTML:** Use [mapa-estrutura.html](mapa-estrutura.html) para ver todos os diagramas numa única página no browser.

## Uso futuro

Estes arquivos servem de base para uma futura página no frontend do Admin (ex.: `/dashboard/estrutura-repos`) que exiba os diagramas (renderização Mermaid no cliente).

## Referências

- [PLANO_MONOREPO_ADVENTURE_LABS.md](../PLANO_MONOREPO_ADVENTURE_LABS.md)
- [FASE_6_GIT_E_REPOSITORIO.md](../FASE_6_GIT_E_REPOSITORIO.md)
- [MANUAL_TAXONOMIA_REPOSITORIO.md](../MANUAL_TAXONOMIA_REPOSITORIO.md)
