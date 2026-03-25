# Workflows n8n — Admin Adventure Labs

Workflows do **n8n** usados pela Adventure. **Produção (2026):** instância na **VPS Hostinger** via **Coolify** (Comando Estelar — ex.: `n8n.adventurelabs.com.br`), onde correm integrações operacionais e novos fluxos. Os JSON em `workflows/n8n/` (C-Suite, Lara, Sueli, Zazu, etc.) são a **fonte versionada**; importação para essa instância faz-se via **Public API** (`N8N_API_URL` + `N8N_API_TOKEN` no Admin). A pasta **`ce-n8n/`** guarda exports explícitos do Comando Estelar.

## Versão em produção (manutenção)

**O fluxo C-Suite publicado e em uso é a versão 11:**

| Arquivo | Descrição |
|---------|-----------|
| **`C-Suite Autonomous Loop - V11 (Fase 4_ Paralelização + Histórico + Founder Reports).json`** | **C-Suite em produção.** Paralelização dos agentes, histórico de decisões, integração com relatórios do founder (`adv_founder_reports`, últimos 7 dias). |
| **`meta_ads_agent/production/lara-meta-ads-agent-v1.json`** | **Lara** — Sync diário Meta Ads (clientes + Adventure), `adv_meta_ads_daily`, relatório após N dias em `adv_founder_reports`. Ver [meta_ads_agent/README.md](meta_ads_agent/README.md). |
| **`sueli/sueli-conciliacao-bancaria-v1.json`** | **Sueli** — Agente de IA Financeira para conciliação bancária (comprovantes/OFX x Omie). Tools: Omie API, Google Sheets, Google Chat, OFX Parser. Ver [sueli/README.md](sueli/README.md) e skill [agents/skills/sueli-conciliacao-bancaria/SKILL.md](../agents/skills/sueli-conciliacao-bancaria/SKILL.md). |
| **`whatsapp_groups_agent/whatsapp-groups-daily-v1.json`** | **Zazu** — Resumo diário dos grupos de WhatsApp de clientes (worker WhatsApp Web + n8n). Publica em `adv_founder_reports` para o Cagan (CPO) e C-Suite. Ver [whatsapp_groups_agent/README.md](whatsapp_groups_agent/README.md) e worker [apps/labs/whatsapp-worker/README.md](../../whatsapp-worker/README.md). |
| **`ce-n8n/*.json`** | **Comando Estelar (Renato)** — workflows na VPS (Coolify). Versionar aqui cada export estável. Ver [ce-n8n/README.md](ce-n8n/README.md). |

Para manutenções futuras, edite o JSON do V11 (ou exporte do n8n após alterações), valide e reimporte com o script de import (ver abaixo). Mantenha este README e o [CHANGELOG em `csuite/`](csuite/CHANGELOG.md) atualizados ao criar novas versões.

## Estrutura

```
n8n_workflows/
├── README.md                    # Este arquivo — versão em uso e referências
├── C-Suite Autonomous Loop - V11 (Fase 4_ Paralelização + Histórico + Founder Reports).json  # Produção
├── C-Suite Autonomous Loop - V10 (Fase 4_ Paralelização + Histórico).json    # Base do V11
├── n8n-csuite-autonomous-loop.json   # Template/legado
├── n8n-teste-001.json
├── csuite/                      # Histórico e versões anteriores do C-Suite
│   ├── README.md                # Versionamento e fluxo de trabalho
│   ├── CHANGELOG.md             # Histórico de versões (v7–v9)
│   ├── production/              # v7, v8, v9
│   └── archive/
├── meta_ads_agent/              # Lara — sync Meta Ads, relatórios
│   ├── README.md
│   ├── CHANGELOG.md
│   └── production/
│       └── lara-meta-ads-agent-v1.json
├── sueli/                       # Sueli — conciliação bancária (OFX/Omie)
│   ├── README.md
│   ├── .env.example
│   └── sueli-conciliacao-bancaria-v1.json
├── whatsapp_groups_agent/       # Zazu — resumo diário WhatsApp para Cagan/CPO
│   ├── README.md
│   └── whatsapp-groups-daily-v1.json
├── ce-n8n/                      # Comando Estelar — exports n8n self-hosted (VPS/Coolify)
│   └── README.md
└── account_manager_ai/
```

## Importar no n8n (CLI)

O script (**nome legado** `import-to-railway.sh`) envia o JSON para **qualquer** instância n8n cuja URL está em `N8N_API_URL`. Carrega credenciais de `apps/core/admin/.env.local` (ou `GEMINI_CLI/.env`). Variáveis: `N8N_API_URL` (base HTTPS do n8n, ex. `https://n8n.adventurelabs.com.br`) e `N8N_API_TOKEN`.

**Executar a partir da raiz do repositório `01_ADVENTURE_LABS`:**

```bash
# C-Suite (ajustar caminho se o JSON estiver só em workflows/n8n/)
./apps/core/admin/scripts/n8n/import-to-railway.sh "workflows/n8n/C-Suite Autonomous Loop - V11 (Fase 4_ Paralelização + Histórico + Founder Reports).json"

# Lara (Meta Ads)
./apps/core/admin/scripts/n8n/import-to-railway.sh "workflows/n8n/meta_ads_agent/production/lara-meta-ads-agent-v1.json"

# Sueli (Conciliação bancária)
./apps/core/admin/scripts/n8n/import-to-railway.sh "workflows/n8n/sueli/sueli-conciliacao-bancaria-v1.json"

# Zazu (WhatsApp Grupos — resumo diário para Cagan/CPO)
./apps/core/admin/scripts/n8n/import-to-railway.sh "workflows/n8n/whatsapp_groups_agent/whatsapp-groups-daily-v1.json"
```

Ver: [apps/core/admin/scripts/n8n/import-to-railway.sh](../../apps/core/admin/scripts/n8n/import-to-railway.sh).

## Documentação

| Documento | Conteúdo |
|-----------|----------|
| [docs/CSuite_relatorios_founder.md](../../../docs/CSuite_relatorios_founder.md) | Integração C-Suite + relatórios do founder (V11) |
| [docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md](../../../docs/PLANO_N8N_AUTOMACOES_AGENTES_SKILLS_TOOLS.md) | Plano de automações n8n e taxonomia de fluxos |
| [csuite/README.md](csuite/README.md) | Versionamento e fluxo de trabalho (v7–v9) |
| [csuite/CHANGELOG.md](csuite/CHANGELOG.md) | Histórico de mudanças do C-Suite |
| [meta_ads_agent/README.md](meta_ads_agent/README.md) | Lara — Meta Ads sync, mapeamento, owner_type, relatório C-Suite |
| [sueli/README.md](sueli/README.md) | Sueli — Conciliação bancária (OFX/Omie), Tools, variáveis de ambiente |
| [whatsapp_groups_agent/README.md](whatsapp_groups_agent/README.md) | Zazu — resumo diário WhatsApp para Cagan/CPO, worker, founder report |
| [ce-n8n/README.md](ce-n8n/README.md) | Comando Estelar — versionação de workflows n8n self-hosted (ACORE Fase 4) |
| [agents/skills/sueli-conciliacao-bancaria/SKILL.md](../agents/skills/sueli-conciliacao-bancaria/SKILL.md) | Skill da Sueli — quando acionar, input/output |
| [knowledge/00_GESTAO_CORPORATIVA/processos/n8n-railway-e-admin.md](../../../knowledge/00_GESTAO_CORPORATIVA/processos/n8n-railway-e-admin.md) | n8n: produção VPS/Coolify + integração Admin (Railway = arquivo legado no doc) |
