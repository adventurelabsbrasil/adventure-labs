# Conciliação bancária PF — Nubank (Rodrigo)

Projeto **pessoal**, fora do financeiro da Adventure Labs. Persona operacional: **Sueli PF** (mesmo rigor da conciliação corporativa, sem Omie/n8n).

## O que fica no Git

- Este README, o playbook, templates e scripts de apoio (sem dados).
- **Não** versionar: OFX, PDF, CSV com valores, relatórios preenchidos.

## Onde colocar arquivos

| Local | Conteúdo |
|-------|----------|
| `dados/` | OFX da **conta corrente** (`NU_*` / CHECKING) e **fatura do cartão** (`Nubank_*.ofx` / CREDITCARD). Copiar do app do Nubank. |
| `relatorios/` | Saídas geradas (mensal + DRE + pendências) — pasta ignorada pelo Git. |

## Ritmo sugerido

1. Exportar OFX do mês (conta + cartão).
2. No Cursor, acionar a skill **Sueli PF** ou seguir [PLAYBOOK_CONCILIACAO.md](./PLAYBOOK_CONCILIACAO.md).
3. Responder às **dúvidas** listadas pelo agente.
4. Consolidar plano de contas em [templates/plano-de-contas-familiar.md](./templates/plano-de-contas-familiar.md) quando houver novas categorias estáveis.

## Scripts

- `node scripts/parse-ofx.mjs` — JSON com todas as transações dos OFX em `dados/`.
- `node scripts/generate-relatorios.mjs` — gera `relatorios/relatorio-mensal-YYYY-MM.md` (pasta ignorada no Git).

## Referências

- Skill: `.cursor/skills/sueli-conciliacao-bancaria-pf/SKILL.md`
- Sueli corporativa (Omie): `apps/core/admin/agents/skills/sueli-conciliacao-bancaria/SKILL.md`
