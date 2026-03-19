# Xpostr — Plano voz pública (Adventure Labs)

## Objetivo

Pipeline autônomo **Grove · Zazu · Ogilvy** para postagens educativas e técnicas no **@adventurelabsbr**, reforçando comunidade e relevância da martech para empresas de serviço.

## Agentes

| Agente  | Papel |
|---------|--------|
| **Grove** | Orquestra o ciclo, handoffs, SLA |
| **Zazu**  | Inteligência martech / tendências (briefing) |
| **Ogilvy**| Copy alinhada à marca |

## Controles humanos

- **Iniciar + 1º ciclo** / **Pausar**
- **Rodar ciclo agora** (respeita estado; força intervalo mínimo apenas via bypass explícito na API)
- **Contexto para o Suite** — texto opcional por ciclo (não substitui documentação canônica)

## Cadência

- **Automático:** **1× por dia** (cron Vercel, ~10h BRT / 13h UTC). Backend exige ~22h desde a última publicação no disparo do cron.
- **Manual:** **Rodar ciclo agora** força um ciclo extra no mesmo dia.

## Brief de marca (resumo)

Ver código: `apps/labs/xpostr/src/lib/adventure-brand.ts`.

## Documentação técnica

- `apps/labs/xpostr/docs/ESPECIFICACAO_TECNICA.md`
- Migration SQL: `apps/labs/xpostr/supabase/migrations/20260317120000_adv_xpostr.sql`
