# Railway CLI e MCP no monorepo

**Objetivo:** Ter a CLI da Railway e o MCP disponíveis no monorepo para operar serviços no Railway (n8n, Zazu worker, etc.) com mais assertividade.

---

## CLI (raiz do monorepo)

A CLI está instalada como **devDependency** na raiz do repositório.

### Primeira vez

1. Na raiz do monorepo:
   ```bash
   pnpm install
   ```
2. Autenticar na Railway (abre o browser):
   ```bash
   pnpm run railway login
   ```
   Se o comando não rodar (ex.: binário não disponível no workspace), instale a CLI globalmente e use direto:
   ```bash
   npm i -g @railway/cli
   railway login
   ```
3. Vincular ao projeto Railway onde estão n8n e/ou Zazu:
   ```bash
   pnpm run railway link
   ```
   Ou, com CLI global: `railway link`.  
   Escolha o **projeto** (e, se pedir, o **service**). O link fica salvo em `.railway/` (já no `.gitignore`).

### Se `railway link` ou `railway logs` sair com exit 1 e sem mensagem

A CLI costuma fazer isso quando **não está autenticada** ou quando o comando é interativo e não há TTY. Faça na ordem:

1. **Login (obrigatório primeiro):** no terminal do Cursor, na raiz do monorepo:
   ```bash
   pnpm run railway login
   ```
   Ou com CLI global: `railway login`.  
   O browser abre; conclua o login. Depois disso, `link` e `logs` passam a funcionar.

2. **Link:** rode de novo no **mesmo terminal** (interativo):
   ```bash
   pnpm run railway link
   ```
   Selecione o projeto e o serviço (ex.: OpenClaw).

3. **Logs:** com o serviço linkado:
   ```bash
   pnpm run railway logs
   ```
   Ou: `pnpm run railway -- logs`.

Se ainda falhar, use a CLI global para ver o erro completo:
   ```bash
   npm i -g @railway/cli
   railway login
   railway link
   railway logs
   ```

### Uso no dia a dia

- Status e variáveis:
  ```bash
  pnpm run railway status
  railway variables
  ```
- Logs do serviço vinculado:
  ```bash
  pnpm run railway logs
  ```
  ou `pnpm run railway -- logs`.
- Outros comandos: `pnpm run railway -- <comando>` ou `npx railway <comando>`.

Para trabalhar com **outro serviço** do mesmo projeto (ex.: Zazu em vez de n8n), use:
```bash
railway service
```
e selecione o serviço. Ou vincule de um diretório que já tenha `.railway/` apontando para esse serviço.

---

## MCP (Cursor)

O **Railway MCP Server** está configurado em **`.cursor/mcp.json`** no projeto. Assim, o Cursor (e o agente) conseguem usar ferramentas Railway via MCP.

### Pré-requisito

- **Railway CLI** instalada e **autenticada** (`railway login`). O MCP usa a CLI por baixo.

### O que o MCP oferece

- **Projetos:** listar, criar, vincular.
- **Serviços:** listar, vincular, deploy, logs.
- **Variáveis:** listar e definir variáveis de ambiente.
- **Domínios:** gerar domínio para um serviço.
- **Status:** verificar se a CLI está instalada e autenticada.

Exemplos de pedidos em linguagem natural no Cursor: “liste os serviços do projeto Railway”, “mostre os logs do serviço Zazu”, “defina a variável X no ambiente production”.

### Reinício do Cursor

Depois de alterar `.cursor/mcp.json`, reinicie o Cursor para o MCP ser recarregado.

---

## Referências

- [Railway CLI](https://docs.railway.com/cli)
- [Railway MCP Server](https://docs.railway.com/ai/mcp-server)
- Zazu / worker: `knowledge/00_GESTAO_CORPORATIVA/operacao/zazu-status-e-proximos-passos.md`
- n8n (produção na VPS/Coolify; doc inclui arquivo Railway): `knowledge/00_GESTAO_CORPORATIVA/processos/n8n-railway-e-admin.md`
