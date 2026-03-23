# Checklist automática — “sensível” (gate 4b)

**Regra:** se **qualquer** pergunta **1–7** for **sim** → marcar **sensível** e **obrigar pós-produção IA (4b)** antes de documentação final, deploy ou publicação.

**Regra paralela (fora desta checklist):** transformar **ideia / subprojeto / subtarefa** em **algo novo na pipeline** → **4b obrigatório**, mesmo com 1–7 todas **não**.

## Perguntas 1–7

| # | Pergunta | Se sim |
|---|----------|--------|
| 1 | Envolve dado pessoal ou identificável (cliente, candidato, usuário)? | Sensível |
| 2 | Toca base de dados, RLS, tenant ou ambiente de **produção** de cliente? | Sensível |
| 3 | Pode expor ou mover credenciais, tokens, chaves ou segredos? | Sensível |
| 4 | Gera ou altera conteúdo **público** (site, rede social, anúncio, e-mail em massa)? | Sensível |
| 5 | Implica contato com **externo** (cliente, fornecedor, público) ou commitment com prazo/custo? | Sensível |
| 6 | Altera políticas, contratos, compliance ou acessos (permissões, papéis)? | Sensível |
| 7 | O output pode ir para repositório ou artefato compartilhado **sem** revisão humana explícita? | Sensível |

## Atalho 8 — labs / interno leve

| # | Pergunta | Efeito |
|---|----------|--------|
| 8 | É **apenas** trabalho interno em **labs** (definição acordada: ex. `apps/labs/*`, tag Asana `labs`), **sem** deploy, **sem** dados de cliente, **sem** PII, **sem** prod, **sem** segredos e **sem** conteúdo público? | Se **sim** **e** **1–7** forem **todas não** → **não** sensível **por esta checklist**; 4b **não** é obrigatório por sensível (continua obrigatório se houver **reformulação de pipeline**). |

**Condição:** a 8 **não anula** nada se **qualquer** de 1–7 for **sim**.

## Exceções / ambiguidade

Casos não cobertos: **C-Suite supervisor + manuais** → **CEO IA** → **humano**.

## Metadados sugeridos no Asana

Campo **Sensível: sim/não** + **motivo** (número(s) da checklist ou `pipeline-nova`).
