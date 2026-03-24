# Cards Asana prontos — Martech P0 (2026-03)

Blocos prontos para copiar/colar no Asana (projeto Tasks).

## Card 1

### Título

`[P0][Martech] Painel de qualidade de lead por canal (lead > qualificado > venda)`

### Descrição (colar no Asana)

Origem: backlog de oportunidades martech (`OPP-001`).

Objetivo:
Construir visibilidade mínima da qualidade de lead por canal (Google, Meta, orgânico), conectando aquisição com qualificação e venda.

Escopo:
- Definir modelo mínimo de dados para status de lead.
- Exibir funil por canal (lead > qualificado > venda).
- Incluir métricas base: volume, taxa de qualificação e taxa de avanço.

Definição de pronto (DOD):
- Modelo mínimo de dados definido e documentado.
- Painel com visão por canal disponível.
- Critério de “lead qualificado” explicitado no card/doc.
- Evidência de uso com pelo menos 1 cliente/campanha real.

Dependências:
- Validação de critérios com CMO/Operação.
- Alinhamento técnico com CTO para fonte de dados.

Owner sugerido:
CTO + CMO (copilot Comando Estelar)

Prioridade técnica:
P0

---

## Card 2

### Título

`[P0][Martech] Playbook de contingência WhatsApp/Instagram/Webchat`

### Descrição (colar no Asana)

Origem: backlog de oportunidades martech (`OPP-002`).

Objetivo:
Reduzir risco operacional quando um canal falhar (queda de entrega, bloqueio, instabilidade), com fallback claro por canal.

Escopo:
- Definir sinais de falha por canal.
- Definir sequência de fallback (ex.: WhatsApp -> Instagram -> Webchat).
- Definir critérios de escalonamento e owner por etapa.

Definição de pronto (DOD):
- Runbook publicado e versionado.
- Checklist de diagnóstico rápido por canal.
- Critérios de acionamento e escalonamento documentados.
- Simulação de 1 cenário de contingência concluída.

Dependências:
- Inputs de operação de tráfego/atendimento.
- Validação de governança com COO/CMO.

Owner sugerido:
COO + CMO

Prioridade técnica:
P0

---

## Card 3

### Título

`[P0][Martech] Checklist padrão de tracking antes de publicar campanha`

### Descrição (colar no Asana)

Origem: backlog de oportunidades martech (`OPP-003`).

Objetivo:
Padronizar validações de tracking e roteamento para evitar campanha rodando sem captação/atribuição confiável.

Escopo:
- Checklist único de pré-publicação.
- Itens mínimos: UTM, destino, captação de lead, roteamento, evidência de teste.
- Procedimento de aprovação antes de ativar campanha.

Definição de pronto (DOD):
- Checklist versionado em doc canônico.
- Processo de uso definido para operação.
- Aplicado em pelo menos 1 campanha real com evidência.

Dependências:
- Alinhamento com operação de tráfego e martech.
- Definição de owner de aprovação final.

Owner sugerido:
CMO / Operação de Tráfego

Prioridade técnica:
P0

---

## Pós-criação no Asana (obrigatório)

Após criar os 3 cards:

1. Copiar os GIDs oficiais.
2. Atualizar `docs/BACKLOG.md` substituindo:
   - `DRAFT-MARTECH-P0-001`
   - `DRAFT-MARTECH-P0-002`
   - `DRAFT-MARTECH-P0-003`
3. Manter este arquivo como template para próximos ciclos.
