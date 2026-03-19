# Cliente: Benditta

**Projetos:** (a definir)

## Dashboard Meta (Admin + app dedicada)

- **Admin Adventure Labs:** menu **Benditta (Meta)** → `/dashboard/benditta` (e tabela em `/dashboard/benditta/tabela`). CSV servido em `apps/admin/public/benditta/BM-202603-MetaReport.csv`.
- **App standalone (subrepo):** [`apps/benditta-dashboard`](../../apps/benditta-dashboard/) — `pnpm benditta:dev` na raiz do monorepo (porta 3002). Ver README do app para extrair como repositório Git separado ou submodule.
- **Lógica compartilhada:** [`packages/benditta-meta-dashboard`](../../packages/benditta-meta-dashboard/).

Export CSV de referência: [`BM-202603-MetaReport.csv`](./BM-202603-MetaReport.csv).
