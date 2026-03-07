# Go-live — App Admin (checklist)

Checklist para deploy do Admin no Vercel e validação com a equipe. Ref.: [proximos_passos_admin.md](proximos_passos_admin.md).

---

## 1. Deploy no Vercel

- [ ] Criar projeto no Vercel (ou usar existente) vinculado ao repositório.
- [ ] **Root Directory:** `apps/admin` (monorepo).
- [ ] Variáveis de ambiente:
  - [ ] `NEXT_PUBLIC_SUPABASE_URL`
  - [ ] `NEXT_PUBLIC_SUPABASE_ANON_KEY`
- [ ] No Supabase (Authentication → URL Configuration): adicionar em **Redirect URLs** a URL de produção: `https://admin.adventurelabs.com.br/auth/callback`.

---

## 2. Domínio

- [ ] No projeto Vercel: adicionar domínio `admin.adventurelabs.com.br`.
- [ ] No DNS (onde estiver registrado o adventurelabs.com.br): criar registro **CNAME** para `admin` apontando para o endereço indicado pelo Vercel (ex.: `cname.vercel-dns.com`).
- [ ] Aguardar propagação e verificar SSL.

---

## 3. Validação com a equipe

- [ ] Rodrigo, Igor e Mateus testam **login** (Google e/ou e-mail/senha).
- [ ] Testar **CRUD** de cliente (criar, editar, lista).
- [ ] Testar **CRUD** de projeto (criar, editar; tabela, Kanban, lista em Internos e Clientes).
- [ ] Testar **Tarefas** (criar, editar, Kanban, lista, tabela; filtros por lista e status).
- [ ] Testar **Plano do dia** e **Ações prioritárias** (criar tarefa, visualizar).
- [ ] Testar **Relatório / Brain dump** (criar relatório, feedback).
- [ ] Anotar e corrigir bugs ou ajustes de UX conforme feedback.

---

## 4. Pós go-live

- [ ] Comunicar à equipe o link definitivo: **https://admin.adventurelabs.com.br**
- [ ] Manter [proximos_passos_admin.md](proximos_passos_admin.md) e [contexto_admin_equipe.md](contexto_admin_equipe.md) atualizados com decisões e permissões.

---

*Criado pelo Grove em 03/03/2026.*
