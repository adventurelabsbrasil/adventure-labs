# Plano: Centralizar segurança de logins no Clerk (com uso do CLI)

**Objetivo:** Migrar a autenticação dos apps do monorepo para Clerk como IdP único, mantendo Supabase como backend de dados com RLS baseado em JWT do Clerk, e usar o Clerk CLI para gestão, auditoria e automação.

---

## Estado atual

| App | Auth hoje | Backend / observação |
|-----|-----------|----------------------|
| **apps/core/admin** | Supabase (email + Google), allowlist `ADMIN_ALLOWED_EMAILS` | Middleware em `apps/core/admin/src/middleware.ts`, login em `apps/core/admin/src/app/login/page.tsx` |
| **lidera-space** | Supabase (sessão + `space_users.role`) | `lidera-space/supabase/config.toml` já tem `[auth.third_party.clerk]` **enabled = false** |
| **lideraspacev1** | Supabase (password + Google) | AuthContext, Login |
| **lidera-dre** | Supabase + tabela `dre_perfis` | AuthContext |
| **young-talents** | Supabase (email + Google) | LoginPage, supabase.js |

Cada app usa um ou mais projetos Supabase; não há Clerk no front-end hoje. O perfil **adventure-labs** do Clerk CLI já está vinculado.

---

## Acesso do dono (contato@adventurelabs.com.br)

**Requisito:** O e-mail **contato@adventurelabs.com.br** (desenvolvedor e dono dos apps) deve ter **acesso geral a todos os dados** em todos os apps e em todos os projetos de banco (ex.: vários Supabase), sem depender de permissões por app ou por projeto.

### Implementação

1. **Clerk (identidade e acesso aos apps)**
   - Garantir que **contato@adventurelabs.com.br** possa entrar em **todos** os apps:
     - Incluir esse e-mail na allowlist do Admin (Clerk Protect ou Organization).
     - Nos demais apps (lidera-space, lidera-dre, young-talents etc.), permitir login para esse usuário (allowlist, organização ou lógica “owner” no Clerk).
   - Opcional: criar um **custom claim** no JWT (ex.: `"owner": true` ou `"email": "contato@adventurelabs.com.br"`) para os backends decidirem acesso.

2. **Cada projeto Supabase (acesso aos dados)**
   Em **cada** projeto Supabase (admin, Lidera, Young Talents, etc.):
   - Incluir uma política RLS (ou função + políticas) que trate o “dono” como exceção e dê **acesso total** quando o JWT for desse usuário:
     - Usar o e-mail no JWT do Clerk (ex.: `auth.jwt()->>'email'` ou o claim configurado no Clerk).
     - Condição: “se o e-mail do token for `contato@adventurelabs.com.br`, permitir SELECT/INSERT/UPDATE/DELETE” nas tabelas necessárias.
   - Exemplo conceitual (replicar para cada tabela; troque `public.minha_tabela` pelo nome real):
     ```sql
     CREATE POLICY "owner_full_access"
       ON public.minha_tabela
       FOR ALL
       TO authenticated
       USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' )
       WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
     ```
     Não use ponto e vírgula entre `USING` e `WITH CHECK` — ambos fazem parte do mesmo `CREATE POLICY`.
   - Opcional: função centralizada `auth.is_owner()` que retorna `(auth.jwt()->>'email') = 'contato@adventurelabs.com.br'` e usar em todas as políticas “owner” em cada projeto.

3. **Admin (apps/core/admin) e “ver todos os dados”**
   - No app admin, quando o usuário logado for **contato@adventurelabs.com.br**, usar clientes Supabase configurados com as URLs/keys dos **outros** projetos (read-only ou read-write) e chamar as APIs desses projetos; em cada um desses projetos as políticas RLS acima permitem que esse e-mail leia (e, se desejado, escreva) em todas as tabelas. Assim o mesmo token Clerk dá acesso em todos os bancos.

4. **CLI**
   - Auditar que o usuário existe: `clerk users list` e filtrar por `contato@adventurelabs.com.br`.
   - Documentar no runbook que esse e-mail é o único “owner” com acesso total e que todas as políticas “owner” em todos os projetos Supabase devem referenciá-lo.

---

## Estratégia recomendada

- **Clerk** = provedor de identidade único (login, sessão, MFA, Protect).
- **Supabase** = banco e APIs; continua aceitando sessão via **Clerk como third-party provider** (JWT do Clerk com `role: authenticated` e `sub` = Clerk user id).
- **CLI** = gestão de usuários, allowlists, regras Protect, auditoria e scripts.

Fluxo alvo: Apps → Clerk (login/sessão/JWT) → Supabase (e outros backends) validam JWT; RLS usa `auth.jwt()->>'sub'` (e, para owner, `auth.jwt()->>'email' = 'contato@adventurelabs.com.br'`).

Decisão: uma Clerk Application para todos os apps ou uma por cliente. Recomendação inicial: uma aplicação “Adventure Labs” com possibilidade de separar depois.

---

## Fase 1 — Preparação (CLI + Dashboard)

1. **Clerk Dashboard**
   - Configurar **Allowed redirect URLs** para cada app.
   - Em **Supabase**: ativar integração e copiar o **Clerk domain**.
   - Garantir **contato@adventurelabs.com.br** na allowlist do Admin (e acesso de owner nos demais apps).

2. **Clerk CLI**
   - Perfis por ambiente: `clerk config profile create admin-prod --api-key sk_live_...`
   - Auditoria: `clerk users list`, `clerk protect rules list SIGN_IN`
   - Documentar em `docs/auth/CLERK_SETUP.md` (comandos, env, redirect URLs, Supabase third-party, e-mail owner).

---

## Fase 2 — Admin (apps/core/admin) como piloto

1. **Código:** Instalar `@clerk/nextjs`; trocar login por Clerk; middleware com `clerkMiddleware`; allowlist via Clerk (e manter owner contato@adventurelabs.com.br).
2. **Supabase:** Ativar Clerk como third-party; usar token Clerk no client Supabase; RLS com `auth.jwt()->>'sub'` e política “owner” para `contato@adventurelabs.com.br`.
3. **Allowlist:** Migrar `ADMIN_ALLOWED_EMAILS` para Clerk; usar CLI para regras.

---

## Fase 3 — Clientes: lidera-space, lideraspacev1, lidera-dre, young-talents

Para cada app: Clerk no front (`@clerk/nextjs` ou `@clerk/clerk-react`); Supabase com Clerk third-party; RLS por `auth.jwt()->>'sub'` **e** política owner para `contato@adventurelabs.com.br`; perfis (space_users, dre_perfis) com Clerk user id; documentar qual aplicação Clerk cada app usa.

Ordem sugerida: lidera-space → lideraspacev1 → lidera-dre → young-talents.

---

## Fase 4 — Automação e manutenção via CLI

- Scripts em `tools/` ou `scripts/` para allowlist e auditoria (`clerk protect rules list`, `clerk users list -o json`).
- Documentação em `docs/auth/CLERK_SETUP.md` com referência aos scripts e ao e-mail owner.

---

## Riscos e mitigações

| Risco | Mitigação |
|-------|-----------|
| Quebra de login em produção | Migrar um app por vez; manter Supabase Auth em paralelo até validar Clerk + RLS. |
| RLS quebrado (user_id ≠ Clerk sub) | Garantir que tabelas usem Clerk `sub`; migrar dados existentes (mapear auth.uid() → Clerk user id). |
| Owner sem acesso em algum projeto | Em cada Supabase, aplicar política “owner” para `contato@adventurelabs.com.br` em todas as tabelas relevantes; checklist no CLERK_SETUP.md. |

---

## Resumo de entregas

- **docs/auth/CLERK_SETUP.md**: visão única, env vars, comandos CLI, redirect URLs, Supabase third-party, **e-mail owner e políticas RLS owner**.
- **apps/core/admin**: auth 100% Clerk; middleware e allowlist via Clerk; políticas owner no Supabase do admin.
- **Cada projeto Supabase**: Clerk third-party; RLS por `auth.jwt()->>'sub'`; **políticas owner para contato@adventurelabs.com.br**.
- **lidera-space, lideraspacev1, lidera-dre, young-talents**: Clerk no front; Supabase com Clerk + políticas owner.
- **Scripts/CLI**: documentação e scripts para allowlist e auditoria; verificação do usuário owner via `clerk users list`.

---

## Políticas owner — Lidera (SQL pronto)

Nos projetos Supabase da Lidera, rode no **SQL Editor** do projeto correspondente. Todas as tabelas abaixo são **public** (schema `public`). Requer Clerk configurado como third-party e claim `email` no session token.

### 1. Lidera DRE (`clients/01_lidera/lidera-dre`)

Projeto Supabase do app **lidera-dre**. Tabelas: `dre_categorias`, `dre_subcategorias`, `dre_lancamentos`, `dre_organizacoes`, `dre_perfis`.

```sql
-- Owner: contato@adventurelabs.com.br — acesso total
CREATE POLICY "owner_full_access" ON public.dre_categorias FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.dre_subcategorias FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.dre_lancamentos FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.dre_organizacoes FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.dre_perfis FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
```

### 2. Lidera Space (`clients/01_lidera/lidera-space`)

Projeto Supabase do app **lidera-space**. Tabelas com prefixo `space_` e `gestao_`. Se o projeto ainda usar as antigas `users`, `programs`, `modules`, `lessons`, `notes`, `progress`, use essas em vez das `space_*`.

```sql
-- Owner: contato@adventurelabs.com.br — acesso total (tabelas space_ e gestao_)
CREATE POLICY "owner_full_access" ON public.space_users FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.space_programs FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.space_modules FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.space_lessons FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.space_notes FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.space_progress FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.gestao_categories FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.gestao_subcategories FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.gestao_lancamentos FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
```

Se alguma tabela não existir (ex.: ainda está `users` em vez de `space_users`), apague a linha dessa tabela ou rode só as que existirem no seu projeto.

### 3. LideraSpace v1 (`clients/01_lidera/lideraspacev1`)

Projeto Supabase do app **lideraspacev1**. Tabelas: `organizations`, `organization_members`, `programas`, `modulos`, `tarefas`, `ativos`, `profiles`, `aluno_modulo_state` (e outras das migrations 002–011). Rode uma política por tabela que existir em `public`.

```sql
-- Owner: contato@adventurelabs.com.br — acesso total
CREATE POLICY "owner_full_access" ON public.organizations FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.organization_members FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.programas FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.modulos FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.tarefas FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.ativos FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.profiles FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
CREATE POLICY "owner_full_access" ON public.aluno_modulo_state FOR ALL TO authenticated USING ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' ) WITH CHECK ( (auth.jwt()->>'email') = 'contato@adventurelabs.com.br' );
```

Se der erro de “policy already exists”, use um nome único por tabela, por exemplo: `"owner_full_access_organizations"`, `"owner_full_access_programas"`, etc. Se alguma tabela não existir no seu banco, remova ou comente a linha correspondente.
