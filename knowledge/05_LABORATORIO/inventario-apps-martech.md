# Inventário — Apps e repositórios Martech (Adventure Labs)

Documento de referência para o Grove e para a equipe: quais aplicativos (SaaS/PWAs) e repositórios fazem parte do portfólio martech da Adventure Labs. A fonte única de verdade no sistema é a tabela **adv_apps** no Admin (Dashboard → Apps / Repositórios). Este inventário pode ser mantido à mão em paralelo ou, em fase 2, gerado a partir dos dados do Admin.

Ref.: [github-project-e-integracao.md](../00_GESTAO_CORPORATIVA/github-project-e-integracao.md), plano "Atualização plano e Apps no conhecimento".

---

## Objetivo

- Centralizar o conhecimento de que existem site da Adventure, landing pages, CRM, ATS, Admin, Lidera-space etc.
- Permitir que o Grove e os agentes saibam onde cada app vive (repo, URL ao vivo, README).
- Evitar dependência de memória ou planilhas soltas.

---

## Inventário (template)

| App | Propósito | Repo (owner/repo) | URL ao vivo | README / Observação |
|-----|-----------|-------------------|-------------|---------------------|
| **Admin** | Painel interno da equipe (clientes, projetos, tarefas, plano do dia, relatórios). | AdventureLabs/admin (ou owner real do repo) | https://admin.adventurelabs.com.br | Este repositório. Deploy Vercel, Supabase. |
| **Site Adventure** | Site institucional / presença digital da agência. | (preencher owner/repo) | (preencher URL) | — |
| **Landing pages** | LPs de campanhas e programas (ex.: LOTEADORA ELITE). | (preencher owner/repo ou "vários") | (links conforme campanha) | — |
| **CRM Adventure** | CRM/Vendas (adventurelabsbrasil/adventure ou equivalente). | (preencher owner/repo) | (preencher URL) | Repositório separado; decidir se fica mesmo app ou outro. |
| **ATS (Young Talents)** | Recrutamento e vagas. | (preencher owner/repo) | (preencher URL) | Manter Young Talents; no Admin: link em Apps. |
| **Lidera-space** | Área de membros / ponto (Lidera). | (preencher quando estável) | (preencher URL) | Registrar em adv_apps quando estável. |

---

## Manutenção

- **Admin:** Cadastrar cada app em **Dashboard → Apps / Repositórios** (tabela `adv_apps`): nome, repo (owner/repo), URL ao vivo (vercel_url), Supabase ref (se houver), fase (ideia, MVP, produção, manutenção).
- **Este doc:** Atualizar quando houver novo app ou quando a lista no Admin for alterada, para o Grove ter referência em `/context`.
- **Fase 2 (opcional):** Script ou job que gera este markdown a partir de `adv_apps`; ou "Buscar do GitHub" / "Sincronizar com Vercel" no Admin para descoberta semimanual.

---

*Criado pelo Grove em 04/03/2026. Fonte de verdade: adv_apps no Admin.*
