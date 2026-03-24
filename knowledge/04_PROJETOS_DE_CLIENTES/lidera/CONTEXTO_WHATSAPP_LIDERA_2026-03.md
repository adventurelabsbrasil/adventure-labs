# Lidera — Contexto WhatsApp (síntese operacional) 2026-03

Documento de síntese operacional com base em leitura da pasta:

- `apps/clientes/01_lidera/wapp_conversations/`

## Auditoria de varredura

- **Última varredura:** 2026-03-24
- **Responsável pela síntese:** agente (Cursor)
- **Escopo da leitura:** 11 exports `_chat*.txt` na pasta `wapp_conversations`
- **Método:** leitura agregada de mensagens (sem replicar PII) e síntese de temas recorrentes

## Janela temporal observada

- Registros entre **03/10/2025** e **10/03/2026** nos exports analisados.
- Há também conversa histórica individual com Charles (arquivo `_chat 2.txt`) com registros anteriores (2023+), usada apenas como contexto relacional.

## Estrutura de grupos e intensidade de conversa

- Foram identificados múltiplos contextos de conversa, com maior volume em:
  - operação direta Rodrigo ↔ Guilherme/Charles,
  - grupo `Lidera | Rose Portal Advocacia`,
  - fluxo com `IA`.
- Temas mais recorrentes no conjunto:
  - IA, Google, CRM, Ads, campanhas, leads, Drive, propostas, relatórios.

## Pessoas-chave (contexto de relacionamento)

- **Guilherme Emerim** — cofundador/dono atual do Lidera.
- **Charles Simon** — cofundador/dono atual do Lidera.
- **Andressa Medeiros** — atuando com o time do Lidera no período analisado.

> Nota: os papéis acima foram confirmados pelo Founder e alinhados ao contexto operacional.

## Sinais operacionais relevantes

- Forte uso de WhatsApp para alinhamento tático de campanha, ativos e priorização.
- Uso recorrente de Drive como apoio operacional.
- Presença de temas de martech (CRM/IA/relatórios/dashboard), além de mídia paga.
- Interseção de contexto com contas/clientes relacionados (ex.: Rose), reforçando necessidade de indexação por cliente/projeto.

## Alertas de governança

- Export bruto contém PII e conteúdos sensíveis operacionais; não deve ser replicado no Git em formato bruto.
- Manter no repositório apenas sínteses e decisões, com dados mínimos necessários.

## Recomendações de continuidade

- Sempre registrar: decisão, responsável e próximo passo ao consolidar conversas em docs.
- Vincular cada novo tema a um hub de cliente/projeto para evitar contexto disperso.
- Quando houver item executável, refletir no consolidado mensal de entregas e no Asana.

## Referências cruzadas

- Hub da conta Lidera: `README.md`
- Contexto base da conta: `CONTEXTO_CONTA_LIDERA_2026-03.md`
- Histórico operacional: `HISTORICO_OPERACIONAL_LIDERA_2026-03.md`
- Entrega PLL: `../lidera-pll-planilha-cef-2026-03-10.md`
