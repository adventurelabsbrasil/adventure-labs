# Erros de cota (OpenAI / Anthropic)

## O que os logs significam

| Mensagem | Causa | Ação |
|----------|--------|------|
| **429** + `quota` (OpenAI) | Limite de uso ou **sem saldo** no plano | [Billing OpenAI](https://platform.openai.com/account/billing) — adicionar crédito ou upgrade |
| **credit balance too low** (Anthropic) | Créditos Anthropic zerados | [Plans Anthropic](https://console.anthropic.com/settings/plans) |

O Xpostr faz **2 chamadas LLM por ciclo** (Zazu + Ogilvy). Cada “Rodar ciclo agora” consome as duas.

## Fallback automático (3 provedores)

Ordem: **OpenAI → Anthropic → Gemini** (só entram os que têm chave no `.env`). Se um falhar por **cota/crédito**, o próximo é tentado na mesma chamada (Zazu ou Ogilvy).

## Recomendações

1. Manter **billing ativo** em pelo menos um provedor.
2. Evitar vários cliques em “Rodar ciclo agora” em sequência (dispara vários ciclos).
3. Modelo **`gpt-4o-mini`** (padrão) é o mais barato na OpenAI.
