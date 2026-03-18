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

- Mínimo **15 minutos** entre publicações (cron Vercel `*/15 * * * *` + mesma regra no backend).

## Brief de marca (resumo)

Ver código: `apps/xpostr/src/lib/adventure-brand.ts`.

## Documentação técnica

- `apps/xpostr/docs/ESPECIFICACAO_TECNICA.md`
- Migration SQL: `apps/xpostr/supabase/migrations/20260317120000_adv_xpostr.sql`
