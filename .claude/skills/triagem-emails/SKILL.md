---
name: triagem-emails
description: Triagem diária da caixa de email Gmail. Use sempre que o usuário pedir "checar emails", "triagem de emails", "ver inbox", "email review", "revisar caixa de entrada", "o que tem de importante nos emails", ou quando for invocada pelo cron de 5h UTC. Varre emails das últimas 24h via Gmail MCP, extrai insights acionáveis seguindo o protocolo de braindump do Adventure OS, grava o resultado triado em `docs/braindump/email-insights-YYYY-MM-DD.md` e notifica via Telegram `ceo_buzz_Bot`.
---

# Triagem de Emails — Adventure Labs

Skill de revisão diária da caixa de entrada. Encontra o sinal no meio do ruído: decisões pendentes, insights, pedidos de clientes, leads, avisos importantes. Tudo em PT-BR.

## Quando acionar

- O usuário pede explicitamente para checar/triar emails ou revisar a caixa de entrada.
- O cron `0 5 * * *` invoca via `tools/vps-infra/scripts/agent-triagem-emails.sh` passando "rode a skill triagem-emails".
- Outro agente (ex: csuite-ogilvy, gerente-rose) precisa de contexto fresco de email antes de decidir.

## Passo a passo

### 1. Coletar threads recentes

Use o Gmail MCP (tools com prefixo `mcp__*__search_threads` e `mcp__*__get_thread`) para buscar:

```
newer_than:1d in:inbox -category:promotions -category:social -label:newsletter
```

Limite a ~30 threads. Se vier vazio, relaxe para `newer_than:2d`.

Para cada thread relevante, use `get_thread` para ler o conteúdo. Pule de cara:
- Newsletters / marketing (Mailchimp, HubSpot, Substack, etc.)
- Notificações automáticas repetitivas (GitHub digest, Plane daily, Vercel deploy logs)
- Confirmações triviais ("seu pedido foi enviado")

### 2. Triar cada item

Aplique o protocolo de `.cursor/rules/adventure-braindump-triage.mdc`. Classifique cada email/thread em uma das categorias:

| Categoria | Critério | Destino |
|-----------|----------|---------|
| 🚨 **Urgente** | Exige decisão ou resposta em 24h. Cliente esperando, prazo hoje, valor alto. | Destaque no topo do report + menção no Telegram |
| 💡 **Insight** | Ideia, sacada, tendência relevante para BHAG/North Star. | Seção Insights + sugerir promoção para `ROADMAP_IDEAS.md` ou `knowledge/` |
| 📋 **Operação** | Tarefa concreta, não-técnica (follow-up cliente, agenda, material). | Rascunho Asana |
| 🔧 **Engenharia** | Bug report, feature request, integração, infra. | Rascunho `docs/BACKLOG.md` (P0–P3, owner, issue) |
| ℹ️ **Só info** | Boa saber, sem ação. | Lista compacta no fim do report |
| 🗑️ **Lixo** | Spam, automático irrelevante. | Não inclui no report |
| ❓ **Pergunta aberta** | Faltou contexto para triar. | Seção dedicada |

### 3. Redlines de segurança

⚠️ **Nunca** cole no markdown versionado (git):

- PII de terceiros (CPF, RG, endereço, telefone pessoal de cliente).
- Tokens, senhas, API keys, secrets (mesmo parciais).
- Valores financeiros exatos (R$, faturamento, contratos).
- Corpo completo de emails — só o essencial triado.

Referências ao invés de colar: `(ver thread Gmail: <assunto curto>)`. Conteúdo sensível vai no Drive ou Vaultwarden, não no repo (ver `.cursor/rules/security-sensitives.mdc`).

### 4. Gravar o report

Escreva em `docs/braindump/email-insights-YYYY-MM-DD.md` (data em UTC, formato ISO). Template:

```markdown
# Triagem de Emails — YYYY-MM-DD

**Janela:** últimas 24h · **Threads avaliadas:** N · **Triadas:** M

## 🚨 Urgente

- [remetente] — <assunto curto>: <ação esperada>. (ver thread Gmail)

## 💡 Insights

- <insight lapidado em 1 linha>. Conexão com <BHAG/cliente/projeto>. Promover para `ROADMAP_IDEAS.md`? [sim/não]

## 📋 Operação (rascunho Asana)

- **Título:** ...
  **Seção sugerida:** ...
  **Prazo:** ...
  **Contexto:** (ver thread Gmail)

## 🔧 Engenharia (rascunho BACKLOG)

- **[P1]** <título> — owner: TBD. (ver thread Gmail)

## ℹ️ Só info

- <um-liner>

## ❓ Perguntas abertas

- <o que faltou para triar>
```

Se o arquivo do dia já existir, **append** em vez de sobrescrever (adicione bloco com timestamp `## Rodada HH:MM UTC`).

### 5. Notificar via Telegram

Use `Bash` com `curl`. Env vars esperadas: `TELEGRAM_BOT_TOKEN`, `TELEGRAM_CHAT_ID` (normalmente `1069502175`, bot `ceo_buzz_Bot`).

Pattern (mirror de `tools/vps-infra/scripts/adventure_ops.sh:16-24`):

```bash
MSG="📬 <b>Triagem de emails — $(date +%Y-%m-%d)</b>
Threads: N · Urgentes: X · Insights: Y · Operação: Z · Eng: W
Arquivo: docs/braindump/email-insights-$(date +%Y-%m-%d).md

<b>Top urgente:</b>
- <1-liner do item mais urgente, ou '—' se nada>"

curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
  -d "chat_id=${TELEGRAM_CHAT_ID}" \
  --data-urlencode "text=${MSG}" \
  -d "parse_mode=HTML" > /dev/null
```

Use `--data-urlencode` para quebras de linha (mais robusto que `%0A` manual).

Se `TELEGRAM_BOT_TOKEN` estiver vazio (rodando local sem env), **não falhe** — avise no output que Telegram foi pulado e siga.

### 6. Resposta final ao invocador

Reporte ao usuário/agente que invocou:
- Nº total de threads avaliadas e triadas.
- Contagens por categoria.
- Caminho do arquivo gerado.
- Top 3 urgentes (se houver) em bullet.
- Se Telegram foi enviado ou pulado.

## Notas de implementação

- **Locale**: sempre PT-BR (ver `.cursor/rules/adventure-locale-pt-br.mdc`).
- **Reuso**: o protocolo de triagem é o mesmo que csuite-davinci aplica em braindumps gerais — não reinvente, siga `.cursor/rules/adventure-braindump-triage.mdc`.
- **Commit**: esta skill **não** faz git commit automático do arquivo de insights. O commit fica a cargo do `adventure_ops.sh` diário (que já faz `git add agents/ knowledge/ tools/ scripts/` — considere pedir pra incluir `docs/braindump/` nesse pattern se quiser versionamento automático).
- **Supabase**: por ora não grava em `adv_csuite_memory`. Follow-up: adicionar insert para agentes do C-Suite verem o contexto.
