# Lidera DRE

Sistema de lançamento de receitas e despesas para formação de DRE (Demonstração do Resultado do Exercício). Interface moderna em tema escuro, pensada para o dono do restaurante.

## Funcionalidades

- **Lançamentos**: formulário para cadastro rápido (data, tipo, categoria, subcategoria, descrição, valor, observações, responsável) e lista dinâmica agrupada por data.
- **Editar lançamentos**: tabela com filtros por período e tipo; edição inline e exclusão.
- **Categorias e subcategorias**: CRUD em menu separado (categorias por tipo entrada/saída e subcategorias por categoria).
- **DRE Mensal e DRE Anual**: relatórios agrupados por categoria e subcategoria, com totais e resultado. DRE Anual inclui visão por mês.
- **Exportar**: PDF (tema claro para impressão), XLS e CSV do DRE e dos lançamentos do período.

## Stack

- React 19 + TypeScript + Vite
- React Router
- Supabase (backend)
- jspdf + jspdf-autotable (PDF), xlsx (Excel)

## Setup

1. Clone e instale dependências:
   ```bash
   cd lidera-dre && npm install
   ```

2. Crie um projeto no [Supabase](https://supabase.com) e crie as tabelas (com prefixo `dre_`):
   - **Passo a passo detalhado:** veja [docs/PASSO_A_PASSO_SUPABASE.md](docs/PASSO_A_PASSO_SUPABASE.md).
   - Em resumo: no SQL Editor do Supabase, rode `supabase/migrations/001_schema_dre.sql` (cria `dre_categorias`, `dre_subcategorias`, `dre_lancamentos`) e, se quiser dados de exemplo, rode `supabase/seed_dre.sql`.

3. Configure variáveis de ambiente (copie `.env.example` para `.env`):
   ```
   VITE_SUPABASE_URL=https://seu-projeto.supabase.co
   VITE_SUPABASE_ANON_KEY=sua-anon-key
   ```

4. Inicie o app:
   ```bash
   npm run dev
   ```

## Estrutura

- `src/pages/` — Lançamentos, LancamentosEditar, Categorias, DREMensal, DREAnual, Exportar
- `src/components/` — Layout (sidebar, tema escuro)
- `src/hooks/` — useCategorias, useSubcategorias, useLancamentos
- `src/lib/` — supabase, dre (agregação), exportPdf, exportXls, exportCsv

Auth e roles ficam para uma etapa posterior; o foco atual é visual e dados no Supabase.
