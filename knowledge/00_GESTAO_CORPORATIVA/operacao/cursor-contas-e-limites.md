---
title: Controle de Contas Cursor AI
domain: gestao_corporativa
tags: [cursor, contas, limites, operacao]
updated: 2026-03-23
---

# Controle de Contas Cursor AI

## Objetivo
Registrar ciclos e consumo das contas Cursor AI para alternar de forma preventiva antes do esgotamento.

## Contas ativas

### Conta: Lidera Soluções
- Renovação do ciclo: dia **18** de cada mês
- Uso atual: **0% Auto** e **0% API**
- Plano atual: **Pro** (contratado)

### Conta: Adventure Labs
- Renovação do ciclo: dia **10** de cada mês
- Uso atual: **100% Auto** e **98% API**
- Plano atual: **Pro** (contratado)

## Plano atual contratado (referência)

Ambas as contas (`Lidera Soluções` e `Adventure Labs`) estão no plano **Pro**.

### Hobby (Free)
- Sem necessidade de cartão de crédito
- Limite de Agent requests
- Limite de Tab completions

### Pro (US$ 20/mês)
- Tudo do plano Hobby
- Limites estendidos de Agent
- Acesso a modelos de ponta (frontier models)
- MCPs, skills e hooks

## Regra operacional de troca
- Se a conta em uso atingir **>= 90%** em Auto ou API, priorizar imediatamente a outra conta.
- Se a conta em uso atingir **100%** em qualquer métrica, interromper uso nela e operar apenas na conta alternativa até a renovação.
- Revisar este arquivo sempre que consultar consumo no Cursor e atualizar os percentuais.

## Checklist rápido (manual)
- Verificar consumo das duas contas.
- Confirmar qual ciclo renova primeiro.
- Definir conta principal da semana com maior folga de consumo.
