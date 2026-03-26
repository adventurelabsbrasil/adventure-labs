---
name: pre-pr-checklist
description: Run a practical pre-PR review for the Adventure Labs monorepo, checking code impact, affected domains, required validations, SSOT/wiki updates, migrations, workflows, and deployment implications. Use when preparing a branch for commit, PR, merge, handoff, or when asking for a release/readiness checklist.
---

# Pre-PR Checklist

Use this skill before opening or merging a pull request.

## Start here

1. Inspect changed files and classify the change by domain.
2. Route each changed area to the owning SSOT module when applicable.
3. Run or recommend the smallest meaningful validation set.

## Domain routing

- naming / taxonomy / structural rules → M01
- app routes / scripts / runtime → M02
- database / migrations / RLS → M03
- agents / skills / tools / MCPs → M05
- workflows / cron / webhooks → M06
- infra / CI/CD / domains / deploy → M08

## Checklist

- What changed?
- Which apps/packages/clients/workflows are affected?
- Is there any schema or RLS impact?
- Is there any env, auth, integration, or deploy impact?
- Which docs or wiki modules should be updated?
- Which validations should run?
- What is the blast radius if this ships now?

## Preferred validations

Use repo-level validators when the change spans multiple workspaces:

- `./tools/scripts/typecheck-workspaces.sh`
- `./tools/scripts/lint-workspaces.sh`
- `./tools/scripts/test-workspaces.sh`

For smaller changes, prefer focused validations over a full sweep.

## Response pattern

Return:

1. **Resumo da mudança**
2. **Áreas impactadas**
3. **Riscos e lacunas**
4. **Validações recomendadas**
5. **Docs/SSOT a atualizar**
6. **Go / no-go com observações**

## Typical asks

- checklist pré-PR
- revisão de prontidão para merge
- impacto da branch
- o que falta antes do commit ou deploy
