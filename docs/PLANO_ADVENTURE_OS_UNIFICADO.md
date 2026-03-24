# Plano Adventure OS unificado (referência no repositório)

**Última atualização:** 2026-03-22

O texto **completo** do programa (ACORE + SSOT + os-registry + Drive + Asana + storage + email + crons + benchmark + células martech + **taxonomia expandida de dimensões** / mini-companhias) é mantido como **plano Cursor**:

**→ `.cursor/plans/monorepo_ssot_e_workos_05dfe44f.plan.md`**

Este ficheiro em `docs/` existe para:

- Apontar **onboarding humano** e referências no repo para o plano sem depender só do Cursor.
- Servir de **âncora** em links a partir de `README`, `BACKLOG` ou wiki.

Quando houver marco grande, pode copiar-se o conteúdo integral do plano para cá ou exportar PDF — até lá, o plano `.cursor/plans/` é a fonte viva.

## Ordem de prioridade: documentação e repo **antes** das automações

A sequência intencional é **primeiro** fixar *onde* e *como* a empresa opera no Git e na taxonomia; **depois** ligar n8n, Vercel Cron e outros executores ao que já está escrito.

| Fase | Foco | Exemplos |
|------|------|----------|
| **1 — Base** | Diretrizes, SSOT de descoberta, pastas, gates | `os-registry/INDEX.md`, manuais humano/IA, `protocolo-grove-roteamento.md`, `MANUAL_TAXONOMIA`, ACORE, política wiki/docs/knowledge, ADRs quando houver decisão estrutural |
| **2 — Alinhamento** | Enriquecer INDEX, wiki, runbooks; sem novo fio de automação “órfão” | Cada novo MCP/workflow entra no INDEX no mesmo PR; `n8n-schedule.md` como **contrato** de horários |
| **3 — Execução** | Automatizar o que o doc já descreve | Ajustar nós Schedule no Railway, crons Vercel, webhooks — sempre espelhando o que está versionado |

**Regra:** não abrir automação nova (fluxo agendado ou integração) **sem** runbook ou linha no registry que diga *o quê*, *owner* e *fonte da verdade*. O plano n8n ([PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md](PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md)) continua válido; a **implementação** segue a Fase 3 após a Fase 1–2 estarem estáveis para o que já existe.

### Retomar no Cursor (copiar para o agente)

```
Retoma o programa Adventure OS + ACORE a partir do repo.

Lê e usa para decidir:
- docs/PLANO_ADVENTURE_OS_UNIFICADO.md (fases 1–3)
- docs/ACORE_ROADMAP.md
- docs/BACKLOG.md
- docs/ACORE_SESSION_LOG.md
- knowledge/06_CONHECIMENTO/os-registry/INDEX.md
- knowledge/00_GESTAO_CORPORATIVA/processos/n8n-schedule.md

Objetivos:
1) Posição na fase Adventure OS (1/2/3) e próxima entrega pequena.
2) Alinhamento com P0/P1 do BACKLOG e ACORE (Fases 2–3).
3) Separar (A) trabalho já possível sem infra nova vs (B) bloqueado até VPS/planos (Hostinger+Coolify, hosting n8n, quotas APIs, etc.).
4) Próximos 7 dias + o que atualizar ao fechar (BACKLOG, SESSION_LOG, INDEX).

Se eu pedir execução: começa pelo primeiro item (A).
```

O plano longo em `.cursor/plans/monorepo_ssot_e_workos_05dfe44f.plan.md` pode não existir em todos os clones; este ficheiro e o INDEX bastam como âncora.

## Após o primeiro build (manuais)

Quando executar o plano, devem existir (além do `os-registry/`):

| Ficheiro | Para quem |
|----------|-----------|
| `docs/MANUAL_HUMANO_ADVENTURE_OS.md` | Equipa: por onde começar, tarefas, taxonomia, Drive vs Git |
| `docs/MANUAL_IA_ADVENTURE_OS.md` | Cursor/agentes: ordem de leitura, `INDEX.md`, e **Protocolo Grove** (triagem GTD: perguntas se ambíguo → registry → WorkOS / C-Suite / técnico) |

*(Ou um único `docs/MANUAL_ADVENTURE_OS.md` com duas secções.)*  
**Regra:** novas demandas da Adventure (mesmo fora do “core” técnico do OS) entram pela **taxonomia `knowledge/`** e **Asana** — não contornar o sistema.

## Resumo executivo (1 minuto)

1. **ACORE** — [ACORE_CONSTITUTION.md](../ACORE_CONSTITUTION.md) (stack) + [ACORE_ROADMAP.md](ACORE_ROADMAP.md) (fases) + BACKLOG/SESSION_LOG.
2. **Descoberta** — `knowledge/06_CONHECIMENTO/os-registry/`: [INDEX.md](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md) (regras, skills, agentes, workflows, MCPs, crons, Drive, segurança, dimensões, etc.).
3. **Canal único** — **Grove** faz triagem **GTD** (perguntas mínimas quando falta contexto) e **distribui** para **WorkOS** (Admin/tarefas), **C-Suite** (personas/agentes) ou execução técnica; documentado em `protocolo-grove-roteamento.md` + futuro hub no Admin.
4. **Storage** — Três tiers: Git (código + migrations + md) ≠ WorkOS/DB ≠ Drive/Asana/email.
5. **Agenda** — Tabela única de crons (Vercel, n8n, …) em BRT + horários humanos separados dos jobs.
6. **Benchmark martech** — Três agentes (`benchmark_adventure`, `benchmark_clientes`, `benchmark_conteudo`) já no repo; formalizar no registry.
7. **Células martech** — Setores (performance, conteúdo, ops, analytics, CRM, stack SaaS) como unidades de automação autónoma com gates humanos.
8. **Taxonomia de dimensões** — Mapa largo (SSH, webhooks, PRs, LLMs, ERP/ATS/CRM/LMS, KPIs/OKRs, brand, archive, etc.) por família; **faseamento** em mini-companhias; decisão top-down via **Grove + C-Suite virtual** — detalhe no plano Cursor.

## Documentos relacionados

| Recurso | Caminho |
|---------|---------|
| Constituição | [ACORE_CONSTITUTION.md](../ACORE_CONSTITUTION.md) |
| Roadmap por fases | [ACORE_ROADMAP.md](ACORE_ROADMAP.md) |
| Backlog engenharia | [BACKLOG.md](BACKLOG.md) |
| Plano n8n / crons | [PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md](PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md) |
| Diretrizes multi-agente | [AGENTS.md](../AGENTS.md) |
| Braindump (esboço) | [braindump/Company Brain Dump .md](braindump/Company%20Brain%20Dump%20.md) |
| OS Registry (INDEX) | [knowledge/06_CONHECIMENTO/os-registry/INDEX.md](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md) |
| ADRs (decisões estruturais) | [adr/README.md](adr/README.md) (0001 tarefas, 0002 `clients/` × `apps/clientes/`) |
| Wiki (mapa da pasta) | [wiki/README.md](../wiki/README.md) |
| Young Talents → projeto entregue / histórico técnico | [YOUNG_TALENTS_PROJETO_ENTREGUE.md](YOUNG_TALENTS_PROJETO_ENTREGUE.md) |

---

*Manutenção: após alterações grandes ao plano Cursor, atualizar a data no topo deste ficheiro e, se necessário, o resumo.*
