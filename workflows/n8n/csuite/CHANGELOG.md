# Changelog - C-Suite Autonomous Loop

Todas as mudanças notáveis nos workflows C-Suite serão documentadas neste arquivo.

Formato baseado em [Keep a Changelog](https://keepachangelog.com/).

---

## [9.0.0] - 2026-03-07

### Fase 3: Otimizações de Performance

- **Retry:** `retryOnFail: true`, `maxTries: 3`, `waitBetweenTries: 2000` em todos os nós HTTP (COO, CMO, CPO, CEO Grove, Generate Embeddings)
- **CEO Flash:** CEO Grove Synthesis trocado de `gemini-2.5-pro` para `gemini-2.5-flash` (redução de custo)
- **Produção:** `production/csuite-loop-v9.json`

---

## [8.0.0] - 2026-03-07

### Fase 2: Otimizações de Qualidade

- **Validate Outputs1:** Novo nó entre CPO e Compile que valida outputs dos 5 C-Levels (CFO, CTO, COO, CMO, CPO)
- **Auditoria:** `validationAudit` incluído no output do Compile para rastreamento
- **Logging:** `console.warn` quando algum C-Level retorna output inválido
- **Produção:** `production/csuite-loop-v8.json`

---

## [7.0.0] - 2026-03-07

### Mudanças

- **Versionamento:** Estrutura `n8n_workflows/csuite/` criada no monorepo admin
- **Produção:** Fluxo V7 corrigido em `production/csuite-loop-v7.json`
- **Archive:** Versão anterior em `archive/n8n-csuite-autonomous-loop-v6-backup.json`
- **Build Context:** Tratamento da API `/api/csuite/context-docs` (retorno `{ text }`) com até 8000 chars
- **Build Context:** Suporte a `titulo` em ideias (adv_ideias)
- **pinData:** Removido do workflow de produção

### Bugs corrigidos (V7)

- Resumo vazio no GitHub
- Parse inconsistente de respostas Gemini
- Context Docs falhando silenciosamente
- Nó Parse CEO Decision com validação robusta
- getSafeOutput/getGeminiText com múltiplos fallbacks

---

## [6.0.0] - 2026-02-28

- Análise autônoma de 5 C-Levels
- Síntese pelo CEO (Andy Grove)
- Armazenamento em pgvector
- Agendamento 08:00 e 18:00
- GitHub Issues automáticas
