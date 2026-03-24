# Triagem — projeto Asana **Tasks** (snapshot 2026-03-22)

Origem: leitura via MCP `get_tasks` no projeto `1213744799182607`.  
Alinhamento: [ADR-0001](../../../../docs/adr/0001-fonte-verdade-tarefas-asana-backlog-adv-tasks.md), [BACKLOG.md](../../../../docs/BACKLOG.md), [ACORE_ROADMAP.md](../../../../docs/ACORE_ROADMAP.md), [protocolo Grove](../../../06_CONHECIMENTO/protocolo-grove-roteamento.md).

## Diagnóstico do quadro

| Problema | Evidência |
|----------|-----------|
| **Sem custom fields no projeto** | Todas as tarefas retornaram `custom_fields: []` — não há *Cliente / Tipo / Destino técnico* para roteamento automático futuro. |
| **Uma única secção ativa (“Backlog”)** | Tudo misturado: P0, ideias, hábitos (“usar GTD”), epics de longo prazo. |
| **Quase sem assignee** | Só tarefas concluídas antigas tinham assignee; fila aberta sem dono explícito. |
| **Duplicidade Rose / Google Ads** | `1213744799182618` (*Consertar campanha…*) e `1213763696747095` (*Resolver Google Ads… falta impressões*) — mesmo fio operacional. |
| **Tarefa sem título** | `1213760496605734` — ruído; preencher ou arquivar. |
| **PII em notas** | `1213756427711153` (nome, email, telefone) — manter só no Asana/Drive; não replicar no Git. |
| **Credenciais em notas (crítico)** | Tarefa concluída LIDERA / email (`1213744799182610`) continha senhas em texto claro nas notas. **Rotacionar credenciais** e nunca repetir padrão; usar Infisical/vault. |

## Buckets recomendados (Grove → próximo passo)

### A — P0 execução imediata (ACORE Fase 2–3)

| GID | Título resumido | Ação sugerida |
|-----|-----------------|---------------|
| 1213744799182618 | Consertar Google Ads [Rose] | Manter como **pai**; marcar `1213763696747095` como duplicata ou subtarefa e fechar uma das duas. |
| 1213763696747095 | Resolver Google Ads Rose (impressões) | Unificar com `1213744799182618`. |
| 1213756427711151 | Tela auth Google Young Talents | Espelhado no [BACKLOG.md](../../../../docs/BACKLOG.md) — dev + design Young. |
| 1213760496605730 | Supabase Young `/apply` | P0 técnico — investigar env/migrations/RLS; linha no BACKLOG. |
| 1213757581639410 | Revisar deploys Vercel | Checklist por app; ligar a P0 Young se afetar produção. |

### B — P1 MVP Martech 2026T2

Cartões já referenciados no BACKLOG (cronograma editorial, ficha técnica, copy, LP, forms, GTM). Manter no Asana como **projeto filho** ou secção *MVP Martech*; donos Igor / Labs conforme quadro.

### C — Operação cliente (não engenharia monorepo)

| GID | Título | Destino |
|-----|--------|---------|
| 1213756427711153 | Usuário novo workspace Rose | Ops / convite Asana — **remover PII das notas** ou mover para campo interno; assignee comercial/ops. |
| 1213756427711157 | Campanha Meta Rose (Trabalhista) | Tráfego / criativo — projeto ou secção *Cliente Rose*. |

### D — Epics Adventure OS / produto (P2–P3 ou iniciativa)

Agrupar em **1 epic pai** no Asana (ex.: *Adventure OS — H1 2026*) com subtarefas, em vez de 20+ cartões soltos:

- Wiki empresa (`1213763696747097`), ACORE sumário (`1213763696747099`), plano mídia Martech (`1213763696747101`), Young acesso/issues (`1213763696747105`), WhatsApp → KB (`1213763696747107`), stack no ACORE (`1213763696747109`), squad (`1213763696747111`), MCP/CLI (`1213763696747113`), WorkOS Compass (`1213763696747115`), ferramentas VPS/LLM (`1213763696747117`), templates gems/skills (`1213757022644637`), KB clientes (`1213757022644641`), multitenant (`1213757022644649`), microsaas MVP (`1213757022644651`), Drive/squad (`1213757022644653`), TikTok/X/comunidade (`1213757022644657`–`4661`), Lara/Sueli/Omie/trimestre/indicadores/telemarketing/CEO ordenar (`1213757022644665`–`4681`), identidades C-level/agentes/humanos (`1213757022644683`–`4691`), email→tarefas (`1213757581639418`), martech 100k (`1213757581639421`), doc Cursor (`1213760496605728`), regra pt-BR (`1213760496605732` — **muito do escopo já está na regra Cursor**; candidata a *feito* após revisão).

### E — Hábitos / processo (não são unidades de trabalho)

Considerar **arquivar** ou converter em **1** tarefa *Playbook GTD + Asana* com checklist:

- *usar GTD em tudo*, *usar asana como brain dump*, *usar asana para clientes*, *Comando Estelar*, *Trakear tempo* — já cobertos em parte por [MANUAL_HUMANO_ADVENTURE_OS.md](../../../../docs/MANUAL_HUMANO_ADVENTURE_OS.md) e protocolo Grove.

### F — Concluídas / ruído

- `1213757022644663` — pago Alvo Certo (concluída).
- `1213744799182610` — LIDERA email: concluída mas **revisar segurança** (notas com senhas).

## Próximos passos estruturais (Asana)

1. Criar **custom fields**: Cliente | Tipo de trabalho | Destino técnico (enum alinhado a uma tabela de roteamento no repo, ver próximo doc quando existir).
2. Secções sugeridas: **Inbox / Esta semana / P0 / P1 Martech / Clientes / Epics OS / Arquivo**.
3. **Mesclar** duplicata Google Ads Rose.
4. **Assignee** mínimo em todo cartão aberto.
5. **Due** onde houver compromisso real (revalidar Legal `1213710771598087` no próprio Asana).

## Manutenção

Após mudanças grandes no quadro, atualizar este ficheiro ou substituir por nova data; manter [BACKLOG.md](../../../../docs/BACKLOG.md) como SSOT de engenharia comprometida.
