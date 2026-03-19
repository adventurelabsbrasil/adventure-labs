# Benditta — GitHub Project e issues (pós-MVP)

## Projeto criado (GitHub)

- **Project:** [Benditta — Project 8](https://github.com/users/adventurelabsbrasil/projects/8) (owner `adventurelabsbrasil`).
- **Issues no repositório** `adventurelabsbrasil/adventure-labs`: [#6](https://github.com/adventurelabsbrasil/adventure-labs/issues/6) … [#11](https://github.com/adventurelabsbrasil/adventure-labs/issues/11) (integração Meta, Supabase/RLS, sync incremental, CRM/funil, drilldowns, design tokens).

> Se a org usar um repositório separado só para o Admin, replique o project link ou mova as issues conforme governança.

## Criar o projeto “Benditta” (referência CLI)

```bash
gh project create --owner ORG_OR_USER --title "Benditta" --format json
```

Associe ao repositório desejado pela UI (Projects → Link a repository) ou conforme fluxo da org.

## Issues sugeridas (copiar título + corpo)

### 1) Integração API Meta Ads + armazenamento

**Título:** `Benditta: integrar Insights API Meta e persistir snapshots`

**Corpo:**

- Objetivo: substituir CSV por sync periódico (conta BM da Benditta).
- Requisitos: tokens seguros (env/secret manager), normalização para o mesmo schema usado em `@adventure-labs/benditta-meta-dashboard`.
- Critérios: refresh manual + agendado; falha com retry e log.

### 2) Supabase + RLS por tenant/cliente

**Título:** `Benditta: tabelas adv_* para métricas Meta com RLS`

**Corpo:**

- Tabelas com prefixo `adv_`, `tenant_id` / `client_id`, políticas RLS obrigatórias.
- Migrações em `apps/core/admin/supabase/migrations/`.
- UI lê apenas dados do tenant atual.

### 3) Sincronização incremental e cache

**Título:** `Benditta: cache e sync incremental de insights`

**Corpo:**

- Evitar full reload; usar janelas de data e cursor da API.
- Invalidação ao trocar período no dashboard.

### 4) Funil até venda (CRM)

**Título:** `Benditta: conectar etapas Oportunidade e Venda ao CRM`

**Corpo:**

- Hoje o funil exibe cinza sem CRM; mapear eventos de pipeline quando existir ferramenta.
- Definir métricas: taxa lead → oportunidade, oportunidade → venda, ciclo.

### 5) Drilldowns avançados

**Título:** `Benditta: drilldown placement, região e breakdowns Meta`

**Corpo:**

- Além de idade/gênero: placement, dispositivo, região (quando export/API permitir).

### 6) Design system Benditta (tokens oficiais)

**Título:** `Benditta: alinhar tokens de cor/tipografia ao brand book`

**Corpo:**

- Validar paleta com site/identidade oficial; substituir heurística atual em `packages/benditta-meta-dashboard/src/theme.ts`.

---

## Criar issues via CLI (exemplo)

```bash
REPO=adventure-labs/admin  # ajustar

gh issue create --repo "$REPO" --title "Benditta: integrar Insights API Meta e persistir snapshots" --body-file /dev/stdin <<'EOF'
...
EOF
```

Repita por issue ou use um script que leia este arquivo.
