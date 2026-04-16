# Handoff — Ações Pendentes Seguro Indevido
**Rose Portal Advocacia | Gerado em:** 16/04/2026
**Gerado por:** Adventure Labs (sessão de análise CRM + Meta Ads)
**Branch de referência:** `claude/analyze-insurance-service-patterns-J1WBO`

---

## 🔴 URGENTE — Hoje (16/04)

Estas ações têm lead ou oportunidade em risco imediato.

| # | Ação | Responsável | Contexto |
|---|------|-------------|---------|
| 1 | **Atender lead "."** — chegou hoje via anúncio com mensagem *"Olá, Dra. Roselaine! Vi o anúncio sobre Venda Casada nos Empréstimos"* — sem resposta registrada | Victor | Lead já qualificado pelo próprio texto. Estágio: `Aguardando`. Não deixar esfriar. |
| 2 | **Reabrir Gustavo Roniel** — enviou `boleto gustavo.pdf` (documento de contrato) mas está marcado como `abandoned` no CRM | Victor | Caso provável de fechamento perdido por erro de status. Retomar com: *"Oi Gustavo, vi que você nos enviou o boleto — seu caso ainda está em análise por aqui."* |
| 3 | **Reabrir Dalmor Trevisan** — conversa ativa com Victor sobre "outro contrato viável", encerrada erroneamente | Victor | Mesma situação: `abandoned` por erro, não por desinteresse. Retomar com continuidade da conversa anterior. |

---

## 🟡 ESTA SEMANA (até 23/04)

### Meta Ads (gestão de tráfego)

| # | Ação | Como fazer |
|---|------|-----------|
| 4 | **Corrigir interesses da audiência** | Meta Ads Manager → conjunto de anúncios Seguro Indevido → Editar público → remover: Online marketplace, Automóveis, Portais de imóveis, Imóveis residenciais, Bancos de investimento → adicionar: INSS/Previdência Social, Empréstimo consignado, Benefício social, Caixa Econômica Federal, Servidores públicos, Aposentadoria, BMG, Banrisul |
| 5 | **Ampliar faixa de idade** | No mesmo conjunto: mudar de 25–55 para **45 sem limite máximo** (ou mínimo 45–70) |
| 6 | **Criar Custom Audiences de exclusão** | Meta Ads Manager → Públicos → Custom Audience → WhatsApp Business Account → criar 3: `Excl:CLT` (número ...6598), `Excl:Energia` (número ...9073), `Excl:Seguro-ativo` (número ...3714). Aplicar como exclusão no conjunto de Seguro Indevido. |
| 7 | **Exportar lista CRM → Custom Audience** | CRM → exportar telefones com status `active` e `abandoned-qualificado` → CSV → Meta → Custom Audience → Customer list. Aplicar como exclusão em todas as campanhas de prospecção. |

### CRM / Funil (Victor + Gestão)

| # | Ação | Detalhe |
|---|------|---------|
| 8 | **Criar status "Contrato Assinado"** no CRM | Etapa final do funil — registrar quando o cliente assina o contrato de honorários |
| 9 | **Criar tag `cliente-ativo`** no CRM | Aplicar ao deal quando for marcado como ganho. Usado para exclusão no Meta e roteamento pós-venda. |
| 10 | **Unificar identidade nos templates** | Todas as mensagens devem usar apenas Victor (ou apenas Dra. Roselaine — decidir). A 2ª mensagem atual usa Dra. Roselaine enquanto todas as demais usam Victor. |
| 11 | **Criar campo de valor estimado** por deal | Preencher com estimativa inicial ao qualificar o lead (ex: R$X por mês de seguro cobrado × meses de contrato) |

---

## 🟢 PRÓXIMOS 15 DIAS (até 30/04)

| # | Ação | Responsável | Detalhe |
|---|------|-------------|---------|
| 12 | **Avaliar criativos banco-específicos** | Gestão de tráfego | Após 5–7 dias de dados (avaliar 20–22/04): escalar o de menor CPConv, pausar `TESTE-BB-BRADESCO-AZUL` (0 conversas) |
| 13 | **Testar novos bancos** | Gestão de tráfego | Criar criativos para: Caixa Econômica Federal, BMG, Safra, Banrisul — maiores no consignado RS |
| 14 | **Configurar mensagem template por criativo** | Gestão de tráfego | Cada anúncio banco-específico deve abrir o WhatsApp com mensagem pré-preenchida: BB → *"Olá, vi o anúncio sobre empréstimo no Banco do Brasil"*, Bradesco → *"Olá, vi o anúncio sobre empréstimo no Bradesco"*, etc. |
| 15 | **Montar formulário de coleta de documentos** | Victor + TI | Self-service para Etapa 4 do funil: campos para contracheque/extrato INSS, CPF, contrato (se tiver). Reduz trabalho do Victor em solicitar documento por documento. |
| 16 | **Revisar todos os templates de mensagem** | Victor + Dra. Roselaine | Substituir os templates atuais pelos scripts do relatório comercial. Especial atenção: remover promessa assertiva de "indenização por dano moral de R$5.000" no template de encerramento. |
| 17 | **Criar fluxo pós-venda no CRM** | TI + Gestão | Funil separado para `cliente-ativo`: notificações de andamento do processo jurídico, sem misturar com funil de prospecção. |
| 18 | **Montar campanha de remarketing** (20% do budget) | Gestão de tráfego | Públicos: clicou no anúncio mas não conversou + leads etapas 1-2 que abandonaram. Criativo diferente do prospecting (prova social ou novo ângulo). |
| 19 | **Revisar campanha Trabalhista** | Gestão de tráfego | CPConv R$33,46 — revisar CTA do criativo e script de primeiro contato. Se não melhorar em 7 dias após ajuste, pausar e redirecionar budget para Seguro Indevido. |
| 20 | **Novo criativo Revisão Energia** | Gestão de tráfego | Criativo atual `[Tem Empréstimo na Conta de Luz]` em rodagem há semanas — risco de fadiga. Testar novo ângulo. |

---

## Decisão em Aberto

| Item | Decisão necessária | Para quem |
|------|-------------------|-----------|
| Identidade no funil | Victor ou Dra. Roselaine como face do comercial? Definir e padronizar todos os templates. | Dra. Roselaine + Gestão |
| Orçamento remarketing | Tirar 20% do budget atual ou adicionar? Budget atual Seguro: ~R$50/dia | Rodrigo |

---

## Referências

- **Relatório comercial completo:** `clients/02_rose/RELATORIO_COMERCIAL_VENDA_CASADA_2026-04.md`
- **Relatório de marketing completo:** `clients/02_rose/RELATORIO_MARKETING_VENDA_CASADA_2026-04.md`
- **Contexto AM (para gerente-rose):** `clients/02_rose/CONTEXTO_CAMPANHA_SEGURO_INDEVIDO_2026-04.md`

---

*Handoff gerado por Adventure Labs — Sistema Autônomo de Gestão de Contas*
*Dúvidas ou urgências: Telegram ceo_buzz_Bot*
