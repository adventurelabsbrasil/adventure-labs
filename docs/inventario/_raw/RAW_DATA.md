Referência de versão:
- v2: `docs/inventario/_raw/RAW_DATA_v2.md`

---

## RAW: Estrutura de diretórios
status: parcial
fonte: comando `python3 os.walk` no root (excluindo `node_modules`, `.git`, `.next`, `dist`)
executado: 2026-03-25

- Árvore coletada até profundidade 4.
- Total exibido no terminal: truncado por limite de saída.
- Principais raízes detectadas:
  - `.cursor`
  - `.github`
  - `_internal`
  - `agent-tools`
  - `apps`
  - `clients`
  - `docs`
  - `knowledge`
  - `openclaw`
  - `packages`
  - `scripts`
  - `supabase`
  - `tools`
  - `wiki`
  - `workflows`

itens_pendentes:
- Reexecutar export da árvore para arquivo dedicado para evitar truncamento do terminal.

---
## RAW: Apps e packages
status: parcial
fonte: leitura automatizada de `apps/**/package.json`, `packages/**/package.json`, `tsconfig.json` e configs raiz
executado: 2026-03-25

- Workspaces detectados com `package.json` (filtro sem caches/build): 39
- Exemplos extraídos:
  - `apps/core/admin`
    - name: `adventure-labs-admin`
    - version: `0.1.0`
    - scripts: `dev`, `build`, `start`, `lint`, `import:projects`, `sync:context`, `test:andon`, `test:andon:post`, `ads:rose:cpc-bump`, `zazu:insights`
    - dependencies (amostra): `next`, `react`, `@supabase/supabase-js`, `googleapis`, `google-ads-api`
    - tsconfig paths: `@/* -> ./src/*`
    - configs: `.env.example`, `next.config.js`, `postcss.config.js`, `tailwind.config.ts`
  - `apps/labs/xpostr`
    - name: `adventure-labs-xpostr`
    - version: `0.1.0`
    - scripts: `dev`, `build`, `start`, `lint`, `cycle:once`
    - dependencies (amostra): `next`, `openai`, `@anthropic-ai/sdk`, `@google/generative-ai`, `twitter-api-v2`
    - tsconfig paths: `@/* -> ./src/*`
    - configs: `.env.example`, `next.config.mjs`, `postcss.config.mjs`, `tailwind.config.ts`
  - `apps/clientes/05_benditta/benditta/app`
    - name: `@cliente/benditta-app`
    - version: `0.1.0`
    - scripts: `dev`, `build`, `start`, `lint`
    - dependencies (amostra): `next`, `react`, `@adventure-labs/benditta-meta-dashboard`
    - tsconfig paths: `@/* -> ./src/*`
    - configs: `next.config.js`, `postcss.config.js`, `tailwind.config.ts`
  - `packages/ui`
    - name: `@adventure-labs/ui`
    - version: `0.0.1`
  - `packages/db`
    - name: `@adventure-labs/db`
    - version: `0.0.1`
  - `packages/config`
    - name: `@adventure-labs/config`
    - version: `0.0.1`

itens_pendentes:
- Export completo dos 39 workspaces (campos integrais) não coube no limite de saída do terminal.
- `apps/core/adventure/tsconfig.json` teve erro de parse automático (JSON inválido para parser estrito).

---
## RAW: Rotas HTTP
status: não encontrado
fonte: busca em `apps/**` via padrões `router.(get|post|put|delete|patch)` e `app.route|createRoute|@Route|@Get|@Post` em `*.ts`
executado: 2026-03-25

- Nenhuma ocorrência encontrada para os padrões exatamente solicitados.

itens_pendentes:
- Ampliar para `*.tsx` e `*.js` se necessário.
- Adicionar busca por padrão Next App Router (`export async function GET/POST`) [INFERIDO].

---
## RAW: Variáveis de ambiente
status: completo
fonte: busca regex `^[A-Z][A-Z0-9_]*=` em `*.env.example`
executado: 2026-03-25

- Arquivos com variáveis encontrados: 17
- Nomes de variáveis detectados (união):
  - `ADMIN_ALLOWED_EMAILS`
  - `ANTHROPIC_API_KEY`
  - `ANTHROPIC_MODEL`
  - `ASANA_OAUTH_CLIENT_ID`
  - `ASANA_OAUTH_CLIENT_SECRET`
  - `CANVA_ACCESS_TOKEN`
  - `CLERK_SECRET_KEY`
  - `CRON_SECRET`
  - `GEMINI_API_KEY`
  - `GEMINI_MODEL`
  - `GOOGLE_ADS_CLIENT_ID`
  - `GOOGLE_ADS_CLIENT_SECRET`
  - `GOOGLE_ADS_CUSTOMER_ID`
  - `GOOGLE_ADS_DEVELOPER_TOKEN`
  - `GOOGLE_ADS_REFRESH_TOKEN`
  - `GOOGLE_CHAT_WEBHOOK_URL`
  - `GOOGLE_CLIENT_ID`
  - `GOOGLE_CLIENT_SECRET`
  - `GOOGLE_CREDENTIALS_PATH`
  - `GOOGLE_DRIVE_FOLDER_ID`
  - `GOOGLE_REFRESH_TOKEN`
  - `GOOGLE_SHEETS_ID`
  - `GOOGLE_TOKEN_PATH`
  - `META_APP_ID`
  - `META_APP_SECRET`
  - `META_BM_SYSTEM_USER_TOKEN`
  - `N8N_API_TOKEN`
  - `N8N_API_URL`
  - `NEXT_PUBLIC_APP_URL`
  - `NEXT_PUBLIC_CLERK_AFTER_SIGN_IN_URL`
  - `NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY`
  - `NEXT_PUBLIC_CLERK_SIGN_IN_URL`
  - `NEXT_PUBLIC_SUPABASE_ANON_KEY`
  - `NEXT_PUBLIC_SUPABASE_URL`
  - `OMIE_APP_KEY`
  - `OMIE_APP_SECRET`
  - `OPENAI_API_KEY`
  - `OPENAI_MODEL`
  - `POLL_INTERVAL_MINUTES`
  - `PORT`
  - `SUPABASE_SERVICE_ROLE_KEY`
  - `TARGET_DOMAIN`
  - `TARGET_EMAIL`
  - `VITE_LINKEDIN_PARTNER_ID`
  - `VITE_SUPABASE_ANON_KEY`
  - `VITE_SUPABASE_URL`
  - `WEEKLY_REPORT_DAY`
  - `WEEKLY_REPORT_HOUR`
  - `WHATSAPP_GROUP_NAMES`
  - `WIX_API_KEY`
  - `WIX_SITE_ID`
  - `XPOSTR_ALLOWED_EMAILS`
  - `X_ACCESS_SECRET`
  - `X_ACCESS_TOKEN`
  - `X_API_KEY`
  - `X_API_SECRET`

itens_pendentes:
- Coleta de `.env.*` adicionais foi limitada para reduzir risco de leitura de valores reais.

---
## RAW: Tabelas e schemas Supabase
status: parcial
fonte: `docs/SUPABASE_INVENTARIO_TABELAS.md`, lista `**/supabase/migrations/*.sql`, busca `CREATE TABLE|ALTER TABLE|CREATE POLICY`
executado: 2026-03-25

- `docs/SUPABASE_INVENTARIO_TABELAS.md`: encontrado.
- Arquivos de migration detectados: 170.
- Ocorrências detectadas (amostra):
  - `supabase/migrations/20260324140000_sdr_wizard_leads.sql`
    - `CREATE TABLE public.sdr_wizard_leads`
    - `ALTER TABLE ... ENABLE ROW LEVEL SECURITY`
    - `CREATE POLICY sdr_wizard_leads_select|insert|update|delete`
  - `supabase/migrations/20260324194033_conversion_forms_martech_icp_rls.sql`
    - `ALTER TABLE public.conversion_forms`
    - `CREATE POLICY conversion_forms_anon_insert`
    - `CREATE POLICY conversion_forms_authenticated_select`
  - `supabase/migrations/20260325120310_conversion_forms_payload_compat.sql`
    - `ALTER TABLE public.conversion_forms`
  - `apps/clientes/04_young/young-talents/supabase/migrations/028_ats_staff_select_and_no_auto_user_role.sql`
    - múltiplos `CREATE POLICY` para tabelas ATS.

itens_pendentes:
- Extração 100% linha-a-linha de todas as 170 migrations excede limite de saída atual.
- Há SQL de backup (`*_schema.sql`) misturado ao escopo de migrations e precisa separação [INFERIDO].

---
## RAW: Agentes, skills e tools
status: parcial
fonte: glob `**/agents/**`, `**/skills/**`, `**/tools/**`
executado: 2026-03-25

- `agents` (amostra):
  - `.cursor/agents/reconhecimento-monorepo.md` — tipo: subagente Cursor
  - `apps/labs/xpostr/src/lib/agents/grove.ts` — tipo: agente app (TS)
  - `apps/labs/xpostr/src/lib/agents/ogilvy.ts` — tipo: agente app (TS)
  - `apps/labs/xpostr/src/lib/agents/zazu.ts` — tipo: agente app (TS)
- `skills`:
  - forte presença em `apps/clientes/01_lidera/lidera/skills/**` (app “skills” de cliente).
- `tools`:
  - total detectado por glob: 513 caminhos sob `tools/**` (incluindo material de execução/caches em `tools/whatsapp-web/.wwebjs_auth/**`).

itens_pendentes:
- Classificação de tipo inferido arquivo-a-arquivo para os 513 itens de `tools/**` não foi finalizada automaticamente.

---
## RAW: Workflows e automações
status: parcial
fonte: glob `**/*.workflow.*`, `**/*.n8n.*`, `.github/workflows/**`, `workflows/n8n/**/*.json`
executado: 2026-03-25

- `*.workflow.*`: não encontrado.
- `*.n8n.*`: não encontrado por sufixo.
- GitHub Actions detectados: 6 arquivos.
  - `apps/clientes/04_young/ranking-vendas/.github/workflows/deploy.yml`
  - `apps/clientes/04_young/ranking-vendas.bak/.github/workflows/deploy.yml`
  - `apps/clientes/04_young/young-talents/.github/workflows/backup.yml`
  - `apps/clientes/04_young/young-talents-/plataforma/.github/workflows/backup.yml`
  - `tools/railway-openclaw/clawdbot-railway-template/.github/workflows/bump-openclaw-ref.yml`
  - `tools/railway-openclaw/clawdbot-railway-template/.github/workflows/docker-build.yml`
- Workflows n8n (JSON) detectados em `workflows/n8n/**`: 39 arquivos.

itens_pendentes:
- Padronizar convenção de naming para n8n (`*.n8n.*`) ou manter `*.json` [INFERIDO].

---
## RAW: MCPs e CLIs
status: completo
fonte: busca `mcp|MCP` em `*.json`/`*.ts`, leitura de `.cursor/mcp.json`
executado: 2026-03-25

- Arquivo de configuração MCP detectado:
  - `.cursor/mcp.json`
    - server `Railway` via `npx @railway/mcp-server`
    - server `asana` via script `tools/scripts/mcp-asana-bridge.sh`
    - `envFile`: `.cursor/asana-mcp.env`
- Referências de `mcp/MCP` também em múltiplos JSON de workflows n8n e arquivos de arquivo histórico.

itens_pendentes:
- Separar referência “texto/metadata” de uso real de MCP em runtime [INFERIDO].

---
## RAW: Integrações terceiras
status: não encontrado
fonte: busca por `WORKOS|STRIPE|RESEND|SENDGRID|TWILIO|SENTRY|POSTHOG|SEGMENT|MIXPANEL|AMPLITUDE|SLACK|DISCORD|NOTION|AIRTABLE` em `*.env.example` e `*.ts`
executado: 2026-03-25

- Nenhum match encontrado com os padrões e extensões aplicadas.

itens_pendentes:
- Expandir para `*.js`, `*.tsx`, `*.md` e outras variantes de env para maior cobertura [INFERIDO].

---
## RAW: Arquivos de mídia e assets
status: parcial
fonte: glob por extensões `csv|mp4|mp3|jpeg|jpg|png|pdf`
executado: 2026-03-25

- Contagem por extensão:
  - `csv`: 39
  - `mp4`: 0
  - `mp3`: 0
  - `jpeg`: 2
  - `jpg`: 8
  - `png`: 35
  - `pdf`: 29
- Total agregado identificado: 113 arquivos.

itens_pendentes:
- Consolidar lista completa em bloco único sem limites de paginação.

---
## RAW: Scripts registrados
status: parcial
fonte: leitura automatizada de todos os `package.json` encontrados no repositório
executado: 2026-03-25

- Scripts extraídos de múltiplos escopos:
  - raiz (`package.json`) com comandos operacionais (`admin:dev`, `xpostr:dev`, `secrets:push:infisical`, etc.)
  - apps core/clientes/labs
  - tools
  - arquivos em `_internal/archive/**` também foram detectados
- Exemplos de chaves de script frequentes:
  - `dev`, `build`, `start`, `lint`, `preview`, `test`
  - scripts de migração/supabase em `apps/core/adventure`
  - scripts de automação de Asana e n8n em `tools/*`

itens_pendentes:
- Separar scripts “ativos” vs “arquivados” (`_internal/archive/**`) para inventário canônico [INFERIDO].

---
## RAW: Domínios e subdomínios
status: parcial
fonte: busca por `domain|hostname|baseUrl|NEXT_PUBLIC_URL|VITE_URL` em `*.env.example` e `*.ts`
executado: 2026-03-25

- Match em env:
  - `tools/dbgr/.env.example`
- Matches em código (amostra):
  - `tools/dbgr/src/config/domain.ts`
  - `tools/dbgr/src/adapters/dns.ts`
  - `tools/dbgr/src/adapters/vercel.ts`
  - `tools/dbgr/src/debug.ts`
  - `tools/dbgr/src/index.ts`
  - `apps/clientes/02_rose/roseportaladvocacia/lib/supabase/server.ts`
  - `apps/clientes/01_lidera/lidera-space/utils/supabase/middleware.ts`
  - `apps/clientes/01_lidera/lidera/space/utils/supabase/middleware.ts`

itens_pendentes:
- Extração de valores concretos de domínio não foi realizada nesta varredura (somente arquivos com ocorrência).

---
## SUMÁRIO (contagem por seção)

- Estrutura de diretórios: 1 varredura (resultado parcial; saída truncada)
- Apps e packages: 39 workspaces detectados (parcial)
- Rotas HTTP: 0 matches nos padrões solicitados (não encontrado)
- Variáveis de ambiente: 17 arquivos `.env.example`; 56 nomes únicos (completo)
- Supabase (migrations): 170 arquivos SQL; múltiplas ocorrências de DDL/RLS (parcial)
- Agentes/skills/tools: 4 paths de agents, 95 de skills, 513 de tools (parcial)
- Workflows/automações: 39 n8n JSON + 6 GitHub Actions (parcial)
- MCPs/CLIs: 1 config MCP principal (`.cursor/mcp.json`) + referências em workflows (completo)
- Integrações terceiras: 0 matches no recorte aplicado (não encontrado)
- Mídia/assets: 113 arquivos (parcial)
- Scripts registrados: dezenas de scripts em múltiplos `package.json` (parcial)
- Domínios/subdomínios: 1 env + 13 arquivos TS com match (parcial)
