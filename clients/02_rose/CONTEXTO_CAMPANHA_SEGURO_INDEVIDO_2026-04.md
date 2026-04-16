# Contexto da Campanha — Seguro Indevido / Venda Casada
## Rose Portal Advocacia
**Elaborado por:** Adventure Labs (análise completa: 16/04/2026)
**Uso:** Arquivo de contexto para o Account Manager da Rose e C-Suite (Ogilvy, Cagan)
**Atualizar em:** próximo ciclo de análise (30/04/2026 ou após mudanças de audiência)

---

## O Produto

**Nome comercial:** Seguro Indevido / Venda Casada
**O que é:** serviço jurídico de revisão de contratos de empréstimo consignado com cobrança indevida de seguro de vida ou prestamista embutido nas parcelas. A Rose entra com pedido de devolução dos valores pagos + redução das parcelas futuras.
**Modelo de negócio:** honorários por contingência (sem custo para o cliente antecipado)
**Restrição geográfica:** OAB-RS — Rose só pode operar no Rio Grande do Sul

**Perfil do cliente ideal:**
- Aposentados/pensionistas INSS com empréstimo consignado ativo (faixa etária: 55–70 anos)
- Servidores públicos do RS com consignado (40–60 anos)
- CLT com crédito consignado (45–55 anos)
- Banco principal do público RS: Banrisul, Caixa, BB, BMG, Bradesco, Safra

---

## Status Atual (16/04/2026)

### Funil Comercial (CRM Supabase)
- **Funil ID:** `39014016-cd56-4843-9458-e65aec92ab4b`
- **Número WhatsApp:** terminado em 3714 (exclusivo Seguro Indevido)
- **Agente comercial:** Victor (único responsável pelo funil)
- **Período analisado:** 02–16/04/2026 (14 dias)

| Indicador | Valor |
|-----------|-------|
| Total de atendimentos | 66 |
| Leads ativos no pipeline | 31 (47%) |
| Leads abandonados | 30 (45%) |
| Leads perdidos | 5 (8%) |
| Leads convertidos (contrato) | **0 registrados** |
| Valor médio por deal | R$ 0,00 |
| Crescimento de volume | +36% (2ª vs 1ª quinzena) |

> O funil está em crescimento, mas **não registra conversões**. Fechamentos podem estar acontecendo fora do CRM.

### Meta Ads (Seguro Indevido)
- **Período:** 08–15/04/2026
- **Investimento:** R$ 389 (37% do budget total da conta)
- **Conversas geradas:** 33 (8,4% das conversas totais da conta)
- **CPConv:** R$ 11,78 — pior da conta (comparar: CLT R$ 0,85)
- **CTR:** 1,33% — adequado para o setor

---

## Diagnóstico — Por que o Seguro está underperformando

### Causa 1 (Meta Ads): Audiência errada
A campanha estava segmentada com interesses de investidor/comprador de imóvel (portais de imóveis, automóveis, banco de investimento) — não de tomador de crédito consignado. Isso gera:
- CPM alto (R$23,83 vs R$8–14 esperado) por competir com construtoras/bancos
- Leads sem o problema que o produto resolve → abandono no funil

**Correção em andamento:** substituir interesses por INSS, consignado, aposentadoria, servidores públicos, Caixa, BMG, Banrisul. Ampliar faixa de idade de 25–55 para 45–70 (ou sem limite máximo).

### Causa 2 (Meta Ads): Teto de idade exclui público principal
Aposentados/pensionistas INSS — maior volume de consignado — têm média 58–65 anos. Estavam fora da campanha com teto em 55.

### Causa 3 (Funil Comercial): Funil sem qualificação
Sequência de mensagens atual pergunta "você ainda tem interesse?" sem nunca coletar: banco, valor, se há seguro na fatura, se tem Gov.br. Nenhum lead pode avançar sem essa informação.

### Causa 4 (Funil Comercial): Identidade inconsistente
A 2ª mensagem usa nome da Dra. Roselaine; as demais usam Victor. Quebra de confiança no fluxo.

---

## O que está funcionando

- Fluxo anúncio → WhatsApp → CRM está operacional e rastreável
- Criativos banco-específicos (BB, Bradesco, Servidor Público) lançados em 15/04 — CPConv inicial promissor (SERVIDOR: R$8,00 em 1 dia)
- Volume crescendo 36% na segunda quinzena — a campanha está ganhando tração
- Último lead do período chegou já qualificado: *"Vi o anúncio sobre Venda Casada nos Empréstimos"*

---

## Ações em Andamento e Próximas Etapas

### Ads (responsabilidade: gestão de tráfego)
| # | Ação | Status |
|---|------|--------|
| 1 | Corrigir interesses da audiência (INSS/consignado) | A fazer — urgente |
| 2 | Ampliar teto de idade para 45–70+ | A fazer — urgente |
| 3 | Aguardar 5–7 dias de dados dos criativos banco-específicos | Em andamento (desde 15/04) |
| 4 | Criar Custom Audiences de exclusão (CLT 6598, Energia 9073, lista CRM) | A fazer |
| 5 | Mensagem template por banco nos anúncios | A fazer |
| 6 | Testar Caixa, BMG, Safra, Banrisul como criativos novos | Próximos 15 dias |
| 7 | Montar campanha de remarketing (20% do budget) | Próximos 15 dias |

### Funil Comercial (responsabilidade: Victor + Gestão)
| # | Ação | Status |
|---|------|--------|
| 1 | Atender lead "." (chegou 16/04 via anúncio, sem resposta) | Urgente |
| 2 | Reabrir Gustavo Roniel (enviou boleto.pdf, marcado erroneamente como `abandoned`) | Urgente |
| 3 | Reabrir Dalmor Trevisan (conversa ativa encerrada por erro) | Urgente |
| 4 | Criar status "Contrato Assinado" + tag `cliente-ativo` no CRM | Esta semana |
| 5 | Unificar identidade nos templates (só Victor) | Esta semana |
| 6 | Adicionar campo de valor estimado por deal | Esta semana |
| 7 | Montar formulário de coleta de documentos (self-service) | Próximos 15 dias |

---

## Funil Proposto (6 etapas)

```
Etapa 1 — Primeiro contato (Victor)
    Confirmar que tem empréstimo consignado ativo
        ↓
Etapa 2 — Qualificação rápida (3 perguntas)
    Banco / Seguro cobrado? / Acesso Gov.br?
        ↓
Etapa 3 — Apresentação da solução (sem custo, prazo, o que fazer)
        ↓
Etapa 4 — Coleta de documentos (self-service via formulário)
    Contracheque/INSS + CPF + contrato (se tiver)
        ↓
Etapa 5 — Análise jurídica (Dra. Roselaine — única etapa dela)
    Prazo: 24–48h
        ↓
Etapa 6 — Proposta + contrato (assinatura digital)
    Registrar como GANHO no CRM + tag cliente-ativo
```

---

## Contexto de Conta — Outros Produtos da Rose no Meta

| Campanha | CPConv | Status | Nota |
|----------|--------|--------|------|
| CLT | R$ 0,85 | Saudável — não mexer | 269 conversas, melhor da conta |
| Revisão Energia | R$ 2,67 | Estável | Risco de fadiga de criativo |
| Trabalhista | R$ 33,46 | Crítico | Revisar CTA ou pausar |
| **Seguro Indevido** | **R$ 11,78** | **Em ajuste** | Audiência sendo corrigida |

**Risco de contaminação entre campanhas:** a Rose já tem base de leads significativa em CLT e Energia no RS. Sem exclusão, a campanha de Seguro entrega para essa base, gerando re-entradas e falsos leads no funil.

---

## Arquivos de Referência

| Arquivo | Conteúdo |
|---------|---------|
| `RELATORIO_COMERCIAL_VENDA_CASADA_2026-04.md` | Análise completa do funil CRM, scripts de abordagem, ações imediatas |
| `RELATORIO_MARKETING_VENDA_CASADA_2026-04.md` | Análise Meta Ads, diagnóstico de audiência, exclusão/remarketing |
| `CONTEXTO_CONTA_ROSE_2026-03.md` | Histórico geral da conta Rose |
| `CONTEXTO_WHATSAPP_ROSE_2026-03.md` | Estrutura WhatsApp e números por produto |

---

*Gerado por Adventure Labs — 16/04/2026*
*Para o gerente-rose (AM) e C-Suite: Ogilvy (CMO), Cagan (CPO)*
