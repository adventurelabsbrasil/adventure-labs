# Young Talents — SQL de diagnóstico e correção (Supabase)

## CLI (local)

O projeto **Young Talents** pode ser linkado a partir de:

`clients/04_young/young-talents`

```bash
cd clients/04_young/young-talents
supabase link --project-ref ttvwfocuftsvyziecjeu --yes
```

- `supabase db dump` exige **Docker** rodando na máquina.
- Sem Docker, use o **SQL Editor** no dashboard do Supabase com os arquivos desta pasta.

## Ordem sugerida

1. `01-diagnostico-auth-user-roles.sql` — confirma `auth.users`, `young_talents.user_roles`, RLS e grants em `public.user_roles`.
2. `02-fix-alinhar-user-id-por-email.sql` — corrige `user_id` quando estiver `NULL` ou divergente do `auth.users.id`.
3. Aplique a migration **`025_user_roles_jwt_email_rls_and_sync.sql`** (em `clients/04_young/young-talents/supabase/migrations/`) via `supabase db push` ou colando o conteúdo no SQL Editor — isso adiciona `has_privileged_role`, ajusta o trigger de sync (email case-insensitive), políticas de leitura por JWT e revoga `SELECT` em `public.user_roles` para `anon`.
4. (Recomendado) Aplique **`026_revoke_all_anon_public_user_roles.sql`** — em projetos onde o `anon` ainda tinha `INSERT`/`UPDATE`/`DELETE` na view `public.user_roles`, remove todos os privilégios do `anon` nessa view.
5. `03-verificacao-pos-025.sql` — checklist rápido após deploy.
6. `04-consultar-role-por-email.sql` — ver `role` de um e-mail em `user_roles`.

## Leitura dos resultados (exemplo saudável)

- **Funções:** aparecem `has_privileged_role(p_min_role text)`, `is_developer()`, `sync_user_role_on_login()`.
- **Join `user_roles` ↔ `auth.users`:** `user_id_alinhado = true` e `role = admin` (ou `editor`) para staff.
- **Políticas em `young_talents.user_roles`:** políticas padrão da 025 (`Usuários podem ler seu próprio role`, `has_privileged_role`, etc.). Podem existir políticas **extras** criadas no dashboard (ex.: `owner_full_access_user_roles`, `Dev … user_roles`); revisar se ainda são necessárias — a policy por e-mail literal é **case-sensitive** no JWT (`=` em texto).
- **Grants `public.user_roles`:** após **025**, o `anon` não deve ter **SELECT**; após **026**, o `anon` não deve aparecer em `role_table_grants` para essa view.

## Causa raiz típica

- Políticas e o app checavam `user_id = auth.uid()`, mas a linha de staff tinha **`user_id` NULL** (pré-cadastro) ou **UUID errado**.
- O trigger `sync_user_role_on_login` fazia match **`email = email`** sensível a maiúsculas/minúsculas, então não atualizava o `user_id`.
