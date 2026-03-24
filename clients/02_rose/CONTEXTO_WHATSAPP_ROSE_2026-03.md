# Rose — Contexto WhatsApp (síntese operacional) 2026-03

Documento de síntese operacional com base em leitura direta da pasta `apps/clientes/02_rose/wapp_conversations/`, incluindo os exports em subpastas `WhatsApp Chat - *`.

## Auditoria de varredura

- **Última varredura:** 2026-03-24
- **Responsável pela síntese:** agente (Cursor)
- **Escopo da leitura:** 9 subpastas `WhatsApp Chat - *` + arquivos-raiz da pasta `wapp_conversations`
- **Método:** leitura dos `_chat.txt` e síntese operacional com higienização de PII

## Fontes analisadas (subpastas)

- `WhatsApp Chat - Adventure • Rose 2`
- `WhatsApp Chat - Adventure • Rose 3`
- `WhatsApp Chat - Carlo Luiz Tebaldi 2`
- `WhatsApp Chat - Clayton Pisoni`
- `WhatsApp Chat - IA | Rose Portal Advocacia 2`
- `WhatsApp Chat - Lidera | Rose Portal Advocacia 2`
- `WhatsApp Chat - Nicolas Sauer`
- `WhatsApp Chat - Roselaine Portal Advocacia 2`
- `WhatsApp Chat - Roselaine PortalAdvocacia 2`
- Arquivos-raiz adicionais: `_chat.txt` e `_chat 2.txt`

## Janela temporal observada

- Conversas com histórico desde **2023-04** (mais antigo observado) até **2026-03**.
- Maior densidade operacional entre **2025-08 e 2026-03**.

## Padrão operacional observado nas conversas

- Grupos com foco em operação comercial/atendimento, com mensagens recorrentes de:
  - "**NOVO CONTRATO ASSINADO**"
  - nome do cliente
  - link de pasta no Drive
  - telefone/contato
  - pedido de conferência dos dados
- Forte uso de Drive por contrato para fluxo operacional e handoff interno.
- Interação do Rodrigo no grupo em tarefas de conferência/acesso (ex.: solicitação e validação de acesso).

## Pontos de contexto relevantes para processo

- Há um fluxo consistente de entrada de novos contratos via WhatsApp + pasta de Drive.
- Existe recorrência de temas de mídia/performance (Google, Meta, campanhas, leads, Ads), com pico no período de operação Lidera/Adventure.
- Aparecem tópicos de serviços complementares (ex.: landing pages, backup/email, workspace), reforçando escopo ampliado além de tráfego em momentos específicos.
- Foi observado caso de lead de site com necessidade de tag de origem e menção de integração não capturada em ferramenta, indicando potencial gap de tracking.
- Há registro de mudança de número da Rose em 2026-02, ponto relevante para higiene de cadastro/canais.

## Alertas de qualidade de dados (extraídos do histórico)

- Foram observadas inconsistências em alguns links de Drive (URLs duplicadas/concatenadas no campo de link).
- Há duplicidade de entrada de contrato em pelo menos um caso no mesmo dia.
- O conteúdo bruto contém PII (nomes/telefones) e dados sensíveis operacionais; não deve ser replicado em docs de síntese.

## Recomendações operacionais derivadas

- Padronizar checklist de entrada de contrato (validação de link Drive, deduplicação, tag de origem).
- Registrar no hub da cliente apenas síntese e decisões, mantendo bruto com acesso controlado.
- Mapear integração de origem "Site" para evitar perda de rastreio no atendimento.
- Revisar periodicamente mudança de contatos/canais para manter roteamento correto de atendimento.

## Governança e segurança

- Este arquivo é síntese operacional; evitar colar export bruto de WhatsApp no Git.
- Manter histórico bruto somente em repositório de acesso restrito (Drive/ambiente controlado).
- Não registrar credenciais, tokens, PII sensível ou transcrições extensas em documentação versionada.

## Referências cruzadas

- Contexto base da conta: `CONTEXTO_CONTA_ROSE_2026-03.md`
- Histórico operacional de mídia: `HISTORICO_GOOGLE_ADS_2026-03.md`
- Hub da cliente: `README.md`
