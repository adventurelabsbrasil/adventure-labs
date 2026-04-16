# HEARTBEAT.md — Barsi (Gestor de Patrimonio)

> Checklist executado semanalmente (sex, 10:07 UTC) no modo Adventure.
> Modo Personal: sob demanda do Founder.

---

## Checklist semanal — Modo Adventure (PJ)

### 1. Levantar saldos
- [ ] Consultar Sueli para saldo Sicredi (ultimo OFX ou ultimo dado disponivel)
- [ ] Consultar Sueli para saldo Inter (corrente + CDB)
- [ ] Verificar com Chaves se ha acesso automatico a APIs bancarias

### 2. Levantar recebiveis
- [ ] Listar contratos ativos e valores esperados no mes
  - Rose: R$3.500/mes + variaveis
  - Benditta: R$2.000/mes (contrato 3 meses)
  - Young: variavel (checar status com gerente_young)
  - Lidera: pontual (~R$450)
- [ ] Verificar se ha pagamentos atrasados (consultar Sueli/Omie)

### 3. Levantar passivos
- [ ] Contas a pagar pendentes (fornecedores: Rupe, Triangullo, etc)
- [ ] Reembolso ao socio (Nubank PF — saldo pendente)
- [ ] Impostos a recolher (SEFAZ, DAS se aplicavel)
- [ ] Subscriptions do mes (stack_subscriptions com billing_type = 'fixed')

### 4. Avaliar ativos
- [ ] Stack digital: checar se houve aquisicao/cancelamento
- [ ] Escritorio: verificar se houve nova despesa de ativo

### 5. Gerar snapshot
- [ ] Calcular: Ativo Circulante = caixa + investimentos + recebiveis
- [ ] Calcular: Ativo Nao Circulante = imobilizado + intangiveis
- [ ] Calcular: Passivo = fornecedores + impostos + reembolso socio
- [ ] Calcular: PL = capital social + resultado acumulado + resultado periodo
- [ ] Verificar: Total Ativos = Total Passivos + PL (balanceamento)
- [ ] Inserir snapshot em adv_patrimony_snapshots

### 6. Comparar com semana anterior
- [ ] Calcular variacao % do PL
- [ ] Identificar maiores movimentacoes da semana
- [ ] Registrar movimentacoes significativas em adv_patrimony_movements

### 7. Report
- [ ] Gerar report para Telegram (modo PJ)
- [ ] Gravar resumo em adv_csuite_memory (agent: 'barsi')

---

## Checklist sob demanda — Modo Personal (PF)

### 1. Levantar saldos PF
- [ ] Consultar Sueli PF para saldo Nubank corrente
- [ ] Consultar Sueli PF para fatura do cartao (total + Adventure vs pessoal)
- [ ] Consultar investimentos PF (se houver)

### 2. Gerar snapshot PF
- [ ] Usar template em personal/barsi-patrimonio-pf/templates/
- [ ] Salvar em personal/barsi-patrimonio-pf/snapshots/ (gitignored)
- [ ] Comparar com mes anterior

### 3. Report PF
- [ ] Responder ao Founder em chat direto (NUNCA Telegram)

---

## Checklist sob demanda — Modo Consolidado

### 1. Merge runtime
- [ ] Carregar ultimo snapshot PJ (Supabase)
- [ ] Carregar ultimo snapshot PF (local)
- [ ] Somar: PL Total = PL PJ + PL PF

### 2. Report Consolidado
- [ ] Responder ao Founder em chat direto
- [ ] NAO persistir — destruir apos report

---

## Formato do report — Modo Adventure (PJ)

```
<b>Barsi (Gestor de Patrimonio) — Foto Semanal</b>

<b>Data:</b> [YYYY-MM-DD]

<b>Ativo Circulante:</b>
- Caixa (contas correntes): R$[X]
- Investimentos (CDB/aplicacoes): R$[X]
- Contas a receber: R$[X]
<b>Total Circulante:</b> R$[X]

<b>Ativo Nao Circulante:</b>
- Imobilizado: R$[X]
- Intangiveis: R$[X]

<b>TOTAL ATIVOS:</b> R$[X]

<b>Passivo:</b>
- Fornecedores: R$[X]
- Impostos: R$[X]
- Reembolso socio: R$[X]
<b>Total Passivo:</b> R$[X]

<b>Patrimonio Liquido:</b>
- Capital social: R$[X]
- Resultado acumulado: R$[X]
<b>PL Total:</b> R$[X]

<b>Evolucao vs semana anterior:</b> [+X% / -X%]

<b>Movimentacoes da semana:</b>
- [lista ou 'Sem movimentacoes relevantes']

<b>Recebiveis pendentes:</b>
- [cliente]: R$[X] (vence [data])

<b>Observacao:</b>
[insight ou recomendacao]
```

## Formato do report — Modo Personal (PF)

```
Barsi PF — Foto Mensal [YYYY-MM]

Saldos:
- Nubank corrente: R$[X]
- Investimentos: R$[X]
- Cartao (fatura aberta): -R$[X]

Patrimonio Liquido PF: R$[X]
Evolucao vs mes anterior: [+X% / -X%]

Observacao: [insight]
```
