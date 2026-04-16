# Handoff: Rose Daily Leads Report — Email Body Vazio

**Data:** 2026-04-16
**Prioridade:** ALTA (cliente Rose sem relatorio diario desde 16/04)
**Responsavel anterior:** Claude Code (sessao remota)
**Status:** Parcialmente resolvido — pipeline de dados OK, email body pendente
**Clientes afetados:** Rose Portal Advocacia

---

## Contexto

Workflow n8n (v2.14.2, flow.adventurelabs.com.br) que roda diariamente as 03:00 BRT.
Busca insights Meta Ads (act_499901480052479) -> upsert Supabase -> email HTML para equipe Rose.

O workflow original quebrou em 2026-04-16 por `duplicate key value violates unique constraint "uq_ads_daily_metrics"` (Supabase node usava INSERT, nao upsert). Uma nova versao foi criada em `workflows/n8n/rose/rose-daily-leads-report-v1.json` corrigindo multiplos bugs, mas o **email body continua chegando vazio**.

## O que ja funciona (confirmado via logs n8n)

- Meta API: retorna 10 ads / 4 campanhas com dados corretos (date_preset=yesterday)
- Code: parse Meta data: gera `{ _no_data: false, rows: [10 items] }` OK
- Code: agregar por campanha: agrega por campaign_name corretamente
- SMTP: email aceito pelo Gmail, 6 destinatarios confirmados
- Subject: chega correto `Relatorio Diario de Leads - Rose Advocacia (2026-04-15)`

## O problema pendente

O **body do email chega vazio**. So aparece rodape padrao n8n:
```
---
This email was sent automatically with n8n
```

`messageSize: 895` bytes (o original que funcionava tinha `messageSize: 3240`).

## Causa raiz nao resolvida

A expressao `={{ $json.html_report }}` (ou `={{ $json.html }}`) no no emailSend retorna vazio/null.
O subject (`={{ $json.subject }}`) funciona normalmente no mesmo `$json`.

### Tentativas que NAO resolveram
1. Trocar template literals por string concatenation
2. Remover `<!DOCTYPE html>` / `<html><body>` wrapper
3. Renomear campo `html` -> `html_report`
4. emailSend typeVersion 2 -> 2.1
5. Inline HTML sem tags de documento
6. Usar `var` em vez de `const` no Code node

## Workflow original (referencia que funcionava)

Enviado pela Lara (`lara@adventurelabs.com.br`). Input do no de email:
```json
{
  "html_report": "<h2 style=\"color: #1a73e8;\">Relatorio Diario...</h2>...(HTML completo)...",
  "reportDate": "2026-04-14"
}
```
- `messageSize: 3240` (HTML incluido corretamente)
- O Code node da Lara gerava `html_report` e passava direto para emailSend

## Sugestao de resolucao

1. **Teste rapido**: no emailSend, trocar `={{ $json.html_report }}` por HTML hardcoded `<h1>TESTE</h1>`. Se renderizar, o bug esta na referencia `$json`. Se nao, o bug esta no no emailSend em si.
2. **Copiar config da Lara**: abrir workflow original da Lara no n8n, copiar no de email + Code node que gera o html_report, adaptar para este workflow.
3. **Alternativa HTTP**: substituir emailSend por HTTP Request node chamando API do Gmail/SMTP diretamente (como o Sueli faz com Telegram).

## Bugs ja corrigidos nesta sessao

| Bug | Fix | Status |
|-----|-----|--------|
| Supabase INSERT -> duplicate key 23505 | HTTP Request com `Prefer: resolution=merge-duplicates` | OK |
| Supabase on_conflict faltando | `?on_conflict=date,account_id,campaign_name,adset_name,ad_name` na URL | OK |
| Telegram `chat_id is empty` | Adicionado `resource: message` e `operation: sendMessage` | OK |
| Meta API `time_range` ambiguo | Trocado para `date_preset: yesterday` | OK |
| Sem notificacao de erro | Error Trigger + Telegram alert adicionado | OK |
| Email body vazio | **NAO RESOLVIDO** | PENDENTE |

## Arquivos

- `workflows/n8n/rose/rose-daily-leads-report-v1.json` (workflow corrigido)
- `workflows/n8n/rose/README.md` (documentacao)
- `supabase/migrations/20260409100000_adv_ads_daily_metrics.sql` (tabela)
- Branch: `claude/fix-daily-report-automation-9TBjd`

## Credenciais n8n

| Credencial | Tipo |
|---|---|
| Meta Rose — access_token query param | HTTP Query Auth |
| SMTP contato@adventurelabs.com.br | SMTP |
| Telegram ceo_buzz_Bot | Telegram API |

## Destinatarios do relatorio

brunascopel@roseportaladvocacia.com.br, contato@roseportaladvocacia.com.br, clayton@roseportaladvocacia.com.br, victor@roseportaladvocacia.com.br, roselaine@roseportaladvocacia.com.br (cco: contato@adventurelabs.com.br)
