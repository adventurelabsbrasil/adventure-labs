---
title: Diagnóstico VPS Hostinger (KVM 2) — 2026-03-26
domain: gestao_corporativa
tags: [infraestrutura, vps, hostinger, docker, operacao]
updated: 2026-03-26
owner: Torvalds (CTO)
status: ativo
---

# Diagnóstico VPS Hostinger (KVM 2) — 2026-03-26

## Escopo

- Verificar se a VPS está ativa.
- Confirmar endpoint de acesso público.
- Validar estado operacional via MCP da Hostinger.
- Registrar baseline após instalação do Docker.

## Evidências coletadas

### Conectividade externa (rede)

- `ping 187.77.251.199`: 4/4 respostas, 0% packet loss.
- `nc -zv 187.77.251.199 22`: porta SSH aberta e acessível.
- `curl -I http://187.77.251.199`: resposta HTTP 404 (servidor online, rota raiz sem conteúdo publicado).
- `curl -I https://187.77.251.199`: erro de certificado SSL (cadeia de confiança não validada).
- `dig -x 187.77.251.199`: PTR `srv1526292.hstgr.cloud`.

### Inventário Hostinger (MCP)

- VM ID: `1526292`
- Hostname: `srv1526292.hstgr.cloud`
- Estado: `running`
- Plano: `KVM 2`
- Template: `Ubuntu 24.04 LTS`
- Recursos:
  - vCPU: `2`
  - RAM: `8192 MB`
  - Disco: `102400 MB`
- Endereços:
  - IPv4: `187.77.251.199`
  - IPv6: `2a02:4780:6e:d52c::1`

### Ações recentes da VM

- `docker_instance_install` — `success` — 2026-03-26T11:52:53Z
- `ct_set_rootpasswd` — `success` — 2026-03-24T22:16:55Z
- `ct_set_rootpasswd` — `success` — 2026-03-24T22:16:43Z
- `ct_create` — `success` — 2026-03-24T20:08:41Z

### Firewall e superfícies associadas

- Lista de firewalls da conta via MCP: vazia (`[]`).
- Domínios da conta via MCP: vazia (`[]`).
- Websites/hosting vinculados na conta via MCP: vazia (`total=0`).

### Backups, containers e segurança

- Backups listados via MCP para a VM: nenhum (`total=0`).
- Projetos Docker Compose detectados:
  - projeto `app` em execução com `coolify` e `coolify-fluentbit`.
  - projeto `cmn582yth000jl2aervhqp08x` em execução com container `n8n:1.5.1`.
- Exposição de portas observada:
  - `coolify` publicado em `0.0.0.0:3000` (e IPv6 `::`:3000).
  - `n8n` sem porta publicada diretamente no host (apenas `5678` exposta no container).
- Scan de malware (Monarx) no momento da consulta:
  - `records=0`, `malicious=0`, `compromised=0`, `scanned_files=0`.
  - execução reportada como iniciada em `2026-03-26T12:03:30Z` sem `scan_ended_at` no retorno.

## Link de acesso atual

- URL direta por IP: `http://187.77.251.199`
- Host técnico: `srv1526292.hstgr.cloud`
- Coolify: `https://coolify.adventurelabs.com.br` (`200`)
- n8n: `https://n8n.adventurelabs.com.br` (`401`, autenticacao ativa)
- openclaw: `https://openclaw.adventurelabs.com.br` (DNS apontado, SSL/publicacao ainda pendente)

Observação: não há endpoint HTTPS confiável no momento para acesso público final.

## Atualização operacional (2026-03-26 — sessão de continuidade)

- DNS validado:
  - `coolify.adventurelabs.com.br` -> `187.77.251.199`
  - `n8n.adventurelabs.com.br` -> `187.77.251.199`
  - `openclaw.adventurelabs.com.br` -> `187.77.251.199`
- Coolify estabilizado para uso via domínio (`200`).
- n8n estabilizado e acessível por domínio com autenticação ativa (`401` esperado em HEAD sem login).
- OpenClaw identificado em `/root/openclaw` com `docker-compose.yml`, porém sem publicação estável via Coolify até o momento.
- `pm2` da VPS não gerencia OpenClaw no estado atual (apenas processo `meu-bot` com `errored`).
- O compose do OpenClaw depende de imagem local `openclaw:local`; sem build local, o `docker compose up -d` falha com `pull access denied`.

## Incidente do dia (OpenClaw via Coolify) — 2026-03-26

### Sintoma reportado

- Acesso ao dominio `openclaw.adventurelabs.com.br` com erro de navegador:
  - `ERR_CERT_AUTHORITY_INVALID`
  - bloqueio por HSTS.

### O que foi tentado

1. Publicacao via recurso Git no Coolify apontando para `adventurelabsbrasil/adventure-labs`.
2. Reprocessamento do deploy com submodulos.
3. Alternativa com conteudo de compose no editor do recurso atual.

### Falhas tecnicas observadas

- **Submodulos privados sem credencial no ambiente de build**:
  - erro recorrente em `git submodule update --init --recursive`;
  - mensagem: `fatal: could not read Username for 'https://github.com'`.
- **Build pack em modo Dockerfile durante tentativa com compose**:
  - mensagem: `dockerfile parse error ... unknown instruction: services:`.

### Conclusao operacional

- O bloqueio principal nao foi no runtime do OpenClaw, e sim no fluxo de publicacao via Coolify (fonte Git com submodulos privados e configuracao de tipo de recurso).
- O estado atual do dominio OpenClaw permanece sem TLS valido para acesso por navegador, enquanto `n8n` e `coolify` seguem operacionais.

## Riscos identificados

- Ausência de firewall gerenciado na conta Hostinger.
- HTTPS sem certificado válido para acesso por navegador sem alerta.
- Sem domínio associado na conta para camada de acesso estável (DNS + TLS).
- Ausência de backups disponíveis para restauração via painel no momento da consulta.
- Porta administrativa `3000` publicada em interface pública, exigindo hardening imediato.

## Recomendações imediatas (24/7)

1. Configurar política de reinício de containers Docker (`restart: unless-stopped`).
2. Definir firewall (Hostinger ou UFW), com portas mínimas (`22`, `80`, `443`).
3. Publicar aplicação por reverse proxy (Nginx/Caddy) e emitir certificado TLS.
4. Associar domínio e apontar DNS para o IPv4 da VPS.
5. Ativar monitoramento de uptime externo e alerta de indisponibilidade.
6. Fechar exposição pública da porta `3000` (permitir acesso apenas por túnel/VPN/IP allowlist).
7. Configurar rotina de backup e teste periódico de restauração.

## Próxima verificação recomendada

- Após configurar firewall + domínio + TLS, executar novamente:
  - ping/SSH/HTTP/HTTPS
  - snapshot de ações da VM
  - validação de DNS e certificado
