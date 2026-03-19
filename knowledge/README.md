# Base de Conhecimento

Taxonomia 00–99, espelho do Google Drive da agência.

**Fonte canônica do monorepo.** O `apps/admin/context` é symlink para `../../knowledge` (fonte única); não existe mais pasta `context/` na raiz nem cópia duplicada no Admin.

## Estrutura

- `00_GESTAO_CORPORATIVA` — Financeiro, jurídico, pessoas, processos
- `01_COMERCIAL` — Pipeline, propostas
- `02_MARKETING` — Campanhas, KPIs
- `03_PROJETOS_INTERNOS` — Roadmap, tarefas
- `04_PROJETOS_DE_CLIENTES` — Entregas (sem dados sensíveis)
- `05_LABORATORIO` — Inventário, experimentos
- `06_CONHECIMENTO` — Arquitetura, manuais
- `99_ARQUIVO` — Histórico, avulsos

## Frontmatter para ML/RAG

Para facilitar indexação e embeddings, novos documentos devem incluir frontmatter YAML no início:

```yaml
---
title: Nome do documento
domain: gestao_corporativa | comercial | marketing | laboratorio | conhecimento | projetos_clientes
tags: [tag1, tag2, tag3]
updated: YYYY-MM-DD
---
```

**Domínios sugeridos:** `gestao_corporativa`, `comercial`, `marketing`, `laboratorio`, `conhecimento`, `projetos_clientes`.

## Manuais e guias (referência cruzada)

Documentos em `docs/` que fazem parte da base de conhecimento para operação e manutenção:

| Documento | Descrição |
|------------|-----------|
| [docs/roles/PASSO_A_PASSO.md](../docs/roles/PASSO_A_PASSO.md) | **Projeto Roles e RLS** — Passo a passo e referência para Roles (Admin + Adventure CRM) no Supabase. |
| [docs/ADS_META_ADMIN.md](../docs/ADS_META_ADMIN.md) | **Google Ads e Meta BM no Admin** — Acesso restrito, variáveis, APIs, CLI e uso com Cursor/Gemini. |
| [docs/CREDENCIAIS_GOOGLE_E_META.md](../docs/CREDENCIAIS_GOOGLE_E_META.md) | **Credenciais Google e Meta** — Passo a passo (Drive, Google Ads, Meta BM) e correção 403. |
| [docs/ADMIN_POR_CLIENTE_SUBDOMINIO.md](../docs/ADMIN_POR_CLIENTE_SUBDOMINIO.md) | **Admin por cliente** — Subdomínio + Vercel por cliente; env em `clients/XX_nome/admin/.env.example`. |
| [docs/VERCEL_GITHUB_DEPLOY.md](../docs/VERCEL_GITHUB_DEPLOY.md) | **Deploy Vercel + GitHub** — Projetos conectados e Admin por cliente. |

## Processos internos (comunicação e operação)

| Documento | Descrição |
|-----------|-----------|
| [00_GESTAO_CORPORATIVA/processos/email-html-cliente-adventure-labs.md](00_GESTAO_CORPORATIVA/processos/email-html-cliente-adventure-labs.md) | **Email em HTML para cliente (padrão Adventure Labs)** — Processo para criar, editar e enviar emails em HTML (novas features, entregas) via Google Apps Script; padrão visual; link do projeto Apps Script; uso interno (futuro: automação por feature). |

## Relatórios Tech (C-Suite)

Relatórios diários ou pontuais do que foi feito em termos de tecnologia. Consumidos pela API `/api/csuite/context-docs` e pelo workflow n8n (Build Context) para que o C-Suite tenha visibilidade.

| Documento | Descrição |
|-----------|-----------|
| [06_CONHECIMENTO/relatorio-tech-2026-03-19.md](06_CONHECIMENTO/relatorio-tech-2026-03-19.md) | **Relatório Tech — 19/03/2026** — Agentes de benchmark martech (benchmark_adventure, benchmark_clientes, benchmark_conteudo) e 9 skills; delegação Grove → Ogilvy/CPO; registro em operação. |
| [06_CONHECIMENTO/relatorio-tech-2026-03-10.md](06_CONHECIMENTO/relatorio-tech-2026-03-10.md) | **Relatório Tech — 10/03/2026** — Admin (catálogo apps/ativos, filtros, tabela, estrutura Next.js); Lidera DRE (app multi-tenant, auth, export); PLL Planilha CEF + docs C-Suite; Young Talents export CSV/XLS/PDF; Lara (API analyze, n8n); Sueli (sueli-config); base de conhecimento atualizada. |
| [06_CONHECIMENTO/relatorio-tech-2026-03-09.md](06_CONHECIMENTO/relatorio-tech-2026-03-09.md) | **Relatório Tech — 09/03/2026** — CRM, Space, C-Suite V11, Time Bank; Admin (Google Ads, Meta BM, allowlist, /dashboard/ads, CLI); credenciais e env por cliente (subdomínio, template, clients/XX/admin). |
| [06_CONHECIMENTO/lidera-pll-planilha-cef-2026-03-10.md](06_CONHECIMENTO/lidera-pll-planilha-cef-2026-03-10.md) | **Lidera PLL — Planilha CEF (10/03/2026)** — Gestão de estoque e lista de compras para restaurantes (Programa Lucro e Liberdade); Google Sheets + Apps Script; links da planilha e do script; 1 de 5 do pacote. |
| [06_CONHECIMENTO/young-talents-export-candidatos-2025-03-10.md](06_CONHECIMENTO/young-talents-export-candidatos-2025-03-10.md) | **Young Talents — Exportação de candidatos (10/03/2025)** — Nova feature: exportar lista filtrada em CSV, XLS (Excel) e PDF com seleção de colunas; Banco de Talentos e Relatórios. |

## Documentos de referência para o C-Suite

Consumidos pela API `/api/csuite/context-docs` e pelo workflow n8n (Build Context). O C-Suite deve conhecer estes artefatos ao contribuir com o squad:

| Documento | Descrição |
|-----------|-----------|
| [06_CONHECIMENTO/referencia-coleção-docs-para-ia.md](06_CONHECIMENTO/referencia-coleção-docs-para-ia.md) | **Coleção de documentação para IA** — Referência ao compilado `docs/COLEÇÃO_DOCS_PARA_IA.md`: reúne README e PLANO/roadmap de apps, sites, workflows, tools, skills e agentes (implementado + pendente/futuro). O C-Suite deve saber que existe este arquivo exportável que mostra em que ponto estamos e onde queremos chegar. |
