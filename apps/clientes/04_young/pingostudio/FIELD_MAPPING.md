# Field Mapping — Looker atual (Sheets) → Looker novo (Supabase)

Template de rastreamento para a Fase 4 (Clone + troca de data source). Preencher
ao cruzar o PDF do relatório atual contra o output do `01_introspect.sql`.

## Páginas do relatório

| # | Nome da página no report | Escopo | Status migração |
|---|--------------------------|--------|-----------------|
| 1 | _(ex.: Visão Geral)_ | _(ex.: KPIs macro)_ | ⬜ pendente |
| 2 | | | ⬜ pendente |
| 3 | | | ⬜ pendente |

## Data sources do Sheets atual

Em "Recursos → Gerenciar fontes de dados adicionadas" do relatório original:

| Aba do Sheets | Linhas aprox. | Substituída por (tabela Pingolead) |
|---------------|---------------|-------------------------------------|
| | | `<schema>.<tabela>` |
| | | `<schema>.<tabela>` |

## Mapeamento campo-a-campo

Preencher uma linha por field calculado/dimensão/métrica do relatório original.

| Elemento (gráfico/scorecard/tabela) | Campo no Sheets | Tipo Sheets | Campo/coluna no Postgres | Tipo Postgres | Fórmula calculada? | Ajuste necessário |
|-------------------------------------|-----------------|-------------|--------------------------|---------------|--------------------|-------------------|
| | | | | | | |
| | | | | | | |

## Métricas calculadas

Fórmulas do Looker que referenciam múltiplas colunas/agregações. Recriar como Campo Calculado no novo relatório.

| Nome da métrica | Fórmula original (sintaxe Looker) | Fórmula nova (com colunas Postgres) | Testada? |
|-----------------|-----------------------------------|--------------------------------------|----------|
| CPL | `SUM(custo) / SUM(leads)` | `SUM(custo) / SUM(leads)` (se colunas idênticas) | ⬜ |
| CPM | | | ⬜ |
| ROAS | | | ⬜ |
| _(outras)_ | | | ⬜ |

## Filtros globais / parâmetros

| Filtro | Dimensão original | Dimensão nova | Tipo (dropdown/range/etc.) |
|--------|-------------------|---------------|----------------------------|
| Período | Data (Sheets) | `<schema>.<tabela>.data` | Date range |
| Empreendimento | | | Dropdown |
| Canal | | | Dropdown |

## Permissões (aba Compartilhar)

Antes do cutover, copiar a lista de viewers/editors do relatório antigo para o novo.

| Email/Grupo | Acesso no antigo | Acesso no novo |
|-------------|------------------|----------------|
| | Viewer | Viewer |
| | Editor | Editor |

## Checklist final

- [ ] Todas as páginas renderizam sem "Configuration error"
- [ ] Zero referências à data source Sheets no novo relatório
- [ ] Métricas calculadas conferem com valores do antigo (spot check 3 linhas após Pingolead gerar dados)
- [ ] Filtros globais funcionam em todas as páginas
- [ ] Lista de compartilhamento idêntica ao antigo
- [ ] Relatório antigo renomeado `[DEPRECATED 2026-04]`
- [ ] Planilha Sheets movida para pasta de arquivo no Drive
- [ ] Link novo comunicado ao grupo Young (WhatsApp + Telegram ceo_buzz_Bot)
