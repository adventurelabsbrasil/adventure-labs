# Handoff — Lideraspace v1.0
**Data:** 08/04/2026  
**Desenvolvido por:** Adventure Labs  
**Para:** Comando Estelar (CTO) · AM Lidera · Equipe Lidera  
**Produção:** https://lideraspace.adventurelabs.com.br

---

## 1. O que é

Lideraspace é uma **área de membros LMS** (Learning Management System) white-label construída do zero pela Adventure Labs para a Lidera. É uma plataforma onde a equipe Lidera cadastra programas de desenvolvimento, inclui conteúdos em múltiplos formatos e libera acesso a membros específicos.

---

## 2. Infraestrutura

| Componente | Serviço | Responsável |
|---|---|---|
| Frontend | Vercel (projeto `lideraspace`) | Adventure Labs |
| Banco de dados | Supabase `xiqlaxjtngwecidyoxbs` | **Lidera** (`contato@somoslidera.com.br`) |
| Repositório | GitHub `adventurelabsbrasil/adventure-labs` | Adventure Labs |
| Domínio | `lideraspace.adventurelabs.com.br` | Adventure Labs |

> **SOT (Source of Truth) do banco:** O Supabase está na conta da própria Lidera. Os dados pertencem à Lidera — a Adventure Labs não tem acesso permanente a eles.

### Credenciais de acesso (guardar em cofre seguro)

| Chave | Onde usar |
|---|---|
| Supabase URL | `https://xiqlaxjtngwecidyoxbs.supabase.co` |
| Anon Key | Variável `NEXT_PUBLIC_SUPABASE_ANON_KEY` no Vercel |
| Service Role Key | Variável `SUPABASE_SERVICE_ROLE_KEY` no Vercel |
| Login Supabase | `contato@somoslidera.com.br` via Google |

---

## 3. Stack técnica

```
Next.js 15 (App Router + Server Actions)
TypeScript
Tailwind CSS
Supabase (Auth + PostgreSQL + RLS)
Vercel (deploy automático via GitHub)
```

Branch de produção: `claude/compassionate-poitras`  
Caminho no monorepo: `apps/clientes/01_lidera/lideraspace/`

---

## 4. Papéis e acessos

| Email | Papel | O que pode fazer |
|---|---|---|
| `contato@somoslidera.com.br` | **Admin** | Tudo — gerenciar programas, membros, conteúdo |
| `contato@adventurelabs.com.br` | **Admin** | Suporte técnico / manutenção |
| `rodrigo.ribas1991@gmail.com` | **Admin** | Suporte técnico / manutenção |
| `igor@adventurelabs.com.br` | **Admin** | Suporte técnico / manutenção |
| Alunos da Lidera | **Membro** | Assistir aulas, marcar progresso, fazer anotações |

> **Regra automática:** qualquer e-mail que fizer login pela primeira vez recebe papel `Membro`. Apenas os 4 e-mails acima recebem `Admin` automaticamente. Para dar Admin a outro e-mail, edite a lista no trigger do Supabase ou use o formulário de convite no frontend.

---

## 5. Respostas às perguntas do handover

### ✅ 1 — Conseguem criar programas e incluir conteúdos?

**Sim, totalmente funcional.**

Fluxo admin:
1. Entrar em **Admin → Programas → Novo Programa**
2. Preencher título, descrição e URL de capa
3. Dentro do programa: **Adicionar módulo** → dentro do módulo: **Adicionar aula**
4. Tipos de aula disponíveis:
   - 🎥 **Vídeo** — URL do YouTube (embed automático)
   - 📄 **Documento** — upload de PDF ou link externo
   - 📝 **Conteúdo** — editor de markdown
   - 🔗 **Embed** — qualquer URL iframável (Notion, Google Slides, Miro, Typeform, etc.)
   - 🔗 **Link** — link externo simples

O editor de aula também suporta **blocos de conteúdo** (ao editar uma aula existente):
- Títulos (H1/H2/H3)
- Texto com marcadores
- Callouts coloridos (informação, alerta, dica, destaque)
- Cards de link com descrição
- Embeds inline
- Arquivos para download
- Divisórias

### ✅ 2 — Conseguem incluir membros e definir roles no frontend?

**Sim, funcional.**

Em **Admin → Membros**:
- Formulário de convite: e-mail + nome + papel (Membro ou Admin)
  - E-mail novo → recebe convite por e-mail com link para definir senha
  - E-mail já cadastrado → apenas atualiza o papel
- Matriz de inscrição: clique no ícone de círculo para dar ou revogar acesso de um membro a um programa específico

> Limitação atual: o formulário não exibe mensagem de confirmação visual após o envio — a confirmação é implícita pelo usuário aparecer na lista atualizada.

### ✅ 3 — Conseguem trocar vídeos, capas, hyperlinks estilo Notion?

**Sim, para vídeos e capas. Parcialmente para estilo Notion.**

- **Vídeo:** trocar a URL do YouTube no editor da aula — atualiza imediatamente
- **Capa do programa:** campo "URL da imagem de capa" no editor do programa (URL externa)
- **Links:** o BlockBuilder suporta `link_card` (título + URL + descrição) e `embed` (qualquer iframe)
- **Estilo Notion:** é funcional via blocos, mas não é drag-and-drop visual — é um formulário com campos tipados. Para o nível atual do produto, atende bem.

> O que **não** existe (e distingue do Notion real): arrastar blocos para reordenar, formatação rich-text inline (negrito/itálico dentro do texto), menções, banco de dados.

### ⚠️ 4 — O que falta para ser uma LMS completa conforme o plano original?

#### Falta crítico (sem isso o produto não está "completo")
| Item | Impacto | Esforço |
|---|---|---|
| **Certificado de conclusão** | Alto — principal entrega percebida pelo aluno | Médio (3-5 dias) |
| **Feedback visual nos formulários** | Médio — admin não sabe se ação funcionou | Pequeno (1 dia) |
| **Dashboard de progresso do admin** | Alto — gestor opera "às cegas" | Médio (3 dias) |
| **Notificação por e-mail** ao publicar nova aula | Médio | Médio (2-3 dias) |

#### Backlog de produto (v2)
| Item | Impacto | Esforço |
|---|---|---|
| Upload de vídeo próprio (Mux/Bunny) | Alto (independência do YouTube) | Alto (1-2 semanas) |
| Fórum ou comentários por aula | Médio | Médio |
| Conteúdo agendado / drip (liberar por data) | Médio | Médio |
| Página de landing do programa (pré-inscrição) | Médio | Pequeno |
| Upload direto de capa (vs URL externa) | Baixo | Pequeno |
| App mobile | Futuro | Alto |

#### Melhorias técnicas recomendadas
| Item | Motivo |
|---|---|
| Migrar domínio para `app.somoslidera.com.br` | Branding do cliente |
| Testes E2E (Playwright) | Proteger contra regressão em futuras iterações |
| ~~CI/CD via GitHub Actions~~ | ✅ **Implementado** — push em `main` dispara deploy automático |
| Monitoramento de erros (Sentry) | Hoje erros só aparecem nos logs do Vercel |

---

## 6. Como fazer deploy de uma atualização

1. Abrir PR no branch `claude/compassionate-poitras` (ou branch novo)
2. Verificar build no Vercel Preview
3. Aprovar e mergear para `main`
4. **Deploy automático** — o GitHub Actions (`.github/workflows/deploy-lideraspace.yml`) detecta o push e chama a Vercel API automaticamente

> O Vercel GitHub App está vinculado ao repositório `lidera-space` (antigo). O deploy automático é feito via GitHub Actions com token `VERCEL_TOKEN` armazenado nos secrets do repositório `adventure-labs`.

---

## 7. Banco de dados — tabelas principais

```
lms_tenants      — configuração do tenant (cores, logo, vídeo de boas-vindas)
lms_users        — perfil + papel dos usuários
lms_programs     — programas de desenvolvimento
lms_modules      — módulos dentro de um programa
lms_lessons      — aulas dentro de um módulo
lms_enrollments  — quem tem acesso a qual programa
lms_progress     — aulas concluídas por usuário
lms_notes        — anotações por aula por usuário
```

Arquivo de migração completo: `supabase/migration_lideraspace_sot.sql`

---

## 8. Contatos

| Papel | Nome | Contato |
|---|---|---|
| Tech Lead / Adventure Labs | Rodrigo Ribas | rodrigo.ribas1991@gmail.com |
| CTO / Comando Estelar | Buzz | — |
| Cliente / Lidera | — | contato@somoslidera.com.br |

---

## 9. Próximos passos sugeridos (ordem de prioridade)

1. **Testar o fluxo completo** com usuário real da Lidera (login → acessar programa → assistir aula → marcar concluída)
2. **Migrar domínio** para `app.somoslidera.com.br` (configurar DNS + Vercel custom domain)
3. **Implementar certificado** de conclusão
4. **Adicionar feedback visual** nos formulários admin
5. **Dashboard de analytics** para o gestor
6. **Definir SLA de suporte** entre Adventure Labs e Lidera para manutenção evolutiva
