# Resumo Executivo — Adventure Labs (Março 2026)

Documento síntese da empresa, elaborado pelo Grove com contribuições do C-Suite (Ohno, Torvalds, Ogilvy, Buffett, Cagan). Objetivo: visão única do estado atual, direção e **lacunas de informação** para fechar o sumário executivo e orientar o semestre.

---

## Síntese C-Suite (visão consolidada)

Consulta ao time C-Level para alinhar estado atual e prioridades:

| C-Level | Foco | Visão resumida |
|---------|------|-----------------|
| **Ohno (COO)** | Operação, fluxos, SLA | Ciclo Briefing → Implementação → Execução → Relatório em uso; Kanbans separados (interno vs. clientes). Pendências: Adventrack com Igor/Mateus; Trello interno após roles; conciliação e notas. SLA por tipo de projeto ainda em rascunho. |
| **Buffett (CFO)** | Financeiro, MRR, margem | Blueprint definido (MRR, Margem, CAC, LTV). One-pager e números reais ainda não no contexto; extratos Sicredi jan/fev e controle interno disponíveis para conciliação. Meta semestral e custos fixos precisam fechar para projeção 100k. |
| **Ogilvy (CMO)** | Marketing, KPIs, campanhas | ELITE em pausa; foco em clientes ativos (Benditta, Rose, Young, Lidera) e plano de mídia SaaS. KPIs por canal (ROAS, CPA, CPL, CVR) e metas de aquisição não formalizados em doc único. |
| **Torvalds (CTO)** | Tech, Admin, CRM | Admin em produção (Vercel, domínio); integrações Omie/Ads e KPIs no dashboard na Fase 2. Drive e n8n adiados. CRM: transcrição de áudios no backlog. |
| **Cagan (CPO)** | Produto, UX, escopo | Lidera-space em desenvolvimento; entregas e prazos a alinhar com cliente. Diagnóstico padrão e escopo por tipo de projeto ajudariam previsibilidade. |

**Conclusão Grove:** Fechar número financeiro (one-pager + meta 100k), ativar indicadores no board meet e priorizar entregas em aberto (Lidera, Benditta, Rose, Young) são os vetores principais para o semestre.

---

## Dados cadastrais e sociedade (fornecidos pelo Founder)

Razão social: **ADVENTURE COMUNICACOES LTDA**. Porte: Demais. CNAE principal: 73.19-0-04 (Consultoria em publicidade); secundários: 73.11-4-00 (Agências de publicidade), 70.20-4-00 (Consultoria em gestão empresarial). Regime: **Lucro Real**. Situação cadastral: Ativa. Endereço: Santo Antônio da Patrulha/RS. Participação societária: sócio administrador (Rodrigo Ribas Ferreira) e Young Empreendimentos — *valores percentuais e CNPJ por política de sigilo não são versionados no repositório; manter em arquivo local ou 99_ARQUIVO.*

Contato Founder: telefone informado; repositórios: [adventurelabsbrasil (GitHub)](https://github.com/adventurelabsbrasil).

---

## 1. Visão geral

**Adventure Labs** é uma **Assessoria Martech** para **empresas de serviços** (não só loteadoras): gestão de lançamento, tráfego pago, criativos e programas/consultorias. Hoje está rodando um **MVP exclusivo para loteadoras** (programa LOTEADORA ELITE). O Founder e Diretor Geral é **Rodrigo Ribas Ferreira**; a equipe inclui **Igor Ribas** (Designer Gráfico) e **Mateus Scopel** (Gestor de Tráfego Júnior).

- **Sociedade:** Entre **YOUNG EMPREENDIMENTOS** (Eduardo Tebaldi) e **Rodrigo Ribas Ferreira**. A Young é **sócia** e também **cliente fixo** da Adventure.
- **Início da operação:** 02/01/2026.
- **Stack:** Next.js, Supabase, Vercel, Cursor AI, Workspace Business, Meta Ads, Google Ads. Financeiro/ERP: Omie (em adoção), **Sicredi** (extratos jan e fev disponíveis para análise), controle interno em CSV/Sheets (descrição do serviço, plano de contas, datas — para conciliação). Banco Inter PJ (em abertura).
- **Produtos/serviços:** Programa **LOTEADORA ELITE** (webinar semanal terça 16h — **em pausa** desde 04/03; ver decisão abaixo), planos de assessoria martech (Scale/Essential), MicroSaaS (ATS e CRM próprios).
- **Governança:** Ciclo de vida de projetos: Briefing → Implementação → Execução → Relatório. Kanbans separados (interno vs. clientes). Protocolo de IA (Grove) com regra de sobrescrita conservadora e memória em `/context` (taxonomia 00–99).

---

## 2. Clientes e entregas (cenário atual)

| Cliente/Contato | Tipo | Status principal |
|-----------------|------|-------------------|
| **Rose** | Cliente | LP (aux. maternidade), relatório fev., Google Ads; dados fev.: Bolsa família 2, CLT 94, Pessoal 5, Energia 149 |
| **Benditta** (Linha Essencial) | Cliente | Cronograma editorial a validar; criativos e campanha após validação |
| **Young** | Sócia + cliente fixo | Plano de mídia a apresentar; cobrança R$ 800 (Young Talents Módulo I) enviada |
| **Lidera** (Guilherme) | Cliente | Lidera-space (área de membros) em desenvolvimento; entrega ou prazo a definir; Guilherme é o contato do Lidera |
| **Andressa Medeiros** | Parceira | Poderá atuar como admin ou financeiro (inicialmente freelancer); retorno pendente: conciliação bancária e produtos digitais em tráfego pago |
| **Emir** | Proposta encerrada | Desistência (áudio 02/03); proposta e PPT prontos, não prossegue |

**Lacuna:** Lista consolidada de clientes “fixo” vs “pontual”, MRR por cliente e margem por projeto não estão documentados em um único lugar. Para guiar o preenchimento, foi criado o **questionário** em [questionario-resumo-executivo.md](questionario-resumo-executivo.md).

---

## 3. Operação e processos

- **Admin (App):** Painel em `admin.adventurelabs.com.br` (MVP): clientes, projetos, Kanbans, plano do dia, ações prioritárias, **relatório/brain dump** (digitação e feedback no app).
- **Adventrack:** Registro de ponto a iniciar (Igor, Mateus) para custo/hora por cliente; depois atrelar ao gestor de tarefas.
- **Controle de tarefas:** Reforçar uso do Admin (Kanban + projetos + ações prioritárias).
- **Pendências operacionais:** Certificado A1 (Omie), cartão Inter PJ, reembolso Google Ads R$ 400, notas de fev. (manual), conciliação bancária (iniciar ou delegar), placa fachada (Alvo Certo), alteração contrato social (gov.br).

**Lacuna:** POPs e fluxos formais (ex.: briefing → aprovação → entrega) não estão todos documentados em `/context`; indicadores de eficiência operacional (horas por cliente, SLA) não definidos.

---

## 4. Marketing e conteúdo

- **Decisão 04/03/2026:** Pausa na campanha **ELITE** e nos webinars (semana 10 sem audiência). Concentrar energia em: (1) **clientes ativos** (Benditta, Rose, Young, Lidera); (2) **SaaS/microsaas** para venda; (3) **plano de mídia exclusivo para campanhas de SaaS e microsaas** (Igor em elaboração).
- **Programa ELITE:** Em pausa; criativos e histórico preservados para retomada futura.
- **Adventure (própria marca):** Cronograma editorial a criar; Instagram a agendar; capas LinkedIn/YouTube; campanhas assessoria martech e SaaS (ATS, CRM); apresentação padrão de diagnóstico com ID Adventure.

**Lacuna:** KPIs de canal (ROAS, CPA, CPL, CVR) e metas semestrais de aquisição/receita não estão formalizados em um “board meet” ou doc de indicadores.

---

## 5. Financeiro e crescimento

- **Blueprint (Buffett):** KPIs desejados: MRR, Margem de Lucro, CAC, LTV (agência); por cliente: ROAS, CPA, CPL, CVR.
- **Fato:** Não há no `/context` um documento com MRR atual, margem, custos fixos/variáveis, nem projeção semestral. **Disponível para análise:** extratos Sicredi jan/fev 2026 em `context/99_ARQUIVO/sicredi/` (OFX; pasta não versionada) e controle interno em CSV/Sheets (descrição do serviço, plano de contas, datas) para conciliar.
- **Dependências:** Inter PJ (Cursor, Omie, operação); conciliação bancária e emissão de notas (Procor, fev.) em andamento.

**Lacuna crítica:** Ausência de “one-pager” financeiro (receita, custos, resultado mensal/semestral) e de metas numéricas claras para o semestre.

---

## 6. Produto e tecnologia

- **CRM Adventure:** Repositório privado; backlog inclui transcrição de áudios (WhatsApp) para histórico searchable.
- **Admin:** Supabase (prefixo `adv_`), RLS, multitenant por `tenant_id`; relatórios founder em `adv_founder_reports` com feedback.

**Doc criado:** Roadmap único em [roadmap-admin-crm.md](roadmap-admin-crm.md). Indicadores e board meet: [indicadores-semestrais.md](indicadores-semestrais.md), [board-meet.md](board-meet.md). SLA de entregas: [sla-entregas.md](sla-entregas.md).

---

## 7. O que falta para fechar o sumário executivo

Resumo do que é necessário para ter um **sumário executivo fechado** e diretrizes claras para o semestre:

| Área | O que falta |
|------|-------------|
| **Financeiro** | Número atual de MRR, margem, custos fixos/variáveis; meta de receita e resultado para o semestre. |
| **Clientes** | Lista oficial fixo/pontual; receita por cliente (ou por plano); saúde do pipeline (propostas ativas, expectativa de fechamento). |
| **Indicadores** | Documento de indicadores semestrais (operacionais + marketing + financeiro) e “board meet” (estratégias + números). |
| **Operação** | Definição de uso do Adventrack + gestor de tarefas; SLA ou regras de entrega por tipo de projeto. |
| **Marketing** | Metas por canal (ou por programa ELITE vs assessoria); calendário editorial e de campanhas da marca. |
| **Produto/Tech** | Roadmap único (Admin + CRM) com prioridades e, se possível, trimestre de entrega das próximas features. |

---

## 8. Diretrizes sugeridas para o semestre (alto nível)

1. **Fechar o número:** Produzir pelo menos um “one-pager” financeiro (MRR, custos, resultado) e uma meta semestral de receita/lucro.
2. **Indicadores e board meet:** Criar o documento de indicadores semestrais e o doc de board meet (estratégias + acompanhamento).
3. **Operação:** Ativar Adventrack com Igor e Mateus; reforçar uso do Admin para tarefas e relatórios; definir responsável e prazo para conciliação bancária e notas.
4. **Clientes em risco:** Lidera-space — definir entrega ou prazo real e comunicar; Rose/Benditta/Young — fechar entregas em aberto (LP, relatório, crono, plano de mídia).
5. **Crescimento:** Formalizar oferta de diagnóstico (apresentação padrão) e follow-up (ex.: Valmir); cronograma editorial e campanhas da Adventure.
6. **Produto:** Priorizar no roadmap do CRM a transcrição de áudios; no Admin, integrações (Omie, Ads) e KPIs no dashboard conforme disponibilidade de dados.
7. **Meta de faturamento:** R$ 100.000/mês até o final do semestre (junho 2026). Plano de ação em [plano-acao-estrategico-100k-semestre.md](operacao/plano-acao-estrategico-100k-semestre.md); indicadores em [relatorio-indicadores-gerais-2026.md](operacao/relatorio-indicadores-gerais-2026.md).

---

*Elaborado pelo Grove com base em `/context` (00_GESTAO_CORPORATIVA, 01_COMERCIAL, 02_MARKETING, 03_PROJETOS_INTERNOS, 04_PROJETOS_DE_CLIENTES, 05_LABORATORIO, 06_CONHECIMENTO, 99_ARQUIVO), Brain Dump 03/03/2026, relatório Founder 04/03/2026, blueprint operacional e cenário atual. Última atualização: 04/03/2026.*
