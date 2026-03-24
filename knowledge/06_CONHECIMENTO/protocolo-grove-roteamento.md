---
title: Protocolo de roteamento — Grove (canal único)
domain: conhecimento
tags: [grove, gtd, workos, c-suite, registry]
updated: 2026-03-21
---

# Protocolo de roteamento — Grove

**Grove** (persona CEO / orquestrador — ver [`AGENTS.md`](../../AGENTS.md)) é o **primeiro filtro** entre intenção humana e execução. Este protocolo aplica-se ao **humano em modo Grove** e a **IAs** que roteiam demandas Adventure.

## 1. Princípios

1. **Consultar o registry** antes de inventar caminhos: [`os-registry/INDEX.md`](os-registry/INDEX.md).
2. **Respeitar redlines:** [`security-sensitives`](../../.cursor/rules/security-sensitives.mdc), `REDLINES` dos agentes, Constituição ACORE.
3. **Multitenant:** consultas e automações respeitam RLS e `tenant_id` / `client_id` onde aplicável.
4. **Nada sensível no Git:** PII, extratos, tokens, corpo de email com dados pessoais — não colar em Markdown versionado.

## 2. Triagem GTD

Quando a entrada for vaga, **clarificar** com **perguntas mínimas** (projeto/cliente? prazo? ideia vs compromisso? dado sensível?) antes de classificar.

| Etapa | Ação |
|-------|------|
| **Captura** | Normalizar pedido (chat, Asana, futuro inbox Admin). |
| **Clarificar** | Perguntas até dar para classificar; no espírito GTD: lixo / adiar / delegar quando aplicável. |
| **Organizar** | `os-registry/INDEX.md` → tipo de trabalho + owner. |
| **Distribuir** | Ver §3. |
| **Rever** | Onde fica o estado (Admin, Asana, relatório) — evitar duplicar sem link explícito. |

## 3. Distribuição (destinos)

| Destino | Quando | Como |
|---------|--------|------|
| **A — WorkOS (Admin)** | Execução ou acompanhamento interno em produto (`adv_*`, tarefas, APIs internas). | Criar/atualizar item no Admin; respeitar RLS. |
| **B — C-Suite / agente** | Planejamento, copy, ops, finanças, benchmark, gerente de conta. | Persona correta (Ohno, Ogilvy, Buffett, Cagan, …) ou agente de apoio (Lara, Zazu, Andon, benchmark_*). |
| **C — Engenharia (monorepo)** | Código, migration, workflow n8n, MCP, PR. | Skills/MCP + PR; migrations em `supabase/migrations/` ou árvore do produto. |

**Asana vs WorkOS:** distribuir no WorkOS **não** substitui o Asana por defeito — o protocolo deve indicar **fonte da verdade** por tipo (muitas vezes Asana captura → promoção a `docs/BACKLOG.md` / código quando virar engenharia).

## 4. Tipos de intenção (exemplos)

- **Código / infra** → CTO / Torvalds; registry § Dev, deploys, migrations.
- **Cliente X** → `knowledge/04_*`, gerente de conta se existir; nunca misturar tenants.
- **Marketing / mídia** → Ogilvy / skills benchmark / `knowledge/02_*`.
- **Financeiro / contratos sensíveis** → Buffett + Drive; sem detalhes no chat exportável ao Git.
- **“Onde fica?”** → `os-registry/INDEX.md` primeiro.

## 5. Intake futuro

- **Email → tarefas:** skill ou job com Gmail API + credenciais em Infisical; saída Asana ou `adv_tasks`, não dump bruto no repo.
- **Formulário único no Admin:** pode disparar o mesmo fluxo GTD (fase produto).

## 6. Escalamento

- **Conflito de dados ou código:** regra em [`AGENTS.md`](../../AGENTS.md) — PARE → mostrar existente → Founder escolhe substituir / manter / mescla.
- **Fora de permissão:** não usar service role / tokens em ferramentas de agente sem matriz documentada ([`workos-admin-contexto-agentes.md`](workos-admin-contexto-agentes.md)).

---

*Documento vivo: alterações estruturais passam por PR com atualização do [`os-registry/INDEX.md`](os-registry/INDEX.md) quando necessário.*
