---
title: FigJam — Plano de mídia (lançamento Assessoria Martech)
domain: marketing
tags: [figjam, assessoria-martech, plano-de-midia, lancamento, gantt]
updated: 2026-03-19
gantt_anchor: "Início da veiculação: 2026-04-01"
owner: "Ogilvy (CMO) / Igor Ribas (design)"
---

# FigJam — Plano de mídia (lançamento Assessoria Martech)

Visão operacional do **plano de mídia de lançamento** da Assessoria Martech: mapa de **conexões** (estratégia → ativos → canais → dados → equipe) e **cronograma** (Gantt gerado + tabela com anotações no FigJam).

A **fonte narrativa** continua no Google Doc; este arquivo no Git só guarda **links**, **metadados** e uma **síntese estrutural** para alinhar time e agentes (sem colar texto confidencial do doc).

---

## Links rápidos

| Artefato | URL |
|----------|-----|
| Google Doc (fonte) | [Abrir documento](https://docs.google.com/document/d/1p2IAIfm8v9j19o9iAazF4yHFfmriLXH9741Z3eyfyLY/edit) |
| FigJam — **Diagrama de conexões** (claim) | [Abrir no FigJam](https://www.figma.com/online-whiteboard/create-diagram/03f2aa1e-8695-433a-bcc0-ef227641d4a8?utm_source=cursor&utm_content=edit_in_figjam) |
| FigJam — **Cronograma Gantt** (claim, **início campanha 01/04/2026**) | [Abrir no FigJam](https://www.figma.com/online-whiteboard/create-diagram/c0fcb081-b3d0-40c2-bb4e-49e4b28143b4?utm_source=cursor&utm_content=edit_in_figjam) |

### Unificar em um único board (recomendado)

1. Abra cada link acima e faça **Claim** na conta Figma da Adventure.
2. Copie os frames gerados para **um** arquivo FigJam de equipe (ex.: pasta Marketing / Assessoria).
3. Renomeie os frames: `01 — Diagrama de conexões` e `02 — Cronograma Gantt`.
4. Adicione o frame `03 — Tabela de etapas (Gantt + anotações)` usando a **tabela nativa do FigJam** (ou grid) com as colunas abaixo; preencha datas reais conforme o Google Doc.
5. Atualize a coluna **Link FigJam unificado** neste markdown quando existir um único URL de arquivo (substitui ou complementa os links de claim).

---

## Síntese estrutural (espelho do plano)

### 1) Diagrama de conexões — nós e relações

**Blocos (subgrafos):**

- **Estratégia:** ICP e oferta → Brief de campanha.
- **Ativos:** Mensagens/CTAs → Criativos; Brief → LP/captura.
- **Canais:** Meta Ads, Google Ads, LinkedIn Ads, orgânico/conteúdo (alimentados por criativos/copy).
- **Operação e dados:** LP e mídia → Pixel/tags → CRM/follow-up → Relatórios/KPIs.
- **Equipe:** Design → criativos; Tráfego → contas de mídia; Comercial → CRM.

**Leitura:** setas indicam dependência ou fluxo (brief orienta peças e LP; mídia e LP alimentam medição; CRM fecha o loop com relatórios).

### 2) Cronograma — tabela para o FigJam (Gantt + anotações)

Use estas linhas como **ponto de partida**; ajuste datas e owners no board e no Google Doc.

| Etapa | Início (ex.) | Fim (ex.) | Owner sugerido | Entregável | Anotações / riscos |
|-------|----------------|-----------|----------------|------------|-------------------|
| Brief e ICP | ~04/03 | ~09/03 | Founder + CMO | Brief aprovado | Alinhar ao Google Doc |
| Proposta de mensagem | ~10/03 | ~13/03 | CMO + Design | Matriz de mensagens | Alinhar com LP |
| Wireframe LP | ~14/03 | ~17/03 | Design | Wireframe | Ver [lp-martech-escopo-wireframe.md](./lp-martech-escopo-wireframe.md) |
| LP em produção | ~18/03 | ~24/03 | Dev + Design | `/lp` ou equivalente | Formulário / WhatsApp / Calendly |
| Kit criativos v1 | ~14/03 | ~25/03 | Design | Peças por canal | Paralelo à LP |
| Estrutura de contas | ~25/03 | ~27/03 | Tráfego | Campanhas rascunho | Antes do go-live |
| Pixel e conversões | ~25/03 | ~27/03 | Tráfego + Dev | Eventos mapeados | QA antes de 01/04 |
| **Início veiculação** | **01/04** | — | Tráfego | Campanha no ar | Marco do plano |
| Escala e otimização | após 01/04 | — | Tráfego | Planos de escala | Ver Gantt FigJam |
| Dashboard e relatório | ~08/04 | — | CMO + Ops | Relatório recorrente | n8n / BI conforme stack |

*Datas alinhadas ao Gantt FigJam com **início de veiculação em 01/04/2026**; ajuste fino conforme o Google Doc.*

---

## Manutenção

- Quando o Google Doc mudar, atualizar **tabela e stickies** no FigJam e a data `updated` deste arquivo.
- **Card no Asana:** com `ASANA_ACCESS_TOKEN` válido em `apps/core/admin/.env.local`, rode:

  `cd tools/asana-cli && pnpm run create:marketing-artifact`

  (se o token OAuth expirou, renove com `pnpm run login:oob:write` ou use PAT — ver [README do asana-cli](../../tools/asana-cli/README.md).) Depois de criado, opcionalmente cole o **permalink** da tarefa num comentário neste arquivo ou num sticky no FigJam.

---

*Gerado em 19/03/2026. Gantt atualizado para **início de campanha 01/04/2026**; consolidar no board único da equipe.*
