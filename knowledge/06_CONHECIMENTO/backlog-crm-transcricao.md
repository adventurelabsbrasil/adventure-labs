# Backlog: Transcrição de áudio no CRM Adventure

Item de produto/backlog para o CRM da Adventure (e para o ecossistema Admin/CRM).

---

## Contexto

No fluxo comercial e de atendimento, entram **áudios** (ex.: WhatsApp) com decisões, desistências ou pedidos de clientes. Exemplo: Sr. Emir enviou áudio dizendo que não queria mais tratar do assunto; o áudio está em `99_ARQUIVO/Emir`.

Para não depender de escuta manual e para enriquecer o CRM com histórico searchable, é importante poder **transcrever áudios** e associar ao contato/oportunidade.

---

## Objetivo

- Transcrever áudios (WhatsApp, chamadas, etc.) e registrar no CRM.
- Opções: (1) implementar transcrição no app (API de speech-to-text); (2) incluir no plano de produto do CRM para fase posterior; (3) processo manual com ferramenta externa e colagem no CRM até haver feature.

---

## Ação sugerida

- **Curto prazo:** Documentar no CRM ou no Admin que áudios importantes ficam em `99_ARQUIVO/[nome-contato]` e, quando houver tempo, transcrever e anotar em documento ou campo de nota do cliente.
- **Médio prazo:** Incluir no roadmap do CRM Adventure: campo ou anexo com transcrição; integração com API de transcrição (ex.: Whisper, Google Speech-to-Text) para upload de áudio e geração de texto.

---

*Origem: [BrainDump.md](../99_ARQUIVO/BrainDump.md) (03/03/2026).*
