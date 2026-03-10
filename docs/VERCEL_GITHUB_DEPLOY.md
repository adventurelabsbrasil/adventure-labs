# Vercel + GitHub — Deploy no push

Status da conexão dos projetos Vercel (team **adventurelabsbrasil**) com os repositórios GitHub para **deploy automático no push**.

## Resumo

| Projeto Vercel | Repositório GitHub | Root Directory | Deploy no push |
|----------------|--------------------|----------------|----------------|
| **admin** | adventurelabsbrasil/adventure-labs | `apps/admin` | Sim |
| **lideraspace** | adventurelabsbrasil/lidera-space | (raiz do repo) | Sim |
| **young-talents** | adventurelabsbrasil/young-talents | (raiz do repo) | Sim |
| **roseportaladvocacia** | adventurelabsbrasil/roseportaladvocacia | (raiz do repo) | Sim |
| **elite** | adventurelabsbrasil/adventure-labs | `apps/elite` | Sim |
| **lidera-skills** | adventurelabsbrasil/lidera-skills | (raiz do repo) | Sim |

## Onde cada app vive no código

- **Monorepo** `adventure-labs`: apps **admin** e **elite** (pastas `apps/admin` e `apps/elite`).
- **Repos próprios** (submodules no monorepo): **lidera-space**, **young-talents**, **roseportaladvocacia**, **lidera-skills**.

## Conferir conexão Git (CLI)

Na pasta do app (ou do monorepo para admin/elite):

```bash
npx vercel git connect --yes --scope team_O8xJl9VAjaBleUkQsyzp30Xo
# ou com URL explícita:
npx vercel git connect https://github.com/adventurelabsbrasil/<repo>
```

## Conferir projeto (Root Directory, etc.)

```bash
npx vercel project inspect <nome-projeto> --scope team_O8xJl9VAjaBleUkQsyzp30Xo
```

## Admin (monorepo adventure-labs)

O projeto **admin** usa a pasta `apps/admin` do monorepo, que é um **submódulo Git** (repositório adventurelabsbrasil/admin). Para o build na Vercel funcionar:

1. **Incluir submódulos**: Em **Project Settings → Git** (projeto admin na Vercel), ative **Include Git Submodules**. Assim o clone do adventure-labs baixa o conteúdo do submódulo `apps/admin`.
2. **pnpm**: O admin usa pnpm (não npm). O `vercel.json` na raiz de `apps/admin` define `installCommand: "pnpm install --frozen-lockfile"` e `buildCommand: "pnpm run build"`. Não é necessário alterar o Install Command nas configurações do projeto na Vercel.

Se o build falhar com "Failed to fetch one or more git submodules", verifique o item 1. Se falhar com "npm ci" ou "package-lock.json", o `vercel.json` do admin deve estar sendo aplicado; confira que o Root Directory do projeto é `apps/admin`.

## Admin por cliente (subdomínio)

Quando cada cliente tem seu próprio subdomínio (ex.: `lidera.admin.adventurelabs.com.br`), use **um projeto Vercel por cliente**. O código é o mesmo (`apps/admin`); as variáveis de ambiente ficam no Vercel daquele projeto e no repositório em `clients/XX_nome/admin/.env.example`. Ver [ADMIN_POR_CLIENTE_SUBDOMINIO.md](ADMIN_POR_CLIENTE_SUBDOMINIO.md).

---

Última verificação: março 2026.
