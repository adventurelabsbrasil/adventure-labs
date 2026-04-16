# PERMISSIONS.md — Barsi (Gestor de Patrimonio)

## Modo Adventure (PJ) — Leitura

| Recurso | Path / Referencia | Motivo |
|---------|-------------------|--------|
| adv_patrimony_accounts | Supabase | Inventario de contas PJ |
| adv_patrimony_snapshots | Supabase | Historico de fotos patrimoniais |
| adv_patrimony_movements | Supabase | Movimentacoes relevantes |
| adv_stack_subscriptions | Supabase | Custos recorrentes (para calcular passivo recorrente) |
| adv_ai_providers | Supabase | Custos de IA (via Tostao) |
| adv_csuite_memory | Supabase | Ultimas decisoes do Buffett e Tostao |
| relatorio-dre-jan-mar-2026.md | knowledge/00_GESTAO_CORPORATIVA/operacao/ | DRE para calculo de resultado |
| dre-jan-mar-2026.json | knowledge/00_GESTAO_CORPORATIVA/operacao/ | DRE estruturado |
| plano-de-contas-categorias.md | knowledge/00_GESTAO_CORPORATIVA/checklists_config/ | Referencia de categorias |
| controles-internos.md | knowledge/00_GESTAO_CORPORATIVA/checklists_config/ | Controles financeiros |

## Modo Adventure (PJ) — Escrita

| Recurso | Path / Referencia | Motivo |
|---------|-------------------|--------|
| adv_patrimony_accounts | Supabase | Atualizar notas, status |
| adv_patrimony_snapshots | Supabase | Inserir fotos semanais |
| adv_patrimony_movements | Supabase | Registrar movimentacoes relevantes |
| adv_csuite_memory | Supabase | Gravar resumo do report (agent: 'barsi') |

## Modo Personal (PF) — Leitura

| Recurso | Path | Motivo |
|---------|------|--------|
| Sueli PF reports | personal/ribas-pf-conciliacao-nubank/relatorios/ | Saldos e categorias PF |
| Plano de contas familiar | personal/ribas-pf-conciliacao-nubank/templates/plano-de-contas-familiar.md | Referencia de categorias PF |
| OFX Nubank (via Sueli PF) | personal/ribas-pf-conciliacao-nubank/dados/ | Extratos para foto PF |

## Modo Personal (PF) — Escrita

| Recurso | Path | Motivo |
|---------|------|--------|
| Snapshots PF | personal/barsi-patrimonio-pf/snapshots/ | Fotos mensais PF (gitignored) |

## Consultas externas

| Agente | O que consulta | Motivo |
|--------|---------------|--------|
| Sueli (PJ) | Saldos bancarios, OFX conciliados, Omie | Base para foto PJ |
| Sueli (PF) | Saldos Nubank, categorias, fatura | Base para foto PF |
| Chaves (Infisical) | Status de acessos bancarios (online banking APIs) | Verificar se tem acesso automatico |
| Tostao | Custos IA como % do patrimonio | Dimensionar peso da IA no balanco |

## Proibicoes (DENY)

- **NAO** armazenar dados PF em Supabase
- **NAO** enviar dados PF para Telegram ou qualquer canal compartilhado
- **NAO** persistir visao consolidada (PJ+PF) em nenhum storage
- **NAO** expor valores absolutos em canais publicos (usar %, evolucao, tendencia)
- **NAO** acessar ou modificar dados de clientes (adv_clients, adv_crm_*)
- **NAO** executar transferencias, pagamentos ou movimentacoes bancarias reais
- **NAO** acessar credenciais bancarias (somente status via Chaves)
