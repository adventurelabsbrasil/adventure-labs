# Omie CLI

CLI para **cadastrar**, **listar** e **alterar** clientes no [Omie](https://app.omie.com.br) via API v1, pelo terminal.

## Configuração

1. Copie o `.env.example` para `.env` na pasta `tools/omie-cli/` ou use as variáveis do Admin:

   ```bash
   cp .env.example .env
   ```

2. Preencha no `.env` (ou em `apps/admin/.env.local` — a CLI carrega os dois):

   ```
   OMIE_APP_KEY=sua_app_key
   OMIE_APP_SECRET=sua_app_secret
   ```

   As chaves são obtidas em: **Omie → Configurações → API** ([app.omie.com.br/app/config/api/](https://app.omie.com.br/app/config/api/)).

## Instalação

Na pasta do monorepo:

```bash
pnpm install
cd tools/omie-cli && pnpm install && pnpm run build
```

Ou na raiz (se o workspace incluir `tools/omie-cli`):

```bash
pnpm install
pnpm --filter omie-cli build
```

## Uso

Após `pnpm run build`, execute de `tools/omie-cli`:

```bash
node dist/index.js clientes --help
```

Ou use o binário (se configurado):

```bash
./node_modules/.bin/omie clientes list
```

### Comandos

| Comando | Descrição |
|--------|-----------|
| `clientes list` | Lista clientes (paginação com `-p`, `-n`) |
| `clientes get <id\|codigo>` | Consulta um cliente por código Omie (número) ou código de integração (texto) |
| `clientes create` | Cadastra novo cliente (obrigatório: `--razao-social`, `--nome-fantasia`) |
| `clientes update <id\|codigo>` | Altera dados de um cliente existente |
| **Transações (conciliação com extrato)** | |
| `transacoes entradas` | Lista ENTRADAS (contas a receber) |
| `transacoes saidas` | Lista SAÍDAS (contas a pagar) |

### Exemplos

```bash
# Listar primeiros 50 clientes
node dist/index.js clientes list

# Listar em JSON
node dist/index.js clientes list --json

# Consultar por código Omie (número)
node dist/index.js clientes get 12345

# Consultar por código de integração
node dist/index.js clientes get "LIDERA-001"

# Cadastrar novo cliente
node dist/index.js clientes create \
  --razao-social "Empresa XYZ Ltda" \
  --nome-fantasia "XYZ" \
  --cnpj-cpf "12.345.678/0001-90" \
  --email "contato@xyz.com.br" \
  --codigo-integracao "XYZ-001"

# Alterar e-mail de um cliente (por código Omie)
node dist/index.js clientes update 12345 --email "novo@email.com"

# Alterar por código de integração
node dist/index.js clientes update "XYZ-001" --nome-fantasia "XYZ Brasil"
```

## Integração com o monorepo

- As mesmas chaves (`OMIE_APP_KEY`, `OMIE_APP_SECRET`) usadas no **Admin** (e pelo n8n/Sueli) podem ser usadas aqui.
- O client da API está em `src/client.ts`; pode ser reutilizado por outros scripts ou pelo Admin se quiser expor rotas HTTP no futuro.
