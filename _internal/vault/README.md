# Vault — Referências a Credenciais

**Nunca armazenar credenciais, senhas ou tokens neste repositório.**

## Onde buscar credenciais

- **1Password** (vault Adventure Labs) — senhas, API keys, tokens
- **Variáveis de ambiente** — `.env` local, gerado a partir de `.env.example`
- **Vercel / Railway** — variáveis de deploy (CRON_SECRET, etc.)

## Arquivos que NUNCA versionar

- `credenciais-adventure.md`
- `.env`, `.env.local`, `.env.*`
- `token.json`, `token.pickle`
- Extratos bancários, respostas sigilosas

## Setup local

1. Copiar `.env.example` para `.env`
2. Preencher valores a partir do 1Password ou do time
3. Nunca commitar `.env`
