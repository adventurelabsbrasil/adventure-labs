# MCP — Configuração (Cursor + Asana)

Este guia é para o **Human (Founder)** configurar o **Model Context Protocol** do Asana no Cursor, permitindo que os agentes consultem projetos, tarefas e backlog diretamente no Asana.

> **Segurança:** nunca commite `ASANA_CLIENT_SECRET`, tokens ou `.env` no repositório. Use apenas variáveis de ambiente locais ou um gerenciador de segredos.

## Pré-requisitos

1. **Conta Asana** com acesso aos workspaces/projetos desejados.
2. **Node.js + npm** instalados (`node --version`, `npm --version`).
3. **App MCP no Asana**
   - Crie o app em [Asana Developer — My apps](https://app.asana.com/0/my-apps).
   - Siga também: [Integrating with Asana's MCP Server](https://developers.asana.com/docs/integrating-with-asanas-mcp-server).
   - Anote o **Client ID** e o **Client Secret** (guarde o secret fora do Git).

## Redirect URL (OAuth)

Para **Cursor** (e a maioria dos clientes que usam `mcp-remote`), configure no console do app Asana **exatamente**:

`http://localhost:3334/oauth/callback`

Documentação oficial: [Connecting MCP clients to Asana's V2 server](https://developers.asana.com/docs/connecting-mcp-clients-to-asanas-v2-server).

## Variáveis de ambiente

No seu shell (ex.: `~/.zshrc`):

```bash
export ASANA_CLIENT_ID="SEU_CLIENT_ID"
export ASANA_CLIENT_SECRET="SEU_CLIENT_SECRET"
```

Reabra o terminal e o Cursor para carregar as variáveis.

## Servidor MCP (V2)

- **URL do servidor:** `https://mcp.asana.com/v2/mcp`
- A V1 (`https://mcp.asana.com/sse`) está em descontinuação; prefira V2.

## Cursor — configuração recomendada

O Cursor usa o pacote comunitário **`mcp-remote`** como ponte OAuth (experimental; ver avisos na doc Asana).

1. Abra **Cursor Settings** → **Tools & MCP** (ou edite o JSON de MCP do projeto/usuário conforme sua versão do Cursor).
2. Adicione um servidor MCP com configuração equivalente a:

```json
{
  "mcpServers": {
    "asana": {
      "type": "stdio",
      "command": "npx",
      "args": [
        "-y",
        "mcp-remote@latest",
        "https://mcp.asana.com/v2/mcp",
        "3334",
        "--static-oauth-client-info",
        "{\"client_id\": \"${env:ASANA_CLIENT_ID}\", \"client_secret\": \"${env:ASANA_CLIENT_SECRET}\"}"
      ],
      "env": {
        "ASANA_CLIENT_ID": "${env:ASANA_CLIENT_ID}",
        "ASANA_CLIENT_SECRET": "${env:ASANA_CLIENT_SECRET}"
      }
    }
  }
}
```

3. Salve, reinicie o MCP se necessário e **autorize** no navegador (fluxo OAuth na porta `3334`).
4. Tokens costumam ficar em **`~/.mcp-auth/`** (não versionar).

### Teste rápido

Em um chat com agente habilitado para MCP, peça algo como: *“Mostre minhas tarefas do Asana para esta semana”* ou *“Liste os projetos do workspace X”*.

## Referências

- [Connecting MCP clients to Asana's V2 server](https://developers.asana.com/docs/connecting-mcp-clients-to-asanas-v2-server)
- [Integrating with Asana's MCP Server](https://developers.asana.com/docs/integrating-with-asanas-mcp-server)
- Repositório `mcp-remote`: `github.com/jms830/mcp-remote` (software experimental; monitore atualizações)

## MCP já configurado neste repo

O arquivo **`.cursor/mcp.json`** na raiz pode conter outros servidores (ex.: Railway). A entrada **Asana** pode ficar no **MCP global do Cursor** ou ser mesclada ao JSON do projeto — **sem** colocar secrets no arquivo versionado; use sempre `env` + variáveis locais.
