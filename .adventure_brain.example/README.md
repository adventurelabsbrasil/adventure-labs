# .adventure_brain — Cérebro Local NEXUS

Este diretório é populado pelo script `tools/vps-infra/sync-infra-context.sh`.
É **gitignored** em produção — este `.adventure_brain.example/` serve como referência da estrutura esperada.

## Como usar

```bash
# 1. Copiar estrutura para runtime local
cp -r .adventure_brain.example/ .adventure_brain/

# 2. Sincronizar estado real da VPS (requer SSH configurado)
chmod +x tools/vps-infra/sync-infra-context.sh
./tools/vps-infra/sync-infra-context.sh

# 3. Abrir Cursor e usar @Codebase apontando para .adventure_brain/
# Veja AI_WORKFLOW.md na raiz do repo para o guia completo.
```

## Estrutura

```
.adventure_brain/
├── README.md                     # Este arquivo
├── last_sync.txt                 # Timestamp do último sync (ISO 8601)
├── current_infra/
│   ├── containers.txt            # Saída de: docker ps (formatada)
│   ├── docker-compose.yml        # Copiado de /opt/adventure-labs/ na VPS
│   └── nginx/
│       └── *.conf                # Configs Nginx de /etc/nginx/conf.d/
└── logs/
    ├── n8n-errors.txt            # Últimos 50 logs de erro do adventure-n8n
    └── evolution-errors.txt      # Últimos 50 logs de erro do adventure-evolution
```

## Pré-requisitos

- Chave SSH configurada: `~/.ssh/id_rsa` ou `~/.ssh/id_ed25519` autorizada em `root@187.77.251.199`
- (Opcional) `TELEGRAM_BOT_TOKEN` e `TELEGRAM_CHAT_ID` como env vars para notificações Buzz

## Segurança

- Este diretório **nunca** contém secrets ou tokens
- O script de sync NÃO copia arquivos `.env` da VPS
- Credenciais ficam no Infisical: vault.adventurelabs.com.br
