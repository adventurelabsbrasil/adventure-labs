# Dbgr

CLI para **debug** e **configuração** de domínio, email e deploy quando você usa Wix (domínio/email) e Vercel (site). O app faz diagnóstico automático e orienta ou executa a configuração do Gmail e do domínio na Vercel.

## Pré-requisitos

- Node.js 18+
- Conta na [Vercel](https://vercel.com) e (opcional) no [Wix](https://wix.com)

## Instalação

```bash
npm install
npm run build
```

## Configuração

Copie o arquivo de exemplo e preencha as variáveis necessárias:

```bash
cp .env.example .env
```

Veja [docs/CREDENTIALS.md](docs/CREDENTIALS.md) para quais chaves são necessárias em cada comando.

## Uso

- **Diagnóstico** (estado do domínio, DNS, Vercel, Wix quando possível):

  ```bash
  npx ts-node src/index.ts debug
  # ou após build:
  node dist/index.js debug
  ```

  Opções:
  - `--domain <dominio>` – domínio a analisar (default: variável de ambiente ou `capclear.com.br`)
  - `--json` – saída em JSON

- **Configurar Gmail** com o email corporativo (instruções passo a passo e parâmetros IMAP/SMTP):

  ```bash
  npx ts-node src/index.ts config gmail
  ```

- **Configurar domínio** na Vercel (adicionar domínio ao projeto e exibir registros DNS):

  ```bash
  npx ts-node src/index.ts config domain [--project <nome-projeto>]
  ```

- **Migração** para fora do Wix (checklist e guias):

  ```bash
  npx ts-node src/index.ts migrate domain
  npx ts-node src/index.ts migrate email
  ```

## Desenvolvimento

```bash
npm run dev -- debug
npm run build && node dist/index.js debug
```

## Licença

MIT
