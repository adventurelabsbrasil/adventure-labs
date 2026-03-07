# Processo: Liberar Trello interno para Igor e Mateus

Documento que descreve os passos para liberar o uso do Trello interno (tarefas por projeto no Admin) para Igor e Mateus, respeitando as roles definidas em [contexto_admin_equipe.md](../contexto_admin_equipe.md).

---

## Regras de acesso

- **Rodrigo:** role `admin` — vê e edita tudo.
- **Igor e Mateus:** role `tarefas` — veem e editam apenas projetos/boards em que constem como membros em `adv_project_members`.

---

## Passos para liberação

### 1. Garantir perfis (adv_profiles)

O seed em `supabase/migrations/20250312100002_adv_profiles_seed_tarefas.sql` já define Igor e Mateus com role `tarefas`. Se ainda não rodou:

- Executar a migration ou, manualmente no SQL Editor do Supabase:

```sql
INSERT INTO adv_profiles (user_email, role) VALUES
  ('igor@adventurelabs.com.br', 'tarefas'),
  ('mateuslepocs@gmail.com', 'tarefas')
ON CONFLICT (user_email) DO UPDATE SET role = EXCLUDED.role, updated_at = now();
```

### 2. Incluir membros nos projetos (adv_project_members)

Para cada **projeto** (ou board) que Igor e/ou Mateus devem ver no Trello interno:

1. Obter o `id` (UUID) do projeto no Admin (ex.: listagem de projetos ou URL do projeto).
2. Inserir em `adv_project_members`:

```sql
INSERT INTO adv_project_members (project_id, user_email) VALUES
  ('<uuid-do-projeto>', 'igor@adventurelabs.com.br'),
  ('<uuid-do-projeto>', 'mateuslepocs@gmail.com')
ON CONFLICT (project_id, user_email) DO NOTHING;
```

Repetir para todos os projetos que a equipe deve acessar (ex.: projetos internos, projetos de clientes em que atuam).

### 3. Validar na UI

1. Fazer login no Admin com conta de Igor ou Mateus.
2. Verificar que só aparecem os projetos para os quais foram adicionados em `adv_project_members`.
3. Testar criação/edição de tarefas nesses projetos.

### 4. Comunicar à equipe

Após validação, comunicar que o Trello interno está liberado e que o acesso é por projeto (conforme projetos atribuídos).

---

*Criado pelo Grove em 04/03/2026. Ref.: relatório Founder 04/03, plano estruturação relatório.*
