# Claude Code — Logs Diarios

Cada arquivo `YYYY-MM-DD.md` deste diretorio eh gerado automaticamente pelo cron
`claude-yesterday-log` as 00:00 BRT e contem o que aconteceu no dia anterior:

- Sessoes do Claude Code (inicio, fim, duracao, turnos)
- Uso de tokens (input, output, cache read/write)
- Ferramentas invocadas (contagem por tipo)
- Commits, arquivos modificados e mudancas em `.claude/settings*.json`
- Modelos utilizados

**Boot-check:** qualquer operador (humano ou agente) deve ler o log do dia anterior
antes de comecar a trabalhar para se inteirar do estado atual.

## Fonte

| Dado | De onde |
|------|---------|
| Sessoes e tokens | `~/.claude/projects/*/*.jsonl` |
| Commits e arquivos | `git log --since=ontem --until=ontem` |
| Settings changes | `git log -- .claude/settings*.json` |

## Tambem gravado em

- Tabela `adv_claude_daily_logs` do Supabase `adventurelabsbrasil`
  (chave unica: `tenant_id + log_date + host`)
- Notificacao resumida via Telegram (`ceo_buzz_Bot`)

## Script

- Codigo: `tools/vps-infra/scripts/agents/claude-yesterday-log.sh`
- Deploy VPS: `/opt/adventure-labs/scripts/agents/claude-yesterday-log.sh`
- Cron (UTC): `0 3 * * * /opt/adventure-labs/scripts/agents/claude-yesterday-log.sh >> /opt/adventure-labs/logs/claude-yesterday-log.log 2>&1`

Veja `CLAUDE.md` (secao Agentes Autonomos) para contexto operacional.
