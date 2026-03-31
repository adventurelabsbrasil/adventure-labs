---
title: Registro de continuidade OpenClaw + n8n (2026-03-26)
domain: gestao_corporativa
tags: [registro, continuidade, openclaw, n8n, github]
updated: 2026-03-26
owner: Torvalds (CTO)
status: ativo
---

# Registro de continuidade OpenClaw + n8n (2026-03-26)

## Contexto

Registro consolidado para preservar o que foi feito em sessoes anteriores e reduzir risco de perda de historico durante a estabilizacao 24/7.

## Evidencias de codigo (janela recente)

Commits encontrados na janela `2026-03-25` a `2026-03-26` no monorepo local:

- `da2b849` — `feat(openclaw): add Marcel skill for Vercel audits`
- `cfa04e7` — `chore(openclaw): persist workspace identity and session memory`
- `d7bf51a` — `feat(openclaw): add Sandra skill for Asana operations`
- `e61205c` — `feat(openclaw): add client context skill`
- `94fbd2b` — `feat(openclaw): add workflow locator skill`
- `a0ff879` — `feat(openclaw): add core operational skills for monorepo`
- `a128d42` — `docs(openclaw): add Adventure Labs usage playbook`

## Evidencias de runtime

- `coolify.adventurelabs.com.br`: `200`.
- `n8n.adventurelabs.com.br`: `401` (autenticacao ativa, esperado).
- `openclaw.adventurelabs.com.br`: DNS apontado para VPS; publicacao estavel ainda pendente.

## Log consolidado da sessao (VPS + Coolify + OpenClaw)

### Objetivo do dia

- Publicar `openclaw.adventurelabs.com.br` com SSL via Coolify, mantendo persistencia e sem perda de estado do OpenClaw usado no dia anterior.

### Linha do tempo resumida

- DNS validado para os 3 subdominios (`coolify`, `n8n`, `openclaw`) apontando para `187.77.251.199`.
- `coolify.adventurelabs.com.br` operacional.
- `n8n.adventurelabs.com.br` operacional com autenticacao ativa.
- OpenClaw validado localmente na VPS (gateway respondendo em loopback/porta de servico).
- Tentativa de publicar OpenClaw por recurso Git do monorepo falhou no passo de submodulos privados.
- Nova tentativa com recurso no Coolify recebeu YAML de compose em campo de `Dockerfile`, causando erro de parser.
- Estado final da sessao: OpenClaw ainda nao publicado estavelmente por dominio.

### Erros observados e causa-raiz

1. **Falha de clone de submodulos no deploy por Git**
   - Erro: `fatal: could not read Username for 'https://github.com'`.
   - Contexto: o repositório principal clona, mas o Coolify executa `git submodule update --init --recursive` e nao possui credencial para subrepos privados (`apps/core/admin`, `apps/core/adventure`, `apps/labs/whatsapp-worker`, etc.).
   - Impacto: pipeline de build interrompido antes da etapa de deploy.

2. **Erro de parser por tipo de recurso incorreto**
   - Erro: `dockerfile parse error on line 1: unknown instruction: services:`.
   - Contexto: conteudo de `docker-compose.yml` foi colado no campo `Dockerfile` (resource em modo Docker).
   - Impacto: deploy interrompido imediatamente.

3. **Erro de certificado no dominio do OpenClaw**
   - Sintoma no navegador: `ERR_CERT_AUTHORITY_INVALID` + bloqueio por HSTS.
   - Leitura operacional: endpoint ainda sem cadeia TLS confiavel para o hostname atual; enquanto isso persistir, o Chrome bloqueia acesso por politica HSTS.
   - Impacto: indisponibilidade de acesso web ao OpenClaw por navegador.

### Estado atual ao encerrar a sessao

- `n8n`: operacional em producao.
- `openclaw`: operacional localmente na VPS, mas sem publicacao HTTPS estavel no subdominio.
- `coolify`: operacional, porem fluxo atual de publicacao do OpenClaw ainda desalinhado (Git com submodulos privados e/ou tipo de build pack incorreto).

## Fechamento tecnico (always-on)

### Padrão definido

- OpenClaw passa a ter padrao oficial de deploy em `Docker Compose` direto no Coolify.
- Fica descartado, para este servico, o deploy via monorepo com submodulos privados.

### Execucao de hoje (OpenClaw always-on via PM2)
- Gateway identificado rodando em `18789`.
- `gateway.bind` foi ajustado para `lan` (para permitir healthcheck por IP e acesso externo via proxy).
- Servico supervisionado que ocupava a porta foi parado para eliminar conflito ao iniciar via PM2.
- Gateway foi iniciado sob PM2 como processo `openclaw` (foreground supervisionado) na porta `18789`.
- Healthchecks validados:
  - `curl http://127.0.0.1:18789/health` => `health:200`
  - `curl http://187.77.251.199:18789/health` => `health:200`
- Persistencia garantida no boot da VPS com `pm2 save` + `pm2 startup` (systemd).
- Ajuste de acesso operacional no Mac: aliases adicionados no `~/.zshrc` (ex.: `oclaw-ip`, `oclaw-logs`, `oclaw-status`) apontando para `187.77.251.199:18789`.

### Validacoes externas executadas no fechamento

- `coolify.adventurelabs.com.br` -> `200`.
- `n8n.adventurelabs.com.br` -> `401` esperado.
- `openclaw.adventurelabs.com.br` -> `404` com host roteado no proxy.
- Certificado atual de OpenClaw: `TRAEFIK DEFAULT CERT` (ainda sem emissao publica valida para o host).

### Proximo marco de aceite
- Aguardar 24h de estabilidade do OpenClaw sempre-on (PM2 online + `health:200`) antes de publicar no Coolify com HTTPS.
- Recurso `openclaw` criado no Coolify em tipo `Docker Compose` com SSL ativo e certificado valido (nao default).
- Confirmacao final por navegador sem HSTS error.

## Risco de continuidade identificado

- OpenClaw ainda sem padrao operacional unico (Coolify vs execucao manual no host).
- Sem backup listado no painel Hostinger no snapshot atual.
- Sem firewall cadastrado no Hostinger no snapshot atual.

## Acao de controle

- Runbook canônico: `knowledge/00_GESTAO_CORPORATIVA/operacao/runbook-openclaw-n8n-vps-24x7-2026-03-26.md`
- Diagnóstico técnico: `knowledge/00_GESTAO_CORPORATIVA/operacao/vps-hostinger-diagnostico-2026-03-26.md`
