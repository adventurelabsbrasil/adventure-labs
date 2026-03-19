# Workflows Cursor — Monorepo Adventure Labs

## Workflow 1 — Nova feature fullstack cruzando pacotes do monorepo

Passos recomendados:

1. **Registro**
   - Criar (ou referenciar) uma tarefa em `adv_tasks` no Admin.
   - Se for trabalho de **Desenvolvimento (TI)**, criar uma issue no GitHub e vincular à tarefa.

2. **Escopo**
   - Definir claramente quais apps (`apps/core/admin`, `apps/core/adventure`, etc.) e quais packages (`packages/ui`, `packages/db`, etc.) serão afetados.
   - Usar a skill `monorepo-pnpm` para decidir onde colocar código (app específico vs package reutilizável) e como instalar dependências com `pnpm --filter`.

3. **Schema (se houver impacto em banco)**
   - Usar a skill `supabase-migrations` para desenhar a migration.
   - Conferir o schema atual via Supabase MCP (`list_tables`/equivalente) antes de criar a migration.
   - Criar migrations em `apps/core/admin/supabase/migrations/` com prefixo `adv_` e RLS adequada.

4. **Backend / API**
   - No Admin: implementar em `apps/core/admin/app/api/**`, usando tipos de `apps/core/admin/src/types/database.ts`.
   - Em outros apps: seguir a convenção local (por exemplo, API externa ou funções server-side).

5. **UI**
   - Usar a skill `ui-components` para decidir se o componente vai para `packages/ui` (genérico) ou para o app específico.
   - Implementar a UI com Tailwind + Shadcn UI, usando Sonner para feedback de ações.

6. **Revisão**
   - Executar a skill `code-review` para revisar o diff conforme padrões do Torvalds (CTO).
   - Rodar scripts de validação relevantes:
     - `./tools/scripts/typecheck-workspaces.sh`
     - `./tools/scripts/lint-workspaces.sh`

### Prompt-padrão sugerido

Use este snippet como base no Cursor:

```text
Nova feature fullstack: [descrição breve].
Escopo: [app(s) e packages afetados].
Requisitos: [lista curta].
Siga o workflow: 1) Registrar em adv_tasks + issue GitHub se TI. 2) Definir onde colocar código (monorepo-pnpm). 3) Migrations se necessário (supabase-migrations + conferir schema via MCP). 4) API e UI. 5) Revisão (code-review skill + scripts de validação).
```

---

## Workflow 2 — Refatorar componente compartilhado sem quebrar dependências

Passos recomendados:

1. **Identificar usos**
   - Buscar todas as referências ao componente (nome do arquivo/export) em todo o monorepo.

2. **Decidir destino**
   - Se o componente for genérico e reutilizável em mais de um app, mover para `packages/ui`.
   - Se for específico de um app, mantê-lo no app e apenas extrair para uma estrutura mais clara (ex.: `components/`).

3. **Mover / extrair**
   - Mover o arquivo para o destino escolhido.
   - Atualizar `package.json` e arquivos de índice em `packages/ui` se o componente passar a ser exportado como parte do pacote.

4. **Atualizar imports**
   - Em cada consumidor, ajustar o import:
     - Para pacote compartilhado: `import { Componente } from "@adventure-labs/ui"`.
     - Para caminho interno atualizado: ajustar o path relativo ou via alias `@/`.
   - Se necessário, instalar `@adventure-labs/ui` no app com `pnpm add @adventure-labs/ui --filter <workspace>`.

5. **Validar**
   - Rodar type-check e lint nos apps afetados.
   - Executar testes se existirem (`pnpm --filter <workspace> test` ou `./tools/scripts/test-workspaces.sh`).

### Prompt-padrão sugerido

```text
Refatorar componente compartilhado: [nome/arquivo].
Objetivo: [mover para packages/ui OU apenas extrair no mesmo app].
Passos: 1) Buscar todos os usos. 2) Decidir destino (ui-components skill). 3) Mover e atualizar exports. 4) Atualizar imports em cada consumidor. 5) Rodar type-check, lint e testes nos apps afetados.
```

