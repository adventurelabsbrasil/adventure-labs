# Playbook — Conciliação PF Nubank (Sueli PF)

## Pré-requisitos

1. OFX da **conta corrente** (arquivos `NU_*` com `CHECKING` no OFX) em `dados/`.
2. OFX da **fatura do cartão** (`Nubank_*.ofx` com `CREDITCARDMSGSRSV1`) em `dados/`.
3. Plano de contas alinhado em `templates/plano-de-contas-familiar.md`.

## Passo a passo

### 1. Definir mês de referência

Escolher o **mês civil** alvo (ex.: 2026-01). A fatura do cartão pode ter `DTSTART`/`DTEND` diferentes; registrar no relatório qual intervalo o arquivo representa.

### 2. Normalizar lançamentos

Para cada arquivo OFX, extrair blocos `STMTTRN`:

- `DTPOSTED` → data
- `TRNAMT` → valor (negativo = saída)
- `MEMO` → descrição
- `FITID` → id único (auditoria)
- Tipo de fonte: **checking** vs **credit_card**

### 3. Cruzar conta × cartão

Na conta corrente, localizar linhas com memo contendo **Pagamento de fatura** (ou equivalente).

- Somar compras do OFX de cartão cujo período fecha naquela fatura.
- Comparar total da fatura ao débito na conta (tolerância R$ 0,02; investigar IOF, ajustes, pagamento parcial).

### 4. Categorizar

- Cartão: uma categoria por `STMTTRN` (heurística por `MEMO` + plano de contas).
- Conta: Pix, débito, boletos — categorizar; **Pagamento de fatura** → código F1; não reclassificar compras do cartão de novo.

### 5. Dúvidas

Se `MEMO` for genérico (ex.: só nome de PJ) ou houver ambiguidade:

- Não inventar; listar em **Pendências** com pergunta objetiva.

### 6. Entregas

Gerar em `relatorios/relatorio-mensal-YYYY-MM.md` (gitignored) preenchendo o template `templates/relatorio-mensal-YYYY-MM.md`.

Scripts (versionados): `scripts/parse-ofx.mjs` (JSON no stdout), `scripts/generate-relatorios.mjs` (preenche `relatorios/relatorio-mensal-YYYY-MM.md`).

### 7. Consolidação DRE

Após respostas do Founder às pendências, atualizar totais por categoria e fechar o bloco DRE do relatório.

## Anti-padrões

- Misturar arquivos PF com pastas da Adventure (`knowledge/00_*`, Omie).
- Commitar `dados/` ou `relatorios/`.
- Contar a mesma compra no crédito **e** linhas detalhadas já pagas pela fatura na conta, no mesmo DRE.
