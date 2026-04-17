-- Seed: Plano de Mídia 90d (Lançamento Martech 2026) → adventure_knowledge
-- Fonte original: docs/planejamento/Assessoria Martech - Plano de Mídia 90d.md
-- Criado em: 2026-04-17

insert into public.adventure_knowledge (path, title, content, metadata)
values (
  'planejamento/plano-midia-90d-martech-2026',
  'Plano de Mídia: Lançamento Martech 2026 (90 dias)',
  '# PLANO DE MÍDIA: LANÇAMENTO MARTECH 2026

Data: 12 de março de 2026 | Adventure Labs

## 1. Objetivo Central

Gerar R$ 100.000,00 em novas vendas de contratos recorrentes (MRR) até 30 de jun. de 2026.

- Meta de Vendas: 10 contratos Scale + 9 contratos Essencial.
- Meta de Funil: Gerar ~76 reuniões de diagnóstico qualificadas no trimestre.

## 2. Budget

Investimento Total em Ads (90 dias): R$ 24.750,00 (R$ 8.250/mês).
Igor - Assessoria (90 dias): R$ 3.750,00 (R$ 1.250/mês).
CAC Alvo: R$ 1.500,00.

Budget revisado (25/mar): Ads R$ 16.200 total / R$ 180/dia.
- LinkedIn: R$ 9.000 / R$ 100/dia
- Google: R$ 4.500 / R$ 50/dia
- Meta: R$ 2.700 / R$ 30/dia

## 3. Canais de Veiculação e Conversão

Tráfego:
- Google Search: Fundo de funil (palavras de intenção como "Consultoria CRM").
- LinkedIn Ads: Segmentação por cargo (CMO, CEO) e faturamento de empresa.
- Meta Ads: Autoridade, demonstração do produto (Scale) e Remarketing.

Conversão:
- Landing Page: "Diagnóstico Gratuito de Martech".
- Filtro: Formulário com campo obrigatório de faturamento (>100k).
- Agendamento: Calendly sincronizado com agenda do CEO (Closer).

## 4. ICP (Perfil de Cliente Ideal)

- Nicho: Empresas de serviços High-Ticket.
- Faturamento: Acima de R$ 100.000,00/mês.
- Decisor: Sócio-Fundador ou Diretor de Marketing.
- Gargalo: Não sabe o ROI dos canais ou tem comercial desorganizado sem CRM.

## 5. Produto

1. Plano Essencial (R$ 3.500/mês): Gestão de Meta/Google Ads + Relatório mensal em PDF.
2. Plano Scale (R$ 7.000/mês): Gestão de Tráfego + Estrutura de Dados (BI/CRM) + 1 ano de CRM bônus + Dashboards Real-time.

## 6. Funil de Marketing e Vendas (90 dias)

Leads Brutos: 633
Leads Qualificados (SQL): 253 (40% filtro >100k)
Reuniões Agendadas: 76 (30% dos SQLs)
Contratos Fechados: 19 (25% taxa do Closer)

## 7. Tabela de Viabilidade

| Métrica | Pessimista | Realista | Otimista |
|---------|------------|----------|----------|
| CPL (Lead Bruto) | R$ 70 | R$ 45 | R$ 25 |
| Taxa SQL | 25% | 40% | 50% |
| Taxa Agendamento | 20% | 30% | 40% |
| Taxa Fechamento | 15% | 25% | 35% |
| CAC Médio | R$ 9.333 | R$ 1.500 | R$ 357 |
| ROAS (Mês 1) | 0,57x | 3,56x | 14,96x |
| ROAS (LTV 12m) | 6,87x | 42,74x | 179x |
| Investimento Ads (Total) | R$ 177.333 | R$ 28.500 | R$ 6.785 |

## 8. Responsáveis

- CEO: Estrategista, Closer e Tech Lead.
- Assistente de Marketing (Igor): Coordenador, produção audiovisual, implementação de Tags/Pixels/UTMs.
- Gestor de Tráfego Jr. (Mateus cunhado): Execução dentro das plataformas (Google, Meta, LinkedIn).

## 9. Ações Macro

### Março: Setup e Validação
- Finalizar LP de Diagnóstico
- Configurar Pixel/API de Conversão e Tag do LinkedIn
- Produzir primeira campanha (Vídeo Tour e Imagens de Dor)
- Integrar Formulário → CRM → Calendly

### Abril: Lançamento e Atração (Mês 1)
- Ativar Google Search
- Ativar Meta Ads
- Iniciar LinkedIn Ads
- Primeira análise de CPL na semana

### Maio: Escala e Otimização (Mês 2)
- Ativar Remarketing de Prova Social
- Testar nova variação de LP
- Ajustar budget para criativos que geram mais reuniões Scale

### Junho: Sprint Final e Fechamento (Mês 3)
- Follow-up agressivo na base de leads que não agendaram
- Campanha de urgência (Vagas limitadas para implementação de BI)
- Balanço final e celebração da meta de R$ 100k',
  jsonb_build_object(
    'type', 'planejamento',
    'categoria', 'plano_midia',
    'periodo', '2026-04-01/2026-06-30',
    'meta_receita', 100000,
    'criado_em', '2026-03-12',
    'fonte_original', 'docs/planejamento/Assessoria Martech - Plano de Mídia 90d.md',
    'status', 'ativo'
  )
)
on conflict do nothing;
