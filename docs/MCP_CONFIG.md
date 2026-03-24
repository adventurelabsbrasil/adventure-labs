# MCP — Configuração (Cursor + Asana)

Este guia é para o **Human (Founder)** configurar o **Model Context Protocol** do Asana no Cursor, permitindo que os agentes consultem projetos, tarefas e backlog diretamente no Asana.

> **Segurança:** nunca commite `ASANA_CLIENT_SECRET`, tokens ou `.env` no repositório. Use apenas variáveis de ambiente locais ou um gerenciador de segredos.

## PAT (Personal Access Token) e MCP oficial

O servidor **MCP V2** da Asana (`https://mcp.asana.com/v2/mcp`) **não** autentica com PAT. É necessário criar um app **MCP** (não apenas um app de API “clássico”) e usar **OAuth** com **Client ID** + **Client Secret**; o `mcp-remote` abre o navegador e grava tokens em `~/.mcp-auth/`. A PAT continua válida para chamadas diretas à [API REST](https://developers.asana.com/docs/quick-start) fora do MCP.

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

## Credenciais (evitar `client_id` inválido no Cursor)

O Cursor **nem sempre** expande `${env:...}` nos `args` quando o app é aberto pelo Dock (as variáveis do `~/.zshrc` não entram no processo). Isso gera `invalid_request: client_id missing or invalid`.

**Recomendado neste repo:** arquivo **`.cursor/asana-mcp.env`** (já coberto por `*.env` no `.gitignore`):

1. Copie `.cursor/asana-mcp.env.example` → `.cursor/asana-mcp.env`
2. Preencha `ASANA_CLIENT_ID` e `ASANA_CLIENT_SECRET` (sem aspas, formato `KEY=valor`)
3. O `.cursor/mcp.json` usa `envFile` + `tools/scripts/mcp-asana-bridge.sh` para montar o JSON do OAuth em tempo de execução.

Alternativa: exportar no shell e abrir o Cursor **pelo Terminal** (`cursor .`) para o bridge herdar o ambiente **sem** `envFile` — ainda assim o script exige as duas variáveis definidas no processo.

### Variáveis só no shell (opcional)

```bash
export ASANA_CLIENT_ID="SEU_CLIENT_ID"
export ASANA_CLIENT_SECRET="SEU_CLIENT_SECRET"
```

## Servidor MCP (V2)

- **URL do servidor:** `https://mcp.asana.com/v2/mcp`
- A V1 (`https://mcp.asana.com/sse`) está em descontinuação; prefira V2.

## Cursor — configuração recomendada

O Cursor usa o pacote comunitário **`mcp-remote`** como ponte OAuth (experimental; ver avisos na doc Asana).

**Neste monorepo:** use o **`.cursor/mcp.json`** já versionado: servidor `asana` com `envFile` (`.cursor/asana-mcp.env`) e `tools/scripts/mcp-asana-bridge.sh`. Evita o erro `client_id` missing quando o Cursor não herda o `~/.zshrc`.

Configuração equivalente (global ou cópia manual):

```json
{
  "mcpServers": {
    "asana": {
      "type": "stdio",
      "command": "bash",
      "args": ["${workspaceFolder}/tools/scripts/mcp-asana-bridge.sh"],
      "envFile": "${workspaceFolder}/.cursor/asana-mcp.env"
    }
  }
}
```

Alternativa (só confiável se o Cursor enxergar as variáveis no ambiente do processo): `npx mcp-remote@latest` com `--static-oauth-client-info` e `${env:ASANA_CLIENT_ID}` — ver [doc Cursor — interpolação](https://cursor.com/docs/mcp).

1. Abra **Cursor Settings** → **Tools & MCP** e confirme o servidor **asana**.
2. Crie **`.cursor/asana-mcp.env`** a partir de **`asana-mcp.env.example`** (ou exporte no shell e abra o Cursor pelo Terminal).
3. Reinicie o MCP se necessário e **autorize** no navegador (fluxo OAuth na porta `3334`).
4. Tokens costumam ficar em **`~/.mcp-auth/`** (não versionar).

### Teste rápido

Em um chat com agente habilitado para MCP, peça algo como: *“Mostre minhas tarefas do Asana para esta semana”* ou *“Liste os projetos do workspace X”*.

## Referências

- [Connecting MCP clients to Asana's V2 server](https://developers.asana.com/docs/connecting-mcp-clients-to-asanas-v2-server)
- [Integrating with Asana's MCP Server](https://developers.asana.com/docs/integrating-with-asanas-mcp-server)
- Repositório `mcp-remote`: `github.com/jms830/mcp-remote` (software experimental; monitore atualizações)

## MCP já configurado neste repo

O arquivo **`.cursor/mcp.json`** na raiz pode conter outros servidores (ex.: Railway). A entrada **Asana** pode ficar no **MCP global do Cursor** ou ser mesclada ao JSON do projeto — **sem** colocar secrets no arquivo versionado; use sempre `env` + variáveis locais.
