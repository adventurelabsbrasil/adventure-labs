---
title: Checklist VPS 24/7 (OpenClaw + n8n)
domain: gestao_corporativa
tags: [checklist, vps, monitoramento, seguranca]
updated: 2026-03-26
owner: Torvalds (CTO)
status: ativo
---

# Checklist VPS 24/7 (OpenClaw + n8n)

## A) Disponibilidade

- [ ] `https://coolify.adventurelabs.com.br` retorna `200`.
- [ ] `https://n8n.adventurelabs.com.br` retorna `401` ou `200` (conforme auth).
- [ ] `https://openclaw.adventurelabs.com.br` retorna resposta valida apos publicacao.
- [ ] Reboot da VPS reergue containers automaticamente.

## B) Persistencia

- [ ] Volume de banco do Coolify preservado (`coolify-db`).
- [ ] Workspace e config do OpenClaw persistentes (`/root/openclaw`, `/root/.openclaw`).
- [ ] Backups com rotina e teste de restauracao.

## C) Seguranca

- [ ] Firewall ativo (minimo: `22`, `80`, `443`).
- [ ] Porta `3000` restrita (evitar exposicao administrativa aberta).
- [ ] Segredos vindos do Infisical (sem segredo versionado em repo).

## D) Observabilidade

- [ ] Uptime check externo para os 3 subdominios.
- [ ] Alertas de downtime configurados (email/WhatsApp/Slack).
- [ ] Revisao diaria de logs criticos (`coolify`, `n8n`, `openclaw`).

## E) Git e governanca

- [ ] OpenClaw operando em branch dedicada (`openclaw/*`).
- [ ] Commits padronizados e auditaveis.
- [ ] Vinculo com tarefa operacional para mudancas relevantes.
