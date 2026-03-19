# Plano de Ação: Revisão RLS Clerk x Supabase (App Admin)

**Objetivo:** Desbloquear o App Admin para os usuários (Igor e Mateus), resolvendo os bugs de permissão relatados nas Issues #112 e #113, e estabilizar a integração de roles entre Clerk e Supabase para garantir eficiência e acesso correto aos dados de MRR e operações.

## 1. Diagnóstico do Problema (Causa Raiz)

Após análise do código do App Admin e das policies do Supabase:

1. **Falha na Integração de JWT do Clerk:**
   - O `createClient()` (em `apps/core/admin/src/lib/supabase/server.ts`) tenta buscar um JWT template chamado `supabase` no Clerk (`getToken({ template: "supabase" })`).
   - Se este template não existe no dashboard do Clerk, ele faz um fallback para o token padrão.
   - O token padrão **não possui a claim `role: "authenticated"` nem a claim `email`**.
   - Consequência: O Supabase avalia as requisições como anônimas (`anon`), e todas as políticas RLS (que exigem `TO authenticated`) bloqueiam sumariamente o acesso, deixando o dashboard vazio para os usuários.
2. **Inconsistência de Nomenclatura das Roles:**
   - As issues #112 e #113 exigem as roles **"Admin"** e **"Member"**.
   - Atualmente, o schema do Supabase (`adv_profiles`) e as funções de RLS (`get_adv_profile_role()`) utilizam as roles **'admin'** e **'tarefas'**.

## 2. Plano de Execução (Passo a Passo)

### Passo 1: Configurar Template JWT no Dashboard do Clerk (Crítico)
Isso é obrigatório para que o Supabase reconheça o usuário como autenticado.
- Acessar o dashboard do Clerk (Projeto Adventure Labs).
- Navegar para **JWT Templates** e criar um novo template chamado `supabase`.
- Definir o conteúdo do template exatamente como abaixo:
  ```json
  {
    "aud": "authenticated",
    "role": "authenticated",
    "email": "{{user.primary_email_address}}",
    "sub": "{{user.id}}"
  }
  ```
*(Isso garantirá que a função `auth_user_email()` consiga ler o `auth.jwt() ->> 'email'` sem falhar).*

### Passo 2: Refatoração do Banco de Dados (Supabase Migration)
Criar uma migration no Supabase para alterar a role de `'tarefas'` para `'member'`.
- Atualizar registros existentes: `UPDATE adv_profiles SET role = 'member' WHERE role = 'tarefas';`
- Alterar a constraint da tabela:
  `ALTER TABLE adv_profiles DROP CONSTRAINT IF EXISTS adv_profiles_role_check;`
  `ALTER TABLE adv_profiles ADD CONSTRAINT adv_profiles_role_check CHECK (role IN ('admin', 'member'));`
- Atualizar a função de RLS:
  Em `adv_rls_by_role.sql` e na função `adv_can_access_project()`, alterar as checagens `get_adv_profile_role() = 'tarefas'` para `get_adv_profile_role() = 'member'`.

### Passo 3: Atualizar o Frontend (App Admin)
- Em `apps/core/admin/src/lib/auth-profile.ts`: Modificar as condicionais de `role !== "tarefas"` para `role !== "member"`.
- Em `apps/core/admin/src/types/database.ts` (ou onde o tipo `AdvProfileRole` estiver exportado): Alterar para `"admin" | "member"`.

### Passo 4: Provisionamento de Acesso (Igor e Mateus)
- No banco de dados Supabase (tabela `adv_profiles`), certificar-se de que os e-mails `igor@adventurelabs.com.br` e `mateuslepocs@gmail.com` estão cadastrados com a role desejada (`'admin'` ou `'member'`).
- Caso sejam configurados como `'member'`, adicioná-los também na tabela `adv_project_members` vinculados aos projetos que precisam visualizar/editar.
- Acesso ao Middleware Next.js já está garantido (`ADMIN_ALLOWED_EMAILS` na `.env` possui os e-mails deles).

### Passo 5: Validação Final (Fechamento Issues #112 e #113)
- Fazer login com os usuários do Igor e Mateus.
- Validar se conseguem carregar os relatórios de conversões de Meta Ads e acessar as Tarefas sem tela branca.
- Criar o canal `#admin-feedback` no Google Chat conforme pedido.
- Conduzir o onboarding de 15 minutos e migrar o primeiro fluxo do Trello (cumprindo os critérios de aceite).