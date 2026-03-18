# Erros de cota (OpenAI / Anthropic)

## O que os logs significam

| Mensagem | Causa | Ação |
|----------|--------|------|
| **429** + `quota` (OpenAI) | Limite de uso ou **sem saldo** no plano | [Billing OpenAI](https://platform.openai.com/account/billing) — adicionar crédito ou upgrade |
| **credit balance too low** (Anthropic) | Créditos Anthropic zerados | [Plans Anthropic](https://console.anthropic.com/settings/plans) |

O Xpostr faz **2 chamadas LLM por ciclo** (Zazu + Ogilvy). Cada “Rodar ciclo agora” consome as duas.

## Fallback automático

Se **OpenAI** retornar **429** e existir **`ANTHROPIC_API_KEY`** válida com crédito, o app tenta **Anthropic** na mesma etapa. Se as duas falharem, o ciclo encerra com erro claro.

## Recomendações

1. Manter **billing ativo** em pelo menos um provedor.
2. Evitar vários cliques em “Rodar ciclo agora” em sequência (dispara vários ciclos).
3. Modelo **`gpt-4o-mini`** (padrão) é o mais barato na OpenAI.
