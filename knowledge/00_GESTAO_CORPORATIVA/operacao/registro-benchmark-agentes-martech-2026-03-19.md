---
title: Registro — Agentes de benchmark martech (implementação)
domain: gestao_corporativa
tags: [agentes, benchmark, martech, csuite, cmo, cpo, skills]
updated: 2026-03-19
---

# Registro — Agentes de benchmark martech (implementação)

**Data:** 19/03/2026  
**Objetivo:** Registrar a criação dos três agentes especialistas em benchmark de martech e das nove skills associadas, para que o C-Suite e o Founder tenham referência do que foi feito e onde acessar.

---

## O que foi feito

### 1. Três agentes de apoio (benchmark martech)

| Agente | Owner C-Level | Escopo | Skills (3 por agente) |
|--------|----------------|--------|------------------------|
| **benchmark_adventure** | Ogilvy (CMO) | Exclusivo para a Adventure Labs — inovação interna: tendências martech, concorrentes, dashboards/BI/automações, SaaS/microsaas | benchmark-martech-tendencias, benchmark-concorrentes-adventure, benchmark-dashboards-bi-automacoes |
| **benchmark_clientes** | Cagan (CPO) | Exclusivo para clientes da Adventure — mercado/setor/nicho do cliente, concorrência no setor, tendências por nicho | benchmark-mercado-setor-cliente, benchmark-concorrencia-setor, benchmark-tendencias-por-nicho |
| **benchmark_conteudo** | Ogilvy (CMO) | Trend topics, criatividade, inovação, educação martech — conteúdo e novidades para equipe e C-Suite | benchmark-trend-topics-conteudo, benchmark-martech-criatividade-inovacao, benchmark-educacao-novidades-martech |

Cada agente tem pacote completo em `apps/core/admin/agents/<slug>/`: AGENT.md, SOUL.md, USER.md, COMPANY.md, REDLINES.md, PERMISSIONS.md, VOICE.md, MEMORY.md, HEARTBEAT.md.

### 2. Nove skills novas

Criadas em `apps/core/admin/agents/skills/<slug>/SKILL.md`, com frontmatter (name, description, owner, persona, email, role, trigger_phrases) e seções: Objetivo, Quando usar, Input, Passos, Output, Critérios de revisão.

- **CMO (Ogilvy):** benchmark-martech-tendencias (Vitor Campos), benchmark-concorrentes-adventure (Lara Pinto), benchmark-dashboards-bi-automacoes (Diego Costa), benchmark-trend-topics-conteudo (André Souza), benchmark-martech-criatividade-inovacao (Letícia Ferreira), benchmark-educacao-novidades-martech (Pedro Henrique Santos).
- **CPO (Cagan):** benchmark-mercado-setor-cliente (Mariana Reis), benchmark-concorrencia-setor (Felipe Nascimento), benchmark-tendencias-por-nicho (Juliana Rocha).

### 3. Documentação atualizada

| Documento | Alteração |
|-----------|-----------|
| **AGENTS.md** (raiz do monorepo) | Nova seção "Benchmark martech (três agentes de apoio)" com descrição dos três agentes e skills. |
| **apps/core/admin/agents/grove_ceo.md** | Nova linha em "Delegação ao C-Suite": quando acionar benchmark_adventure (Ogilvy), benchmark_clientes (Cagan), benchmark_conteudo (Ogilvy). |
| **apps/core/admin/agents/skills/README.md** | Catálogo atualizado com as 9 skills (6 em CMO, 3 em CPO). |

---

## Referência para o C-Suite e Founder

- **Onde está:** Agentes em `apps/core/admin/agents/benchmark_adventure/`, `benchmark_clientes/`, `benchmark_conteudo/`. Skills em `apps/core/admin/agents/skills/benchmark-*`.
- **Quem aciona:** Grove delega a Ogilvy (CMO) para benchmark Adventure e benchmark conteúdo; a Cagan (CPO) para benchmark por cliente. Gerentes de conta podem solicitar benchmark_clientes para seu cliente.
- **Integrações futuras:** Os três agentes estão previstos para trabalhar em integrações e conectar com C-Suite e outros membros da equipe (conforme planejado no pedido de criação).
