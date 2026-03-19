## Agentes de apoio — executores com pacote completo

Agentes de apoio são personas com pacote completo (`AGENT.md`, SOUL, USER, COMPANY, etc.), que executam uma ou mais skills, muitas vezes conectadas a automações (n8n, workers).

> A lista abaixo é um **resumo**. A verdade de cada agente está na pasta `apps/core/admin/agents/<slug>/` no repositório **admin**.

### Principais agentes de apoio

| Slug | Owner C-Level | Papel | Skills principais | Pasta (admin) |
|------|---------------|-------|-------------------|---------------|
| `andon_asana` | Ohno (COO) | Agente de apoio Asana (snapshot → knowledge, futuro espelho C-Suite) | `asana-csuite-ingest` | `apps/core/admin/agents/andon_asana/` |
| `benchmark_adventure` | Ogilvy (CMO) | Benchmark martech exclusivo para a Adventure (inovação interna) | `benchmark-martech-tendencias`, `benchmark-concorrentes-adventure`, `benchmark-dashboards-bi-automacoes` | `apps/core/admin/agents/benchmark_adventure/` |
| `benchmark_clientes` | Cagan (CPO) | Benchmark martech exclusivo para clientes da Adventure | `benchmark-mercado-setor-cliente`, `benchmark-concorrencia-setor`, `benchmark-tendencias-por-nicho` | `apps/core/admin/agents/benchmark_clientes/` |
| `benchmark_conteudo` | Ogilvy (CMO) | Benchmark voltado a conteúdo, trend topics, educação martech | `benchmark-trend-topics-conteudo`, `benchmark-martech-criatividade-inovacao`, `benchmark-educacao-novidades-martech` | `apps/core/admin/agents/benchmark_conteudo/` |
| `gerente_rose` | Cagan (CPO) | Gerente de conta Rose (Portal Advocacia) | `relatorio-kpis-campanhas`, `copy-brief-campanha`, `analise-performance-canal`, `rose-portal-advocacia-contexto`, etc. | `apps/core/admin/agents/gerente_rose/` |
| `gerente_benditta` | Cagan (CPO) | Gerente de conta Benditta Marcenaria | skills compartilhadas + `benditta-marcenaria-contexto` | `apps/core/admin/agents/gerente_benditta/` |
| `gerente_young` | Cagan (CPO) | Gerente de conta Young Empreendimentos | skills compartilhadas + `young-empreendimentos-contexto` | `apps/core/admin/agents/gerente_young/` |
| `google_workspace_advisor` | Ohno (COO) / Ogilvy (CMO) | Inspetor de Slides/Docs e dados no Google Workspace | `google-drive-adventure`, `google-workspace-inspector` | `apps/core/admin/agents/google_workspace_advisor/` |

Outros agentes podem ser adicionados seguindo o template em `apps/core/admin/agents/_template_agent/` e devem ser listados/atualizados aqui conforme forem criados.

