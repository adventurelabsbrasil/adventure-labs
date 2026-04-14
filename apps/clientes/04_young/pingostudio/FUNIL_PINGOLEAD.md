# Mapeamento real do funil Pingolead

> **Status:** TEMPLATE — preencher após executar a Fase B do `METABASE_SETUP.md` (5 queries no SQL Editor do Metabase).
>
> Este documento é a fonte da verdade para os enums reais usados em `crm_deals.status` e relacionados. As fórmulas em `QUERIES_CRM.sql` foram escritas com chute inteligente; após preencher este arquivo, fazer **replace-all** se os valores reais forem diferentes.

---

## Funil oficial Young (alvo)

A operação Young trabalha com este fluxo padrão:

| # | Etapa | Significado |
|---|-------|-------------|
| 1 | Lead recebido | Lead entra no CRM (qualquer fonte) |
| 2 | Contato feito | Vendedor/SDR fez o primeiro contato (call/WhatsApp) |
| 3 | Visita agendada | Lead aceitou marcar visita ao empreendimento |
| 4 | Visita realizada | Lead apareceu e visitou o local |
| 5 | Proposta recebida | Lead recebeu uma proposta de compra |
| — | Venda fechada | Lead virou cliente (deal won) |
| — | Perda | Deal lost (motivo registrado em `crm_motivos_perda`) |

A pergunta que este doc responde: **como o Pingolead modela esse funil em SQL?** Pode ser via `crm_deals.status`, via `crm_tasks.titulo` (eventos), ou combinação dos dois.

---

## Resultado da Fase B (preencher)

### Query 1 — `SELECT status, COUNT(*) FROM crm_deals GROUP BY status`

Cole o resultado:

```
| status | total |
|--------|-------|
| _exemplo: lead_         | _ex: 12345_ |
| _exemplo: contato_      | _ex: 8901_ |
| ...                     | ... |
```

**Mapeamento status real → funil oficial:**

| Etapa do funil | Status (Pingolead) |
|----------------|---------------------|
| 1. Lead recebido | `<status>` |
| 2. Contato feito | `<status>` |
| 3. Visita agendada | `<status>` |
| 4. Visita realizada | `<status>` |
| 5. Proposta recebida | `<status>` |
| Venda fechada | `<status>` |
| Perda | `<status>` |

**Observações:**
- _(se há status que não cai no funil, listar aqui — ex.: `'novo'`, `'lixo'`, `'rejeitado'`)_
- _(se um status do funil não existe na Pingolead, anotar — pode ser deduzido por outro campo)_

### Query 2 — `SELECT qualificacao, COUNT(*) FROM crm_deals GROUP BY qualificacao`

```
| qualificacao | total |
|--------------|-------|
| _exemplo_    | _ex_  |
```

**Significado:** _(o que `qualificacao` representa? MQL/SQL? Quente/morno/frio? Lead qualificado vs venda qualificada?)_

### Query 3 — `SELECT titulo, COUNT(*) FROM crm_tasks GROUP BY titulo LIMIT 30`

```
| titulo | total |
|--------|-------|
| _ex: Agendamento de visita_ | _ex: 4567_ |
| ...                         | ... |
```

**Mapeamento de tarefa → etapa do funil** _(complementar ao status):_

| Tarefa | Sinaliza qual etapa |
|--------|---------------------|
| _ex: "Visita realizada"_ | _Visita realizada (status pode permanecer 'agendamento' até task ser concluída)_ |
| ... | ... |

### Query 4 — Fontes de lead

```
| fonte | leads |
|-------|-------|
| _exemplo: Meta Ads_     | _ex: 5000_ |
| _exemplo: Indicação_    | _ex: 1200_ |
| ...                     | ... |
```

**Decisão:** quais fontes manter no filtro do dashboard? (todas se < 10; agrupar "Outros" se muitas)

### Query 5 — Formas de pagamento

```
| forma_pagamento | total |
|-----------------|-------|
| _exemplo: à vista_      | _ex: 230_ |
| _exemplo: financiado_   | _ex: 180_ |
| ...                     | ... |
```

**Decisão:** filtrar "Valor total vendido" só por `forma_pagamento = 'à vista'` ou contar todos? _(Looker antigo separava "à vista")_

---

## Ações pós-preenchimento

1. **Se o chute em `QUERIES_CRM.sql` está correto** (status reais batem com `'lead'`, `'contato'`, `'agendamento'`, `'visita'`, `'proposta'`, `'venda'`, `'perdido'`):
   - ✅ Nada a fazer. Continuar Fase D.

2. **Se o status real é diferente** (ex.: `'won'/'lost'`, `'novo'/'em_atendimento'`, etc.):
   - Em `QUERIES_CRM.sql`, fazer **replace-all** dos valores fictícios pelos reais.
   - Reabrir cada Question no Metabase, colar a query atualizada, salvar.
   - Validar com spot check (ex.: total de vendas = X, conferir com SQL Editor).

3. **Se o funil tem etapa que não está em `status`** (ex.: "visita realizada" é só na `crm_tasks` quando task com título específico = concluída):
   - Adaptar a query Q2.1 (Funil) para usar JOIN/LEFT JOIN com `crm_tasks` na etapa apropriada.
   - Documentar a regra aqui pra futuros executores.

4. **Se há campo extra (ex.: `closed_at`, `won_at`)** que sinaliza fechamento:
   - Reescrever Q1.6 (time series) e Q3.1/Q4.1 (vendas por X) usando esse campo no lugar de `created_at` quando aplicável (vendas devem aparecer no dia que fecharam, não no dia que entraram como lead).

---

## Validação cruzada com o cliente

Antes de declarar a missão completa, validar com Mateus Fraga ou pessoa Young teste:

- ✅ "Total de leads em [mês passado]" do Metabase = "Total de leads" da percepção dela
- ✅ "Vendas fechadas em [mês passado]" do Metabase = lista de contratos fechados que ela conhece
- ✅ Funil Q2.1 mostra ordem certa (não tem etapa "Visita agendada" com mais leads que "Contato feito")
- ✅ Top 3 consultores por vendas batem com a percepção dela

Diferenças aceitáveis: ± 5%. Diferenças maiores → revisar enum/lógica.

---

## Resultado final esperado

Quando este doc estiver totalmente preenchido + `QUERIES_CRM.sql` ajustado se necessário + 5 dashboards renderizando dados reais → MVP entregue.
