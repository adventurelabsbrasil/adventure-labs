# Plano de Execução — OpenClaw Híbrido (Comando Estelar + Cursor)

> Versão inicial: 2026-03-17
>
> Este plano detalha **o que o Comando Estelar faz** e **o que o Cursor deve executar** para implementar a arquitetura híbrida descrita em `docs/ARQUITETURA_OPENCLAW_HIBRIDO.md`.

---

## Visão geral das fases

1. Consolidação de dados centrais (Supabase + Drive)
2. OpenClaw Cloud estável no Railway (gateway mínimo)
3. Integração com Zazu / n8n / Admin (relatório diário unificado)
4. Fluxo híbrido LOCAL + CLOUD (ajustes finos)

Para cada fase, há tarefas **para o Comando Estelar** (arquitetura, prompts, scripts) e tarefas **para o Cursor** (código nos apps, ajustes finos de infra).

---

## Fase 1 — Dados centrais (Supabase + Drive)

### 1.1 Metadados em `adv_csuite_memory`

**Comando Estelar**
- [ ] Propor contrato de `metadata` para `adv_csuite_memory` (tipos, campos obrigatórios) e documentar em `knowledge/00_GESTAO_CORPORATIVA/MANUAL_ADVENTURE_LABS.md` ou doc específico.
- [ ] Escrever SQL de exemplo para consultas comuns (por tipo, por cliente, por data) em um arquivo de referência, ex.: `docs/SQL_ADV_CSUITE_MEMORY_EXEMPLOS.sql`.

**Cursor**
- [ ] Verificar migrações Supabase existentes para `adv_csuite_memory` e ajustar, se necessário, para suportar campos de metadata propostos (apenas se houver divergência).
- [ ] Garantir que qualquer código n8n/Admin que grava nesta tabela preencha `metadata` conforme o contrato definido.

### 1.2 Second Brain (Drive)

**Comando Estelar**
- [ ] Mapear, a partir do `MEMORY.md` e do manual, os docs principais do Second Brain e padronizar nomes/ids em um quadro (já iniciado em `MEMORY.md`).
- [ ] Especificar como o conteúdo do Second Brain deve ser resumido para `adv_csuite_memory` (ex.: formato de resumo diário / semanal).

**Cursor**
- [ ] Se necessário, criar scripts/rotas no monorepo que ajudem a sincronizar/resumir docs do Drive (por enquanto, opcional; pode ser feito via `gog` + n8n sem código novo).

---

## Fase 2 — OpenClaw Cloud no Railway (gateway mínimo)

### 2.1 Repo mínimo do gateway

**Comando Estelar**
- [ ] Desenhar estrutura mínima de um repo `openclaw-gateway-runner` (ou nome similar), com:
  - `package.json` exemplar
  - scripts recomendados (`start` chamando `openclaw gateway start` ou equivalente)
  - README com orientações de deploy no Railway.

**Cursor**
- [ ] Criar o repo real (localmente) com base na estrutura proposta:
  - `package.json`
  - configuração do `openclaw` (CLI/binary ou código)
  - ajuste fino do script `start` / config.
- [ ] Testar rodar o gateway localmente (fora do monorepo Adventure Labs) usando esse repo mínimo.

### 2.2 Serviço `openclaw` no Railway

**Comando Estelar**
- [ ] Listar variáveis de ambiente necessárias para o gateway no Railway (modelos, Supabase, etc.) em formato check-list.

**Cursor / Humano**
- [ ] Configurar o serviço `openclaw` no Railway para apontar para o repo do gateway.
- [ ] Definir comandos de build/start conforme o `package.json` criado.
- [ ] Configurar domínio `https://openclaw.adventurelabs.com.br/` apontando para esse serviço.
- [ ] Injetar as env vars listadas.

---

## Fase 3 — Integração Zazu / n8n / Admin (relatório diário unificado)

### 3.1 Zazu + n8n já existentes

**Comando Estelar**
- [ ] Ler o workflow Zazu + docs `docs/SETUP_ZAZU_RAILWAY_E_N8N.md` e entender o formato atual do Founder Report.
- [ ] Definir modelo de relatório diário consolidado (`founder_csuite_daily`) que combine:
  - resumos dos grupos WhatsApp (Zazu)
  - itens do Second Brain
  - tasks/ideias de Supabase.

**Cursor**
- [ ] Ajustar workflow n8n (Zazu ou C-Suite) para gerar um único registro diário consolidado em `adv_csuite_memory` com:
  - `metadata.type = "founder_csuite_daily"`
  - `metadata.date = "YYYY-MM-DD"`
  - `metadata.source`, `metadata.clients` etc.
- [ ] Garantir que o Admin `/admin` leia esses registros para a página de C-Suite (se ainda não fizer).

### 3.2 Admin (/admin) consumindo `adv_csuite_memory`

**Comando Estelar**
- [ ] Especificar o layout desejado da página de C-Suite no Admin (seções, filtros por data/cliente/tipo).

**Cursor**
- [ ] Implementar no `apps/core/admin`:
  - API route ou hooks para buscar `adv_csuite_memory` com filtros;
  - página/section que lista relatórios diários (tipo `founder_csuite_daily`), com visual limpo.

---

## Fase 4 — Fluxo híbrido LOCAL + CLOUD

### 4.1 Uso local do OpenClaw

**Comando Estelar**
- [ ] Desenhar como o OpenClaw local deve escrever/ler dados em Supabase/Drive sem conflitar com o cloud (ex.: tipos de memória, tags).

**Cursor**
- [ ] Se necessário, criar pequenos scripts ou comandos no monorepo que ajudem a disparar ações do OpenClaw local (ex.: scripts npm para tarefas recorrentes).

### 4.2 Garantia de consistência

**Comando Estelar**
- [ ] Definir convenções de escrita (ex.: sempre usar `metadata.type` e `metadata.date`) para qualquer agente que grave memória.

**Cursor**
- [ ] Validar que todos os pontos de gravação em Supabase (n8n, Admin, futuros serviços) seguem essas convenções.

---

## Como o Cursor deve usar este plano

1. Abrir este arquivo: `docs/PLANO_EXECUCAO_OPENCLAW_HIBRIDO_CURSOR.md`.
2. Confirmar com o Founder quais fases/tarefas estão prioritárias.
3. Para cada tarefa marcada como **Cursor**:
   - localizar o código correspondente (apps/core/admin, workflows n8n, tools, etc.);
   - implementar seguindo as especificações do Comando Estelar;
   - atualizar este arquivo marcando o que foi concluído (se fizer sentido).

O Comando Estelar atualizará este plano conforme as decisões forem sendo tomadas (repo do gateway, formato final de metadata, etc.).
