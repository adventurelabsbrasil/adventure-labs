# VPS direto: n8n + OpenClaw (sem Coolify)

Stack operacional para rodar `n8n` e `openclaw` direto na VPS Hostinger com `docker compose` + `nginx` + TLS.

## Artefatos

- Compose: `tools/openclaw/docker-compose.vps-n8n-openclaw-nginx.yml`
- Variáveis (nomes): `tools/openclaw/.env.vps.example`
- Nginx n8n: `tools/openclaw/nginx/n8n.conf`
- Nginx OpenClaw: `tools/openclaw/nginx/openclaw.conf`

## Pré-requisitos

- DNS de `n8n.adventurelabs.com.br` apontando para a VPS.
- DNS de `openclaw.adventurelabs.com.br` apontando para a VPS (se público).
- Docker + Compose plugin instalados na VPS.
- Segredos no Infisical (`/admin`) ou arquivo `.env` local na VPS.

## Migração segura (sem perda n8n)

1. Backup antes de mudar:
   - snapshot da VPS (painel Hostinger) e dump do volume n8n.
2. Manter o mesmo `N8N_ENCRYPTION_KEY`.
3. Copiar `.env.vps.example` para `.env` na pasta da stack e preencher valores.
4. Subir stack:
   - `docker compose --env-file .env -f docker-compose.vps-n8n-openclaw-nginx.yml up -d`
5. Emitir certificados (primeira vez):
   - `docker compose -f docker-compose.vps-n8n-openclaw-nginx.yml run --rm certbot certonly --webroot -w /var/www/certbot -d n8n.adventurelabs.com.br -m <email> --agree-tos --no-eff-email`
   - repetir para `openclaw.adventurelabs.com.br` se público.
6. Recarregar nginx:
   - `docker compose -f docker-compose.vps-n8n-openclaw-nginx.yml restart nginx`

## Validação n8n

1. `curl -I https://n8n.adventurelabs.com.br`
2. Importar workflow:
   - `pnpm n8n:import:linkedin` (na raiz do monorepo, com Infisical)
3. Ativar workflow no n8n e testar webhook.
4. Validar `conversion_forms` e CRM Admin.

## Validação OpenClaw

1. `docker compose -f docker-compose.vps-n8n-openclaw-nginx.yml ps`
2. `docker logs --tail 200 adv-openclaw`
3. Se exposto por domínio: `curl -I https://openclaw.adventurelabs.com.br`

## Rollback rápido

1. `docker compose -f docker-compose.vps-n8n-openclaw-nginx.yml down`
2. Restaurar snapshot/volume.
3. Reapontar DNS/proxy para stack anterior (se aplicável).

