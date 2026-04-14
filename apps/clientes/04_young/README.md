# Cliente: Young

**Projetos:**
- `young-emp` — Young Emp
- **Young Talents (app):** [`apps/clientes/young-talents/plataforma`](../../apps/clientes/young-talents/plataforma/) — pacote `@cliente/young-plataforma`
- `ranking-vendas` — Ranking de vendas
- [`pingostudio`](pingostudio/) — BI Metabase sobre Supabase Pingolead (PINGOSTUDIO-264 v2): dashboard CRM/vendas da Young no `bi.adventurelabs.com.br`, conectado direto ao Supabase `vvtympzatclvjaqucebr`. _Pivot de Looker Studio para Metabase em 2026-04-14_

## Young Talents — segurança (ATS)

Acesso ao painel interno exige **cadastro explícito** em `user_roles` (RLS + app). Candidatos: só **`/apply`** (público). Detalhes genéricos (sem segredos): [`wiki/Young-Talents-ATS-Seguranca.md`](../../wiki/Young-Talents-ATS-Seguranca.md) e [`docs/young-talents/sql/README.md`](../../docs/young-talents/sql/README.md).

**Histórico / governança Git:** [`docs/young-talents/CHANGELOG.md`](../../docs/young-talents/CHANGELOG.md).
