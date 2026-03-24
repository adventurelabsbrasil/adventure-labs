# Relatório de Verificação — Tabelas, Roles e Security Advisor (Supabase)

Este documento foi **versionado e atualizado em 23/03/2026** com base em consulta direta ao projeto Supabase **Young Talents** (`ttvwfocuftsvyziecjeu`) via MCP.

Objetivo: registrar o estado atual das tabelas, policies e alertas de segurança para revisão posterior do app e das roles.

## Alinhamento com governança e manuais atuais

- O Young Talents está classificado no monorepo como **projeto de cliente entregue** (propriedade Young Empreendimentos), conforme [`docs/YOUNG_TALENTS_PROJETO_ENTREGUE.md`](../../../../../docs/YOUNG_TALENTS_PROJETO_ENTREGUE.md).
- A Adventure Labs mantém **acesso compartilhado ao Supabase** do Young Talents para suporte e handoff técnico, conforme os manuais:
  - [`docs/MANUAL_HUMANO_ADVENTURE_OS.md`](../../../../../docs/MANUAL_HUMANO_ADVENTURE_OS.md)
  - [`docs/MANUAL_IA_ADVENTURE_OS.md`](../../../../../docs/MANUAL_IA_ADVENTURE_OS.md)
- Este relatório deve ser lido como **snapshot técnico operacional** do projeto Supabase compartilhado, sem implicar roadmap de produto interno.

---

## 1. Escopo da verificação

- Projeto: `Young Talents` (`ttvwfocuftsvyziecjeu`)
- Schemas analisados: `young_talents` e `public` (views expostas)
- Fontes de evidência:
  - `list_tables` (inventário e RLS)
  - `get_advisors` (security advisories atuais)
  - `execute_sql` em `pg_policies`, `information_schema` e `young_talents.user_roles`

---

## 2. Inventário atual de tabelas (`young_talents`)

Todas as tabelas abaixo estão com **RLS habilitado**:

| Tabela | Linhas (snapshot) |
|---|---:|
| `young_talents.user_roles` | 9 |
| `young_talents.candidates` | 2860 |
| `young_talents.companies` | 12 |
| `young_talents.cities` | 501 |
| `young_talents.sectors` | 9 |
| `young_talents.positions` | 8 |
| `young_talents.jobs` | 12 |
| `young_talents.applications` | 16 |
| `young_talents.job_levels` | 9 |
| `young_talents.activity_areas` | 9 |
| `young_talents.activity_log` | 108 |

Views públicas relevantes identificadas:

- `public.user_roles`
- `public.candidates`
- `public.activity_log`

---

## 3. Snapshot atual de roles no app

Distribuição na tabela `young_talents.user_roles`:

| Role | Quantidade |
|---|---:|
| `admin` | 5 |
| `editor` | 1 |
| `viewer` | 3 |

---

## 4. Snapshot de políticas RLS

### 4.1 Padrão atual observado

- As tabelas operacionais (`candidates`, `jobs`, `applications`, `companies`, etc.) usam majoritariamente regras por função:
  - `young_talents.has_privileged_role('editor')` para `INSERT/UPDATE`
  - `young_talents.has_privileged_role('admin')` para `DELETE`
  - `young_talents.has_staff_access()` para `SELECT`
- Existem políticas explícitas para usuários de desenvolvimento (policies `Dev <uuid> ...`) em múltiplas tabelas.
- `activity_log` mantém `SELECT` restrito e `INSERT` mais aberto.

### 4.2 Policies permissivas detectadas (`true`)

Foram encontradas 2 policies com condição totalmente permissiva:

| Tabela | Policy | Comando | Role |
|---|---|---|---|
| `young_talents.activity_log` | `Autenticado pode inserir activity_log` | `INSERT` | `authenticated` |
| `young_talents.candidates` | `Formulário público pode inserir candidatos` | `INSERT` | `anon` |

---

## 5. Security Advisor (estado atual)

Resultado do `get_advisors` (tipo `security`) na data do snapshot:

### 5.1 Errors (3)

Todos do tipo **Security Definer View**:

1. `public.activity_log`
2. `public.user_roles`
3. `public.candidates`

Remediação de referência:  
[Supabase Database Linter — lint 0010](https://supabase.com/docs/guides/database/database-linter?lint=0010_security_definer_view)

### 5.2 Warnings (8)

- **Function Search Path Mutable (5):**
  - `public.activity_log_insert`
  - `public.candidates_insert_trigger`
  - `public.candidates_update_trigger`
  - `public.candidates_delete_trigger`
  - `young_talents.update_updated_at_column`
- **RLS Policy Always True (2):**
  - `Autenticado pode inserir activity_log`
  - `Formulário público pode inserir candidatos`
- **Auth (1):**
  - Leaked password protection desativado

Remediações:

- [lint 0011 — Function Search Path Mutable](https://supabase.com/docs/guides/database/database-linter?lint=0011_function_search_path_mutable)
- [lint 0024 — Permissive RLS Policy](https://supabase.com/docs/guides/database/database-linter?lint=0024_permissive_rls_policy)
- [Password security — Leaked password protection](https://supabase.com/docs/guides/auth/password-security#password-strength-and-leaked-password-protection)

---

## 6. Nota de arquitetura de isolamento (tenant/client)

Validação em `information_schema.columns` para o schema `young_talents`:

- Nenhuma das 11 tabelas possui coluna `tenant_id` ou `client_id`.

Implicação para revisão posterior:

- O isolamento atual está orientado a **RLS por role/funções de acesso**, não por segmentação multi-tenant em coluna.
- Se houver meta de evoluir para multi-tenant estrito por cliente/tenant, será necessário plano de migração de schema + políticas RLS específicas por escopo.

---

## 7. Próximos passos sugeridos para a etapa de revisão

1. Priorizar decisão sobre `SECURITY DEFINER` nas views públicas (`activity_log`, `user_roles`, `candidates`).
2. Revisar e, se necessário, endurecer as 2 policies permissivas (`WITH CHECK true`).
3. Definir `search_path` explícito nas funções listadas pelo Advisor.
4. Definir estratégia formal de isolamento de dados (role-based vs tenant/client-based) antes de expandir o produto para múltiplos clientes.

---

## 8. Histórico de versionamento deste documento

- **2026-03-23:** atualização completa com coleta direta do Supabase via MCP (inventário, roles, RLS e Security Advisor).
