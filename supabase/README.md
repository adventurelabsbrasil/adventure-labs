# Supabase — Adventure Labs

Projeto Supabase compartilhado: **ref. `ftctmseyrqhckutpfdeq`**.

- **Domínio principal:** adventurelabs.com.br (dados e apps do ecossistema).
- **Admin (este repo):** painel interno em **admin.adventurelabs.com.br**.

## Regra de prefixo

Todas as tabelas e tipos do admin (e do ecossistema Adventure Labs neste projeto) usam o prefixo **`adv_`** para não conflitar com outras tabelas no mesmo Supabase.

## Diagnóstico do schema

Para registrar o estado atual de schemas, tabelas, colunas, RLS e auth (sem alterar nada):

1. Abra o **SQL Editor** no dashboard do Supabase.
2. Cole e execute o conteúdo de **`scripts/diagnostico_schema.sql`**.
3. Use os resultados (várias abas/result sets) para documentar ou preencher `docs/estado_schema_template.md` (ou um snapshot com data).

**Script complementar (opcional):** `scripts/diagnostico_schema_extra.sql` — índices (10), views (11), funções no public (12), colunas só das tabelas `adv_*` (13) e contagem de linhas nas tabelas adv_* (14). Rode quando precisar dessas informações para evoluir o schema ou alinhar o app ao banco.

## Migrations

As migrations em `migrations/` usam o prefixo `adv_*`. Se alguma relação já existir (ex.: `adv_projects` already exists), use o diagnóstico para ver o que já está criado e, se necessário, crie uma nova migration que altere apenas o que falta (ex.: políticas RLS, índices), em vez de recriar tabelas.
