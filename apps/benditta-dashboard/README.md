# Benditta Dashboard (Meta)

App Next.js **exclusivo da Benditta** para visualização de CSV do Meta Ads. O núcleo de UI e métricas vive em [`packages/benditta-meta-dashboard`](../../packages/benditta-meta-dashboard/) para reutilização no Admin sem duplicar lógica.

## Subrepo / repositório separado

Para versionar só este app no GitHub:

1. Crie um repositório vazio (ex.: `benditta-dashboard`).
2. Nesta pasta, inicialize e faça push apenas dela (ou use `git subtree split`), **ou** adicione como [submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules) em `01_ADVENTURE_LABS`:

   ```bash
   git submodule add <url-do-repo> apps/benditta-dashboard
   ```

3. Mantenha o pacote `packages/benditta-meta-dashboard` como dependência `workspace:*` no monorepo, ou publique como pacote npm privado e referencie no `package.json` standalone.

## Desenvolvimento

Na raiz do monorepo:

```bash
pnpm install
pnpm --filter benditta-dashboard dev
```

Abre em [http://localhost:3002](http://localhost:3002).

## CSV

Coloque o export do Meta em `public/BM-202603-MetaReport.csv` (ou substitua via upload na UI).

O Admin Adventure Labs serve o mesmo arquivo em `/benditta/BM-202603-MetaReport.csv` quando você usa a integração em `/dashboard/benditta`.
