---
title: Aditivo ao plano — Wiki do Manual Adventure Labs
domain: gestao_corporativa
tags: [manual, wiki, admin, onboarding]
updated: 2026-03-16
---

# Aditivo ao plano: Wiki do Manual no Admin

Este documento complementa o plano do **Manual de Conhecimento Adventure Labs** com a entrega da **Wiki** no frontend do Admin.

## Objetivo da Wiki

- O usuário do **/admin** vê o manual em uma **página bonita**, estilo Notion ou documentação de API (markdown bem renderizado).
- O manual é a **fonte única** de verdade; depois poderá ganhar **hiperlinks para outros documentos**.
- Uso: **onboarding de novos funcionários e de novos agentes IA**; consulta sobre a Adventure Labs.

## Escopo técnico

| Item | Descrição |
|------|-----------|
| **Rota** | Nova página no Admin: `/dashboard/manual` (ou `/dashboard/wiki`) |
| **Conteúdo** | Exibir `MANUAL_ADVENTURE_LABS.md` (em `knowledge/00_GESTAO_CORPORATIVA/`), sincronizado para `public/context-docs/` ou servido por path fixo |
| **Layout** | Estilo Notion / doc de API: tipografia clara, hierarquia de títulos, tabelas e listas bem formatadas. Opcional: sidebar com TOC (índice) a partir de `##` e `###` |
| **Links** | Links internos (âncoras), links para `/dashboard/*` (Next.js `Link`), links externos `target="_blank"`. Futuro: hiperlinks para outros documentos |
| **Público** | Usuários autenticados do Admin (rota já sob `/dashboard/*`) |

## Implementação sugerida

1. **Nova rota:** `apps/admin/src/app/dashboard/manual/page.tsx` (ou `wiki/page.tsx`).
2. **Carregar conteúdo:** fetch de `/context-docs/00_GESTAO_CORPORATIVA/MANUAL_ADVENTURE_LABS.md` ou leitura estática no build.
3. **Renderizar:** `react-markdown` (já usado em `docs-context/page.tsx`), com componentes para links internos, links para dashboard e externos.
4. **Menu:** em `apps/admin/src/app/dashboard/nav-config.ts`, no grupo "Conhecimento & Admin", adicionar item **"Manual"** (ou "Wiki") com ícone `BookOpen` ou `BookMarked`, href `/dashboard/manual`.
5. **Sync:** garantir que o manual entre no `sync-context-docs.mjs` (se `context` for symlink para `knowledge`, o arquivo em `00_GESTAO_CORPORATIVA/` já entra).

## Entregáveis (atualizados)

- `MANUAL_ADVENTURE_LABS.md` em `knowledge/00_GESTAO_CORPORATIVA/`.
- **Wiki no Admin:** página `/dashboard/manual` com layout doc/Notion, exibindo o manual; item "Manual" no menu.

## Resumo

- **Manual** = fonte única em Markdown no repositório.
- **Wiki** = frontend no Admin para leitura agradável e onboarding (humanos e agentes IA).
- **Depois:** hiperlinks do manual para outros documentos/páginas.
