# Handoff Claude Code → Buzz — sessão 2026-04-13

## Origem da sessão

- **Agente:** Claude Code (Opus 4.6) em `01_ADVENTURE_LABS` (monorepo)
- **Branch:** `claude/email-triage-OVPMl` (commit `552604a` pushado)
- **Invocação do Comandante:** "Emailson, faz a triagem, por favor"
- **Natureza:** triagem de inbox do Gmail `contato@adventurelabs.com.br` + atualização de governança

## O que foi feito

### 1. Sistemas arquivados declarados em CLAUDE.md

Atualizado `CLAUDE.md` (raiz do repo) com seção no topo marcando 3 sistemas como **descontinuados**. Notificações deles continuam chegando mas são ruído:

| Sistema | Substituto | Observação |
|---------|-----------|------------|
| Asana | Plane (tasks.adventurelabs.com.br) | Daily reminders no email — ignorar |
| Coolify | Vercel / VPS Docker | Dashboard descontinuado |
| Railway | VPS Hostinger + Vercel | Repo `railway-openclaw` com workflow falhando em loop — ignorar |

**Implicação para Buzz/C-Suite:** não abrir tasks em Asana, não sugerir migrações pra Coolify/Railway, não tratar falhas de CI do `railway-openclaw` como P0.

### 2. Triagem do inbox (50 threads unread, últimos 14d)

Classificação feita, **labels NÃO aplicadas** (MCP Gmail do Claude travado — ver bloqueio abaixo). Mapeamento pronto pra re-aplicar:

**🔴 7 threads urgentes (precisam STAR + ação humana):**

| Thread ID | Assunto | Ação |
|-----------|---------|------|
| `19d8431ac955a339` | GitHub 2FA obrigatório na conta `adventurelabsbrasil` | Ativar 2FA |
| `19d88512f1d3093e` | GitGuardian: 2 secret incidents no repo (commits `90887f3`, `a35047e`) | Revogar credencial + rewrite history |
| `19d88577fb62e75a` | Infisical: login em novo dispositivo | Confirmar se foi o Comandante |
| `19d73490ca0b00c1` | Plane.so trial acaba 16/04 (Stripe) | Decidir Business paid vs downgrade |
| `19d7393195b1b87a` | Planilha "ROAS - Auditoria" (Young) compartilhada | Abrir + acionar CMO/COO |
| `19d86b9048b45d4c` | Google Ads: convite consultoria estratégica grátis p/ Rose | Agendar — oportunidade p/ Rose Portal |
| `19d7742c9245b9cb` | 🚀 Novo lead LP MarTech (TESTE ADL) | Validar fluxo n8n → CRM (parece teste mas confirmar) |

**⚙️ Ruído técnico relevante (padrão):**
- Security Scan no repo `adventure-labs` falhando **consistentemente em main e PRs há 5 dias** (Gitleaks + governança) — vale task do Torvalds (CTO)
- `railway-openclaw` Bump ref workflow falhando em loop desde 09/04 → sistema arquivado, pode silenciar notificações ou desligar workflow

### 3. Commits e branch

```
branch: claude/email-triage-OVPMl
commit 552604a — docs(claude): marcar Asana, Coolify e Railway como sistemas arquivados
```

Pushado no remoto. Sem PR aberto (Comandante não pediu).

## Bloqueios encontrados

### Gmail MCP do Claude não funciona

- Token do servidor MCP Gmail (id `25da353c-82ed-4b9a-a756-98d7b541ff67`) expirou no meio da operação
- Fluxo de reautorização OAuth completou mas **Google devolveu scopes errados**: `email + drive.readonly + drive.file + userinfo.email + openid` ao invés dos `mail.google.com + gmail.modify` que o servidor pediu
- Tools do Gmail (`label_thread`, `search_threads`, etc.) todas desconectadas
- **Causa provável:** OAuth client `bb88432d-061e-4315-967e-95622b52b677` do lado Anthropic/MCP com Gmail API não habilitada no Google Cloud, ou consent screen sem declarar scopes de Gmail
- Conclusão operacional: esse MCP é caminho morto pra Adventure Labs por ora

### Decisão do Comandante

> "na real eu queria isso no meu openclaw, nao só no claude sabe"

Triagem de email **vira capability nativa do Buzz/OpenClaw**. Claude Code não é o dono dessa função.

## Próximas frentes naturais (para Buzz/Comando Estelar)

### P0 — técnico (CTO / Torvalds)

1. **GitHub 2FA** na conta `adventurelabsbrasil` antes do deadline
2. **Investigar GitGuardian** — 2 secret incidents em commits recentes (`90887f3`, `a35047e`)
3. **Desligar ou silenciar workflow `railway-openclaw/Bump OpenClaw release ref`** — está falhando em loop e é sistema arquivado
4. **Corrigir Security Scan do `adventure-labs`** — falhando em main + PRs há 5 dias

### P0 — decisão (Comandante)

5. **Plane.so trial ends 16/04** — decidir Business paid ou downgrade em 3 dias

### P1 — oportunidade (CMO / Ogilvy + AM Rose)

6. **Google Ads consultoria grátis p/ Rose** — agendar, pode acelerar aquisição da conta Rose Portal

### P1 — nova capability (engenharia Buzz)

7. **Agente `emailson-triage` no OpenClaw** — substituir a dependência do MCP Gmail do Claude. Caminhos técnicos viáveis:
   - **Google OAuth desktop flow** com credencial própria no Google Cloud (Gmail API + scope `gmail.modify`), refresh token no Infisical em `/admin` (padrão Sandra)
   - **Service Account + domain-wide delegation** se `adventurelabs.com.br` for Google Workspace — mais limpo, sem consent flow
   - Descartar IMAP/SMTP (não aplica labels Gmail nem STAR decentemente)
   - Padrão de integração: seguir scripts em `/opt/adventure-labs/scripts/agents/` + dispatcher `adventure-agent.sh` (Supabase context + Anthropic API + Telegram)
   - Trigger: cron diário 09:00 BRT, report no Telegram `ceo_buzz_Bot`

## Estado atual consolidado

- `CLAUDE.md` reflete a realidade arquitetural (3 sistemas arquivados declarados)
- Triagem de 50 threads classificada e documentada aqui — Comandante pode aplicar labels/stars manualmente usando esse relatório como referência
- Branch `claude/email-triage-OVPMl` aguardando decisão: merge direto em main, abrir PR, ou deixar viva pra próxima iteração
- Emailson não virou skill/agente ainda — só uma brincadeira verbal do Comandante. Vira feature real quando for priorizada no Plane

## Sincronização necessária

Este arquivo precisa ser copiado manualmente para o workspace VPS do Buzz:

```
/root/.openclaw/workspace/memory/2026-04-13-session-summary.md
```

(Regra do CLAUDE.md: "ao atualizar `openclaw/*.md`, copiar manualmente para `/root/.openclaw/workspace/`")
