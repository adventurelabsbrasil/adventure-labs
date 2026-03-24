# Young Talents — qual projeto Vercel, Supabase e tabela de candidatos

## 1. Qual projeto no Vercel?

O repositório **não** grava o nome do projeto Vercel (cada conta tem nomes diferentes). Para identificar o certo:

| Método | O que fazer |
|--------|-------------|
| **Git** | No Vercel → projeto → *Settings* → *Git* → confirme o **repositório** e o **Root Directory**. Para este app costuma ser a pasta `apps/clientes/young-talents/plataforma` (monorepo) ou um repo só da plataforma. |
| **Nome no dashboard** | Procure por nomes como `young-talents`, `young-plataforma`, `yt-ats`, etc. |
| **Prova por Supabase** | *Settings* → *Environment Variables* → copie o valor de `VITE_SUPABASE_URL`. O host é `https://<PROJECT_REF>.supabase.co`. No [dashboard Supabase](https://supabase.com/dashboard), abra o projeto cujo **Reference ID** coincide com `PROJECT_REF`. Se bater, esse é o deploy que fala com **esse** banco. |
| **Domínio** | Se tens domínio custom (ex. `talentos.…`), esse projeto no Vercel é o da Young. |

**Dica:** depois de alinhar, regista o nome do projeto Vercel numa linha no [`docs/BACKLOG.md`](../../../../../docs/BACKLOG.md) ou no Asana (sem secrets).

---

## 2. Conexão Supabase (agente / Cursor)

Nesta conversa **não há acesso garantido** ao teu projeto Supabase em tempo real (depende de MCP Supabase ligado e autenticado **na tua** conta). Ajustes em **Authentication → URL Configuration**, **RLS** e **Table Editor** continuam a ser teus no dashboard. O código e as migrations no repo descrevem o comportamento esperado.

---

## 3. `/apply` → onde gravam os candidatos? “Duas tabelas”?

Há **uma única tabela física**:

- **`young_talents.candidates`** — dados reais (fonte de verdade).

O cliente JS usa o schema padrão **`public`** e faz `.from('candidates')`. Isso aponta para a **view** **`public.candidates`**, definida nas migrations (ex. `clients/04_young/young-talents/supabase/migrations/015_add_deleted_at_to_candidates.sql`), que faz `SELECT … FROM young_talents.candidates`. Inserções na view usam trigger **INSTEAD OF** (migration `006_public_candidates_view.sql`) para escrever em **`young_talents.candidates`**.

Resumo:

| Nome no código / Table Editor | O quê |
|-------------------------------|--------|
| `public.candidates` | View (e ponto de entrada para o client com `schema: 'public'`). |
| `young_talents.candidates` | Tabela física; é aqui que deves confirmar linhas novas no Supabase. |

Se no **Table Editor** vires as duas, compara contagens ou ordena por `created_at` na tabela **`young_talents.candidates`**.

---

## 4. Teste rápido: enviar um candidato e ver o ID

Já existe uma página de teste **sem** percorrer os 5 passos do `/apply`:

1. Em **local** ou no **URL de produção** da plataforma, abre **`/apply/test`** (rota registada em `AppRoutes.jsx`).
2. Clica **“Enviar candidato de teste”** — usa o mesmo fluxo que o formulário público (`insert` em `candidates` / view → tabela física).
3. Em caso de sucesso, a página mostra o **ID** no Supabase e link para `/candidate/<id>` (após login).

O email do teste é `teste.cadastro.<timestamp>@exemplo.com.br` (único por clique).

Se falhar, a mensagem de erro (RLS, coluna em falta, rede) aparece na própria página — útil para comparar com o que vês no dashboard.

**Produção:** avalia se queres esconder `/apply/test` sem um flag explícito (ex. variável de ambiente), para evitar inserts de teste repetidos; hoje a rota é pública como `/apply`.

---

## 5. “Último cadastro 17/mar no Supabase mas o frontend mostra outra coisa”

Checklist:

1. **Mesmo projeto Supabase?** Compara `VITE_SUPABASE_URL` no Vercel com o projeto que estás a consultar no dashboard.
2. **Filtros** no Pipeline / Banco / Dashboard (datas, status, estrelas) podem esconder linhas novas.
3. **`deleted_at`:** candidatos soft-deleted não aparecem como ativos (conforme lógica de listagem).
4. **Cache:** a app usa cache em `sessionStorage` para alguns mestres; candidatos vêm de `loadCandidates` em tempo de pedido — força refresh completo (F5) ou logout/login.
5. **RLS:** utilizador autenticado tem de ter política de `SELECT` coerente com os dados (migrations `023`, `026`, etc.).

---

## 6. SQL útil no Supabase (SQL Editor)

```sql
-- Últimos candidatos (tabela física)
select id, email, full_name, origin, created_at
from young_talents.candidates
order by created_at desc
limit 20;
```

```sql
-- Só inscrições via formulário público
select id, email, created_at
from young_talents.candidates
where origin = 'public_form'
order by created_at desc
limit 20;
```

---

*Documento operacional; sem credenciais. Atualizar se o Root Directory no Vercel ou o modelo de schema mudar.*
