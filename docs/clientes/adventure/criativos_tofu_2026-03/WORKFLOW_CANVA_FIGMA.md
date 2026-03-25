# Fluxo recomendado: Canva, Figma e FigJam

O gerador em Python (`tools/scripts/generate_tofu_creatives.py`) serve como **rascunho rápido** ou **placeholder** para testes de mídia. Para acabamento de marca (gradientes, fotos, ícones, grid fino), o caminho profissional é **template + automação leve** ou **design manual no Figma/Canva**.

## FigJam

- **Bom para:** mapa de mensagens, priorização de ângulos, revisão com time, wireframe de sequência de anúncios.
- **Ruim para:** export final em `1080x1035` / `1080x1920` com marca fechada (não substitui frames de design).

## Figma (recomendado para peças finais)

Arquivo já existente com anúncios de referência: [Criativos](https://www.figma.com/design/3NE3LaYrzQoUK7CQYAplvg/Criativos?node-id=193-12) — pipeline documentado em [`docs/clientes/adventure/figma-criativos-pipeline.md`](../figma-criativos-pipeline.md).

1. Criar **componente** `Card_1x1` + variantes de fundo alinhadas ao site (dark, glass, gradiente vermelho/azul).
2. Duas páginas de export: `Feed_1080x1035` e `Stories_1080x1920`.
3. Preencher texto a partir da matriz: `docs/TOFU_CRIATIVOS_ADVENTURE_MATRIZ_2026-03.md`.
4. Export em PNG 1x ou 2x conforme plataforma.

Integração: **Figma MCP** no Cursor ajuda a montar/atualizar o arquivo quando você já tem o projeto linkado; não substitui decisão de layout feita por designer.

### Limite de quota do Figma MCP

Se o `use_figma` falhar por **rate limit / plano Starter**, use uma destas saídas:

1. **Operação manual no Figma** — copiar os frames listados em [`figma-criativos-pipeline.md`](../figma-criativos-pipeline.md) (secção dos node-ids Adventure).
2. **Duplicar o ficheiro** no menu do Figma (**Duplicate**), trabalhar na cópia e organizar a página `Adventure_TOFU_martech`.
3. **Canva** — ver secção abaixo (MCP Canva + script Connect no monorepo).

Não existe **CLI oficial da Figma** para clonar frames no servidor; alterações profundas no canvas passam pelo **Plugin API** (o que o MCP usa) ou pelo editor.

## Canva

- **Bom para:** velocidade com template de marca, resize automático entre formatos, handoff para quem não usa Figma.
- **Automação:** **Canva Connect** (REST + OAuth). No monorepo: [`tools/canva-connect/README.md`](../../../../tools/canva-connect/README.md) — script `create-adventure-tofu-designs.mjs` cria **20 designs vazios** (`1080×1035` e `1080×1920`) e devolve links `edit_url` (útil quando o Figma MCP está limitado). **Não importa layers do Figma**; serve para abrir o canvas certo e colar marca/copy.

### Canva AI Connector (MCP recomendado no Cursor)

Liga o Cursor à sua **conta Canva** (criar designs vazios, listar, exportar, etc., conforme plano). Documentação oficial: [Set up the Canva AI Connector](https://www.canva.dev/docs/connect/canva-mcp-server-setup.md).

Exemplo de entrada em `.cursor/mcp.json` (mescle com os servidores que já usa; **Node 22.16+** recomendado pela Canva):

```json
{
  "mcpServers": {
    "Canva": {
      "command": "npx",
      "args": ["-y", "mcp-remote@latest", "https://mcp.canva.com/mcp"]
    }
  }
}
```

Reinicie o Cursor após alterar o MCP.

**Diferença:** `@canva/cli mcp` é o **Canva Dev MCP** (documentação de *Apps SDK*), não substitui o AI Connector acima para editar designs na sua conta.

Fluxo prático **sem** API:

1. Criar **design de marca** (fontes Space Grotesk, cores `#031445` / `#DA0028`, etc.).
2. Duplicar página por criativo ou usar **Bulk create** (quando disponível no plano).
3. Colar copy da matriz e exportar PNG.

## Runbook semanal (publicação TOFU)

1. Definir lote da semana na matriz (`tofuXX`, canal, objetivo, landing).
2. Gerar canvases base (se necessário) com:

   ```bash
   pnpm --dir tools/canva-connect run tofu:create-designs
   ```

3. Produzir peça final no Figma/Canva (template oficial) e exportar PNG.
4. Validar checklist único antes de publicar:
   - nome de arquivo no padrão `tofuXX_{feed|stories}_{w}x{h}_{origem}.png`;
   - dimensões corretas (1080x1035 ou 1080x1920);
   - UTM/campanha alinhadas à LP de destino;
   - aprovação registrada (Asana card ou comentário no hub da semana).
5. Registrar evidência (links de arte + data de publicação) no card Asana da sprint.

## Quando voltar ao Python

Use o script apenas se:

- precisar **regenerar tudo** a partir da matriz;
- quiser **prova de conceito** antes de desenhar no Figma.

Para subir qualidade: ajuste cores no dicionário `COLORS`, pesos da Space Grotesk (`load_sg`), tamanhos de headline (`fit_headline`) e opacidade do grão (`add_film_grain`).
