# Barsi PF — Gestao de Patrimonio Pessoal

Snapshots patrimoniais da pessoa fisica (Rodrigo Ribas).
Gerido pelo agente **Barsi** no modo **Personal**.

## Estrutura

```
barsi-patrimonio-pf/
  templates/           <- versionado (templates de report)
  snapshots/           <- gitignored (fotos mensais com valores)
  .gitignore
  README.md
```

## Regras

- **NUNCA** versionar valores reais (`snapshots/` esta no `.gitignore`)
- **NUNCA** enviar dados PF para Supabase ou Telegram
- Reports PF sao gerados sob demanda, via chat direto com o Founder
- Dados de entrada vem da **Sueli PF** (`personal/ribas-pf-conciliacao-nubank/`)

## Como usar

1. O Founder pede "foto patrimonial PF" ou "Barsi PF" no chat
2. O Barsi le os reports da Sueli PF + investimentos informados
3. Gera snapshot em `snapshots/snapshot-YYYY-MM.md`
4. Responde no chat direto (nunca persiste consolidado PJ+PF)

## Relacao com Sueli PF

| Agente | O que faz | Onde |
|--------|-----------|------|
| Sueli PF | Concilia OFX Nubank, categoriza, gera DRE familiar | `personal/ribas-pf-conciliacao-nubank/` |
| Barsi PF | Fotografa patrimonio (saldos + investimentos + PL) | `personal/barsi-patrimonio-pf/` |

Sueli PF e a fonte de dados. Barsi PF e a visao patrimonial.
