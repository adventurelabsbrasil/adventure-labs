---
title: Runbook OpenClaw + n8n na VPS (24/7)
domain: gestao_corporativa
tags: [vps, openclaw, n8n, operacao, continuidade]
updated: 2026-03-26
owner: Torvalds (CTO)
status: ativo
---

# Runbook OpenClaw + n8n na VPS (24/7)

## 1) Objetivo operacional

Garantir operacao continua de `n8n` e `openclaw` na VPS da Hostinger com:

- acesso publico estavel por subdominio;
- persistencia de dados e estado;
- fluxo Git auditavel para interacao com o monorepo;
- recuperacao rapida apos reboot/falha.

## 2) Estado atual validado (snapshot)

- VPS: `1526292` (`running`) em `187.77.251.199`.
- Coolify: `https://coolify.adventurelabs.com.br` respondendo `200`.
- n8n: `https://n8n.adventurelabs.com.br` respondendo `401` (autenticacao ativa, esperado).
- openclaw: DNS aponta para VPS, mas ainda nao publicado de forma estavel via Coolify.
- Firewalls Hostinger: nenhum cadastrado via MCP.
- Backups da VPS via Hostinger: nenhum listado.

## 3) Preservacao antes de mudancas

Executar no host (`root@srv1526292`) antes de qualquer alteracao estrutural:

```bash
docker ps --format "table {{.Names}}\t{{.Image}}\t{{.Status}}"
docker volume ls
docker network ls
```

```bash
mkdir -p /root/backups
docker run --rm -v coolify-db:/data -v /root/backups:/backup alpine sh -c 'cp -a /data /backup/coolify-db-$(date +%F-%H%M%S)'
tar -czf /root/backups/openclaw-home-$(date +%F-%H%M%S).tgz /root/.openclaw /root/openclaw 2>/dev/null || true
```

## 4) Operacao canonica do n8n (via Coolify)

- Manter `n8n` como recurso do Coolify.
- Dominio: `n8n.adventurelabs.com.br`.
- SSL: habilitado no recurso.
- Validacao rapida:

```bash
curl -I https://n8n.adventurelabs.com.br
```

Esperado: `401` ou `200` dependendo da configuracao de autenticacao.

## 5) Operacao canonica do OpenClaw

### 5.1 Diretriz

Padrao recomendado: publicar OpenClaw como recurso no Coolify (build controlado), em vez de execucao ad-hoc por terminal.

**Decisao de arquitetura (fixa):**

- `n8n` e `openclaw` em modo servico no Coolify.
- Execucao manual no host (fora do Coolify) apenas para manutencao pontual e com janela controlada.
- Nao usar deploy do OpenClaw a partir do monorepo com submodulos privados.

### 5.2 Pre-condicoes minimas

- Diretorio de codigo presente em `/root/openclaw`.
- Variaveis obrigatorias definidas:
  - `OPENCLAW_CONFIG_DIR=/root/.openclaw`
  - `OPENCLAW_WORKSPACE_DIR=/root/openclaw`

### 5.3 Sintoma recorrente e causa

- Erro: `pull access denied for openclaw`.
- Causa: compose referencia `openclaw:local` sem imagem local buildada.

### 5.4 Acao imediata

```bash
cd /root/openclaw
export OPENCLAW_CONFIG_DIR=/root/.openclaw
export OPENCLAW_WORKSPACE_DIR=/root/openclaw
docker build -t openclaw:local .
docker compose up -d
docker compose ps
```

### 5.5 Publicacao padrao no Coolify (Docker Compose direto)

1. Criar novo recurso de aplicacao em `Docker Compose` (nao `Dockerfile`).
2. Nao conectar `Git Repository` para o OpenClaw neste fluxo.
3. Definir `FQDN` como `openclaw.adventurelabs.com.br` (sem `https://`).
4. Ativar `Generate SSL` e `HTTP/2`.
5. Habilitar `Basic Auth` inicial para hardening.
6. Colar compose canonico:

```yaml
services:
  gateway:
    image: ghcr.io/bmorphism/openclaw:latest
    restart: unless-stopped
    command: ["gateway", "--bind", "0.0.0.0", "--port", "18789"]
    environment:
      OPENCLAW_CONFIG_DIR: /home/openclaw/.openclaw
      OPENCLAW_WORKSPACE_DIR: /home/openclaw/workspace
    volumes:
      - openclaw_config:/home/openclaw/.openclaw
      - openclaw_workspace:/home/openclaw/workspace
    ports:
      - "18789:18789"
    healthcheck:
      test: ["CMD", "wget", "-qO-", "http://127.0.0.1:18789/health"]
      interval: 30s
      timeout: 5s
      retries: 5

volumes:
  openclaw_config:
  openclaw_workspace:
```

### 5.6 Erros conhecidos neste ambiente (e antierro)

- `fatal: could not read Username for 'https://github.com'`:
  - causa: submodulos privados no clone do monorepo.
  - antierro: usar Compose direto no Coolify para OpenClaw.
- `unknown instruction: services:`:
  - causa: YAML de compose colado em campo `Dockerfile`.
  - antierro: validar build pack como `Docker Compose` antes de salvar.

## 6) Integracao com monorepo e Git (governanca)

Para evitar alteracoes sem rastreabilidade:

1. OpenClaw trabalha em branch dedicada (`openclaw/*`).
2. Commits com prefixo claro (`feat(openclaw):`, `chore(openclaw):`, etc.).
3. Cada push relevante deve gerar referencia em tarefa operacional (Asana/Admin).
4. PR de consolidacao para `main` com revisao humana.

### 6.1 Politica minima para agente always-on

- Branch padrao do agente: `openclaw/<tema>`.
- Prefixos aceitos: `feat(openclaw):`, `fix(openclaw):`, `chore(openclaw):`, `docs(openclaw):`.
- Bloqueio operacional: sem push direto em `main`.
- Cada alteracao relevante deve registrar:
  - link da PR;
  - evidencia operacional (logs/resultado);
  - referencia no registro de continuidade.

## 7) Segredos e Infisical

- Fonte de verdade: Infisical (nunca versionar segredo em `.env` do repo).
- Sinal de alerta: `Injecting 0 Infisical secrets` indica path/env incorretos ou contexto nao inicializado.
- Validacao operacional:

```bash
infisical run --path=/ --env=prod -- env | grep -E "OPENCLAW|N8N|GITHUB|SUPABASE" || true
```

## 8) Monitoramento minimo 24/7

- Uptime checks:
  - `https://coolify.adventurelabs.com.br`
  - `https://n8n.adventurelabs.com.br`
  - `https://openclaw.adventurelabs.com.br` (apos publicacao)
- Alertas por indisponibilidade > 2 min.
- Checklist diario:
  - `docker ps`
  - `curl -I` nos subdominios
  - verificacao de logs com erro critico nas ultimas 24h

### 8.1 Verificacao de TLS para evitar HSTS lock

Validar o certificado em producao para o host correto:

```bash
echo | openssl s_client -connect openclaw.adventurelabs.com.br:443 -servername openclaw.adventurelabs.com.br 2>/dev/null | openssl x509 -noout -issuer -subject -dates
```

Esperado: certificado publico valido para `openclaw.adventurelabs.com.br` (nao `TRAEFIK DEFAULT CERT`).

## 9) Separacao de acesso local vs VPS (alias operacionais)

Para nao misturar usos, manter dois modelos de acesso:

1. **Alias local (manutencao/diagnostico):**
   - endpoint local: `http://127.0.0.1:18789` (ou porta local equivalente);
   - uso: troubleshooting e testes internos.
2. **Alias VPS (producao always-on):**
   - endpoint publico: `https://openclaw.adventurelabs.com.br`;
   - uso: operacao diaria e integracoes externas.

Regra: qualquer automacao externa deve apontar para o alias VPS; alias local fica restrito a manutencao.

## 10) Criterios de aceite (operacao continua)

- Reboot da VPS nao derruba stack critica.
- n8n responde por dominio com SSL e autenticacao ativa.
- OpenClaw acessivel por dominio e com workspace persistente.
- Fluxo Git do OpenClaw auditavel e sem push anonimo/descontrolado.
