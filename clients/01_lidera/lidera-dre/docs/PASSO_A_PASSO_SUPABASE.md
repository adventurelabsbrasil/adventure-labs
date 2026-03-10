# Passo a passo — Lidera DRE no Supabase

As tabelas do app usam o prefixo `dre_` para organizar os dados. Siga os passos abaixo **nessa ordem**.

---

## 1. Abrir o Supabase

1. Acesse [supabase.com](https://supabase.com) e entre no seu projeto.
2. No menu lateral, clique em **SQL Editor**.

---

## 2. Criar as tabelas (migrations)

1. No SQL Editor, clique em **New query**.
2. Abra o arquivo: `supabase/migrations/001_schema_dre.sql`, copie todo o conteúdo, cole no editor e clique em **Run**.
3. Abra outra **New query**, abra o arquivo: `supabase/migrations/002_dre_auth_roles.sql`, copie todo o conteúdo, cole e clique em **Run**.

**O que isso faz:**  
- **001:** Cria `dre_categorias`, `dre_subcategorias`, `dre_lancamentos`.  
- **002:** Cria `dre_organizacoes`, `dre_perfis`, trigger de auth, adiciona `organizacao_id` e `created_by` em lançamentos e define RLS (roles e multi-tenant).

Se aparecer erro dizendo que a tabela já existe, esse passo já foi feito. Siga em frente.

---

## 3. Inserir dados iniciais (seed) — opcional

Só faça isso se quiser categorias, subcategorias, uma organização padrão e lançamentos de exemplo.

1. No SQL Editor, **New query**.
2. Abra `supabase/seed_dre.sql`, copie todo o conteúdo, cole e **Run**.

**O que isso faz:** Insere categorias, subcategorias, a organização padrão e lançamentos de exemplo.

Se rodar o seed mais de uma vez, categorias e subcategorias não duplicam (`ON CONFLICT`). Lançamentos podem duplicar; apague pelo app ou pelo Table Editor se precisar.

---

## 4. Criar o primeiro usuário admin

O app exige login. O primeiro usuário com perfil **admin** (Lidera) precisa ser criado manualmente.

Siga o guia: **[docs/PRIMEIRO_ADMIN.md](PRIMEIRO_ADMIN.md)**.

Resumo: criar usuário em **Authentication → Users** no Supabase; depois rodar um `UPDATE` (ou `INSERT`) em `dre_perfis` para definir `role = 'admin'` e `organizacao_id = NULL`.

---

## 5. Conferir no Supabase

1. No menu lateral, clique em **Table Editor**.
2. Você deve ver as tabelas: `dre_categorias`, `dre_subcategorias`, `dre_lancamentos`, `dre_organizacoes`, `dre_perfis`.
3. Se rodou o seed, deve haver ao menos uma organização e lançamentos.

---

## 6. Rodar o app

1. Confira o `.env` (ou `.env.local`): `VITE_SUPABASE_URL` e `VITE_SUPABASE_ANON_KEY`.
2. No terminal: `npm run dev`.
3. Abra o endereço (ex.: `http://localhost:5173`), vá em **Login** e entre com o usuário admin criado no passo 4.

O app usa autenticação e roles: apenas usuários com perfil em `dre_perfis` podem acessar; **admin** vê tudo e acessa o menu **Administração**; **gestor** vê só os dados da própria organização.

---

## Resumo da ordem

| Ordem | O quê | Onde |
|-------|--------|------|
| 1 | Criar tabelas | SQL Editor → rodar `001_schema_dre.sql` e depois `002_dre_auth_roles.sql` |
| 2 | (Opcional) Dados de exemplo | SQL Editor → rodar `seed_dre.sql` |
| 3 | Criar primeiro admin | Ver [PRIMEIRO_ADMIN.md](PRIMEIRO_ADMIN.md) |
| 4 | Rodar o app | Terminal: `npm run dev`; fazer login com o admin |

---

## Se você tinha as tabelas antigas (sem prefixo)

Se antes existiam tabelas `categorias`, `subcategorias` e `lancamentos`:

- Elas **não** são mais usadas pelo app. O app só enxerga as tabelas `dre_*`.
- As tabelas novas começam **vazias** até você rodar o `seed_dre.sql` (ou cadastrar tudo de novo pelo app).
- Se quiser levar os dados antigos para as tabelas novas, dá para fazer um script SQL de migração (copiar de `categorias` → `dre_categorias`, etc.). Se precisar, posso te passar um exemplo de script.

---

## Erros comuns

- **"relation dre_lancamentos does not exist"**  
  A migration ainda não foi rodada. Faça o **passo 2** (rodar `001_schema_dre.sql`).

- **Tela em branco ou "Erro" ao carregar**  
  Confira o `.env`: `VITE_SUPABASE_URL` e `VITE_SUPABASE_ANON_KEY` corretos e reinicie o `npm run dev`.

- **Categorias / lançamentos não aparecem**  
  Rode o seed (`seed_dre.sql`) para dados de exemplo. Se já rodou e está logado como **gestor**, confira se seu perfil tem **organização** definida (menu Administração, como admin).

- **"Invalid login credentials" ou não consigo entrar**  
  Crie o primeiro admin conforme [PRIMEIRO_ADMIN.md](PRIMEIRO_ADMIN.md). No Supabase, em **Authentication → URL Configuration**, adicione a URL do app (ex.: `https://lidera-dre.adventurelabs.com.br`) em **Site URL** e **Redirect URLs**.
