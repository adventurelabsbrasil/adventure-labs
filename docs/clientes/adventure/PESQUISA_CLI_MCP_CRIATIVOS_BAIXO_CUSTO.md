# Pesquisa: CLI / MCP para gerar criativos (custo zero ou baixo)

Resumo para a Adventure: opções **encontradas em documentação pública e GitHub** (março/2026). Nenhuma substitui 100% um designer + template de marca; combinam **template + dados + render**.

## Legenda rápida

| Custo | Significado |
|--------|-------------|
| **R$0** | Só máquina local / open source (CPU, disco). |
| **Baixo** | Free tier generoso, ou pago só quando escala. |

---

## 1. MCP (Model Context Protocol)

### 1.1 Canva AI Connector (Canva)

- **O quê:** MCP oficial liga o agente à **conta Canva** — criar designs vazios, listar, exportar (conforme plano).
- **Custo:** Conta Canva; algumas funções podem exigir plano pago (ver [documentação](https://www.canva.dev/docs/connect/canva-mcp-server-setup.md)).
- **Repo / doc:** [Canva AI Connector setup](https://www.canva.dev/docs/connect/canva-mcp-server-setup.md) — `npx mcp-remote@latest https://mcp.canva.com/mcp`.
- **No monorepo:** fluxo + script Connect em [`tools/canva-connect/README.md`](../../../tools/canva-connect/README.md).

### 1.2 Figma MCP oficial

- **O quê:** `use_figma` (Plugin API) — leitura/escrita no canvas.
- **Custo:** Pode haver **limite por plano** (ex.: Starter); política de preços pode evoluir — ver [Figma MCP / developers](https://developers.figma.com/docs/figma-mcp-server/).
- **Alternativa comunitária (avaliar):** repositórios como [thirdstrandstudio/mcp-figma](https://github.com/thirdstrandstudio/mcp-figma) ou [mohammeduvaiz/figma-mcp-server](https://github.com/mohammeduvaiz/figma-mcp-server) — em geral expõem sobretudo **REST** (comentários, ficheiros, export); **duplicar frames no canvas** continua a ser território de **Plugin API**, não de REST puro.

### 1.3 Canva Dev MCP (`@canva/cli mcp`)

- **O quê:** Documentação e fluxo para **Canva Apps / Connect** (desenvolvimento de integrações).
- **Custo:** R$0 para docs; não é o mesmo que editar designs na conta como o AI Connector.
- **Doc:** [Dev MCP server](https://www.canva.dev/docs/connect/mcp-server.md).

---

## 2. CLI / código — custo ~zero (local)

### 2.1 HTML/CSS + screenshot (Puppeteer / Playwright)

- **Ideia:** Uma página web (ou template Handlebars/React estático) com tokens de marca; o CLI abre headless, define viewport `1080×1035` / `1080×1920`, tira PNG.
- **Exemplos no GitHub:** [SiddharthShyniben/soim](https://github.com/SiddharthShyniben/soim) (CLI social images com Puppeteer).
- **Custo:** R$0 (só Node + Chromium).
- **Encaixe Adventure:** igual ao que já fazemos com Python/Pillow, mas com **tipografia e layout** muito mais ricos se o template for HTML.

### 2.2 Remotion (`npx remotion`)

- **O quê:** Composições React renderizadas a vídeo ou **still** (imagem).
- **Doc:** [Remotion CLI](https://www.remotion.dev/docs/cli) — `npx remotion still` para PNG.
- **Custo:** R$0 em self-hosted; paga-se cloud só se usar infra Remotion.
- **Encaixe:** ótimo para **variações em lote** (props = copy da matriz) e motion opcional.

### 2.3 Flyyer / OG-style (npm)

- **O quê:** [useflyyer/flyyer-cli](https://github.com/useflyyer/flyyer-cli) — imagens dinâmicas via web (muito usado para OG; adaptável a formatos fixos).
- **Custo:** Depende do produto Flyyer em produção; CLI/dev pode ser baixo custo para experimentar.

### 2.4 Ferramentas “OG / banner” genéricas

- [soulim/ogi](https://github.com/soulim/ogi) (Go) — texto + dimensões → PNG.
- [barelyhuman/og-image](https://github.com/barelyhuman/og-image) — gerador OG em CLI.

Úteis para **peças simples**; para marca Adventure “premium”, combinar com template mais trabalhado.

### 2.5 Export a partir do Ficheiro Figma (REST + token)

- **O quê:** Token pessoal + `GET /v1/images/:key` (nós conhecidos) para **PNG/SVG** em lote — não cria layout novo, só **exporta** o que já existe.
- **Ferramentas:** [javierarce/figma-extractor](https://github.com/javierarce/figma-extractor), [figma-tools/figma-tools](https://github.com/figma-tools/figma-tools).
- **Custo:** R$0 além do plano Figma normal; **rate limits** da API.

---

## 3. Serviços / libs — custo baixo (não MCP)

### 3.1 Polotno (`polotno-node`)

- **O quê:** JSON de design → PNG no servidor (headless).
- **Repo:** [polotno-project/polotno-node](https://github.com/polotno-project/polotno-node) — [docs server-side](https://polotno.com/docs/server-side-image-generation-with-node-js).
- **Custo:** Chave de API Polotno (verificar plano atual no site); bom para **editor visual + automação**.

### 3.2 APIs de imagem “template + dados” (SaaS)

- Bannerbear, Placid, etc. — geralmente **free tier limitado** + pago por volume.
- **Encaixe:** quando o time não quer manter Puppeteer/Remotion.

---

## 4. Recomendações práticas para a Adventure

| Objetivo | Primeira opção | Segunda opção |
|----------|----------------|---------------|
| Mesma identidade do **site** + lote barato | **HTML + Playwright** ou **Remotion still** no monorepo | Refinar o **Pillow** atual |
| **Canva** no fluxo do Cursor | **Canva AI Connector MCP** | **Canva Connect** + [`tools/canva-connect`](../../../tools/canva-connect/) |
| **Figma** como fonte da verdade | Manual + export; **Figma MCP** quando a quota permitir | **figma-extractor** + token para PNG em CI |
| Editor WYSIWYG + JSON | **Polotno** (custo de API a validar) | — |

---

## 5. O que não resolve sozinho

- **Importar automaticamente** um `.fig` completo para Canva com layers fiéis (normalmente: PNG/PDF + redesenho ou template Canva).
- **Duplicar frames dentro do Figma** só com **REST** — continua a precisar de **Plugin API** (MCP `use_figma` ou plugin manual).

---

## Referências rápidas

- Figma MCP (oficial): https://developers.figma.com/docs/figma-mcp-server/
- Canva AI Connector: https://www.canva.dev/docs/connect/canva-mcp-server-setup.md
- Canva Connect OpenAPI: https://www.canva.dev/sources/connect/api/latest/api.yml
- Remotion CLI: https://www.remotion.dev/docs/cli
- Polotno Node: https://github.com/polotno-project/polotno-node
