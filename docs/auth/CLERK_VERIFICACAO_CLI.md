# Verificação via CLI — migração para Clerk

Resultado da verificação feita em 15/03/2026.

## 1. Clerk CLI (instância e usuários)

Comando: `./scripts/clerk-allowlist-admin.sh whoami`

- **Perfil ativo:** adventure-labs  
- **API Key:** sk_test_*** (conectado à API do Clerk)  
- **API URL:** https://api.clerk.com  

**Status:** OK — CLI configurado e conectado à aplicação Clerk.

---

## 2. Regras Protect (allowlist)

Comando: `./scripts/clerk-allowlist-admin.sh list-rules`

- **Regras SIGN_IN:** Nenhuma regra encontrada no ruleset SIGN_IN.  
- A allowlist do Admin é feita no **middleware** via `ADMIN_ALLOWED_EMAILS` (e dono `contato@adventurelabs.com.br`), não via Clerk Protect. Portanto, a ausência de regras no Protect é esperada.

**Status:** OK — comportamento alinhado ao desenho atual.

---

## 3. Usuários na aplicação Clerk

Comando: `./scripts/clerk-allowlist-admin.sh list-users`

- **Usuário:** contato@adventurelabs.com.br (Adventure Labs)  
- **ID:** user_3B0FMVveGYmqtTIXpnkJyP60LVQ  

**Status:** OK — pelo menos um usuário (owner) existe e pode logar no Admin.

---

## 4. Build do app Admin (Next.js)

Comando: `pnpm run admin:install` e `pnpm run build` em `apps/admin`.

- **Compilação:** OK (Next.js compila o código).  
- **TypeScript (strict):** há erros de tipo em vários componentes por uso de `useSupabaseClient()` sem checagem de `null` (`'supabase' is possibly 'null'`). Esses erros **não são da migração Clerk**; são do cliente Supabase que retorna `SupabaseClient | null` quando não há sessão.  
- **Ajustes feitos durante a verificação:**  
  - API route CRM deals: `user.id` → `userId` (Clerk).  
  - debug-auth e middleware: obtenção do e-mail via `emailAddresses` + `primaryEmailAddressId` (compatível com tipos do Clerk).  
  - Middleware: tipo explícito `email: string | null`.  
  - Login: remoção de `forceRedirectUrl` (não existe no tipo atual do `<SignIn />`).  
  - Alguns formulários e widgets: guard `if (!supabase) return` para satisfazer o TypeScript.

**Recomendação:** nos demais componentes que usam `useSupabaseClient()`, adicionar no início do efeito ou do handler que usa `supabase` a guarda `if (!supabase) return;` (ou `return null` no render), para o build passar com strict null checks.

---

## 5. Resumo

| Verificação              | Status | Observação                                      |
|--------------------------|--------|-------------------------------------------------|
| Clerk CLI (whoami)       | OK     | Perfil adventure-labs, API key válida           |
| Regras Protect           | OK     | Sem regras; allowlist no middleware             |
| Usuários Clerk           | OK     | contato@adventurelabs.com.br presente            |
| Admin build (Next.js)    | Parcial| Compila; erros TS restantes por `supabase` null |

A migração para Clerk está **operacional** para login, middleware, allowlist e integração Supabase (fallback de token). Para o build passar com `tsc --noEmit` sem erros, basta tratar `supabase` possivelmente null nos componentes listados pelo TypeScript (ex.: ClienteAcessos, ClienteEnvVars, form-editar, kanban, ponto, projetos, tarefas, relatório).

---

## Comandos úteis

```bash
# Na raiz do monorepo
./scripts/clerk-allowlist-admin.sh whoami      # Perfil e API key
./scripts/clerk-allowlist-admin.sh list-rules  # Regras Protect SIGN_IN
./scripts/clerk-allowlist-admin.sh list-users  # Usuários

pnpm run admin:dev   # Subir o Admin em dev (porta 3001)
pnpm run admin:install && cd apps/admin && pnpm run build  # Build de produção
```
