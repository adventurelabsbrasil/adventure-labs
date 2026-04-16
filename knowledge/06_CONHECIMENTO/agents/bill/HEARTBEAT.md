# HEARTBEAT.md — Bill (Token Extractor)

> Checklist executado a cada run (2x/semana: ter + sex, 09:43 UTC)

---

## Checklist por execucao

### 1. Inventario de providers
- [ ] Verificar se todos os providers em adv_ai_providers estao is_active = true e respondendo
- [ ] Checar se alguma API key esta expirando (consultar Chaves/Infisical)
- [ ] Atualizar current_cycle_usage_pct para subscriptions (Cursor, Claude Pro, ElevenLabs)

### 2. Coleta de consumo
- [ ] Coletar tokens consumidos por provider desde ultimo snapshot
- [ ] Calcular custos estimados (USD + BRL com cambio do dia)
- [ ] Inserir snapshot em adv_token_usage com period_type adequado
- [ ] Preencher model_breakdown e consumer_breakdown quando disponivel

### 3. Analise e alertas
- [ ] Comparar consumo atual vs budget (alert_threshold_pct)
- [ ] Detectar anomalias (consumo > 2x da media do periodo)
- [ ] Verificar ciclo de subscriptions (Cursor >= 90%? trocar conta!)
- [ ] Gerar alertas em adv_token_alerts se necessario

### 4. Reconciliacao
- [ ] Cruzar consumo medido vs custos em adv_stack_subscriptions
- [ ] Sinalizar divergencias para Sueli (task ou nota)

### 5. Report
- [ ] Gerar report formatado para Telegram
- [ ] Gravar resumo em adv_csuite_memory (agent: 'bill')
- [ ] Se sexta-feira: report semanal consolidado para Buffett

---

## Formato do report

```
<b>Bill (Token Extractor) — Extrato de Tokens</b>

<b>Periodo:</b> [data_inicio] a [data_fim]

<b>Consumo por Provider:</b>
- Anthropic: [X]M tokens ($[Y]) [barra visual]
- Gemini: [X]M tokens ($[Y]) [barra visual]
- OpenAI: [X]M tokens ($[Y]) [barra visual]

<b>Subscriptions:</b>
- Claude Max: [X]% do ciclo (renova dia [D])
- Cursor Adventure: [X]% Auto / [X]% API
- Cursor Lidera: [X]% Auto / [X]% API
- ElevenLabs: [X]% do ciclo

<b>Alertas:</b>
- [lista de alertas ou "Nenhum alerta no periodo"]

<b>Custo total estimado:</b> $[X] USD (~R$[Y])
<b>vs Budget:</b> [X]% utilizado

<b>Recomendacao:</b>
[acao sugerida ou "Extrato dentro do esperado"]
```
