---
title: Benditta — relatorio Meta Linha Essencial (fase 1)
domain: projetos_clientes
tags: [benditta, meta-ads, linha-essencial, relatorio, marketing]
updated: 2026-03-24
---

# Relatorio de campanha — Linha Essencial (fase 1)

Documento consolidado para apresentacao ao cliente Benditta.
Base: CSV de campanha em `clients/05_benditta/BM-202603-MetaReport.csv` + contexto operacional ja registrado no projeto.

## Contexto comercial do contrato

- Entrada da conta via indicacao de Guilherme Emerim e Charles Simon.
- A cliente ja conhecia o Founder, e a indicacao acelerou a contratacao.
- Contrato atual em **fee mensal de R$ 2.000**.
- Escopo acordado: **teste de 3 meses** do plano Essencial com **Meta Ads + Google Ads**.

## 1) Resumo executivo

- A fase 1 confirmou capacidade de gerar volume de alcance e iniciar conversas no WhatsApp.
- A qualidade do lead ficou mista, com presenca de contatos fora do perfil ideal (ex.: demandas pequenas).
- O principal ajuste para fase 2 e combinar volume com qualificacao explicita desde anuncio/formulario/mensagem inicial.

## 2) Janela e dados analisados

- **Periodo com dados no export:** 2026-03-09 ate 2026-03-18 (7 dias com registros no arquivo).
- **Investimento total:** R$ 439,20.
- **Impressoes totais:** 35.766.
- **Alcance total:** 31.797.
- **Cliques totais (todos):** 222.

### Recorte por objetivo

#### OUTCOME_LEADS (mensagens)

- **Investimento:** R$ 415,98.
- **Impressoes:** 15.606.
- **Alcance:** 11.837.
- **Cliques (todos):** 208.
- **Resultados (conversas iniciadas):** 10.
- **Custo por conversa iniciada (medio):** R$ 41,60.
- **CTR (todos):** 1,33%.

#### OUTCOME_AWARENESS (alcance)

- **Investimento:** R$ 23,22.
- **Impressoes:** 20.160.
- **Alcance (resultado):** 19.960.
- **Cliques (todos):** 14.
- **CTR (todos):** 0,07%.
- Leitura: campanha cumpriu papel de cobertura, com baixa interacao esperada para objetivo de awareness.

## 3) O que funcionou

- Estrutura inicial conseguiu gerar alcance relevante com baixo custo na frente de awareness.
- Campanha de mensagens gerou conversas reais no WhatsApp (resultado direto de negocio).
- Houve aprendizado rapido de criativo e ritmo (necessidade de video menos acelerado e maior clareza de proposta).

## 4) O que limitou desempenho

- Variacao insuficiente de criativos em alguns momentos, reduzindo capacidade de teste A/B.
- Qualificacao ainda ampla na entrada, abrindo espaco para contatos fora do escopo principal.
- Dependencia de ajustes operacionais (pagina Facebook/ativos criativos) para manter consistencia de entrega.

## 5) Hipoteses validadas na fase 1

- Apenas "rodar anuncio" nao garante lead aderente; a qualificacao precisa aparecer no criativo e na mensagem inicial.
- A Linha Essencial exige narrativa de valor (processo + execucao tecnica), nao narrativa de preco.
- Segmento de arquitetos e promissor como frente paralela de comunicacao.

## 6) Proposta de retomada (proximos 30 dias)

### Orcamento de referencia (dentro do escopo atual)

- **Teto mensal:** R$ 800 (media).
- **Media diaria aproximada:** R$ 26,60.
- **Relacao com fee:** verba de ads separada do fee de gestao (R$ 2.000/mês), mantendo previsibilidade de investimento da cliente.

### Mix recomendado (cenario principal: Meta + Google)

- **Meta Ads: R$ 560/mês (70%)**
  - Campanha 1: Conversas/WhatsApp (captacao direta).
  - Campanha 2: Video View/Reconhecimento (alimentar remarketing).
  - Publicos separados: "projeto completo" e "arquitetos".
- **Google Ads: R$ 240/mês (30%)**
  - Pesquisa com termos de alta intencao de marcenaria sob medida/projeto/execucao.
  - Geolocalizacao de atendimento e palavras negativas para reduzir demanda fora do ICP.

### Cenario alternativo (se decidir simplificar no curto prazo)

- **100% Meta Ads (R$ 800/mês)** por 30 dias para acelerar aprendizado de criativo + publico.
- Manter Google como fase seguinte apos estabilizar custo por conversa qualificada.

## 7) Plano tatico por semana

- **Semana 1:** subir 2-3 criativos por publico, revisar copies e CTA de qualificacao.
- **Semana 2:** pausar perdedores, concentrar verba em conjuntos com melhor custo por conversa qualificada.
- **Semana 3:** reforcar remarketing de engajados/video view e ajustar mensagem comercial de abertura.
- **Semana 4:** consolidar relatorio e decidir escala, manutencao ou pivot de angulo.

## 8) KPIs de controle (fase 2)

- Conversas iniciadas (WhatsApp).
- Conversas qualificadas (aderentes a projeto completo).
- Custo por conversa qualificada.
- Taxa conversa -> reuniao.
- Taxa reuniao -> proposta.

## 9) Proximos passos acordados (interno)

1. Validar com cliente os angulos criativos priorizados.
2. Preparar pacote minimo de criativos para teste A/B (nao iniciar rodada com 1 criativo apenas).
3. Revisar filtro de qualificacao na copy e na mensagem inicial de WhatsApp.
4. Iniciar nova rodada e revisar resultados com janela de leitura semanal.

## 10) Observacoes de governanca e seguranca

- Este relatorio nao replica conteudo bruto de WhatsApp/Drive.
- Dados sensiveis, credenciais e anexos ficam fora do Git.
- A fonte narrativa de contexto permanece em [CONTEXTO_LINHA_ESSENCIAL.md](./CONTEXTO_LINHA_ESSENCIAL.md).

## 11) Consolidacao no sistema (rodada 1)

- Rodada marcada como **consolidada** no historico interno da conta Benditta (fase 1 Meta Ads).
- Baseline oficial da rodada 1:
  - Periodo: **2026-03-09 a 2026-03-18**.
  - Investimento total: **R$ 439,20**.
  - Impressoes: **35.766**.
  - Alcance: **31.797**.
  - Cliques (todos): **222**.
  - Conversas iniciadas (OUTCOME_LEADS): **10**.
- Entregavel para cliente em tema claro:
  - HTML: `docs/clientes/benditta/relatorio-meta-fase1-2026-03-cliente.html`
  - PDF: `docs/clientes/benditta/RELATORIO_CLIENTE_BENDITTA_META_FASE1_2026-03.pdf`

## 12) Feedback comercial consolidado

- Dos **10 leads**, **2** evoluiram no funil.
- Qualidade geral: maioria dos leads buscava itens especificos de reforma, e nao projeto completo de ambiente.
- Um lead solicitou orcamento sem responder perguntas qualificadoras.
- O segundo lead pode evoluir como potencial **MQL**.

## 13) Proximos passos sugeridos

1. Criar formulario qualificador para proximos anuncios Meta (Adventure).
2. Finalizar a Landing Page (Adventure).
3. Rodar Google Ads (Adventure).
4. Adicionar saldo nas plataformas.
5. Solicitar novos materiais para as proximas rodadas.
6. Aguardar materiais (reels) pendentes do primeiro cronograma (Benditta).
7. Gerar mais material conforme novo cronograma (Benditta).
8. Receber playbook comercial ajustado da Benditta para analise da Adventure.

## 14) Observacao de funil (recomendacao)

- Alem de CPL e conversa iniciada, mapear o funil completo para decisoes melhores:
  - conversa iniciada -> reuniao -> orcamento -> proposta.

## 15) Perguntas qualificadoras sugeridas (inicio)

- Nome
- E-mail
- Telefone
- Quantidade de ambientes
- Tem projeto?
- Quanto pretende investir? (faixas de abaixo de R$ 15 mil ate acima de R$ 250 mil)
- Cidade (quando aplicavel)

## 16) Observacao do entregavel ao cliente

- PDF final em tema claro com logos de **Benditta** e **Adventure Labs**.
- Rodape do documento: gerado com base nos dados do Meta Ads vinculados ao sistema **Adventure Compass** da Adventure Labs.

