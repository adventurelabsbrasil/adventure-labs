# Admin por cliente: subdomínio e variáveis de ambiente

Este doc descreve como organizar o **Admin da Adventure Labs** quando cada cliente tem seu próprio **subdomínio** e suas próprias **credenciais** (Drive, Google Ads, Meta). O app é o mesmo (`apps/core/admin`); o que muda por cliente é o **deploy** (um projeto Vercel por cliente) e as **variáveis de ambiente** (no Vercel e na pasta do cliente no repositório).

## Modelo

- **Um subdomínio por cliente**  
  Ex.: `lidera.admin.adventurelabs.com.br`, `rose.admin.adventurelabs.com.br`.

- **Um projeto Vercel por cliente**  
  Cada subdomínio é um projeto Vercel separado. O código é o mesmo (monorepo, `apps/core/admin`); as **Environment Variables** são as daquele cliente.

- **Env no repositório por cliente**  
  Cada cliente tem uma pasta com o template de env preenchido (ou a preencher) para referência e para colar no Vercel:
  - `clients/01_lidera/admin/.env.example`
  - `clients/02_rose/admin/.env.example`
  - `clients/04_young/admin/.env.example`
  - etc.

Assim, as credenciais ficam organizadas **no Vercel de cada cliente** (subdomínio) e **na pasta local de cada cliente** no repo.

## Passos para um novo cliente

### 1. No repositório

1. Crie a pasta do cliente (se ainda não existir), ex.: `clients/03_nomecliente/`.
2. Crie `clients/03_nomecliente/admin/.env.example` copiando de [docs/ADMIN_ENV_CLIENTE.env.template](ADMIN_ENV_CLIENTE.env.template).
3. Preencha os valores específicos do cliente (Supabase, allowlist, `NEXT_PUBLIC_APP_URL` com o subdomínio, Drive, Google Ads, Meta, etc.). Não commite tokens reais; use placeholders no `.env.example` e guarde os valores reais só no Vercel e em `.env.local` local.

### 2. Na Vercel

1. Crie um **novo projeto** (ex.: `admin-lidera` ou `admin-nomecliente`).
2. Conecte ao mesmo repositório do monorepo (ex.: `adventurelabsbrasil/adventure-labs`).
3. **Root Directory:** `apps/core/admin`.
4. **Build / Install:** conforme o projeto (ex.: `pnpm install`, `pnpm run build` na raiz do monorepo ou no root do projeto, conforme config do admin).
5. Em **Settings → Environment Variables**, adicione **todas** as variáveis do arquivo `clients/XX_nomecliente/admin/.env.example` com os valores reais (produção).
6. Em **Settings → Domains**, adicione o subdomínio (ex.: `lidera.admin.adventurelabs.com.br`). Configure o DNS (CNAME) conforme a Vercel indicar.

### 3. No Supabase (se for projeto por cliente)

- Se este cliente tiver **projeto Supabase próprio**, crie o projeto, pegue URL e chaves, e adicione em **Redirect URLs** a URL de callback do subdomínio:  
  `https://lidera.admin.adventurelabs.com.br/auth/callback`.
- Se todos usarem o **mesmo** Supabase, use o mesmo `NEXT_PUBLIC_SUPABASE_URL` e anon key; em Redirect URLs já deve constar cada subdomínio de produção.

### 4. Desenvolvimento local para esse cliente

- Copie `clients/03_nomecliente/admin/.env.example` para `apps/core/admin/.env.local` e preencha com os valores reais (ou use um script que carrega o env da pasta do cliente). Rode o admin localmente; ele usará as credenciais daquele cliente.

## Resumo da organização

| Onde | O que |
|------|--------|
| **Repositório** | `clients/XX_nome/admin/.env.example` — template/env de referência do cliente (sem secrets reais no commit). |
| **Vercel (projeto do cliente)** | Environment Variables com os valores reais daquele cliente; domínio = subdomínio do cliente. |
| **Local** | `apps/core/admin/.env.local` — copiado do cliente ou carregado do `clients/XX_nome/admin/` para desenvolver aquele cliente. |

O app Admin não precisa de “seletor de cliente”: cada deploy já é de um cliente (as env daquele projeto Vercel / daquele `.env.local`).

## Referências

- Template completo: [ADMIN_ENV_CLIENTE.env.template](ADMIN_ENV_CLIENTE.env.template)
- Credenciais Google e Meta: [CREDENCIAIS_GOOGLE_E_META.md](CREDENCIAIS_GOOGLE_E_META.md)
- Deploy Vercel + GitHub: [VERCEL_GITHUB_DEPLOY.md](VERCEL_GITHUB_DEPLOY.md)
