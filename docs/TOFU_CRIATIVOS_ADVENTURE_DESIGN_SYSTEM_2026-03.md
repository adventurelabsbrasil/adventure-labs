# Design system operacional — criativos TOFU Adventure

## Estrutura obrigatória de cada peça

- Tamanho final: `1080x1035` (feed) ou `1080x1920` (stories/reels).
- Quadro central: área `1:1` com prioridade de leitura (headline, subheadline, CTA).
- Hierarquia:
  - Headline: 1 linha (máx. 8–10 palavras), ou até 4 linhas com redução automática de tamanho.
  - Subheadline: 1–3 linhas.
  - CTA: botão ou chamada curta.

## Paleta e estilo

- Fundo dark: variações entre azul profundo e grafite.
- Destaques: vermelho Adventure (`#DA0028`) + azul próximo ao site (`#1976D2` ou `#042AA1`).
- Contraste alto, acabamento premium, grão sutil, vidro leve no card.

## Tipografia

- Preferência de marca: **Space Grotesk** (variable font `wght` 500–700).
- O script baixa a fonte em `tools/scripts/fonts/adventure_tofu/` na primeira execução (não versionada).

## Componentes visuais

- `Frame_1x1_Central`: container com leve glow e borda suave.
- `Headline_Block`: texto principal, peso alto.
- `Subheadline_Block`: apoio orientado a dor/ganho.
- `CTA_Block`: botão contrastante.
- `Brand_Footer`: assinatura "Adventure Labs" discreta.

## Regras de qualidade

- Mensagem entendida em até 2 segundos.
- Evitar excesso de texto.
- CTA coerente com destino (`/martech` ou Instagram).
- Layout limpo, sem ruído fora da área central.
