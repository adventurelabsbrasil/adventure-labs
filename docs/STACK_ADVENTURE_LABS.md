# 🚀 STACK ADVENTURE LABS — Glossário/Wiki
*Documentação viva da infraestrutura, ferramentas e protocolos do Comando Estelar.*
**Atualizado em:** 2026-04-08 | **Orquestrador:** Buzz (Hive Mind OS)

---

## 📚 1. Categorias da Stack
### 1.1 **Core (Infraestrutura)**
| Ferramenta          | Versão               | Propósito                                  | Status       | Responsável  |
|---------------------|----------------------|--------------------------------------------|--------------|--------------|
| **VPS (Hostinger)** | Ubuntu 22.04 LTS     | Host principal                             | ✅ UP        | Torvalds     |
| **Docker**          | 24.0.7               | Orquestração de containers                  | ✅ UP        | Torvalds     |
| **Nginx**           | -                    | Reverse proxy + SSL termination            | ❌ Pendente  | Torvalds     |
| **Certbot**         | -                    | Certificados TLS/HTTPS                     | ❌ Pendente  | Torvalds     |


### 1.2 **Automação & Workflows**
| Ferramenta      | Versão   | Propósito                                      | Status               | Responsável      |
|-----------------|----------|------------------------------------------------|----------------------|------------------|
| **n8n**         | 1.22.6   | Automação de workflows                         | ✅ UP (5 workflows inativos) | Buzz/Ogilvy |
| **Evolution API** | 2.3.7    | WhatsApp Business API                          | ✅ UP (WA autenticado) | Buzz        |
| **Make.com**     | -        | Integrações legadas (Young)                    | ✅ UP        | Igor         |


### 1.3 **Dados & Analytics**
| Ferramenta   | Versão       | Propósito                                      | Status               | Responsável  |
|--------------|------------|------------------------------------------------|----------------------|--------------|
| **Supabase** | PostgreSQL 15 | Banco de dados + Auth                         | ✅ UP        | Torvalds     |
| **Metabase** | v0.48.3    | BI & Dashboards                                | ✅ UP (sem conexão)  | Buffett      |
| **Infisical** | 1.5.0      | Gestão de segredos                             | ✅ UP        | Torvalds     |


### 1.4 **AI & Agentes**
| Ferramenta      | Versão       | Propósito                                      | Status       | Responsável  |
|-----------------|------------|------------------------------------------------|--------------|--------------|
| **OpenClaw**    | 1.7.2      | Orquestrador de agentes                        | ✅ UP        | Buzz         |
| **Claude Code** | Sonnet 4.6 | Desenvolvimento                                | ✅ UP        | Torvalds     |
| **Manus**       | 1.5-Lite   | Agente autônomo                                | ⚠️ Configuração | Da Vinci    |


### 1.5 **Clientes & Projetos**
| Cliente               | Ferramentas                          | Status               | AM Responsável |
|-----------------------|--------------------------------------|----------------------|----------------|
| **Young Empreendimentos** | Pingolead, n8n, Make               | ⚠️ Leads pendentes   | Ogilvy         |
| **Benditta**          | Vercel, WhatsApp, Meta Ads          | ✅ LPs LIVE          | Cagan          |
| **Rose Advocacia**    | Google Ads, Metabase                | ❌ Campanha pausada  | Ogilvy         |


---

## 🔧 2. Protocolos & Padrões
### 2.1 **Git & Versionamento**
- **Repositório Principal:** `adventurelabsbrasil/adventure-labs` (GitHub)
- **Branches:**
  - `main`: Produção (protegida)
  - `claude/...`: Desenvolvimento (ex: `claude/zen-dhawan`)
- **Git Ignore:** Regra `_internal/` para dados sensíveis.


### 2.2 **Credenciais & Segurança**
- **Supabase:** Conexão via `supabaseApi` (REST), **não** Postgres direto (porta 6543 bloqueada).
- **n8n:** 6 credenciais ativas (Evolution, Supabase, Google Drive, Asana, Telegram, Gemini).
- **Infisical:** Segredos centralizados (chaves API, tokens).


### 2.3 **Workflows n8n**
| ID            | Nome                              | Status      | Propósito                                      |
|---------------|-----------------------------------|-------------|------------------------------------------------|
| 7c72a695      | Isca Roteirista de Vídeo          | ❌ Inativo  | Captação de leads para produção de vídeo       |
| 5f198f3d      | Sincronizador SSOT GDrive→Supabase | ❌ Inativo  | Sincronização de dados do Google Drive         |
| dc054a13      | Transcrição de Áudio WhatsApp→Asana | ❌ Inativo  | Transcrição de áudios do WhatsApp para Asana   |
| h0iqnZTYnPFwsjfh | C-Suite Autonomous Loop         | ❌ Inativo  | Loop autônomo do C-Suite                       |
| adventure-labs-csuite-loop-v1 | C-Suite Loop (DUPLICATA)       | ❌ Deletar | Workflow duplicado                             |


---

## 📜 3. Pendências Críticas
1. **TLS/HTTPS:** Configurar Certbot + Nginx para subdomínios (`flow`, `bi`, `vault`, `api-wa`, `status`).
2. **Workflows n8n:** Ativar workflows 01 e 03 (WA conectado).
3. **Metabase:** Conectar ao Supabase e criar dashboard ROI de Ads.
4. **Google Drive OAuth:** Autorizar credencial `QBnSyLAG17oEYc8c` no n8n.


---

## 🔄 4. Histórico de Mudanças
| Data       | Alteração                                      | Responsável   |
|------------|------------------------------------------------|---------------|
| 2026-04-08 | Criação do glossário `STACK_ADVENTURE_LABS.md` | Buzz          |
| 2026-04-07 | WhatsApp autenticado (Evolution v2.3.7)        | Buzz          |
| 2026-04-03 | `.env.example` expandido + 13 arquivos sensíveis expurgados | Claude Code |
| 2026-04-03 | Tabela `agent_context` criada no Supabase      | Claude Code   |


---

## 🛠️ 5. Como Contribuir
1. **Editar este arquivo:** Fazer PR para `main` ou branch `claude/...`.
2. **Adicionar ferramentas:** Seguir o template de tabela acima.
3. **Atualizar status:** Manter `Status` e `Responsável` sempre atualizados.

---
**Licença:** Confidencial — Adventure Labs © 2026