# Pacote de Criativos TOFU - Adventure

## Entrega

- 10 criativos `1080x1035` (feed).
- 10 criativos `1080x1920` (stories/reels).
- Total: 20 arquivos PNG.

## Regenerar os PNG

Na raiz do monorepo:

```bash
python3 tools/scripts/generate_tofu_creatives.py
```

Na primeira execução o script baixa a **Space Grotesk** (variable) para `tools/scripts/fonts/adventure_tofu/` (pasta ignorada no Git).

## Fluxo profissional (Canva / Figma)

Ver `WORKFLOW_CANVA_FIGMA.md` nesta pasta: quando a peça precisa de acabamento de marca, use **template no Figma ou Canva** e copie a matriz de textos.

Se o **Figma MCP** estiver limitado: script Canva Connect em [`tools/canva-connect/`](../../../../tools/canva-connect/) (20 canvases vazios nas medidas) ou **Canva AI Connector** MCP (ver workflow).

**Rascunho de hierarquia (HTML):** [`tools/adventure-creative-preview/`](../../../../tools/adventure-creative-preview/) — abre `index.html` no browser para validar headline/sub/CTA nos dois formatos antes do designer aplicar no Figma.

## Convencao de nomes

`tofuXX_{feed|stories}_{largura}x{altura}_{martech|instagram}.png`

## Arquivos

- tofu01_feed_1080x1035_martech.png
- tofu01_stories_1080x1920_martech.png
- tofu02_feed_1080x1035_martech.png
- tofu02_stories_1080x1920_martech.png
- tofu03_feed_1080x1035_martech.png
- tofu03_stories_1080x1920_martech.png
- tofu04_feed_1080x1035_martech.png
- tofu04_stories_1080x1920_martech.png
- tofu05_feed_1080x1035_martech.png
- tofu05_stories_1080x1920_martech.png
- tofu06_feed_1080x1035_instagram.png
- tofu06_stories_1080x1920_instagram.png
- tofu07_feed_1080x1035_instagram.png
- tofu07_stories_1080x1920_instagram.png
- tofu08_feed_1080x1035_instagram.png
- tofu08_stories_1080x1920_instagram.png
- tofu09_feed_1080x1035_instagram.png
- tofu09_stories_1080x1920_instagram.png
- tofu10_feed_1080x1035_instagram.png
- tofu10_stories_1080x1920_instagram.png

## QA aplicado

- Dimensões validadas para os 20 arquivos.
- Quadro central 1:1 aplicado no layout de todas as peças.
- Split de destino 50/50 aplicado (`martech` e `instagram`).
- Copy em pt-BR com acentuação correta, alinhada ao ICP das páginas principais do Adventure.

## Fontes de apoio

- Matriz de copy: `docs/TOFU_CRIATIVOS_ADVENTURE_MATRIZ_2026-03.md`
- Guia de sistema visual: `docs/TOFU_CRIATIVOS_ADVENTURE_DESIGN_SYSTEM_2026-03.md`
