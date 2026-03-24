# ADR 0001 — Fonte da verdade: Asana Tasks, BACKLOG.md e `adv_tasks` (WorkOS)

## Status

**Aceite** (2026-03-22) — alinhado a [BACKLOG.md](../BACKLOG.md), [PLANO_ADVENTURE_OS_UNIFICADO.md](../PLANO_ADVENTURE_OS_UNIFICADO.md) e [protocolo-grove-roteamento.md](../../knowledge/06_CONHECIMENTO/protocolo-grove-roteamento.md).

## Contexto

A Adventure usa três superfícies para “trabalho a fazer”, com papéis diferentes:

- **Asana (projeto Tasks)** — captura operacional, fila do dia, notas com contexto e eventual PII.
- **`docs/BACKLOG.md`** — quadro de engenharia no Git com prioridade técnica (P0–P3), owner e ligação a issues/Asana GID.
- **`adv_*` / tarefas no Admin (WorkOS)** — estado operacional multitenant em Postgres (RLS), visível na app e consumido por automações (n8n, C-Suite).

Sem fronteiras claras, equipa e agentes duplicam tarefas, misturam SSOT técnica com captura informal ou escrevem estado só no chat.

## Decisão

1. **Asana Tasks** é a **fonte da verdade da captura e priorização operacional** humana (o que entrou, prazos de negócio, discussão). **Não** é SSOT de código nem substitui decisão de stack; detalhes sensíveis ficam nas notas do Asana, não no Git.

2. **`docs/BACKLOG.md`** é a **fonte da verdade da engenharia comprometida** versionada no repositório: o que vai para desenvolvimento com **Issue ID (ou GID Asana) + P0–P3**. Promoção típica: ideia/cartão no Asana → linha no BACKLOG quando houver compromisso técnico e owner.

3. **`adv_tasks` (e afins no Supabase do Admin)** é a **fonte da verdade do estado operacional dentro do produto WorkOS**: execução interna, integrações, relatórios founder, fluxos n8n. **Não** substitui migrations nem o BACKLOG como registo de prioridade de engenharia no Git; relação: BACKLOG descreve *o quê priorizar*; `adv_tasks` pode espelhar execução *dentro* do Admin quando o fluxo já está ligado ao produto.

4. **Protocolo Grove:** distribuir para WorkOS (criar/atualizar `adv_*`) **não** apaga a obrigação de manter Asana e/ou BACKLOG coerentes conforme o tipo de demanda; em caso de dúvida, **BACKLOG + Asana** ganham para itens de engenharia até existir um fluxo único no Admin.

## Consequências

- PRs que introduzem trabalho **P1+** devem referenciar BACKLOG (ou criar linha) e, quando existir cartão, o GID Asana.
- Automações que criam só `adv_tasks` sem espelho em BACKLOG/Asana devem ser excecionais e documentadas no [os-registry INDEX](../../knowledge/06_CONHECIMENTO/os-registry/INDEX.md).
- Agentes e humanos: não afirmar “a tarefa oficial é só X” sem qualificar **domínio** (captura / engenharia Git / estado WorkOS).

## Referências

- [BACKLOG.md](../BACKLOG.md) — Captura Asana + regras de execução  
- [os-registry/INDEX.md §14](../../knowledge/06_CONHECIMENTO/os-registry/INDEX.md) — GTD e Asana  
- [n8n-schedule.md](../../knowledge/00_GESTAO_CORPORATIVA/processos/n8n-schedule.md) — jobs que tocam Admin/API
