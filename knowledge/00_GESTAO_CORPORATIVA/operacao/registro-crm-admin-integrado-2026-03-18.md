---
title: Registro — CRM integrado ao Admin (implementação)
domain: gestao_corporativa
tags: [crm, admin, csuite, conhecimento, whatsapp, multitenancy, comercial]
updated: 2026-03-18
---

# Registro — CRM integrado ao Admin (implementação)

**Data:** 18/03/2026  
**Objetivo:** Registrar no conhecimento que o CRM foi implementado no sistema e onde o C-Suite e a equipe têm acesso.

---

## O que foi feito

### 1. CRM no Admin

- **Local:** Admin → menu **Gestão e Tática** → **CRM** (ou `/dashboard/crm`).
- **Schema:** Tabelas `adv_crm_*` no Supabase da Adventure (funnel_stages, companies, contacts, deals, products, whatsapp_sync, funcoes, subfuncoes). RLS por `tenant_id`; auth igual ao restante do Admin (Supabase Auth + `adv_profiles`), sem `crm_users`.
- **Funcionalidades:** Hub do CRM, leads/funil por estágio, contatos, empresas, projetos/produtos, importação de contatos via WhatsApp (worker Zazu, endpoint `GET /chats`).

### 2. Acesso C-Suite e equipe

| Recurso | Onde acessar |
|--------|----------------|
| Hub do CRM | `/dashboard/crm` |
| Leads / funil | `/dashboard/crm/leads` |
| Contatos | `/dashboard/crm/contatos` |
| Empresas | `/dashboard/crm/empresas` |
| Projetos e produtos | `/dashboard/crm/projetos` |
| Importar do WhatsApp | `/dashboard/crm/whatsapp` |

Quem já tem acesso ao Admin (allowlist e login Supabase) acessa o CRM pelo mesmo login. Não há perfil específico de “usuário CRM”.

### 3. Documentos atualizados na base de conhecimento

| Documento | Alteração |
|----------|-----------|
| [01_COMERCIAL/crm-admin-integrado-whatsapp.md](../../01_COMERCIAL/crm-admin-integrado-whatsapp.md) | Seção **Acesso C-Suite e equipe** com tabela de URLs e quem acessa. |
| [00_GESTAO_CORPORATIVA/contexto_admin_equipe.md](../contexto_admin_equipe.md) | Item **7. CRM** atualizado: implementado no Admin, link para o doc comercial. |

---

## Referência para o C-Suite

Os agentes (Grove, Torvalds, Cagan, Ohno, Ogilvy, Buffett) podem ser orientados a consultar ou propor uso do CRM quando o contexto for comercial (leads, funil, contatos, empresas). O registro deste dia e o doc [crm-admin-integrado-whatsapp.md](../../01_COMERCIAL/crm-admin-integrado-whatsapp.md) são a referência de onde o C-Suite tem acesso no sistema.
