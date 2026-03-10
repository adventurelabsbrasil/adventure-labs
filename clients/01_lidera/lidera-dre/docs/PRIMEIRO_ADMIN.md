# Criar o primeiro usuário admin (Lidera)

O primeiro usuário com role **admin** precisa ser criado manualmente, pois não há ninguém no sistema para aprovar.

## Passos

1. **Criar o usuário no Supabase Auth**
   - No Supabase Dashboard, vá em **Authentication** → **Users**.
   - Clique em **Add user** → **Create new user**.
   - Preencha **Email** e **Password** e clique em **Create user**.
   - Anote o **UUID** do usuário criado (coluna **UID** na lista).

2. **Atribuir role admin no banco**
   - Vá em **SQL Editor** e execute (substitua `SEU_USER_UID` pelo UID do passo 1):

   ```sql
   UPDATE public.dre_perfis
   SET role = 'admin', organizacao_id = NULL
   WHERE user_id = 'SEU_USER_UID';
   ```

   Se o trigger já criou a linha em `dre_perfis` (porque você usou "Create new user"), o UPDATE funciona. Se não existir linha (por exemplo usuário criado antes do trigger), insira:

   ```sql
   INSERT INTO public.dre_perfis (user_id, email, role, organizacao_id)
   VALUES ('SEU_USER_UID', 'email@do-admin.com', 'admin', NULL);
   ```

3. **Fazer login no app**
   - Acesse o app (ex.: `https://lidera-dre.adventurelabs.com.br` ou `http://localhost:5173`).
   - Use o **email** e a **senha** definidos no passo 1.
   - O menu **Administração** deve aparecer (apenas para admin).
