# Backlog e ideias — Admin Adventure Labs

Documento único de referência para ideias e prioridades do App Admin. Atualizar quando um item virar issue + tarefa no Admin ou quando for revisado em planejamento. Revisar este doc periodicamente (ex.: a cada 2–4 semanas).

Ref.: [roadmap-admin-crm.md](roadmap-admin-crm.md), [github-project-e-integracao.md](github-project-e-integracao.md), [contexto_admin_equipe.md](contexto_admin_equipe.md).

---

## Prioridade imediata (operacional e go-live)

| Item | Status | Observação |
|------|--------|------------|
| Go-live Admin (Vercel + domínio admin.adventurelabs.com.br) | Backlog | Bloqueador para uso real; já no roadmap |
| Trello interno (tarefas, projetos, assignee, drag-and-drop) | Em desenvolvimento | project_id, assignee, DnD em andamento; **definir roles** (Rodrigo = admin; Igor/Mateus = tarefas, só projetos em que forem membros) antes de liberar uso para a equipe |
| Triangulação Cursor → Issue GitHub → Tarefa no Admin | Em desenvolvimento | Campos github_issue em adv_tasks; fluxo criar tarefa com vínculo |

---

## Curto prazo (colaborador, registro, visibilidade)

| Item | Status | Observação |
|------|--------|------------|
| Ambiente do colaborador (visibilidade por nível) | Backlog | RLS e UI por perfil; não expor dados sensíveis a todos |
| Registro de ponto | Backlog | Replicar lógica de adventurelabsbrasil/adventure ou registro-ponto dentro do Admin |
| Tempo por tarefa/projeto | Backlog | adv_task_time_entries + UI "Logar tempo" + relatório |

---

## Médio prazo (CRM, Marketing, produtos)

| Item | Status | Observação |
|------|--------|------------|
| CRM e Marketing | Backlog | Migração/aprimoramento a partir de adventurelabsbrasil/adventure; decidir mesmo app vs. outro repo |
| ATS (vagas e candidatos) | Backlog | Manter Young Talents; no Admin: link em "Apps" e eventualmente SSO ou lista de vagas |
| Lidera-space | Backlog | Resolver acesso para testes; registrar em adv_apps quando estável |

---

## Automações (estilo n8n) e integrações

| Item | Status | Observação |
|------|--------|------------|
| **Workflows n8n conectados ao Admin** | Backlog | Inteligências do n8n (Railway) integradas ao Admin para facilitar rotinas diárias; após n8n em produção funcionando |
| Fase básica: Drive, Gmail, Sheets, Google Chat, Skills | Backlog | Ver [backlog-automacoes.md](backlog-automacoes.md); priorizar 1–2 fluxos concretos |
| Fase avançada: Meta Ads, Google Ads, GA, WhatsApp | Backlog | Módulos avançados; revisar trimestralmente |
| WhatsApp (QR, grupos, disparos) | Backlog | Requisitos API Business; alto valor; complexidade regulatória |

---

## Contexto e conhecimento (Cursor / Grove)

| Item | Status | Observação |
|------|--------|------------|
| Programa loteadoras (webinar ELITE) | Pausa (04/03) | Campanha e webinars em pausa; foco em clientes ativos e SaaS; contexto em 01_COMERCIAL ou 04_PROJETOS_DE_CLIENTES |
| Armazenamento de mídia, identidade, Figma | Em uso | Drive/Figma; documentar em context/; Admin como índice/links |
| Clientes (Benditta, Rose, Young, Lidera) e projetos martech | Em uso | Já cobertos por clientes e projetos no Admin |

---

## Incubação / Revisar depois

Itens para revisão periódica sem prioridade definida.

| Item | Revisar em |
|------|------------|
| Botão "Criar tarefa a partir da issue #X" no Admin | Após triangulação estável |
| Múltiplos quadros (por cliente, interno, ações) | Após Trello-like concluído |
| Integração Omie (financeiro) | Fase 2 |
| Integração Meta/Google Ads | Fase 2 |

---

## Manutenção

- **Revisão:** A cada 2–4 semanas, revisar este backlog e decidir o que sobe de prioridade ou desce para incubação.
- **Triangulação:** Tarefas do projeto Admin devem ter Issue no GitHub + Tarefa no Admin (adv_tasks) quando fizer sentido; ver [github-project-e-integracao.md](github-project-e-integracao.md).

---

*Criado pelo Grove em 03/03/2026. Atualizado em 04/03/2026 (pausa ELITE, roles Trello, n8n conectado ao Admin).*
