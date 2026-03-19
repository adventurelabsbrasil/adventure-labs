# Agendamento do Xpostr

## Padrão: 1× por dia (Vercel Hobby)

O [`vercel.json`](../vercel.json) agenda **`GET /api/cron` uma vez por dia** às **13:00 UTC** (`0 13 * * *`) ≈ **10h horário de Brasília** (UTC−3).

Para mudar o horário, edite o campo `schedule` (expressão cron UTC).

## Plano Hobby

Crons que rodam **mais de uma vez por dia** não são permitidos no Hobby — por isso o intervalo é diário.

## Comportamento no backend

- Disparo pelo **cron**: só publica se a última publicação foi há **mais de ~22h** (evita duplicar se algo rodar fora de hora).
- **Rodar ciclo agora** no painel: ignora esse intervalo (`forceIntervalBypass`) — útil para testes ou post extra no mesmo dia.

## Plano Vercel Pro

Se quiser vários ciclos por dia, altere o `schedule` (ex. `*/15 * * * *`) e ajuste `MIN_INTERVAL_CRON_MS` em `src/lib/orchestrator.ts` conforme a cadência desejada.

## Agendador externo (opcional)

Para mais de 1 post/dia sem Pro, use serviços externos que chamem o mesmo endpoint com `Authorization: Bearer CRON_SECRET` (cron-job.org, n8n, etc.).
