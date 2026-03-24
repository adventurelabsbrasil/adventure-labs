# 🏛️ A.C.O.R.E. Framework v1.0 - Baseline

**Data:** 19 de Março de 2026  
**Status:** Congelado (Mudanças apenas via RFC técnica ao CTO)

## 1. Stack Tecnológica Oficial
| Camada | Ferramenta | Decisão do CTO |
| :--- | :--- | :--- |
| **Frontend** | Next.js + Tailwind | Hospedagem na Vercel (Multi-tenant) |
| **Backend/Bots** | n8n + Evolution API | Hospedagem na VPS Hostinger via Coolify |
| **Banco/Auth** | Supabase | Postgres + Supabase Auth + pgvector (RLS Rigoroso) |
| **Cérebro** | OpenRouter + Gemini | Claude 3.5 (Lógica) + Gemini 1.5 Pro (Contexto) |
| **Segredos** | Infisical/Doppler | Injeção centralizada de .env |

## 2. Orçamento Mensal Estimado (Baseline 1.0)
*Cotação ref: US$ 1,00 = R$ 5,00*

| Item | Custo (USD) | Custo (BRL) | Modelo |
| :--- | :--- | :--- | :--- |
| VPS Hostinger | $10.00 | R$ 50,00 | Fixo |
| Supabase Pro | $25.00 | R$ 125,00 | Fixo (após exceder free tier) |
| Cursor AI Pro | $20.00 | R$ 100,00 | Fixo |
| ElevenLabs | $5.00 | R$ 25,00 | Starter |
| Vercel Pro | $20.00 | R$ 100,00 | Opcional (Hobby é free) |
| **TOTAL FIXO** | **$80.00** | **R$ 400,00** | **Preço de 1 pizza/semana** |

*Nota: Consumo de tokens (OpenRouter/Gemini) é variável, estimar +$20/mês.*

## 3. Filosofia de Desenvolvimento
1. **Multi-tenancy first:** Nenhuma tabela nasce sem `tenant_id`.
2. **GitOps over SSH:** O código só entra no servidor via GitHub -> Coolify/Vercel.
3. **IA-First:** O Cursor AI é o desenvolvedor principal; o Human é o Arquiteto/Reviewer.