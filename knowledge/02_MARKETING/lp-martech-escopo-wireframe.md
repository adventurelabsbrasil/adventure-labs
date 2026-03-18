# LP Martech — Escopo e wireframe (Issue #118)

Landing page para captação de leads da **Assessoria Martech** da Adventure Labs.

---

## Objetivo

- Gerar leads qualificados para serviços de tráfego pago, dados e automação.
- Comunicar proposta de valor: "Transformar Dados em Crescimento Real" / ROI mensurável.

---

## Estrutura sugerida (wireframe)

1. **Hero**
   - Título e subtítulo (proposta de valor Martech).
   - CTA principal: "Fale com a gente" / "Agendar conversa".

2. **Serviços (bloco curto)**
   - Tráfego pago (Meta, Google).
   - Dados e relatórios (KPIs, conversão).
   - Automação (n8n, resumos, operação).

3. **Prova social / cases**
   - 1–3 clientes ou resultados resumidos (opcional no MVP).

4. **CTA final**
   - Formulário de contato ou link para WhatsApp/Calendly.

5. **Footer**
   - Contato, redes (se aplicável).

---

## Decisões pendentes

- **Onde hospedar:** implementado no mesmo app Admin na rota pública **`/lp`** (Issue #118). Opcional no futuro: subdomínio dedicado (ex. `martech.adventurelabs.com.br`). Ver issue #15.
- **Stack:** alinhar com monorepo (Next.js, Vercel) ou estático (ex. Vite + deploy estático).
- **Formulário:** apenas link para WhatsApp/Calendly no MVP ou formulário com envio para e-mail/n8n.

---

## Responsáveis (Issue #118)

- **Igor Ribas:** design e conteúdo.
- **Rodrigo Ribas:** desenvolvimento e integração.

---

*Criado em 17/03/2026. Atualizar quando wireframe for aprovado e implementação iniciada.*
