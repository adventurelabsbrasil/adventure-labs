# Martech MVP — War room go-live 01/04/2026

**Objetivo:** uma âncora no Asana + Git para o **Comando Estelar (ceo@)** operar o go-live de campanha **2026-04-01** sem perder donos, DOD nem dependências.

## Tarefa hub (Asana)

| Campo | Valor |
|--------|--------|
| **GID** | `1213787130286682` |
| **Título** | `[P1][Core] War room — go-live campanha 01/04/2026 (DOD + links)` |
| **Projeto** | Martech MVP (`1213709221981135`) |
| **Assignee** | Comando Estelar (`ceo@`) |
| **Due** | 2026-04-01 |
| **Link** | [abrir no Asana](https://app.asana.com/1/1213725900473628/project/1213709221981135/task/1213787130286682) |

## Subtarefa smoke (gate 31/03)

| GID | Nome |
|-----|------|
| `1213787093513778` | Smoke E2E — clique → LP → submit → evento rastreado (gate 31/03) |

## Definition of done (DOD) — go-live

1. **Tags / pixels** publicados (GTM ou equivalente) e coerentes com a LP.
2. **Formulário** captura lead e dispara **evento de conversão** rastreável (stack acordada).
3. **Landing** alinhada a copy/wireframe aprovados; tracking validado em staging ou produção.
4. **Legal** — quando o criativo/copy for veiculado em mídia paga: milestone `1213710771598087` com estado explícito (aprovado / pendente / alterações).

## Vista recomendada no Asana (manual)

1. Abrir o projeto **Martech MVP**.
2. Mudar para **Quadro** (Board).
3. Criar três colunas (secções): **Bloqueado**, **Pronto para revisão**, **Go-live**.
4. Arrastar as tarefas-pilar conforme o estado (ou usar tags `bloqueado` / fluxo equivalente no playbook GTD).

## Pilares (GID) — cópia rápida

| Pilar | GID |
|--------|-----|
| Landing Page (pai) | `1213709221981206` |
| Tag Manager | `1213709221981281` |
| Configurar formulários | `1213741757711478` |
| Cronograma editorial | `1213709221981242` |
| Esboço (copy/wireframes) | `1213709221981331` |
| Ficha técnica do produto | `1213709221981253` |
| Legal (milestone) | `1213710771598087` |

## Priorização ACORE (ordem de execução)

Alinhado a [ACORE_ROADMAP.md](../../../../docs/ACORE_ROADMAP.md) (Fase 3) e ao quadro [BACKLOG.md](../../../../docs/BACKLOG.md): operar primeiro o **hub** e, nos pilares técnicos, nesta ordem — sem saltar o **gate Legal** (`1213710771598087`) quando houver mídia paga.

1. **Hub** `1213787130286682` — consolidar DOD, subtarefas humanas (GTM, GA4/page_view, Supabase migration, smoke E2E) e links aos pilares.
2. **Tag Manager** `1213709221981281` — publicar container alinhado ao evento `generate_lead` (checklist em [`apps/core/adventure/docs/LANDINGPAGE_MARTECH_LEAD.md`](../../../../apps/core/adventure/docs/LANDINGPAGE_MARTECH_LEAD.md)).
3. **Formulários** `1213741757711478` — DOD + owner; coerência com Supabase e `dataLayer`.
4. **Landing Page** `1213709221981206` — copy/wireframe aprovados vs. código deployado.
5. **Conteúdo / design** — Cronograma editorial `1213709221981242`, Esboço `1213709221981331`, Ficha técnica `1213709221981253` (donos design/produto; sempre com **GID** nas tarefas Asana antes de pedir alteração no repo — [ADR-0001](../../../../docs/adr/0001-fonte-verdade-tarefas-asana-backlog-adv-tasks.md)).

**Smoke:** subtarefa `1213787093513778` (ou equivalente documentada no hub) até **2026-03-31**.

## Documentação relacionada

- Playbook GTD / ceo@: [`playbook-operacional-gtd-lite-comando-estelar.md`](playbook-operacional-gtd-lite-comando-estelar.md)
- BACKLOG: [`../../../../docs/BACKLOG.md`](../../../../docs/BACKLOG.md)
- Roadmap ACORE: [`../../../../docs/ACORE_ROADMAP.md`](../../../../docs/ACORE_ROADMAP.md)

---

*Criado pelo Comando Estelar (execução plano ceo@) em 2026-03-23. Priorização ACORE acrescentada em 2026-03-24.*
