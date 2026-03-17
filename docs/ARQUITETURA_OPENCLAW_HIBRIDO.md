# Arquitetura Híbrida — OpenClaw + Adventure Labs

> Versão inicial: 2026-03-17 — rascunho criado pelo Comando Estelar

Este documento descreve a arquitetura desejada para rodar o OpenClaw em modo **híbrido**:
- Local (MacBook do Rodrigo)
- Cloud (Railway)

Ao mesmo tempo, mantém:
- **Dados de negócio** em serviços gerenciados (Supabase + Google Drive)
- **Código e features novas** no monorepo + GitHub
- **Segurança**: o Railway não enxerga o filesystem local do Mac

---

## 1. Diagrama de alto nível (texto)

> Observação: o frontend (Admin e demais apps Next.js) e as variáveis de ambiente de aplicação ficam na **Vercel**. O Railway é usado para **serviços de background** (n8n, Zazu, futuro gateway OpenClaw cloud).

```text
                          ┌───────────────────────────┐
                          │      Google Drive         │
                          │  - Second Brain           │
                          │  - Atividades diárias     │
                          └────────────┬──────────────┘
                                       │ (gog)
                                       │
                 ┌─────────────────────▼─────────────────────┐
                 │                Supabase                   │
                 │  - adv_csuite_memory (memória C-Suite)   │
                 │  - adv_tasks, adv_ideias                 │
                 │  - outros dados operacionais             │
                 └────────────┬──────────────┬──────────────┘
                              │              │
                              │              │
                 (service role/API)         (service role/API)
                              │              │
                              │              │
         ┌────────────────────▼───┐      ┌───▼────────────────────┐
         │ OpenClaw LOCAL (Mac)   │      │ OpenClaw CLOUD (Railway│
         │                        │      │   serviço `openclaw`)  │
         │ - Acessa filesystem    │      │                        │
         │   local:               │      │ - 24/7 online          │
         │   /Users/.../          │      │ - Conectado a:         │
         │   01_ADVENTURE_LABS    │      │   • Supabase           │
         │ - Usa Cursor + tools   │      │   • Drive (gog)        │
         │ - Automação de código  │      │   • Zazu/n8n/WhatsApp  │
         └────────────┬───────────┘      └──────────┬─────────────┘
                      │                             │
                      │                             │
                      │   Mensagens (Telegram,      │  Webhooks / HTTP
                      │   WhatsApp → Zazu → n8n)    │
                      │                             │
                      ▼                             ▼
            ┌──────────────────┐           ┌───────────────────────┐
            │   Usuário        │           │  n8n (Railway)        │
            │  (Rodrigo)       │           │  - C-Suite Loop       │
            │  - Telegram      │           │  - Zazu Agent         │
            │  - WhatsApp      │           │  - Integrações        │
            └──────────────────┘           └──────────┬────────────┘
                                                      │
                                                      │ founder_reports / csuite
                                                      ▼
                                            ┌─────────────────────┐
                                            │   Admin (/admin)    │
                                            │ - Dashboard C-Suite │
                                            │ - Founder reports   │
                                            │ - Context docs      │
                                            └─────────────────────┘
```

Resumo do fluxo:
- **Local:** você cria código/skills/features no monorepo com ajuda do OpenClaw + Cursor.
- **Cloud:** o OpenClaw no Railway roda 24/7, lê grupos (via Zazu/n8n), Supabase, Drive e alimenta relatórios/memória.
- **Dados centrais:** Supabase + Drive; monorepo + GitHub são código/processo, não dados transacionais.

---

## 2. Princípios de design

1. **Dados de negócio centralizados**
   - Memória longa: `adv_csuite_memory` (Supabase)
   - Tasks/ideias: `adv_tasks`, `adv_ideias` (Supabase)
   - Textos longos/brainstorm: Google Docs (Second Brain, Atividades diárias)

2. **Código e automação local primeiro**
   - Desenvolvimento e novas features nascem no MacBook (Cursor + monorepo `01_ADVENTURE_LABS`).
   - Deploys sobem para GitHub, depois para Railway/Vercel/Supabase.

3. **OpenClaw em dois modos, mesma mente de dados**
   - Local: foco em dev, acesso ao filesystem, tarefas pontuais.
   - Cloud: foco em operação contínua (C-Suite, WhatsApp, relatórios diários).
   - Ambos usam **os mesmos backends de dados** (Supabase, Drive, Admin/n8n API).

4. **Segurança por camadas**
   - Railway **não** acessa o filesystem local.
   - Tudo que o Cloud “vê” vem por:
     - APIs (Supabase, Admin, n8n)
     - Drive (via `gog` e OAuth)
     - mensageria (WhatsApp/Telegram).
   - Secrets só nas plataformas que precisam deles (Railway, Supabase, Vercel, n8n).

---

## 3. Plano prático — passos macro

### Fase 1 — Consolidar dados centrais

1. **Revisar tabelas do Supabase**
   - Garantir que `adv_csuite_memory`, `adv_tasks`, `adv_ideias` estão criadas e com RLS coerente.
   - Confirmar que o n8n e o Admin já usam essas tabelas para C-Suite/relatórios.

2. **Padronizar metadados em `adv_csuite_memory`**
   - Convenção de `metadata` para tipos de memória:
     - `"type": "founder_csuite_daily"` — relatório diário consolidado (WhatsApp + Second Brain + tasks)
     - `"type": "csuite_decision"` — decisões do loop C-Suite n8n
     - `"type": "founder_log"` — entradas mais brutas do founder
   - Campos extras sugeridos:
     - `"date": "YYYY-MM-DD"` — dia de referência
     - `"source": [ ... ]` — origens (Drive, grupos WhatsApp, etc.)
     - `"clients": ["Benditta", "Rose", "Young"]` quando aplicável.

3. **Second Brain como fonte mestre de texto longo**
   - Manter documentos-chave:
     - `Second Brain` (visão geral do founder)
     - `Atividades diárias` (log por dia)
   - OpenClaw (local ou cloud) lê via `gog docs cat <id>` e condensa o que for relevante em `adv_csuite_memory`.

---

### Fase 2 — OpenClaw Cloud estável no Railway

> Nota: o repo `adventurelabsbrasil/openclaw` atual é uma landing estática (sem `package.json`). Para rodar o gateway, será preciso um repo/projeto próprio para o daemon.

1. **Criar um projeto mínimo para o gateway**
   - Novo repo GitHub (nome sugerido): `adventurelabsbrasil/openclaw-gateway-runner`.
   - Conteúdo mínimo:
     - `package.json` com:
       - dependência de `openclaw` (CLI) ou código do gateway
       - scripts:
         ```json
         {
           "scripts": {
             "start": "openclaw gateway start"
           }
         }
         ```
       - (ajustar conforme a forma recomendada de iniciar o gateway no seu setup atual)
     - `README.md` com instrução de rodar localmente e no Railway.
   - Opcional: `Dockerfile` se preferir imagem própria em vez de Nixpacks.

2. **Configurar serviço `openclaw` no Railway**
   - No projeto **OpenClaw** no Railway:
     - Serviço: `openclaw` → apontar para o repo `openclaw-gateway-runner` e branch desejada.
     - Build: padrão Node (ou Dockerfile se existir).
     - Start command: `npm start` (que chama `openclaw gateway start`).
   - Configurar domínio customizado:
     - `https://openclaw.adventurelabs.com.br/` apontando para esse serviço.

3. **Variáveis de ambiente (Railway)**
   - Chaves de modelo (conforme stack do OpenClaw aqui):
     - `OPENAI_API_KEY` / `GEMINI_API_KEY` / etc.
   - Supabase:
     - `SUPABASE_URL`
     - `SUPABASE_SERVICE_ROLE_KEY` (apenas no Railway/n8n; não expor anon).
   - Integrações:
     - Telegram / WhatsApp gateway, conforme necessário.
   - Config específica do OpenClaw:
     - endereço do gateway (`gateway.bind`, `gateway.remote.url`, etc., conforme docs do OpenClaw oficial).

4. **Testes básicos**
   - Health check do gateway:
     - `GET https://openclaw.adventurelabs.com.br/…` (endpoint de health/status conforme repo do gateway).
   - Conectar um cliente (openclaw-tui, control UI) usando essa URL.

---

### Fase 3 — Integração com Zazu / n8n / Admin

1. **Zazu (WhatsApp worker) já operacional**
   - Serviço no Railway: `adv-zazu-whatsapp-worker`.
   - URL: `https://adv-zazu-whatsapp-worker-production.up.railway.app/`.
   - Health atual: `ready: true`, `hasGroupFilter: true`.
   - Grupos filtrados:
     - `Adventure Young`
     - `Adventure Benditta`
     - `Adventure Rose`
     - `Adventure Tráfego Pago`
   - Opcional: incluir `Jebedeg`, `ROI Hunters` em `WHATSAPP_GROUP_NAMES`.

2. **Workflow Zazu → Founder Reports (n8n)**
   - Workflow n8n lê `GET /daily-messages?date=YYYY-MM-DD` do Zazu.
   - Consolida em um texto de relatório e envia para o Admin via `POST /api/csuite/founder-report`.
   - Hoje, isso preenche uma tabela de founder reports (e pode/será integrado com `adv_csuite_memory`).

3. **C-Suite Autonomous Loop (n8n)**
   - Já documentado em:
     - `apps/admin/docs/csuite-n8n-setup-guide.md`
     - `apps/admin/docs/n8n-csuite-workflow-documentacao.md`
   - Usa:
     - `adv_tasks`, `adv_ideias`, `adv_csuite_memory`
     - Context docs do Admin (`/api/csuite/context-docs`).

4. **Ponto de convergência**
   - Relatório diário consolidado (founder + C-Suite) deve ser gravado em `adv_csuite_memory` com:
     - `metadata.type = "founder_csuite_daily"`
     - `metadata.date = "YYYY-MM-DD"`
     - `metadata.source` incluindo:
       - Zazu/WhatsApp
       - Second Brain
       - tasks/ideias
   - O Admin `/admin` passa a ler diretamente dessa tabela para a página de C-Suite.

---

### Fase 4 — Fluxo híbrido LOCAL + CLOUD

1. **Uso local do OpenClaw**
   - No MacBook:
     - OpenClaw é configurado com as mesmas credenciais de Supabase/Drive que o cloud (quando fizer sentido).
     - Usa `read/write` na pasta do monorepo para automações de código, geração de docs, etc.
   - Todo dado estrutural importante que surgir aqui é empurrado para:
     - Supabase (`adv_csuite_memory`, `adv_tasks`, etc.)
     - ou Drive (Second Brain) + depois condensado pelo próprio agente.

2. **Uso cloud do OpenClaw**
   - No Railway:
     - Foco em:
       - ler grupos de clientes (via Zazu + n8n);
       - rodar loops de C-Suite;
       - produzir relatórios diários; 
       - ser o "núcleo de operações".
   - Não precisa (nem deve) ter acesso direto ao filesystem do Mac.

3. **Garantia de consistência**
   - Como ambos usam Supabase/Drive como fonte de verdade, não há divergência de dados — só de *capacidade* (local acessa arquivos, cloud não).
   - GitHub continua sendo a única fonte de verdade para código.

---

## 4. Próximos passos sugeridos (ação)

1. **Decisão sobre o repo do gateway**
   - Escolher entre:
     - (A) Criar repo novo `openclaw-gateway-runner` minimalista
     - (B) Reaproveitar algum repo existente com código do daemon (se houver)
   - Assim que o repo estiver definido, configurar o serviço `openclaw` no Railway para apontar pra ele.

2. **Definir contrato de metadados em `adv_csuite_memory`**
   - Formalizar os valores possíveis de `metadata.type` e campos obrigatórios (`date`, `source`, etc.).

3. **Unificar relatórios diários**
   - Ajustar o workflow Zazu + Admin/n8n para que todo relatório diário consolidado vá para `adv_csuite_memory` com `type = "founder_csuite_daily"`.

4. **Configurar OpenClaw cloud para usar Supabase/Drive**
   - Adicionar as env vars necessárias no Railway.
   - Testar leitura/gravação de memória a partir do serviço `openclaw`.

5. **Iterar sobre automações locais**
   - Usar OpenClaw local + Cursor para:
     - automatizar partes do monorepo;
     - gerar/atualizar docs (incluindo este).

---

Este documento é um rascunho inicial. À medida que você for tomando decisões (por exemplo, sobre o repo do gateway e o esquema final de metadados), podemos atualizar este arquivo para refletir a arquitetura "oficial" da Adventure Labs + OpenClaw.
