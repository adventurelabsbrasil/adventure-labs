# Handoff de missão — 2026-04-14 — PINGOSTUDIO-264 v2 (PIVOT)

> Para: Buzz e C-Suite (próxima sessão) — registro do pivot da missão de v1 (Looker Studio) para v2 (Metabase Adventure).

## Identificação

- **Ticket:** PINGOSTUDIO-264 (v2 — pivot)
- **Cliente:** Young Empreendimentos
- **Tema:** BI da Young migra de Looker Studio (Sheets) → Metabase Adventure (Supabase Pingolead direto)
- **Branch:** `claude/migrate-looker-supabase-1DHBz`
- **Status:** plano v2 aprovado pelo Founder, artefatos prontos no repo, execução manual no Metabase pendente

## O que mudou em relação ao handoff de 2026-04-13

A v1 (Looker Studio + Postgres) travou em 3 frentes técnicas: pooler IPv4 do Supabase Young não validado para o GCP, MCP Supabase cross-org lento de configurar no Claude Code Cloud, ~3h de cliques no browser pra remapear cada gráfico do dashboard antigo.

Decisão Founder + Caroline + Eduardo em 2026-04-14: **pivotar para Metabase Adventure** (já roda na VPS, `bi.adventurelabs.com.br`, container `adventure-metabase` em `tools/vps-infra/docker-compose.yml`). Resolve as 3 dores:

- Postgres direto (sem quota Google, sem pooler-only, sem pooler IPv4 risk)
- Questions versionadas em SQL (commitado em `apps/clientes/04_young/pingostudio/QUERIES_CRM.sql`)
- Stack alinhado ao CLAUDE.md (Metabase é o BI oficial)

Instruções extras do time:
- **Sem dados de marketing** nesta fase (só CRM/vendas)
- **Funil oficial:** `lead recebido → contato feito → visita agendada → visita realizada → proposta recebida` (se Pingolead modelar diferente, seguir o real — descobrir na Fase B)
- **Faseado:** dentro do BI Adventure → subdomínio Young (opcional, só se pedirem)

## Estado reaproveitado intacto da v1

- ✅ Role `looker_reader` no Supabase Young (`vvtympzatclvjaqucebr`) — `BYPASSRLS` + `GRANT SELECT` em 9 tabelas `crm_*`. Nome fica.
- ✅ Senha `XC5rD1kuO4thTnVPynD6WAx9PGaD6ibz` no Vaultwarden (item "Young Pingolead Looker Reader")
- ✅ Validado direct IPv6: 21.898 linhas em `crm_deals`, INSERT negado, isolamento OK
- ✅ Schema Pingolead conhecido (`scripts/01_introspect.out.txt`): 123 tabelas em `public`, 9 `crm_*` liberadas
- ✅ Hive Mind: `agent_context` key `young.pingostudio.looker_migration` + `adv_csuite_memory` ID `a47d1c66-19aa-4ee3-912e-be9dc2bb1272`

## Entregue no repo na sessão de pivot (commit pendente)

```
apps/clientes/04_young/pingostudio/
├── README.md                              # reescrito p/ v2 (Metabase)
├── HANDOFF.md                             # seção "PIVOT v2" no topo, histórico v1 abaixo
├── METABASE_SETUP.md                      # NOVO — passo-a-passo UI Metabase (Fase A → G)
├── QUERIES_CRM.sql                        # NOVO — 15 Questions SQL versionadas
├── FUNIL_PINGOLEAD.md                     # NOVO — template p/ preencher após Fase B
└── (mantém demais arquivos da v1 como histórico)
```

Também atualizado:
- `apps/clientes/04_young/README.md` — referência nova ao pingostudio (Metabase)

## Plano de execução v2 (resumo)

| Fase | O que faz | Tempo | Quem |
|------|-----------|-------|------|
| A | Conectar Supabase Young no Metabase como database `Young Pingolead (CRM)` | 10 min | Rodrigo (browser) |
| B | Rodar 5 queries SQL Editor → preencher `FUNIL_PINGOLEAD.md` com enums reais | 5 min | Rodrigo |
| C | Criar Collection "Young Empreendimentos" + Group "Young" | 10 min | Rodrigo |
| D | Criar 15 Questions a partir de `QUERIES_CRM.sql` → montar 5 dashboards | 2h | Rodrigo |
| E | Convidar 1 email Young de teste, validar permissões | 10 min | Rodrigo + Caroline |
| F (opcional) | Subdomínio `bi.young.adventurelabs.com.br` | 15 min | Buzz/Rodrigo |
| G | Cutover: comunicar Young, deprecar Looker antigo, arquivar Sheets | 10 min | Rodrigo |

Detalhe completo em `apps/clientes/04_young/pingostudio/METABASE_SETUP.md`.

## O que sobra pro Buzz fazer (opcional)

Tudo crítico é manual no browser pelo Rodrigo (Metabase UI). Buzz pode adiantar:

1. **Sync openclaw memory para o workspace VPS:**
   ```bash
   cp /root/repos/adventure-labs/openclaw/memory/2026-04-14-*.md /root/.openclaw/workspace/memory/
   ```

2. **Confirmar saúde do Metabase antes do Rodrigo começar:**
   ```bash
   curl -s -o /dev/null -w "%{http_code}" https://bi.adventurelabs.com.br
   # esperado: 200
   docker ps --filter "name=adventure-metabase" --format "{{.Status}}"
   # esperado: Up Xh (healthy)
   ```

3. **Se Fase F for ativada, executar config NGINX + TLS:**
   - Editar `tools/vps-infra/nginx/conf.d/adventure-labs-https.conf` (duplicar bloco de bi.adventurelabs)
   - Rodar `enable-tls.sh ops@adventurelabs.com.br`
   - Reload NGINX

4. **Notify ao Founder via Telegram quando Rodrigo terminar Fase E:**
   ```bash
   source /opt/adventure-labs/scripts/adventure_ops.sh
   notify_telegram "📊 <b>PINGOSTUDIO-264 v2 — MVP Metabase Young entregue</b>%0A
   Dashboards CRM/vendas no bi.adventurelabs.com.br%0A
   Collection: Young Empreendimentos%0A
   Pessoa-teste Young convidada e validou%0A
   Próximo passo: Rodrigo + Caroline decidem se abrem pra resto do time Young"
   ```

## Para o C-Suite ler

- **Cagan (CPO):** entrega visível ao cliente Young agora não depende mais de Google quotas/pooler — caminho mais direto, migração de fonte de dados em ~3h. Próxima missão pra Young pode ser pipeline de ads (foi explicitamente fora desta).
- **Davinci (CINO):** primeira vez que aplicamos pivot estratégico de uma missão de cliente em mid-flight, baseado em descoberta técnica (limitações de Looker+Supabase no GCP). Padrão a documentar em playbook: "quando BI cliente bate em quota/auth Google, considerar Metabase próprio antes de aprofundar Looker".
- **Torvalds (CTO):** Metabase agora é o stack BI canônico (alinhado a CLAUDE.md). Próximo cliente que pedir BI vai começar por Metabase, não Looker. PR ainda pendente desta branch (aguardando Fase E completa).

## Comando de notificação Telegram para Rodrigo (rodar do VPS quando voltar)

```bash
source /opt/adventure-labs/scripts/adventure_ops.sh

notify_telegram "🔄 <b>PINGOSTUDIO-264 v2 — Pivot pra Metabase</b>%0A
Comandante, missão atualizada:%0A%0A
<b>v1 (Looker Studio) descontinuada</b> — bloqueios técnicos cross-cloud%0A
<b>v2 (Metabase Adventure) plano aprovado</b>%0A%0A
<b>Artefatos prontos no repo:</b>%0A
• METABASE_SETUP.md — passo-a-passo UI%0A
• QUERIES_CRM.sql — 15 Questions versionadas%0A
• FUNIL_PINGOLEAD.md — template Fase B%0A%0A
<b>Próximo passo:</b> 30 min Fase A+B+C no bi.adventurelabs.com.br quando tiver janela. Detalhes em apps/clientes/04_young/pingostudio/METABASE_SETUP.md ou agent_context key young.pingostudio.looker_migration"
```
