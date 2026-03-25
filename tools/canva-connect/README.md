# Canva Connect — designs vazios (Adventure TOFU)

Objetivo: contornar limites do **Figma MCP** criando **20 canvases vazios** nas medidas de anúncio (`1080×1035` feed + `1080×1920` stories) para você **abrir o link de edição** e aplicar marca/copy no Canva.

**Isto não importa camadas do Figma.** Para réplica fiel, exporte PNG do Figma e use como base no Canva, ou continue no Figma manualmente.

## Pré-requisitos

1. Integração **Canva Connect** no [Canva Developers](https://www.canva.com/developers/) com scope **`design:content:write`**.
2. Fluxo OAuth até obter um **access token** de utilizador (ver [Quickstart](https://www.canva.dev/docs/connect/quickstart/)).
3. Node.js **18+** (usa `fetch` nativo).

## Configuração

```bash
cd tools/canva-connect
cp .env.example .env
# Edite .env e coloque CANVA_ACCESS_TOKEN=... (nunca commite)
```

## Executar

```bash
npm run tofu:create-designs
```

Ou, a partir da raiz do monorepo:

```bash
pnpm --dir tools/canva-connect run tofu:create-designs
```

- Gera 20 designs: `Adventure_TOFU_01_feed_1080x1035` … `Adventure_TOFU_10_stories_1080x1920`.
- Imprime `edit_url` por linha (URL temporária, ~30 dias — ver documentação Canva).
- Escreve também `tools/canva-connect/output/adventure-tofu-designs.json` (crie a pasta `output` se o script falhar ao gravar; pode criar manualmente: `mkdir -p output`).

**Rate limit:** ~20 pedidos/minuto — o script espera ~3,5 s entre chamadas.

## Alternativa: Canva AI Connector (MCP no Cursor)

Para o assistente **criar / listar / exportar** designs na sua conta Canva (sem escrever token em ficheiro no repo), configure o MCP oficial:

Documentação: [Set up the Canva AI Connector](https://www.canva.dev/docs/connect/canva-mcp-server-setup.md)

Exemplo para `.cursor/mcp.json` (ajuste à sua configuração existente; não sobrescreva outros servidores):

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

Requisito: **Node.js 22.16+** (segundo a documentação Canva). Reinicie o Cursor após gravar.

**Nota:** o pacote `@canva/cli mcp` é o **Canva Dev MCP** (documentação de *Apps* / integrações), não o mesmo que o AI Connector acima.

## Referências

- [Create design API](https://www.canva.dev/docs/connect/api-reference/designs/create-design/)
- [Starter kit (app OAuth exemplo)](https://github.com/canva-sdks/canva-connect-api-starter-kit)
