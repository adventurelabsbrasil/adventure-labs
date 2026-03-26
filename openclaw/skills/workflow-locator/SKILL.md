---
name: workflow-locator
description: Locate and explain workflows, automations, cronjobs, webhooks, workers, GitHub Actions, and operational bridges in the Adventure Labs monorepo. Use when a request asks where an automation lives, what triggers it, what it consumes or produces, how a workflow is wired, or which systems, apps, and docs are affected by a given operational flow.
---

# Workflow Locator

Use this skill to map automations without guessing.

## Start here

1. Read `../../docs/inventario/M06-workflows-automacoes-cronjobs.md`.
2. When infrastructure or deploy/runtime matters, cross-check `../../docs/inventario/M08-infra-servidores-ci-cd.md`.
3. Inspect concrete sources in:
   - `../../workflows/n8n/`
   - `../../.github/workflows/`
   - `../../apps/labs/`
   - `../../tools/`

## What to identify

- workflow name
- type: n8n, cron, webhook, GitHub Action, worker, bridge, callback
- trigger
- inputs
- outputs
- owning app/tool/system
- dependencies on APIs, database, envs, queues, or channels
- blast radius if it fails

## How to answer

Return short operational blocks:

1. **Onde vive**
2. **Como dispara**
3. **O que consome e produz**
4. **Dependências e riscos**
5. **Docs/SSOT relacionados**

## Routing notes

- automação e cron → M06
- infra, runtime, deploy ou provider → M08
- integração externa → M07 when documented elsewhere
- banco ou tabelas tocadas → M03

## Typical asks

- onde está esse workflow?
- como essa automação dispara?
- esse webhook bate em que sistema?
- qual GitHub Action cuida disso?
- se isso falhar, o que quebra?
