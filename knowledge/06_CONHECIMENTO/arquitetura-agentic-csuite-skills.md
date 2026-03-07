# Arquitetura Agêntica: C-Suite + Skills

Documento de referência para a separação entre orquestradores (C-Suite) e executores (Skills). Atualizado conforme o plano de implementação.

---

## 1. Visão geral

A arquitetura tem duas camadas:

1. **C-Suite (Managers)** — Recebem input do Founder (ou do Grove), planejam a execução, quebram em passos, acionam a skill correta para cada passo e **revisam** se a saída está de acordo com os padrões da empresa. **Não executam** o trabalho técnico.
2. **Skills (Executors)** — Vivem em `/agents/skills/`. Contexto estreito: não precisam conhecer a estratégia da empresa; executam uma tarefa específica com maestria e retornam resultado para o C-Level revisar.

---

## 2. Fluxo

```
Founder (input)
    ↓
Grove (CEO) — orquestra e delega ao C-Level adequado
    ↓
C-Level (ex.: Torvalds para tech) — planeja, quebra em passos
    ↓
Skill (ex.: Miguel / Database Engineer) — executa o passo
    ↓
C-Level — revisa output contra critérios do SKILL e padrões da empresa
    ↓
Resposta / próximo passo
```

---

## 3. Onde cada camada vive

| Camada   | Localização      | Exemplo                          |
|----------|------------------|----------------------------------|
| C-Suite  | `/agents/`       | `torvalds_cto.md`, `ohno_coo.md`, `ogilvy_cmo.md`, `buffett_cfo.md`, `cagan_cpo.md` |
| Skills   | `/agents/skills/`| Uma pasta por skill, com `SKILL.md` |

C-Suite e skills por diretor:

- **CTO (Torvalds):** supabase-migrations, code-review, monorepo-pnpm, api-routes, ui-components, rls-tenant
- **COO (Ohno):** sla-prazos-entrega, fluxo-vida-projeto, kanban-board-checklist
- **CMO (Ogilvy):** relatorio-kpis-campanhas, copy-brief-campanha, analise-performance-canal, referencias-ideias-editorial
- **CFO (Buffett):** one-pager-financeiro, reconciliacao-custos, metricas-saas-agencia
- **CPO (Cagan):** escopo-projeto-checklist, briefing-cliente-template, dashboard-kpis-especificacao

---

## 4. Regra de identidade das Skills

Toda skill tem **dois campos obrigatórios**:

- **persona** (nome): identidade da skill (ex.: Miguel, Rita, Luna).
- **role** (cargo): função/cargo (ex.: Database Engineer, Revisora de Código).

O template e o catálogo estão em `/agents/skills/` (README e _template).

---

## 5. Papel do C-Suite (ex.: Torvalds)

- **Planejar** a execução a partir do pedido.
- **Quebrar** em passos e escolher qual skill acionar para cada um.
- **Acionar** a skill (ler o `SKILL.md` correspondente e seguir instruções).
- **Revisar** o output da skill contra os "Critérios de revisão" do SKILL e os padrões da empresa (ex.: .cursorrules, regras de engenharia).

---

*Última atualização: 2026-03. Origem: plano Agentic Architecture + Tasks.*
