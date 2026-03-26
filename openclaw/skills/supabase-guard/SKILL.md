---
name: supabase-guard
description: Review and guide safe changes to Supabase schemas, migrations, RLS, tenant boundaries, and data access patterns in the Adventure Labs monorepo. Use when working on tables, policies, SQL migrations, schema changes, auth/data boundaries, tenant leakage risk, or when validating whether an app change also requires a database or RLS update.
---

# Supabase Guard

Use this skill for any data-layer change or review involving Supabase.

## Start here

1. Read `../../docs/inventario/M03-dados-banco-rls-migrations.md`.
2. When app context matters, read the relevant app docs or code under `../../apps/**` and `../../supabase/`.
3. Prefer evidence from migrations and policy definitions over assumptions.

## Guardrails

- Nunca tratar alteração de schema como mudança local não versionada.
- Exigir migration SQL correspondente para mudança estrutural.
- Verificar impacto em RLS, tenant scope, auth context e fluxos públicos.
- Procurar risco de leitura/escrita cross-tenant.
- Distinguir claramente: tabela global, interna, pública, autenticada, por projeto, por cliente ou multitenant.

## Review checklist

- Qual tabela/schema foi afetado?
- Existe migration versionada?
- O nome e o propósito batem com o uso no app?
- Há policy de insert/select/update/delete coerente?
- O fluxo é público, autenticado, staff, admin ou multitenant?
- Algum app/workflow/webhook também depende dessa estrutura?
- É preciso atualizar docs SSOT (M03) ou inventários correlatos?

## Response pattern

Responder em blocos curtos:

1. **Escopo afetado**
2. **Riscos**
3. **Mudanças necessárias**
4. **Validação recomendada**
5. **Docs/SSOT a atualizar**

## Typical asks

- revisar migration
- explicar tabela/policy
- avaliar tenant leakage
- dizer se mudança de app exige banco
- mapear impacto de RLS
