# Relatório de análise — Plano de Mídia Martech Q2/2026

## Escopo da análise

Documentos analisados:
- `docs/planejamento/Assessoria Martech - Plano de Mídia 90d.md`
- `docs/planejamento/Estratégia de Campanha B2B Martech.xlsx`

Objetivo desta análise:
- identificar inconsistências;
- mapear fraquezas;
- apontar oportunidades;
- verificar se os dois materiais seguem uma estratégia única;
- avaliar aderência ao esperado pelo C-Suite no Q2 da Adventure.

Referência de alinhamento C-Suite:
- `docs/RELATORIO_SAUDE_FINANCEIRA_ADVENTURE_Q2_2026.md`
- `docs/RELATORIO_CEO_TRIMESTRE1_2026_ADVENTURE.md`
- `docs/RELATORIO_CTO_TRIMESTRE1_2026_ADVENTURE.md`
- `docs/RELATORIO_CPO_TRIMESTRE1_2026_ADVENTURE.md`
- `docs/RELATORIO_CMO_TRIMESTRE1_2026_ADVENTURE.md`
- `docs/RELATORIO_COO_TRIMESTRE1_2026_ADVENTURE.md`

---

## 1) Resumo executivo

O plano é forte em proposta de valor, ICP e profundidade de copy, mas hoje **não está 100% unificado** entre documento e planilha.  

O principal problema é de **coerência numérica e operacional** (budget, geografia e metas implícitas por canal). Isso reduz a previsibilidade de execução justamente no trimestre em que o C-Suite definiu foco em caixa, confiabilidade e priorização radical.

Conclusão curta:
- **Estratégia-base é boa** (high-ticket B2B, filtro de faturamento, foco em ROI e BI).
- **Execução planejada está inconsistente** em 3 pontos críticos: orçamento, cobertura de canais e governança de mensuração.
- Com ajustes de consolidação, o plano pode ficar aderente ao Q2 esperado.

---

## 2) Inconsistências encontradas

## 2.1 Budget conflitante (crítico)

No `Plano de Mídia 90d.md` há três números diferentes para investimento de mídia:
- R$ 24.750 (seção Budget);
- R$ 28.500 (tabela de viabilidade realista);
- R$ 16.200 (definição de budget de 25/03 + divisão diária).

Na planilha (`.xlsx`), a configuração operacional por canal aponta para:
- LinkedIn: R$ 100/dia
- Google: R$ 50/dia
- Meta: R$ 30/dia
- Total: R$ 180/dia -> **R$ 16.200 em 90 dias**

Impacto:
- CAC alvo e projeção de reuniões/fechamentos mudam completamente conforme o orçamento escolhido.
- Fica impossível fazer gestão semanal de meta vs. realizado com um único número.

## 2.2 Funil e meta de vendas desalinhados com budget ativo

O funil do documento prevê:
- 633 leads brutos;
- 253 SQLs;
- 76 reuniões;
- 19 contratos.

Esse funil parece calibrado para o cenário com CAC/volume de mídia maior (referência de R$ 28.500 para CAC de R$ 1.500).  
Com o budget operacional da planilha (R$ 16.200), as metas implícitas de volume ficam mais agressivas e sem recalibração formal no documento.

## 2.3 Escopo geográfico inconsistente entre canais

Planilha indica:
- Google Search: **Rio Grande do Sul**;
- LinkedIn: **Brasil**;
- Meta: sem delimitação geográfica explícita no trecho analisado.

Impacto:
- Métricas por canal ficam menos comparáveis.
- Pode haver distorção de CPL/CAC por misturar mercados com competição e ticket diferentes.

## 2.4 Mensagem de oferta e filtro com potenciais conflitos operacionais

O plano usa “diagnóstico gratuito/auditoria gratuita” como CTA, enquanto no Google há negativas amplas como “grátis”, “gratuito” e termos adjacentes.

Não é necessariamente erro, mas exige decisão estratégica explícita:
- ou mantém “gratuito” no anúncio e aceita maior triagem;
- ou remove “gratuito” da proposta para reforçar posicionamento premium;
- ou separa campanhas por intenção (premium vs. gratuito) com regras distintas.

Hoje isso está implícito, sem governança descrita.

---

## 3) Fraquezas do plano atual

1. **Ausência de versão única de verdade financeira do plano**  
   Falta um bloco “orçamento oficial aprovado” com histórico de revisão.

2. **Governança de mensuração incompleta para operação diária**  
   O plano menciona tracking, mas não fixa um “measurement contract” (evento primário, janela, regra de atribuição, naming único, owner e SLA de correção).

3. **Dependência elevada do CEO como closer e validador técnico**  
   Há risco de gargalo operacional se o volume de reuniões subir e as decisões técnicas dependerem de uma única pessoa.

4. **Plano de contingência fraco por cenário**  
   Há tabela de cenários, mas faltam gatilhos práticos de corte/escala por semana (ex.: quando pausar, quando redistribuir verba, quando revisar oferta).

5. **Integração parcial com rotina de pipeline comercial**  
   O plano de mídia está forte, mas sem acoplamento completo com aging de oportunidades, SLA de follow-up e taxa de no-show por canal.

---

## 4) Oportunidades de melhoria imediata

1. **Unificar orçamento oficial Q2 em uma única versão**
   - Escolher 1 cenário como oficial (conservador, realista ou agressivo).
   - Recalcular funil inteiro (leads -> SQL -> reunião -> fechamento -> CAC) para esse cenário.

2. **Criar um quadro único de metas semanais**
   - Gasto semanal por canal;
   - Leads/SQL/reuniões/meta de fechamento por semana;
   - gatilhos de corte e realocação.

3. **Padronizar estratégia geográfica por etapa**
   - Definir se o piloto é regional (RS) ou nacional;
   - manter regra única por fase para comparabilidade.

4. **Formalizar contrato de mensuração (CMO + CTO + COO)**
   - evento primário de conversão;
   - UTM/naming padrão;
   - SLA de correção de tracking;
   - checklist de go-live.

5. **Conectar mídia ao funil comercial real (CMO + CPO + CFO)**
   - qualificar lead por ICP e potencial de ticket;
   - medir reunião realizada, proposta enviada, fechamento e payback;
   - revisar CAC por canal com dados de fechamento, não só de lead.

---

## 5) O plano segue uma estratégia única?

Resposta: **parcialmente**.

### O que está alinhado
- Posicionamento high-ticket B2B;
- ICP com filtro de faturamento;
- narrativa de valor centrada em previsibilidade, BI e ROI;
- arquitetura de canais coerente (Google intenção, LinkedIn decisor, Meta autoridade/remarketing).

### O que quebra a unidade estratégica
- múltiplas versões de budget;
- funil sem recalibração explícita para o budget operacional da planilha;
- geografia inconsistente entre canais;
- ausência de “fonte única” para métricas e decisões semanais.

Sem corrigir isso, o plano vira “bom no papel”, mas frágil na execução.

---

## 6) Aderência ao esperado do C-Suite no Q2

## 6.1 CFO (Buffett) — caixa e eficiência

Status: **parcial**  
Ponto positivo: há preocupação com CAC e viabilidade.  
Gap: orçamento e metas inconsistentes impedem governança financeira semanal confiável.

## 6.2 CEO (Grove) — foco e priorização radical

Status: **parcial**  
Ponto positivo: foco claro em oferta de receita no trimestre.  
Gap: excesso de variáveis abertas sem “versão oficial” de execução reduz foco.

## 6.3 CTO (Torvalds) — confiabilidade ponta a ponta

Status: **parcial**  
Ponto positivo: tracking está reconhecido como crítico.  
Gap: falta contrato técnico explícito de mensuração e critérios de pronto obrigatórios.

## 6.4 CPO (Cagan) — clareza de oferta e critérios de sucesso

Status: **bom, com ajustes**  
Ponto positivo: proposta de valor e segmentação bem desenhadas.  
Gap: critérios de aceite e aprendizado por oferta ainda pouco formalizados.

## 6.5 CMO (Ogilvy) — performance por canal

Status: **bom, com risco de execução**  
Ponto positivo: plano criativo robusto e tese de canal coerente.  
Gap: sem unificação de budget e rotina de otimização formal, performance perde previsibilidade.

## 6.6 COO (Ohno) — cadência e fluxo operacional

Status: **parcial**  
Ponto positivo: roadmap mensal e lista macro de tarefas existem.  
Gap: faltam owners, SLA e rito operacional mais rígido para evitar atraso e retrabalho.

---

## 7) Plano de ajuste recomendado (7 dias)

1. **Definir orçamento oficial único (D0)**  
   Publicar uma versão oficial (R$ 16.200, R$ 24.750 ou R$ 28.500) e congelar referência.

2. **Recalibrar funil e metas por semana (D1-D2)**  
   Ajustar volumes e taxas para o budget escolhido.

3. **Publicar Measurement Contract (D2-D3)**  
   Documento curto com eventos, nomenclatura, UTMs, responsabilidades e SLA.

4. **Padronizar geografia por fase (D3)**  
   Definir regra clara (piloto RS ou nacional) e critérios de expansão.

5. **Ativar painel semanal único Q2 (D4-D7)**  
   Gasto, CPL, SQL, reunião realizada, proposta, fechamento e CAC real por canal.

---

## 8) Conclusão

O plano de mídia tem boa tese estratégica e boa densidade criativa, mas ainda não opera como um sistema único de execução.  

Para casar com o esperado do C-Suite no Q2, a prioridade é transformar o material em **uma única estratégia operacional mensurável**, com orçamento oficial, funil recalibrado e governança semanal de decisão.  

Fazendo esses ajustes agora, o plano deixa de ser “promissor” e passa a ser “executável com controle”.

