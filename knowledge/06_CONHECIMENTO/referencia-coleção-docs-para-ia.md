---
title: Referência — Coleção de documentação para IA (C-Suite)
domain: conhecimento
tags: [csuite, documentação, contexto, squad, estado-atual, roadmap]
updated: 2026-03-20
---

# Referência — Coleção de documentação para IA

Documento de referência para o **C-Suite** e para quem contribui com o squad: existe um compilado único da documentação da empresa pensado para uso com IA.

## Onde está

- **Caminho no monorepo:** `docs/COLEÇÃO_DOCS_PARA_IA.md` (raiz do repositório 01_ADVENTURE_LABS).
- **Conteúdo:** Reúne README e, quando relevante, PLANO/roadmap de **apps, sites, workflows, tools, skills e agentes**, separados em **implementado** e **pendente/futuro**.
- **Complemento (mapa de links):** [manual-agentes-e-skills.md](manual-agentes-e-skills.md) — índice de onde estão AGENTS.md, arquitetura agêntica, catálogo de skills, templates e personas C-Level (não substitui o compilado; orienta navegação).

## Para que serve

O arquivo mostra **em que ponto estamos e onde queremos chegar** em tudo que é relacionado à empresa. Foi pensado para ser copiado e colado em um chat com IA (ou ferramenta) para que ela tenha visão do estado atual e das metas ao ajudar em uma questão.

## Quando o C-Suite pode usar

- Ao contribuir com o squad: se a análise ou a decisão se beneficiar de uma visão consolidada do que está implementado e do que está planejado (por app, site, workflow, tool, skill, agente), **saber que este compilado existe** permite sugerir ao Founder ou à equipe que o consultem ou o anexem ao contexto.
- Para evitar duplicar esforço: o compilado já agrega a documentação principal por projeto; o C-Suite pode referenciá-lo em vez de pedir “todos os READMEs” de forma dispersa.
- Para alinhar prioridades: a Parte 2 (Pendente / Futuro) explicita planejamentos e roadmaps; útil para triagem e backlog.

## Como é mantido

- **Regenerar:** `./scripts/gerar-coleção-docs-para-ia.sh` (na raiz do 01_ADVENTURE_LABS). A lista de fontes (README e PLANO por projeto) está no script; ao adicionar novos projetos ou docs relevantes, atualizar o script e rodar de novo.

## Resumo

| Item | Valor |
|------|--------|
| Arquivo | `docs/COLEÇÃO_DOCS_PARA_IA.md` |
| Conteúdo | README + PLANO/roadmap por projeto (implementado + pendente/futuro) |
| Uso | Exportar para IA ou ferramenta para explicar estado atual e metas |
| C-Suite | Conhecer a existência deste compilado ao contribuir com o squad |
