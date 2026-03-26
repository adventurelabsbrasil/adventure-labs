---
name: client-context
description: Build a fast operational and technical briefing for a client inside the Adventure Labs monorepo. Use when a request asks for context on a client account, client app, project history, stack, risks, dependencies, docs, or where to look before making changes for clients like Rose, Benditta, Young, Lidera, Capclear, or others in apps/clientes and related knowledge/docs areas.
---

# Client Context

Use this skill to orient work on client-facing projects quickly.

## Start here

1. Identify the client folder under `../../apps/clientes/` and related material under `../../clients/`, `../../docs/clientes/`, and `../../knowledge/04_PROJETOS_DE_CLIENTES/`.
2. Use `../../docs/PLAYBOOK_OPENCLAW_ADVENTURE_LABS.md` for the operating model.
3. When the client touches data, automations, or infra, route to M03, M06, and M08 as needed.

## What to extract

- client name and canonical project paths
- app or project surfaces involved
- stack and major integrations
- shared packages or tools in use
- docs and knowledge sources
- automations or workflows tied to the client
- data, auth, tenant, or deploy risks
- operational caveats before editing

## How to answer

Return a short briefing with:

1. **Visão geral do cliente**
2. **Projetos e caminhos**
3. **Stack e integrações**
4. **Dependências e riscos**
5. **Onde olhar primeiro**
6. **Docs/SSOT relacionados**

## Routing notes

- app structure and runtime → M02
- database and RLS → M03
- workflows and automations → M06
- infra/deploy/domain issues → M08

## Typical asks

- me dê o briefing técnico do cliente Rose
- qual é o contexto operacional da Benditta?
- onde mexer com segurança no projeto Young?
- quais integrações e riscos existem neste cliente?
