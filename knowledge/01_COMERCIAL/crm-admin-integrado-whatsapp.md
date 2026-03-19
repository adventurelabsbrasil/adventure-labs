---
title: CRM integrado ao Admin (WhatsApp e multitenancy)
domain: comercial
tags: [crm, admin, whatsapp, multitenancy, funil, leads]
updated: 2026-03-18
---

# CRM integrado ao Admin

CRM mínimo viável dentro do **Admin** (`/dashboard/crm`), com schema próprio no Supabase da Adventure (prefixo `adv_crm_*`), autenticação alinhada ao Admin (sem `crm_users`), integração com o WhatsApp worker (Zazu) para importar contatos e multitenancy desde o início.

## Onde está

- **Frontend:** `apps/core/admin` — rotas sob `/dashboard/crm` (leads/funil, contatos, empresas, projetos/produtos, importar do WhatsApp).
- **Backend:** Mesmo Supabase da Adventure/Admin; tabelas `adv_crm_*` (funnel_stages, companies, contacts, deals, products, whatsapp_sync, funcoes, subfuncoes).
- **Auth:** Apenas identidade do Admin (Supabase Auth + `adv_profiles`). RLS por `tenant_id` (padrão único tenant Adventure).
- **WhatsApp:** Worker expõe `GET /chats`; Admin tem proxy `GET/POST /api/admin/crm/whatsapp-chats` e página "Importar do WhatsApp" para criar contatos a partir dos chats.

## Acesso C-Suite e equipe

O CRM está disponível no **Admin** para todos os usuários que já têm acesso ao dashboard (Supabase Auth + allowlist `ADMIN_ALLOWED_EMAILS`). Não há perfil específico de “CRM”: quem acessa o Admin acessa o CRM.

| Onde acessar | URL / local | Quem |
|--------------|-------------|------|
| **Hub do CRM** | Admin → menu **Gestão e Tática** → **CRM** (ou `/dashboard/crm`) | C-Suite, Founder, equipe com acesso ao Admin |
| **Leads / funil** | `/dashboard/crm/leads` | Ver e criar leads; mover entre estágios (detalhe do lead) |
| **Contatos** | `/dashboard/crm/contatos` | Listar, criar, importar do WhatsApp |
| **Empresas** | `/dashboard/crm/empresas` | Listar e criar empresas (clientes no CRM) |
| **Projetos/produtos** | `/dashboard/crm/projetos` | Projetos ou produtos por empresa |
| **Importar WhatsApp** | `/dashboard/crm/whatsapp` | Puxar chats do Zazu (worker) e criar contatos no CRM |

Os agentes C-Suite (Grove, Torvalds, Cagan, etc.) podem ser orientados a consultar ou propor uso do CRM quando o contexto for comercial (leads, funil, contatos). Dados ficam nas tabelas `adv_crm_*` no Supabase da Adventure; RLS por `tenant_id` (mesmo modelo do restante do Admin).

## Decisões de produto

- **Uso interno primeiro:** Um tenant (Adventure). Depois clientes ativos (mesmo código, outros tenants no mesmo Supabase). Depois oferta como produto.
- **Funções e subfunções:** Tabelas `adv_crm_funcoes` e `adv_crm_subfuncoes` criadas; vínculo com empresas/produtos fica para fase posterior.

---

## Produto futuro (CRM como produto para o mercado)

Quando o CRM virar **produto vendido pela Adventure**:

- **Dados do cliente:** Ficam no **Supabase do próprio cliente**. Cada cliente terá seu projeto Supabase.
- **Acesso da Adventure:** A Adventure terá acesso de **manutenção/suporte** ao Supabase do cliente (conforme contrato e boas práticas de segurança).
- **Ambiente nosso:** No nosso ambiente (Admin interno e clientes ativos), continuamos usando o Supabase da Adventure com prefixo `adv_crm_*` e `tenant_id`. Nada disso muda para o uso interno.

Registrar isso evita misturar “dados no nosso Supabase” com “produto no Supabase do cliente” na hora da oferta comercial.
