# Decisão: Resumo diário com IA (Gemini) e automação (n8n no Railway)

Documento que registra as escolhas para o fluxo de resumo diário automático e backlog de ideias.

Ref.: Plano "Resumos diários IA e backlog ideias"; [backlog-automacoes.md](backlogs_roadmap/backlog-automacoes.md).

---

## A. Uso da API Gemini

- **Decisão:** Usar a **Gemini API** para geração de texto via IA no ecossistema Admin.
- **Onde se aplica:**
  - Resumo diário: a partir dos dados do dia (relatórios, tarefas concluídas, opcionalmente projetos), o Gemini gera o texto do resumo (humano + agentes).
  - Backlog de ideias: geração de ideias de copy/publicações/referências pela skill diária pode usar Gemini (no Admin ou no n8n).
- **Implementação:** O Admin (Next.js) pode expor rotas que recebem os dados ou a data, chamam a Gemini API (env var `GEMINI_API_KEY` ou equivalente) e devolvem ou persistem o resultado. Assim o segredo fica apenas no Admin (ou no n8n, se a chamada à Gemini for feita lá).

---

## B. n8n no Railway para jobs diários

- **Decisão:** Usar **Railway para hospedar o n8n**; o n8n será o orquestrador dos fluxos agendados.
- **Resolve também:** O “outro ponto” (rodar coisas diariamente): sim. O n8n no Railway serve tanto para:
  1. **Resumo diário:** Trigger cron (ex.: todo dia às 7h) → n8n chama o Admin (ex.: GET dados do dia + POST resumo gerado, ou uma única rota que gera e salva) ou chama Gemini e depois POST no Admin para gravar em `adv_daily_summaries`.
  2. **Ideias diárias:** Trigger cron (ex.: 1x por dia) → n8n executa o fluxo de referências/ideias (com Gemini se configurado no n8n ou no Admin) e envia as ideias para `POST /api/ideias` no Admin.
- **Vantagem:** Um único lugar (n8n) para agendar e orquestrar integrações (Drive, Gmail, Sheets, Google Chat, etc.) e os fluxos de resumo + ideias, sem depender de Vercel Cron ou GitHub Actions para esses jobs.

---

## Resumo do fluxo (visão alvo)

1. **Resumo diário:** n8n (Railway) dispara no horário definido → chama API do Admin que lê relatórios/tarefas/projetos do dia, chama Gemini para gerar o resumo, grava em `adv_daily_summaries` (ou n8n chama Gemini e depois POST com o texto no Admin).
2. **Ideias:** n8n dispara 1x por dia → gera ideias (Gemini no n8n ou no Admin) → POST em `/api/ideias` → grava em `adv_ideias`.

---

*Atualizado em 03/2026.*
