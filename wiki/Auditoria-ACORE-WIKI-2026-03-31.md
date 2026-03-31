## Auditoria A.C.O.R.E + WIKI (2026-03-31)

Objetivo: validar aderência do monorepo aos padrões Adventure Labs (topologia A.C.O.R.E., segurança/sigilo, organização documental e contexto compartilhado).

### Escopo revisado

- Estrutura raiz do monorepo (`apps/core`, `apps/labs`, `apps/clientes`, `packages`, `tools`, `docs`, `knowledge`, `wiki`).
- Regras de sigilo e higiene de versionamento (`.gitignore`, artefatos sensíveis, lixo operacional).
- Consistência de organização WIKI/knowledge para onboarding e contexto.

### Achados priorizados

#### P0 — crítico (corrigir imediatamente)

1) Dados sensíveis e conversas de cliente rastreados no Git  
- Evidência: `apps/clientes/01_lidera/wapp_conversations/*` e `apps/clientes/02_rose/wapp_conversations/*`
- Risco: exposição de dados de cliente, quebra de diretriz de sigilo.
- Ação recomendada:
  - Remover da trilha ativa e migrar para storage privado.
  - Reforçar bloqueio no `.gitignore` com padrão explícito para `wapp_conversations`.

#### P1 — alto impacto operacional

2) Backups/duplicados dentro do caminho ativo  
- Evidência: `apps/clientes/04_young/ranking-vendas.bak/`
- Risco: ruído, manutenção duplicada, risco de alterar base errada.
- Ação recomendada:
  - Migrar para `_internal/archive/` com nota de contexto.
  - Deixar apenas versão canônica no caminho ativo do cliente.

3) Arquivos com sufixo de cópia (" 2") versionados  
- Evidência: `apps/clientes/04_young/young-talents/README 2.md`, `apps/clientes/04_young/young-talents/package-lock 2.json`
- Risco: divergência entre fonte real e cópia.
- Ação recomendada:
  - Consolidar em arquivo canônico e arquivar/remover duplicatas.

4) `.DS_Store` rastreados
- Evidência: `workflows/n8n/.DS_Store` e outros em `knowledge/`.
- Risco: ruído de repositório e histórico sujo.
- Ação recomendada:
  - Remover arquivos rastreados e manter bloqueio global.

#### P2 — governança e padronização

5) Mistura de lockfiles no monorepo (`pnpm` + múltiplos `package-lock.json`)
- Risco: builds não determinísticos e drift de dependências.
- Ação recomendada:
  - Definir política por workspace (pnpm-only ou exceções documentadas).
  - Validar em CI.

6) Taxonomia documental: padrão declarado vs prática
- Observação: existem convenções de naming divergentes entre documentos e estrutura atual.
- Ação recomendada:
  - Registrar decisão oficial em ADR curta e aplicar migração gradual.

### O que está aderente

- Topologia principal do monorepo está estabelecida.
- Não foi identificado acoplamento direto óbvio de `apps/core/admin` importando código de `apps/clientes` na varredura rápida.
- `wiki/` está funcional como camada condensada e aponta para SSOT.

### Plano de saneamento (execução sugerida)

1. Sanitizar dados sensíveis rastreados no Git (P0).  
2. Limpar artefatos e backups em trilha ativa (P1).  
3. Formalizar política de lockfiles e validar via CI (P2).  
4. Consolidar decisão de taxonomia (P2) e refletir em `wiki` + `os-registry`.

### Atualizacao 2026-03-31 (P2.1)

- Politica de lockfiles formalizada em `docs/GOVERNANCA_LOCKFILES.md`.
- Gate de governanca atualizado com allowlist de `package-lock.json`.
- CI de governanca ativo em `.github/workflows/monorepo-governance.yml`.

### Status desta auditoria

- Auditoria registrada para contexto transversal (Founder, C-Suite, operação e engenharia).
- Próxima etapa: executar saneamento com PR dedicado de higiene e governança.
