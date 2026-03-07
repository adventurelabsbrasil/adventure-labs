# Cenário atual — Clientes, planos e programa (admin)

Referência para o Grove e para o Founder. Reflete a estrutura de dados e o mapa de clientes/planos/programa no admin.

## Clientes

- **3 clientes fixos** — cadastrados em `adv_clients` com `tipo_cliente = 'fixo'` (ajustar no app ou via seed).
- **1 cliente pontual** — cadastrado com `tipo_cliente = 'pontual'`.

Definir no app ou no seed [context/99_ARQUIVO/seed-cenario-atual.sql](../99_ARQUIVO/seed-cenario-atual.sql) quais clientes são fixos e qual é o pontual (comentar/descomentar os UPDATEs da seção 4).

## Ofertas (adv_products)

| Produto / Serviço              | Tipo             | Uso |
|--------------------------------|------------------|-----|
| LOTEADORA ELITE                | programa         | Consultoria em Gestão de Lançamento Imobiliário; webinar semanal. |
| Assessoria Martech - Scale     | plano_assessoria | Plano Scale da assessoria em martech. |
| Assessoria Martech - Essential | plano_assessoria | Plano Essential da assessoria em martech. |
| ATS Adventure                  | microsaas        | MicroSaaS ATS para venda. |
| CRM Adventure                  | microsaas        | MicroSaaS CRM para venda. |

Vínculo cliente ↔ plano (Scale/Essential) pode ficar documentado aqui até haver tela ou tabela `adv_client_products` no banco.

## Programa LOTEADORA ELITE

- **O quê:** Consultoria em Gestão de Lançamento Imobiliário; 1 webinar por semana.
- **Público:** Donos e gestores de loteadoras.
- **Horário:** Toda **terça às 16h**.
- **Projeto no admin:** Projeto interno "Loteadora Elite" (Kanban interno). Aulas registradas em `adv_program_sessions`.

### Calendário de aulas (webinar)

| Aula | Data       | Observação   |
|------|------------|--------------|
| 1    | 24/02/2025 | Realizada    |
| 2    | 03/03/2025 | Prevista     |

Incluir novas aulas pelo app (quando houver tela de sessões) ou via SQL em `adv_program_sessions`.

## Micro-SaaS (venda)

- **ATS** — produto "ATS Adventure"; projeto interno vinculado (ex.: Young Talents ou projeto dedicado).
- **CRM** — produto "CRM Adventure"; projeto interno "Adventure CRM" vinculado.

---

*Atualizado em 02/03/2025. Ver também [proximos_passos_admin.md](proximos_passos_admin.md) e migration `20250302100000_adv_cenario_atual.sql`.*
