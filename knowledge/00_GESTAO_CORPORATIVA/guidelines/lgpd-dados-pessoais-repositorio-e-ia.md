---
title: LGPD — dados pessoais, repositório e uso em IA
domain: gestao_corporativa
tags: [lgpd, privacidade, rag, repositorio]
updated: 2026-03-21
---

# LGPD — dados pessoais, repositório e uso em IA

Documento **canônico curto** de princípios Adventure Labs. **Não** substitui assessoria jurídica nem políticas formais de privacidade publicadas ao mercado.

## 1. Minimização no Git

- **Não versionar:** CPF, e-mails pessoais em massa, conteúdo de formulários com dados de titulares, transcrições com identificação, extratos.
- **Permitido:** referências de processo, pseudónimos, IDs internos **sem** reidentificação no próprio ficheiro, runbooks sem exemplos reais.

## 2. RAG, embeddings e contexto para LLM

- Não indexar para RAG material com PII sem base legal e controlo de acesso alinhados ao produto (RLS, escopo de workspace).
- Revisar exports de `knowledge/` para IA (ex. coleções) antes de incluir conteúdo novo sensível.

## 3. Pedidos de titulares e bases legais

- Encaminhar para **processo interno / DPO** designado; **não** copiar dados do titular em issues ou Markdown público do repo.

## 4. Retenção

- Dados operacionais em **Supabase/Drive** seguem política do produto e do cliente; o repositório Git não é arquivo de dados pessoais.

## 5. Relação com outras regras

- [`.cursor/rules/security-sensitives.mdc`](../../../.cursor/rules/security-sensitives.mdc)  
- [`AGENTS.md`](../../../AGENTS.md) (sigilo)  
- [`os-registry/INDEX.md`](../../06_CONHECIMENTO/os-registry/INDEX.md) §12

---

*Atualizar este ficheiro quando a empresa publicar política formal; manter o registry a apontar para a versão vigente.*
