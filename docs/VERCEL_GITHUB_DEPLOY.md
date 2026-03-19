# Vercel + GitHub — Deploy no push

Status da conexão dos projetos Vercel (team **adventurelabsbrasil**) com os repositórios GitHub para **deploy automático no push**.

## Resumo

| Projeto Vercel | Repositório GitHub | Root Directory | Deploy no push |
|----------------|--------------------|----------------|----------------|
| **admin** | adventurelabsbrasil/**admin** | `apps/core/admin` | Sim |
| **lideraspace** | adventurelabsbrasil/lidera-space | (raiz do repo) | Sim |
| **young-talents** | adventurelabsbrasil/young-talents | (raiz do repo) | Sim |
| **roseportaladvocacia** | adventurelabsbrasil/roseportaladvocacia | (raiz do repo) | Sim |
| **elite** | adventurelabsbrasil/adventure-labs | `apps/core/elite` | Sim |
| **lidera-skills** | adventurelabsbrasil/lidera-skills | (raiz do repo) | Sim |

## Onde cada app vive no código

- **Monorepo** `adventure-labs`: apps **admin** e **elite** (pastas `apps/core/admin` e `apps/core/elite`).
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

## Admin (repositório admin)

A Vercel **não** oferece opção na interface para clonar submódulos Git. Por isso o projeto **admin** na Vercel deve estar conectado **diretamente ao repositório** [adventurelabsbrasil/admin](https://github.com/adventurelabsbrasil/admin), e não ao monorepo adventure-labs.

**Configuração recomendada no projeto admin (Vercel):**

1. **Settings → Git → Connected Git Repository**: conectar ao repositório **adventurelabsbrasil/admin** (não adventure-labs).
2. **Root Directory**: `apps/core/admin` (pasta do app Next.js dentro do repo admin).
3. O repo admin usa **pnpm** na raiz; o `vercel.json` na raiz do repo define `installCommand: "pnpm install --frozen-lockfile"` e `buildCommand: "pnpm run build"`. Com Root Directory `apps/core/admin`, a Vercel usa o conteúdo dessa pasta; se o build reclamar de lockfile, confira em **Settings → General** que não há Install Command sobrescrevendo (ou defina `pnpm install --frozen-lockfile`).

**Se o projeto já estiver conectado ao adventure-labs:** desconecte e conecte de novo ao repo **admin**, com Root Directory `apps/core/admin`. Assim o clone é do repo admin (sem submódulos) e o build passa a funcionar.

## Admin por cliente (subdomínio)

Quando cada cliente tem seu próprio subdomínio (ex.: `lidera.admin.adventurelabs.com.br`), use **um projeto Vercel por cliente**. O código é o mesmo (`apps/core/admin`); as variáveis de ambiente ficam no Vercel daquele projeto e no repositório em `clients/XX_nome/admin/.env.example`. Ver [ADMIN_POR_CLIENTE_SUBDOMINIO.md](ADMIN_POR_CLIENTE_SUBDOMINIO.md).

---

Última verificação: março 2026.
