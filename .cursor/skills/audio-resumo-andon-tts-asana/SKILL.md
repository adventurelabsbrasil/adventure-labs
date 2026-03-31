---
name: audio-resumo-andon-tts-asana
description: >-
  Gera áudio MP3 de um resumo (TTS via admin proxy /api/csuite/andon-tts) e registra no Asana
  em uma task de referência (preferência por task “Diário: gerar áudio do relatório”; fallback na Inbox).
  Use quando o usuário pedir “audio/áudio/resumo em áudio”, “TTS”, “ElevenLabs”, “andon-tts”,
  “relatório em áudio” ou quando houver instrução explícita para “incluir no Asana”.
---

# Skill: Áudio Resumo Andon (TTS + Asana)

## Objetivo
Reduzir retrabalho quando você solicitar um “áudio do relatório de hoje” com “ações urgentes para amanhã”.

## Premissas
- Não inventar credenciais (nunca expor `ELEVEN_LABS_API_KEY`/`CRON_SECRET`).
- Gerar MP3 usando o proxy do Admin: `POST /api/csuite/andon-tts` com header `x-admin-key = CRON_SECRET`.
- Publicar no Asana adicionando um comentário na task alvo.

## Fluxo (passo a passo)
1. Definir data:
   - `hoje` = data corrente no formato `YYYY-MM-DD`.
   - `amanha` = `hoje + 1 dia` no formato `YYYY-MM-DD`.
2. Obter roteiro do áudio:
   - Se o usuário já forneceu o conteúdo do relatório (ou as listas “feito hoje” e “urgente amanhã”), use como fonte.
   - Caso contrário, ler:
     - `docs/revisao-asana/asana-concluidas.md` (feito hoje)
     - `docs/revisao-asana/asana-pendentes.md` (pendências)
     - e incorporar no roteiro os pontos mais diretamente acionáveis.
3. Criar roteiro para ~55-80 palavras (pt-BR):
   - 1 frase de abertura (tema do dia)
   - 3 prioridades principais (mencionar responsável quando existir)
   - 1 frase final pedindo ação para amanhã
4. Gerar MP3 via proxy ElevenLabs:
   - Garantir que o arquivo do MP3 seja escrito em:
     - `docs/audios/relatorio-${hoje}.mp3`
   - Persistir sem adicionar ao Git (o repo ignora `*.mp3`).
   - Método:
     - carregar `apps/core/admin/.env.local`
     - chamar `https://admin.adventurelabs.com.br/api/csuite/andon-tts` com `x-admin-key: CRON_SECRET`
     - body: `{ "text": "<roteiro>" }`
5. Encontrar task do Asana para comentar (preferência + fallback):
   - Preferência: task cujo nome contém `Diário: gerar áudio do relatório`.
   - Localizar primeiro no projeto ACORE (`1213811323633178`) e, se não achar/validar, buscar na `Inbox` (`1213744799182607`).
   - Se houver múltiplas, escolher a mais recente criada hoje (quando disponível) ou, como fallback, a primeira que bater no texto.
6. Evitar comentário duplicado:
   - Usar `get_task` com `include_comments=true` na task alvo.
   - Se algum comentário já mencionar `docs/audios/relatorio-${hoje}.mp3`, não criar outro comentário.
7. Adicionar comentário no Asana:
   - Incluir:
     - link/caminho do MP3: `docs/audios/relatorio-${hoje}.mp3`
     - o roteiro usado (texto corrido)
     - lista “urgente amanhã” (max 2-4 itens), preferencialmente as tasks com `due_on == amanha` e nomes relacionados a:
       - `OpenClaw`, `Time Bank`, `n8n`, `workflow`, `RLS`, `policies`
8. Retornar ao usuário:
   - confirmação do MP3 gerado
   - GID/link da task Asana onde foi registrado

## IDs úteis (repository)
- Inbox project: `1213744799182607`
- ACORE — Plano & roadmap project: `1213811323633178`
- Rotina TTS (Admin proxy): `/api/csuite/andon-tts`

## Exemplos de gatilhos
- “me mande um audio do relatório”
- “crie áudio (TTS) e inclua no Asana”
- “use ElevenLabs/andon-tts”
- “urgente amanhã: incluir no áudio”

