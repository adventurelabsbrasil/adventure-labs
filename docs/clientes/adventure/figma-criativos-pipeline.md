# Pipeline de criativos — arquivo Figma «Criativos»

Referência direta: [Criativos (Figma)](https://www.figma.com/design/3NE3LaYrzQoUK7CQYAplvg/Criativos?node-id=193-12)

| Campo | Valor |
|--------|--------|
| `fileKey` | `3NE3LaYrzQoUK7CQYAplvg` |
| Página / canvas | `Ads` · node `193:12` |

## 0. Limite do Figma MCP (Starter) e alternativas

O **Figma MCP** (`use_figma`) pode atingir cota do plano. Para continuar sem travar o fluxo:

1. **No Figma (manual, rápido):** na página **Ads**, selecione os 10 frames da [tabela Adventure (secção 7)](#7-frames-adventure--node-id-e-deep-links), copie e cole na página `Adventure_TOFU_martech` (ou crie a página e organize em duas colunas: Stories | Feed).
2. **Duplicar arquivo inteiro:** com o ficheiro aberto, use o menu do nome do ficheiro → **Duplicate**, ou remova `?node-id=...` da URL e acrescente `/duplicate` ao caminho (comportamento pode variar; o menu é o mais fiável).
3. **Canva em vez de MCP Figma para execução:** veja [`WORKFLOW_CANVA_FIGMA.md`](criativos_tofu_2026-03/WORKFLOW_CANVA_FIGMA.md) — **Canva AI Connector (MCP)** e script **Canva Connect** em `tools/canva-connect/` para criar canvases vazios nas medidas certas e editar no browser.
4. **Upgrade de plano Figma** ligado ao MCP, se quiser automatizar cópias de frames via `use_figma` sem limite baixo.

Este arquivo foi inspecionado via metadata do Figma: há **várias séries** no mesmo board (incluindo peças de **RH / funil de vagas** nas séries 01–03 e peças **Adventure / tráfego e dados** a partir da série **04**).

## 1. Convenção de formatos no arquivo

O grid na página **Ads** segue três colunas fixas:

| Coluna | Prefixo típico | Tamanho do frame |
|--------|----------------|------------------|
| Esquerda | `Meta_Stories_*` | **1080 × 1920** |
| Centro | `Meta_Feed_*` | **1080 × 1080** |
| Direita | `LinkedIn_*` | **1080 × 1350** |

**Atenção:** no Meta, o feed às vezes usa **1080 × 1035** (ratio próprio). No Figma atual o feed está em **1080 × 1080**. Para bater com o gerenciador, ou exporte em 1080×1080 e use o crop da plataforma, ou crie uma variante de frame `Meta_Feed_1035` duplicando o centro e ajustando altura.

## 2. Séries identificadas (nomes dos frames)

- **01–03:** foco em recrutamento / planilhas / funil de RH (copy e mockups de produto diferentes do escopo martech atual).
- **04 (`Meta_*_04`):** tom **Adventure** — escala, tráfego pago, inteligência de dados; uso de fundo escuro, overlay «luzes», gráfico comparativo, logo no rodapé.
- **05_A / 05_B:** variações de mensagem («infraestrutura» vs «tráfego pago não é loteria») com mesma base visual.
- **06–07:** ICP explícito (empresas **100k+/mês**), destaque de retorno e dados.

Use estas séries como **modelos**: duplicar frame → trocar só texto / imagem / screenshot.

## 3. Anatomia típica de um frame (padrão observado)

1. **Fundo:** `image 38` ou wallpaper (`AdventureLabs_Wallpaper_Desktop`), muitas vezes com **máscara** + camada **«luzes»** para profundidade.
2. **Headline:** bloco de texto (às vezes 2 linhas com hierarquia forte, ex.: pergunta + «escalar?»).
3. **Proposta / CTA visual:** retângulos arredondados semi-transparentes com copy de apoio.
4. **Prova visual:** mockup de UI, gráfico, máscara com imagem (`Mask group`).
5. **Marca:** `Group 12` (logo Adventure) — em stories costuma ficar na **parte inferior** do frame (~safe zone acima do UI do Instagram).

## 4. Pipeline operacional (brief → export)

### Fase A — Brief (uma linha por criativo)

| Campo | Exemplo |
|--------|---------|
| `id` | `ADV-TOFU-04-feed` |
| `formato` | `Meta_Feed` / `Meta_Stories` / `LinkedIn` |
| `headline` | texto aprovado |
| `sub` | complemento |
| `cta_ui` | texto no botão ou faixa |
| `destino` | `/martech` · Instagram · LinkedIn |
| `angulo` | autoridade / ICP / dor |

Pode ser uma planilha ou o Markdown da matriz em `docs/TOFU_CRIATIVOS_ADVENTURE_MATRIZ_2026-03.md`.

### Fase B — Produção no Figma

1. Duplicar o frame **modelo** mais próximo (ex.: `Meta_Feed_04` ou `Meta_Stories_05_A`).
2. Manter **componentes** e **estilos** ligados (cores, tipografia); só trocar conteúdo de texto e imagens exportadas do site/produto.
3. Verificar **safe area** em stories (logo e texto crítico não colados na borda inferior).
4. Nomear o frame: `Meta_Feed_ADV_TOFU_{tema}_{versao}` para achar depois no export.

### Fase C — Export

1. Selecionar frames a exportar → **Export** PNG (1x ou 2x conforme rede).
2. Nomear arquivos alinhado ao brief (`ADV-TOFU-04-feed.png`).

### Fase D — QA (checklist rápido)

- [ ] Dimensões batem com o formato escolhido.
- [ ] Legibilidade em tamanho de celular (thumbnail).
- [ ] Logo Adventure visível mas não competindo com headline.
- [ ] Copy sem erro de português; números/claims alinhados à página de destino.
- [ ] Arquivo nomeado e pasta versionada (data ou sprint).

## 5. Alternativa: captura via Google Drive (`rclone`)

Se a equipa exporta do Figma para uma pasta no Drive:

1. Padronizar pasta, ex.: `Drive/Criativos/2026-03-meta/export/`.
2. Sincronizar para o repo (somente se política permitir arte em Git):

   ```bash
   rclone copy "mydrive:Caminho/Para/Exports" "docs/clientes/adventure/figma-exports-YYYY-MM" -P
   ```

3. O pipeline de **análise** (este doc + matriz de copy) continua igual; só muda a origem binária (PNG vindos do Drive em vez de gerador Python).

## 6. Nova página no Figma: `Adventure_TOFU_martech`

Faça **no app Figma** (não versionamos o `.fig` no Git). Objetivo: página só com templates Adventure, sem as séries 01–03 de RH.

### Checklist

1. No arquivo [Criativos](https://www.figma.com/design/3NE3LaYrzQoUK7CQYAplvg/Criativos?node-id=193-12), clique em **+** ao lado das páginas → nome **`Adventure_TOFU_martech`**.
2. Na página **Ads**, selecione os frames da tabela abaixo (séries **04–07** e variantes **05**), **copie** (`⌘C` / `Ctrl+C`) e **cole** na nova página (`⌘V`).
3. **Alinhe** em grid opcional: coluna 1 = Stories 1080×1920, coluna 2 = Feed 1080×1080 (deixe coluna 3 vazia ou para futuro LinkedIn 1080×1350).
4. **Renomeie** frames para padrão de produção, ex.: `ADV_Martech_MetaStories_04_template`, `ADV_Martech_MetaFeed_04_template`.
5. **Variante 1080×1035:** duplique cada `Meta_Feed_*` → ajuste altura do frame para **1035** → verifique se headline e logo continuam na safe area → renomeie sufixo `_1035`.
6. **Marcar templates:** prefixo fixo `TEMPLATE_` ou componente de página, para ninguém exportar o modelo por engano.
7. **Publicar** (se usar biblioteca) ou apenas manter no arquivo compartilhado com o time de mídia.

**Nota:** na série **04** deste arquivo não há frame `LinkedIn_04`; só Stories + Feed. Para LinkedIn no futuro, duplique um `LinkedIn_*` de proporção 1080×1350 da mesma estética (ex. fundo + luzes) ou crie do zero na nova página.

## 7. Frames Adventure (node-id e deep links)

`fileKey` fixo: `3NE3LaYrzQoUK7CQYAplvg`. Deep link: `https://www.figma.com/design/3NE3LaYrzQoUK7CQYAplvg/Criativos?node-id=<id-com-hífen>` (ex.: `193:287` → `node-id=193-287`).

| Série | Nome do frame | Node ID | Tamanho | Abrir no Figma |
|--------|----------------|---------|---------|----------------|
| 04 | `Meta_Stories_04` | `193:251` | 1080 × 1920 | [abrir](https://www.figma.com/design/3NE3LaYrzQoUK7CQYAplvg/Criativos?node-id=193-251) |
| 04 | `Meta_Feed_04` | `193:287` | 1080 × 1080 | [abrir](https://www.figma.com/design/3NE3LaYrzQoUK7CQYAplvg/Criativos?node-id=193-287) |
| 05 A | `Meta_Stories_05_A` | `193:315` | 1080 × 1920 | [abrir](https://www.figma.com/design/3NE3LaYrzQoUK7CQYAplvg/Criativos?node-id=193-315) |
| 05 A | `Meta_Feed_05_A` | `193:328` | 1080 × 1080 | [abrir](https://www.figma.com/design/3NE3LaYrzQoUK7CQYAplvg/Criativos?node-id=193-328) |
| 05 B | `Meta_Stories_05_B` | `193:357` | 1080 × 1920 | [abrir](https://www.figma.com/design/3NE3LaYrzQoUK7CQYAplvg/Criativos?node-id=193-357) |
| 05 B | `Meta_Feed_05_B` | `193:371` | 1080 × 1080 | [abrir](https://www.figma.com/design/3NE3LaYrzQoUK7CQYAplvg/Criativos?node-id=193-371) |
| 06 | `Meta_Stories_06` | `193:385` | 1080 × 1920 | [abrir](https://www.figma.com/design/3NE3LaYrzQoUK7CQYAplvg/Criativos?node-id=193-385) |
| 06 | `Meta_Feed_06` | `193:342` | 1080 × 1080 | [abrir](https://www.figma.com/design/3NE3LaYrzQoUK7CQYAplvg/Criativos?node-id=193-342) |
| 07 | `Meta_Stories_07` | `193:399` | 1080 × 1920 | [abrir](https://www.figma.com/design/3NE3LaYrzQoUK7CQYAplvg/Criativos?node-id=193-399) |
| 07 | `Meta_Feed_07` | `193:419` | 1080 × 1080 | [abrir](https://www.figma.com/design/3NE3LaYrzQoUK7CQYAplvg/Criativos?node-id=193-419) |

Total na página **Ads**: **10 frames** martech (sem contar RH 01–03). Use `Meta_Feed_04` como **template mestre** de feed e `Meta_Stories_05_A` ou `_04` como referência de stories.

## 8. Referência visual (exemplo analisado)

Frame **`Meta_Feed_04`** (`193:287`): pergunta de escala + faixa «Tráfego pago com inteligência de dados», comparativo visual «tráfego comum» vs «inteligência de dados», fundo escuro e logo Adventure — alinhado ao posicionamento martech do site.

Para novos anúncios, duplique esses frames na página **`Adventure_TOFU_martech`** e altere só texto, imagem e export.
