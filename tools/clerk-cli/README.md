# Clerk CLI (monorepo)

Wrapper do [Clerk CLI](https://github.com/clerk/cli) no monorepo para melhorar a experiência de auth: gestão de usuários, organizações, sessões, domínios e Clerk Protect pelo terminal.

> **Early Access** — O CLI oficial do Clerk ainda está em desenvolvimento ativo.

## Instalação do binário (necessário uma vez)

O Clerk CLI é em **Go** — o `npx github:clerk/cli` não funciona. No macOS, use **Homebrew**:

```bash
brew tap clerk/cli https://github.com/clerk/cli.git
brew install clerk
```

Atualizar depois: `brew upgrade clerk`.

(Alternativa: ter [Go](https://go.dev) instalado e rodar `go install github.com/clerk/cli/cmd/clerk@latest`; o binário fica em `$GOPATH/bin` ou `$HOME/go/bin`.)

## Vincular conta (primeiro uso)

1. **Abra o terminal** na raiz do monorepo (`01_ADVENTURE_LABS`).

2. **Rode o setup interativo** (com o binário `clerk` instalado via Homebrew ou Go):
   ```bash
   clerk init
   ```

3. **No wizard:**
   - **Clerk Secret Key** — Em [Clerk Dashboard](https://dashboard.clerk.com) → sua aplicação → **API Keys** → copie a **Secret key** (`sk_live_...` ou `sk_test_...`). Cole quando o CLI pedir.
   - **Profile name** — Enter para `default` ou um nome (ex.: `lidera`, `young`).

4. **Confirmar:**
   ```bash
   clerk whoami
   ```
   Deve mostrar o instance vinculado. A partir daí: `clerk users list`, `clerk protect rules list SIGN_IN`, etc.

A configuração fica salva localmente (pasta `.clerk/` na raiz do repo está no `.gitignore` — não versionamos chaves).

## Uso no monorepo

Com o binário instalado (Homebrew ou Go), use `clerk` direto em qualquer pasta:

```bash
clerk whoami
clerk users list
clerk protect rules list SIGN_IN
```

Se você usa **pnpm** e quer atalho pela raiz do monorepo, pode usar:

```bash
pnpm --filter clerk-cli clerk -- whoami
```

(Os scripts em `tools/clerk-cli` delegam para o binário; se o binário não estiver no PATH, instale via Homebrew acima.)

## Configuração

1. **Chave API** — No [Clerk Dashboard](https://dashboard.clerk.com) → API Keys, use a Secret Key (ex.: `sk_live_...` ou `sk_test_...`).
2. **Perfil** — O `clerk init` cria um perfil (ex.: `default`). Para múltiplos ambientes:
   ```bash
   clerk config profile create staging --api-key sk_test_xxxx
   ```
3. **Por app (`.env`)** — Na pasta do app que usa Clerk, use `CLERK_SECRET_KEY` no `.env` e rode com `--dotenv`:
   ```bash
   clerk --dotenv users list
   ```

## Referência

- [Repositório Clerk CLI](https://github.com/clerk/cli)
- [Clerk Dashboard](https://dashboard.clerk.com)
- Integração Supabase + Clerk: ver `clients/01_lidera/lidera-space/supabase/config.toml` (third_party.clerk).
