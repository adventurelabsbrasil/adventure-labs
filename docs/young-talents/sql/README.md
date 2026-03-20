# Young Talents — SQL de diagnóstico e correção (Supabase)

Este diretório contém scripts **genéricos** de diagnóstico. **Não** versione aqui project refs, chaves nem dados reais de clientes — use o link do CLI com o ref do **seu** projeto (Dashboard → Settings → General).

## Modelo de segurança (resumo)

- Acesso ao ATS interno exige linha em `young_talents.user_roles` (staff). RLS restringe `SELECT` a quem tem permissão; formulário **`/apply`** usa role **anon** + RPCs/políticas específicas.
- Migrations canônicas do app: `apps/clientes/young-talents/plataforma/supabase/migrations/` (**037+**). Espelho em `clients/04_young/young-talents/...` (**025–028**). Ver **`apps/clientes/young-talents/plataforma/docs/SECURITY_MODEL.md`** e a página wiki **`wiki/Young-Talents-ATS-Seguranca.md`** (índice em `wiki/Home.md`).

## CLI (local)

A partir da pasta do cliente (ajuste o caminho se usar outro clone):

`clients/04_young/young-talents`

```bash
cd clients/04_young/young-talents
# Substitua YOUR_PROJECT_REF pelo ref do projeto no dashboard Supabase
supabase link --project-ref YOUR_PROJECT_REF --yes
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
7. Migration **`028_ats_staff_select_and_no_auto_user_role.sql`** (path `clients/04_young/...`) — RLS com `has_privileged_role('viewer')`; RPC `public_candidate_email_exists`; sync sem INSERT automático; `anon` em `cities`; etc.
8. Se o deploy oficial for pelo app **`apps/clientes/young-talents/plataforma`**, use as migrations **`037`–`039`** (SELECT staff via `has_staff_access()`, sync sem viewer, RPC + cidades + `activity_log`). Ver `apps/clientes/young-talents/plataforma/docs/SECURITY_MODEL.md`.

## Leitura dos resultados (exemplo saudável)

- **Funções:** aparecem `has_privileged_role(p_min_role text)`, `is_developer()`, `sync_user_role_on_login()`.
- **Join `user_roles` ↔ `auth.users`:** `user_id_alinhado = true` e `role = admin` (ou `editor`) para staff.
- **Políticas em `young_talents.user_roles`:** políticas padrão da 025 (`Usuários podem ler seu próprio role`, `has_privileged_role`, etc.). Podem existir políticas **extras** criadas no dashboard (ex.: `owner_full_access_user_roles`, `Dev … user_roles`); revisar se ainda são necessárias — a policy por e-mail literal é **case-sensitive** no JWT (`=` em texto).
- **Grants `public.user_roles`:** após **025**, o `anon` não deve ter **SELECT**; após **026**, o `anon` não deve aparecer em `role_table_grants` para essa view.

## Causa raiz típica

- Políticas e o app checavam `user_id = auth.uid()`, mas a linha de staff tinha **`user_id` NULL** (pré-cadastro) ou **UUID errado**.
- O trigger `sync_user_role_on_login` fazia match **`email = email`** sensível a maiúsculas/minúsculas, então não atualizava o `user_id`.
