# Clerk — Setup e uso no monorepo

Visão única para configuração de auth centralizada no Clerk, variáveis de ambiente, comandos do CLI, redirect URLs, integração Supabase e acesso do dono.

## Aplicações e env keys


| App               | Clerk Application               | Env (front)                         | Env (server)       |
| ----------------- | ------------------------------- | ----------------------------------- | ------------------ |
| **apps/admin**    | Adventure Labs (mesma instance) | `NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY` | `CLERK_SECRET_KEY` |
| **lidera-space**  | Adventure Labs                  | `NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY` | `CLERK_SECRET_KEY` |
| **lidera-dre**    | Adventure Labs                  | `VITE_CLERK_PUBLISHABLE_KEY`        | (backend Supabase) |
| **young-talents** | Adventure Labs                  | `VITE_CLERK_PUBLISHABLE_KEY`        | (backend Supabase) |


Recomendação inicial: uma aplicação Clerk “Adventure Labs” para todos os apps. Obtenha as chaves em [Clerk Dashboard](https://dashboard.clerk.com) → API Keys.

No **Admin**, defina no `.env.local` (ou env de produção) o redirect pós-login para evitar cair em `/` após OAuth (ex.: Google): `NEXT_PUBLIC_CLERK_SIGN_IN_FALLBACK_REDIRECT_URL=/dashboard`.

## Session token — claim `email` (obrigatório para allowlist)

O Admin usa a allowlist por e-mail (`ADMIN_ALLOWED_EMAILS`). O Clerk **não** inclui o e-mail no token de sessão por padrão, então é preciso adicionar o claim manualmente.

O editor **Claims** no Clerk não tem campos separados "Name" e "Value". Ele espera um **objeto JSON**: cada chave é o nome do claim e cada valor é um shortcode. Se você colocar só `{{user.primary_email_address}}`, aparece "Property expected" porque falta a chave (nome do claim).

1. Abra o [Clerk Dashboard](https://dashboard.clerk.com) → sua aplicação.
2. Vá em **Sessions** (ou **Configure** → **Session token**).
3. Em **Customize session token**, na área **Claims** (editor), cole **exatamente** este JSON (a chave `"email"` é o nome do claim; o valor é o shortcode do e-mail):

```json
{
  "email": "{{user.primary_email_address}}"
}
```

   Se já existir outro claim no JSON, adicione a linha `"email": "{{user.primary_email_address}}"` dentro do mesmo objeto, separada por vírgula.
4. Salve. Novos logins (e novas sessões) passarão a ter `sessionClaims.email` e a allowlist funcionará.

Sem esse claim, o middleware não consegue ler o e-mail (fica vazio) e qualquer usuário logado cai em “Acesso negado” quando `ADMIN_ALLOWED_EMAILS` está definido.

## Redirect URLs (Clerk Dashboard)

Em **Clerk Dashboard** → sua aplicação → **Paths** / **Allowed redirect URLs**, inclua para cada app:

- Admin (dev): `http://localhost:3001/`**
- Admin (prod): `https://admin.adventurelabs.com.br/**`
- Lidera Space (dev/prod): conforme domínio do app
- Young Talents (dev/prod): conforme domínio do app

## Integração Supabase (third-party Clerk)

Em **cada** projeto Supabase usado pelos apps:

1. **Supabase Dashboard** → **Authentication** → **Providers** → **Third-party** (ou **Sign In / Up**).
2. Ativar **Clerk** e colar o **Clerk domain** (ex.: `xxx.clerk.accounts.dev`), obtido em [Clerk → Setup Supabase](https://dashboard.clerk.com/setup/supabase).
3. Salvar. A partir daí o Supabase aceita JWT do Clerk (com `role: authenticated` e `sub` = Clerk user id).

Nas aplicações, o cliente Supabase envia o token Clerk no header `Authorization`. O código tenta primeiro o template `supabase`; se esse template não existir no Clerk Dashboard (erro "Not Found"), usa o token padrão do Clerk. O Supabase configurado como third-party aceita o token padrão. Opcional: em **Clerk Dashboard** → **JWT Templates** criar um template "Supabase" (nome exato: `supabase`) para claims customizados; usar a chave JWT do Supabase (Settings → API) como signing key. RLS deve usar `auth.jwt()->>'sub'` para restringir por usuário.

## Acesso do dono ([contato@adventurelabs.com.br](mailto:contato@adventurelabs.com.br))

O e-mail **[contato@adventurelabs.com.br](mailto:contato@adventurelabs.com.br)** é o dono/desenvolvedor e deve ter acesso total a todos os apps e a todos os dados (incluindo todos os projetos Supabase).

- **Clerk:** Incluir esse e-mail na allowlist do Admin (Clerk Protect ou Organization) e permitir login nos demais apps.
- **Cada projeto Supabase:** Adicionar política RLS “owner” em todas as tabelas relevantes, por exemplo:
  - `(auth.jwt()->>'email') = 'contato@adventurelabs.com.br'` → permitir SELECT/INSERT/UPDATE/DELETE.
- **Checklist:** Ao adicionar um novo projeto Supabase ao monorepo, aplicar a política owner para esse e-mail. Ver [CLERK_CENTRALIZACAO_PLANO.md](./CLERK_CENTRALIZACAO_PLANO.md).

## Clerk CLI

Binário instalado via Homebrew: `brew tap clerk/cli https://github.com/clerk/cli.git && brew install clerk`. Uso a partir da raiz do monorepo:


| Comando                            | Descrição                                                           |
| ---------------------------------- | ------------------------------------------------------------------- |
| `clerk whoami`                     | Ver perfil ativo e API key em uso                                   |
| `clerk users list`                 | Listar usuários (auditoria); filtrar por e-mail para conferir owner |
| `clerk protect rules list SIGN_IN` | Listar regras de allowlist (ex.: Admin)                             |
| `clerk config profile list`        | Listar perfis (default, admin-prod, etc.)                           |


Criar perfil para produção: `clerk config profile create admin-prod --api-key sk_live_...`

Documentação do CLI: [github.com/clerk/cli](https://github.com/clerk/cli). Ferramenta no monorepo: [tools/clerk-cli/README.md](../../tools/clerk-cli/README.md).

## Scripts (Fase 4)

- **Allowlist / auditoria:** [scripts/clerk-allowlist-admin.sh](../../scripts/clerk-allowlist-admin.sh) — na raiz do monorepo: `./scripts/clerk-allowlist-admin.sh` (regras SIGN_IN), `./scripts/clerk-allowlist-admin.sh list-users`, `./scripts/clerk-allowlist-admin.sh whoami`.
- **Listar usuários (JSON):** `clerk users list -o json` para relatórios.

## Próximos passos — apps clientes

Migração dos clientes (lidera-space, lideraspacev1, lidera-dre, young-talents) para Clerk está descrita no plano. Ordem sugerida:

1. **lidera-space** — Next.js; já tem `[auth.third_party.clerk]` em `supabase/config.toml` (deixar `enabled = true` após configurar o domain no Supabase).
2. **lideraspacev1** — Next.js; AuthContext hoje com Supabase → trocar por ClerkProvider + `auth()` / `useUser()` e cliente Supabase com token Clerk.
3. **lidera-dre** — React (Vite); AuthContext + Supabase → `@clerk/clerk-react` + cliente Supabase com token.
4. **young-talents** — React (Vite); LoginPage + Supabase → `@clerk/clerk-react` + cliente Supabase com token.

Para cada um: instalar SDK Clerk, envolver com Provider, trocar tela de login por `<SignIn />`, proteger rotas com middleware (Next) ou guard (React), usar token Clerk no cliente Supabase e ajustar RLS para `auth.jwt()->>'sub'` e política owner para `contato@adventurelabs.com.br`. Detalhes: [CLERK_CENTRALIZACAO_PLANO.md](./CLERK_CENTRALIZACAO_PLANO.md) (Fase 3).

## Clerk MCP no Cursor (opcional)

O Clerk oferece um MCP server para o Cursor com **snippets e exemplos de código** (não acessa sua instância/Dashboard). Útil para implementações com Clerk.

1. Abra **Cursor Settings** (Command Palette → “Cursor Settings” ou ícone de engrenagem).
2. Vá em **Tools & MCP** → **New MCP Server** (ou edite o JSON de MCP).
3. Adicione: `"clerk": { "url": "https://mcp.clerk.com/mcp" }` dentro de `mcpServers`.
4. Ou use o link: [Add Clerk MCP to Cursor](https://cursor.com/en-US/install-mcp?name=clerk&config=eyJ1cmwiOiJodHRwczovL21jcC5jbGVyay5jb20vbWNwIn0%3D).

Doc: [Clerk MCP Server](https://clerk.com/docs/guides/ai/mcp/clerk-mcp-server).

## Debug de allowlist (só desenvolvimento)

Com o Admin em dev, acesse **http://localhost:3001/api/debug-auth** (logado). A resposta mostra `userId`, `emailFromSessionClaims`, `emailFromClerkApi`, `ADMIN_ALLOWED_EMAILS_loaded` e `wouldBeAllowed`. Use para conferir se o e-mail e o env estão corretos. A rota retorna 404 em produção.

Se `wouldBeAllowed` for `false`, confira `emailFromClerkApi` / `emailFromSessionClaims` e a lista `ADMIN_ALLOWED_EMAILS_loaded`. Se o e-mail estiver vazio, configure o claim `email` no session token (Clerk Dashboard). Se o e-mail estiver correto mas não estiver em `ADMIN_ALLOWED_EMAILS_loaded`, use apenas **uma** linha `ADMIN_ALLOWED_EMAILS` no `.env.local` com todos os e-mails separados por vírgula.

## Diagnóstico: não consigo logar no Admin

Se o login com Clerk (ex.: Google) falha ou você é redirecionado para **/acesso-negado** após autenticar, siga este checklist:

| Onde | O que verificar |
|------|-----------------|
| **apps/admin/.env.local** | Uma única linha `ADMIN_ALLOWED_EMAILS` com todos os e-mails permitidos (incluindo o que você usa para logar). Se houver duas linhas, a última prevalece e pode bloquear outros e-mails. |
| **Clerk Dashboard → Session token** | Claim `email` no session token (ex.: `{{user.primary_email_address}}`). Sem isso, o middleware pode não receber o e-mail e considerar acesso negado. |
| **Clerk Dashboard → Paths** | Redirect URLs: dev `http://localhost:3001/**`, prod `https://admin.adventurelabs.com.br/**` (ou o domínio real). |
| **Navegador (dev)** | Após tentar logar, acesse **http://localhost:3001/api/debug-auth** e confira `wouldBeAllowed`, `emailFromSessionClaims`, `emailFromClerkApi` e `ADMIN_ALLOWED_EMAILS_loaded`. |

## Referência rápida

- **Clerk Dashboard:** [https://dashboard.clerk.com](https://dashboard.clerk.com)  
- **Clerk + Supabase (native):** [https://clerk.com/docs/integrations/databases/supabase](https://clerk.com/docs/integrations/databases/supabase)  
- **Plano de centralização:** [CLERK_CENTRALIZACAO_PLANO.md](./CLERK_CENTRALIZACAO_PLANO.md)

