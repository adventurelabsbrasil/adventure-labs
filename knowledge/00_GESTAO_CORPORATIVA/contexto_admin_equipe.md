# Contexto da Área Admin e Equipe — Adventure Labs

Documento de referência para o C-Suite e para a implementação do painel interno. Atualizado conforme decisões do Founder.

## Contatos da equipe

| E-mail | Nome | Função |
|--------|------|--------|
| contato@adventurelabs.com.br | Rodrigo Ribas | Admin geral / Founder |
| igor@adventurelabs.com.br | Igor Ribas | Designer gráfico |
| mateuslepocs@gmail.com | Mateus | Gestor de tráfego júnior (em fase de aprendizado) |

## Decisões do checklist (admin MVP)

### 1. Supabase e infra

- **Projeto Supabase já existe.** Ref/código: `ftctmseyrqhckutpfdeq`. Neste projeto há dados e apps do ecossistema **adventurelabs.com.br**.
- **Admin:** o painel interno deste repositório será hospedado no subdomínio **admin.adventurelabs.com.br**.
- **Regra de prefixo:** Todas as tabelas do admin devem usar o prefixo `adv_` para não conflitar com outras tabelas no mesmo Supabase.
- **Estado do schema:** para registrar schemas, tabelas, RLS e auth, rodar o script somente leitura `supabase/scripts/diagnostico_schema.sql` no SQL Editor e documentar o resultado (ex.: em `supabase/docs/estado_schema_*.md`).

### 2. Permissões

- **Rodrigo:** acesso total (role `admin` em `adv_profiles`).
- **Igor e Mateus:** role `tarefas` em `adv_profiles`; veem e editam apenas **projetos/boards** em que forem membros em `adv_project_members`. Antes de liberar o uso do Trello interno (tarefas por projeto) para Igor e Mateus: (1) definir e aplicar os seeds de `adv_profiles` e `adv_project_members`; (2) validar na UI que a visibilidade respeita essas regras.

### 3. Ferramentas da equipe

- **Relógio-ponto (registro de ponto):** URL **adventurelabs.com.br/relogio-ponto**. Igor e Mateus podem começar a usar a partir de 04/03/2026. Uso oficial para registro de jornada e custo/hora por cliente (futura integração com gestão de tarefas).

### 4. Dados de clientes e projetos

- **Cliente:** Nome, CNPJ, Contato, Status.
- **Projeto:** além de nome, cliente, etapa, datas e responsável, deve existir **opção de link** (entregável: dashboard, PDF, Slides, etc.).

### 5. Kanban

- **Sub-status:** já pode ter sub-status (ex.: “Aguardando aprovação”, “Em revisão”).
- **Quadros:** **2 quadros separados** — Projetos internos e Projetos de clientes (como no blueprint).

### 6. Integrações (fora do MVP)

- **Omie:** fase 2.
- **Meta/Google Ads:** fase 2.

### 7. CRM (integrado ao Admin)

- **Implementado em 18/03/2026:** CRM mínimo viável dentro do Admin, em **Gestão e Tática → CRM** (`/dashboard/crm`). Schema no Supabase da Adventure com prefixo `adv_crm_*`; auth igual ao restante do Admin (sem `crm_users`).
- **Acesso:** C-Suite e equipe com acesso ao Admin (allowlist) acessam o CRM pelo mesmo login. Rotas: hub, leads/funil, contatos, empresas, projetos/produtos, importar do WhatsApp (Zazu).
- **Detalhes e produto futuro:** [01_COMERCIAL/crm-admin-integrado-whatsapp.md](../../01_COMERCIAL/crm-admin-integrado-whatsapp.md).
- **Backlog (roadmap):** transcrição de áudios (ex.: WhatsApp) para registro no CRM — ver [06_CONHECIMENTO/backlog-crm-transcricao.md](../../06_CONHECIMENTO/backlog-crm-transcricao.md).
