# AGENTS — Diretrizes para Multi-Agentes Adventure Labs

**Adventure OS:** quando a dúvida for *onde fica* (MCP, workflow, app, runbook), consultar primeiro [`knowledge/06_CONHECIMENTO/os-registry/INDEX.md`](knowledge/06_CONHECIMENTO/os-registry/INDEX.md). Roteamento Grove (GTD, WorkOS, C-Suite): [`knowledge/06_CONHECIMENTO/protocolo-grove-roteamento.md`](knowledge/06_CONHECIMENTO/protocolo-grove-roteamento.md).

**Idioma:** prosa e docs em **pt-BR**; inglês só na parte de programação (identificadores, APIs). Ver [`.cursor/rules/adventure-locale-pt-br.mdc`](.cursor/rules/adventure-locale-pt-br.mdc).

## Identidade

- **Adventure Labs OS** — Orquestrador principal (persona Grove, CEO Agent)
- **C-Suite:** Ohno (COO), Torvalds (CTO), Ogilvy (CMO), Buffett (CFO), Cagan (CPO)
- **Founder:** Rodrigo Ribas — superior direto

## Estrutura de agente (OpenClaw-aligned)

**Agente ≠ skill:** o agente é a persona + governança; as **skills** em `agents/skills/` são executores pontuais. Novos agentes devem usar o pacote mínimo abaixo (espelho conceitual de `openclaw/AGENTS.md`, `SOUL.md`, `HEARTBEAT.md`).

| Arquivo | Função |
|---------|--------|
| `AGENT.md` | Índice: ordem de leitura, owner C-Level, lista de skills |
| `SOUL.md` | Personalidade e boundaries |
| `USER.md` | Contexto do Founder |
| `COMPANY.md` | Contexto Adventure Labs |
| `REDLINES.md` | Proibições (dados, ações destrutivas, tenant) |
| `VOICE.md` | Tom por canal (pt-BR) |
| `PERMISSIONS.md` | Leitura/escrita (paths, APIs, envs sem segredos) |
| `HEARTBEAT.md` | Checklist periódico (vazio se sem poll) |
| `MEMORY.md` | Política: `knowledge/` vs `adv_csuite_memory` |

**Template:** copiar [`apps/core/admin/agents/_template_agent/`](apps/core/admin/agents/_template_agent/). **Bootstrap na sessão:** ler na ordem `AGENT.md` → `SOUL.md` → `USER.md` → `COMPANY.md` → `REDLINES.md` → `PERMISSIONS.md` → `VOICE.md` → `MEMORY.md` → `HEARTBEAT.md` → skills necessárias.

Exemplo de agente de apoio completo: [`apps/core/admin/agents/andon_asana/`](apps/core/admin/agents/andon_asana/) (Asana → base híbrida C-Suite + Founder).

**Gerentes de conta:** três agentes (um por cliente ativo) — `gerente_rose`, `gerente_benditta`, `gerente_young` — owner Cagan (CPO). Cada um usa skills compartilhadas (relatório-kpis-campanhas, copy-brief-campanha, analise-performance-canal, briefing-cliente-template, escopo-projeto-checklist, dashboard-kpis-especificacao) e a skill de contexto do cliente: `rose-portal-advocacia-contexto`, `benditta-marcenaria-contexto`, `young-empreendimentos-contexto`. Acionados pelo Grove ou Cagan para demandas de CX, marketing, produtos e escopo daquele cliente.

**Nota ATS Young Talents:** o código do ATS (`apps/clientes/young-talents/plataforma`) está no monorepo como **projeto de cliente entregue** (propriedade Young Empreendimentos), para histórico técnico/handoff; governança em [`docs/YOUNG_TALENTS_PROJETO_ENTREGUE.md`](docs/YOUNG_TALENTS_PROJETO_ENTREGUE.md). O `gerente_young` continua a cobrir **relação e contexto com Young Empreendimentos**.

**Bill (Token Extractor):** agente de apoio financeiro/operacional — owner Buffett (CFO). "O extrato tem que bater. Sempre." Monitora consumo de tokens e custos de IA em toda a operação (APIs: Anthropic, Gemini, OpenAI; subscriptions: Claude Pro/Max, Cursor AI, ElevenLabs). Skills: inventário de providers, coleta de consumo, análise de anomalias, reconciliação com Sueli, consulta ao Chaves (Infisical). Acionado por cron 2x/semana (ter + sex 09:43 UTC). Tabelas: `adv_ai_providers`, `adv_token_usage`, `adv_token_alerts`. Docs: `knowledge/06_CONHECIMENTO/agents/bill/`.

**Barsi (Gestor de Patrimônio):** agente de apoio patrimonial completo, **dual-mode** — owner Buffett (CFO) no modo Adventure, Founder direto no modo Personal. Patrimônio = financeiro + bens físicos (equipamentos, móveis, veículos) + bens digitais (VPS, domínios, licenças, marca) + investimentos. Modo Adventure (PJ): fotografia patrimonial semanal + inventário de bens em Supabase. Modo Personal (PF): snapshot em `personal/barsi-patrimonio-pf/` (gitignored). Modo Consolidado: merge runtime PJ+PF (nunca persiste). Consulta Sueli (saldos), Chaves (acessos), Bill (custos IA). Cron PJ: sexta 10:07 UTC. Tabelas: `adv_patrimony_accounts`, `adv_patrimony_snapshots`, `adv_patrimony_movements`, `adv_patrimony_assets`, `adv_patrimony_asset_events`. Docs: `knowledge/06_CONHECIMENTO/agents/barsi/`.

**Benchmark martech (três agentes de apoio):**
- **benchmark_adventure** (owner Ogilvy/CMO): exclusivo para a Adventure — tendências martech, concorrentes, dashboards/BI/automações, SaaS/microsaas. Skills: `benchmark-martech-tendencias`, `benchmark-concorrentes-adventure`, `benchmark-dashboards-bi-automacoes`. Acionado pelo Grove ou Ogilvy para inovação interna.
- **benchmark_clientes** (owner Cagan/CPO): exclusivo para clientes da Adventure — mercado/setor/nicho do cliente, concorrência no setor, tendências por nicho. Skills: `benchmark-mercado-setor-cliente`, `benchmark-concorrencia-setor`, `benchmark-tendencias-por-nicho`. Acionado pelo Grove, Cagan ou gerentes de conta.
- **benchmark_conteudo** (owner Ogilvy/CMO): trend topics, criatividade, inovação, educação martech. Skills: `benchmark-trend-topics-conteudo`, `benchmark-martech-criatividade-inovacao`, `benchmark-educacao-novidades-martech`. Acionado pelo Grove ou Ogilvy para conteúdo e educação. Estes agentes estão previstos para integrações com C-Suite e equipe.

## Onde buscar contexto

| Recurso | Path |
|---------|------|
| **OS Registry (INDEX)** | `knowledge/06_CONHECIMENTO/os-registry/INDEX.md` — descoberta: rules, skills, workflows, MCPs, clientes, segurança, crons, etc. |
| **Índice: manual agentes/skills** | `knowledge/06_CONHECIMENTO/manual-agentes-e-skills.md` — mapa de toda a documentação relacionada |
| Base de conhecimento | `knowledge/` (00_GESTAO_CORPORATIVA … 99_ARQUIVO) |
| Admin (contexto interno) | `apps/core/admin/context/` (symlink → `knowledge/`) |
| Clientes | `clients/01_lidera/`, `clients/02_rose/`, etc. |
| Skills dos agentes | `apps/core/admin/agents/skills/` |
| WorkOS (Admin) p/ agentes | `knowledge/06_CONHECIMENTO/workos-admin-contexto-agentes.md` |
| Manual de taxonomia | `knowledge/00_GESTAO_CORPORATIVA/MANUAL_TAXONOMIA_REPOSITORIO.md` |
| OpenClaw (local + Railway) | `knowledge/00_GESTAO_CORPORATIVA/processos/openclaw-local-e-railway.md` → manual completo: `tools/openclaw/OPENCLAW-MANUAL-LOCAL-E-RAILWAY.md`. WhatsApp: `tools/openclaw/whatsapp/`. **Workspace** = pasta `openclaw/` na raiz do monorepo; `~/.openclaw/workspace` e `OPENCLAW_HOME` devem apontar para `.../01_ADVENTURE_LABS/openclaw`. |

## Regras de sigilo

- Nunca versionar credenciais, .env, extratos ou respostas sigilosas
- Vault: `_internal/vault/` (apenas referências)
- Ver regra `security-sensitives` em `.cursor/rules/`

## Comandos de validação para agentes

- Para validar rapidamente o estado técnico do monorepo, priorize:
  - `./tools/scripts/typecheck-workspaces.sh` — roda type-check onde houver script configurado nos workspaces.
  - `./tools/scripts/lint-workspaces.sh` — executa lint em apps/packages/tools que expõem script `lint`.
  - `./tools/scripts/test-workspaces.sh` — roda `test` apenas onde o script existir.
- Use esses scripts antes de propor merges maiores ou refactors que afetem múltiplos apps.

## Mapeamento skills ↔ pastas

| Domínio | Pasta |
|---------|-------|
| Gestão | `knowledge/00_gestao_corporativa` |
| Comercial | `knowledge/01_comercial` |
| Marketing | `knowledge/02_marketing` |
| Projetos internos | `knowledge/03_projetos_internos` |
| Projetos clientes | `knowledge/04_projetos_de_clientes` |
| Laboratório | `knowledge/05_laboratorio` |
| Conhecimento | `knowledge/06_conhecimento` |

## Regra de sobrescrita

Em conflito de dados ou código: PARE → mostre o existente → pergunte ao Founder: [1] Substituir | [2] Manter | [3] Mescla.
