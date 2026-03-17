# Workspace OpenClaw

Esta pasta é o **workspace** do OpenClaw no monorepo: o agente enxerga só o que está aqui (e nos symlinks).

- **Bootstrap do agente:** BOOTSTRAP.md, IDENTITY.md, MEMORY.md, SOUL.md, TOOLS.md, USER.md, OPENCLAW-AGENTS.md, HEARTBEAT.md
- **Manuais e WhatsApp:** os arquivos e a pasta `whatsapp/` são symlinks para `tools/openclaw/` (documentação versionada em um só lugar).

Configure o OpenClaw para usar esta pasta como workspace:

```bash
# Symlink do workspace (no terminal, uma vez)
rm -f ~/.openclaw/workspace
ln -s "$(pwd)/openclaw" ~/.openclaw/workspace
```

E, se usar a variável de ambiente:

```bash
export OPENCLAW_HOME="/Users/ribasrodrigo91/Documents/GitHub/01_ADVENTURE_LABS/openclaw"
```

(No seu Mac, ajuste o caminho se o monorepo estiver em outro diretório.)
