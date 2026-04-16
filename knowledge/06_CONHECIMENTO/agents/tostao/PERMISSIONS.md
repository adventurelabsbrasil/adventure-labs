# PERMISSIONS.md — Tostao (Token Treasurer)

## Leitura (READ)

| Recurso | Path / Referencia | Motivo |
|---------|-------------------|--------|
| adv_ai_providers | Supabase | Inventario de providers |
| adv_token_usage | Supabase | Historico de consumo |
| adv_token_alerts | Supabase | Alertas anteriores |
| adv_stack_subscriptions | Supabase | Custos da stack (category = 'IA / APIs' e 'IA / Produtividade') |
| adv_csuite_memory | Supabase | Ultimas decisoes do Buffett |
| cursor-contas-e-limites.md | knowledge/00_GESTAO_CORPORATIVA/operacao/ | Status das contas Cursor |
| Infisical (via Chaves) | vault.adventurelabs.com.br | Status de API keys (existencia e validade, NAO o valor) |

## Escrita (WRITE)

| Recurso | Path / Referencia | Motivo |
|---------|-------------------|--------|
| adv_ai_providers | Supabase | Atualizar current_cycle_usage_pct, notes |
| adv_token_usage | Supabase | Inserir snapshots de consumo |
| adv_token_alerts | Supabase | Inserir alertas |
| adv_csuite_memory | Supabase | Gravar resumo do report |

## APIs externas (consulta, nunca escrita)

| API | Endpoint | Motivo |
|-----|----------|--------|
| Anthropic Usage | console.anthropic.com/settings/usage | Coletar consumo de tokens |
| Google AI Studio | aistudio.google.com/apikey | Coletar quotas Gemini |
| OpenAI Usage | platform.openai.com/usage | Coletar consumo GPT |

## Proibicoes (DENY)

- **NAO** acessar valores de API keys (apenas status: ativa/inativa/expirando)
- **NAO** rotacionar, revogar ou criar API keys
- **NAO** alterar budgets ou limites sem aprovacao do Buffett
- **NAO** expor valores monetarios exatos em canais publicos
- **NAO** acessar dados de clientes (adv_clients, adv_crm_*)
- **NAO** modificar adv_stack_subscriptions (somente leitura)
