# Verificação: Roles e RLS no Supabase (Admin e Adventure CRM)

Projeto Supabase compartilhado: **ftctmseyrqhckutpfdeq**. Este documento descreve como executar a verificação do estado atual de tabelas, RLS e políticas, conforme o plano de roles do Admin e do Adventure (CRM).

---

## 1. Rodar o diagnóstico do schema

1. Abra o **Supabase Dashboard** do projeto (ftctmseyrqhckutpfdeq) e vá em **SQL Editor**.
2. Abra o arquivo:
   - **Principal:** `apps/admin/supabase/scripts/diagnostico_schema.sql`
   - **Complementar (opcional):** `apps/admin/supabase/scripts/diagnostico_schema_extra.sql`
3. Copie todo o conteúdo de `diagnostico_schema.sql` e execute no SQL Editor.
4. O script contém várias queries (1 a 9). Anote ou exporte os resultados, em especial das **queries 4 e 5**.

---

## 2. O que anotar (queries 4 e 5)

**Opção em um único script:** Use `apps/admin/supabase/scripts/diagnostico_rls_e_colunas_crm.sql`. Ele reproduz as queries 4 e 5 (políticas RLS e tabelas com RLS ativo), lista as colunas das tabelas CRM usadas pelo script RLS (para investigar o erro `column "project_id" does not exist`) e inclui uma query com as tabelas referenciadas pelos apps Admin e Adventure. Rode no SQL Editor e cole os resultados no estado_schema_template (seções 4 e 5) e use a lista de colunas para analisar o erro do supabase-rls-policies.

### Query 4 — Políticas RLS

Lista todas as políticas RLS por tabela. Anote:

- Quais tabelas têm políticas e com que nomes.
- Para as tabelas relevantes ao Admin e ao Adventure, quais roles são usados (`authenticated`, etc.) e o que cada política permite (SELECT, INSERT, UPDATE, DELETE).

**Tabelas de interesse:**

| Grupo        | Tabelas |
|-------------|---------|
| Admin (adv_*) | `adv_profiles`, `adv_project_members`, `adv_clients`, `adv_projects`, `adv_tasks`, `adv_task_time_entries`, `adv_time_bank_locations`, `adv_time_bank_entries`, `adv_time_bank_usages` |
| CRM (Adventure) | `users`, `projects`, `project_users`, `deals`, `contacts`, `companies`, `tasks`, `services`, `proposals`, `funnels`, `close_reasons` |
| Time Bank (Adventure) | `time_bank_employees`, `time_bank_locations`, `time_bank_entries`, `time_bank_usages` |
| Outras       | `whatsapp_conversations` |

### Query 5 — RLS ativo por tabela

Lista quais tabelas têm RLS ligado (`rls_enabled`) e se é forçado (`rls_forced`). Confira se as tabelas acima têm RLS ativo quando a regra de negócio exigir.

---

## 3. Verificar se o script RLS do CRM está aplicado

O arquivo `apps/adventure/scripts/migration/supabase-rls-policies.sql` define funções e políticas para o CRM (users, projects, project_users, deals, contacts, etc.), mas **não está em** `supabase/migrations/`, então pode não estar aplicado no projeto.

No SQL Editor, execute (ou consulte o resultado do diagnóstico):

```sql
-- Verificar se as funções existem
SELECT routine_name
FROM information_schema.routines
WHERE routine_schema = 'public'
  AND routine_name IN ('get_user_type', 'has_project_access', 'is_developer_or_owner');
```

- Se retornar 3 linhas, as funções existem e o script (ou equivalente) foi aplicado.
- Se retornar 0 ou menos de 3, considerar o script como **não aplicado** e documentar isso na matriz de roles (ex.: em `docs/SUPABASE_ROLES_MATRIZ_ACESSOS.md`).

---

## 4. Onde documentar o resultado

- **Estado do schema (snapshot):** Use o template `apps/admin/supabase/docs/estado_schema_template.md` e preencha com os resultados das queries 1–8 (e, se usar, do `diagnostico_schema_extra.sql`). Os resultados das queries A e B do `diagnostico_rls_e_colunas_crm.sql` correspondem às seções 4 e 5 do template.
- **Matriz de roles e acessos:** Atualize `docs/SUPABASE_ROLES_MATRIZ_ACESSOS.md` com o estado real das políticas (quem pode SELECT/INSERT/UPDATE/DELETE por tabela/role), principalmente após rodar esta verificação.
- **Alinhamento com os apps:** Use a query C (colunas CRM) para investigar o erro do supabase-rls-policies; use a query D (tabelas dos apps) e o checklist em `docs/SUPABASE_APPS_ALINHAMENTO.md` para cruzar existência de tabelas e RLS com Admin e Adventure. Resultados das queries C e D podem ser guardados em `apps/admin/supabase/scripts/queryC_resultado.json` e `apps/admin/supabase/scripts/queryD_resultado` para referência.

---

## Referências

- **Manual do projeto Roles (passo a passo):** [docs/roles/PASSO_A_PASSO.md](roles/PASSO_A_PASSO.md) — guia único: o que foi feito, o que fazer e resultados esperados.
- Plano: Roles do Admin e Adventure (CRM) no Supabase.
- Script de diagnóstico: `apps/admin/supabase/scripts/diagnostico_schema.sql`
- Script RLS e colunas CRM: `apps/admin/supabase/scripts/diagnostico_rls_e_colunas_crm.sql`
- Script extra: `apps/admin/supabase/scripts/diagnostico_schema_extra.sql`
- Template de estado do schema: `apps/admin/supabase/docs/estado_schema_template.md`
- Matriz de acessos: `docs/SUPABASE_ROLES_MATRIZ_ACESSOS.md`
- Checklist alinhamento apps: `docs/SUPABASE_APPS_ALINHAMENTO.md`
