# Young Pingostudio — BI Metabase sobre Supabase Pingolead (v2)

Dashboard de CRM/vendas da Young Empreendimentos no **Metabase Adventure** (`bi.adventurelabs.com.br`), conectado direto ao **Supabase Pingolead** (`vvtympzatclvjaqucebr`) onde o CRM próprio escreve.

Ticket: **PINGOSTUDIO-264**

## Por que Metabase (e não mais Looker Studio)

Tentativa v1 (Looker Studio com data source Postgres) travou em 3 frentes: pooler IPv4 do Supabase Young não validado para o GCP, fluxo de MCP cross-org lento no Claude Code Cloud, ~3h de cliques no browser pra remapear cada gráfico. Histórico em [`RELATORIO_PARCIAL_2026-04-14.md`](RELATORIO_PARCIAL_2026-04-14.md).

Decisão Founder + Caroline + Eduardo (2026-04-14): **pivot pra Metabase** que já roda na VPS Adventure. Resolve os 3 bloqueadores:

- ✅ Conexão Postgres direto da VPS, sem quota Google nem dependência de pooler-only
- ✅ Questions versionadas em SQL (commitado em [`QUERIES_CRM.sql`](QUERIES_CRM.sql), reproduzível por qualquer executor)
- ✅ Alinhado ao stack oficial Adventure (CLAUDE.md: *Metabase | bi.adventurelabs.com.br | Dashboards*)

## Arquitetura

```
Pingolead (PWA Young) ──writes──▶ Supabase vvtympzatclvjaqucebr
                                    │ schema public, 9 tabelas crm_*
                                    │ role: looker_reader (SELECT + BYPASSRLS)
                                    ▼ Postgres connection (SSL)
                            Metabase (VPS Adventure 187.77.251.199)
                            container adventure-metabase:3000
                                    │
                                    ▼ via NGINX
                            https://bi.adventurelabs.com.br
                                    │ Collection "Young Empreendimentos"
                                    │ Group "Young" (acesso restrito)
                                    ▼
                            Equipe Adventure + Young (convidados)
```

## Escopo MVP (v2)

- ✅ Conectar Supabase Young no Metabase como database `Young Pingolead (CRM)`
- ✅ Criar Collection `Young Empreendimentos` + Group `Young` (acesso restrito)
- ✅ 5 dashboards CRM/vendas (Visão Geral, Funil, Consultores, Empreendimentos, Perdas)
- ✅ Convite a 1 usuário Young de teste (validação)
- ❌ **Sem dados de marketing/ads** (Pingolead não tem; ficou para missão futura)
- ❌ Sem migração de dados históricos da planilha
- ⚠️ Subdomínio `bi.young.adventurelabs.com.br` — opcional, só se Caroline/Young pedirem após validação

## Estrutura de arquivos

```
pingostudio/
├── README.md                            # este arquivo
├── HANDOFF.md                           # estado, credenciais, cola-pronto
├── METABASE_SETUP.md                    # passo-a-passo da UI (Fase A → G)
├── QUERIES_CRM.sql                      # 15 Questions versionadas em SQL
├── FUNIL_PINGOLEAD.md                   # mapeamento real dos status (preencher Fase B)
├── RELATORIO_PARCIAL_2026-04-14.md      # histórico v1 (Looker Studio)
├── reference/
│   └── looker_atual_2026-04-13.pdf      # dashboards do Looker antigo (referência visual)
├── scripts/
│   ├── 00_connect.sh                    # helper psql (legado v1, ainda útil)
│   ├── 01_introspect.sql + .out.txt     # schema Pingolead descoberto
│   ├── 02_validate_looker_reader.sh     # valida role
│   ├── 02_validate.out.txt              # validação OK via direct
│   ├── 03_enum_values.sql               # queries da Fase B
│   └── 99_*.sh                          # diagnóstico (legado v1)
└── supabase/migrations/
    └── 20260413000000_create_looker_reader.sql   # role aplicada (mantém)
```

## Como usar (TL;DR)

Toda a execução roteirizada em [`METABASE_SETUP.md`](METABASE_SETUP.md). Resumo:

1. **Fase A:** logar em `bi.adventurelabs.com.br` → Admin → Databases → Add → conectar Supabase Young (10 min)
2. **Fase B:** rodar 5 queries de descoberta de enum no SQL Editor → preencher `FUNIL_PINGOLEAD.md` (5 min)
3. **Fase C:** criar Collection "Young Empreendimentos" + Group "Young" (10 min)
4. **Fase D:** copiar cada bloco de `QUERIES_CRM.sql` para o SQL Editor → salvar como Question na Collection → montar 5 dashboards (~2h)
5. **Fase E:** convidar 1 email Young de teste, validar permissões + spot check (10 min)
6. **Fase F (opcional):** subdomínio Young branded (15 min se decidir fazer)
7. **Fase G:** cutover — comunicar Young, deprecar Looker antigo, arquivar Sheets (10 min)

## Estado da role `looker_reader`

Já criada e validada:
- 9 tabelas `crm_*` com `GRANT SELECT`
- `BYPASSRLS` ativo
- 21.898 linhas em `crm_deals` acessíveis
- Senha no Vaultwarden, item **"Young Pingolead Looker Reader"**
- Validação completa em [`scripts/02_validate.out.txt`](scripts/02_validate.out.txt)

Detalhes em [`HANDOFF.md`](HANDOFF.md).

## Gap conhecido

Pingolead **não tem dados de marketing/ads**: impressões, cliques, investimento, CTR, CPC, CPA, CPL, breakdown por canal. O dashboard antigo (Looker) buscava do Sheets. **No MVP v2 do Metabase, esses gráficos simplesmente não existem** (escopo só CRM). Próxima missão (separada) avaliaria criar tabelas `ads_*` na Pingolead + pipeline Meta/Google APIs.

## Hive Mind

Estado canônico desta missão:
- **`agent_context` key:** `young.pingostudio.looker_migration` (Supabase `ftctmseyrqhckutpfdeq`)
- **`adv_csuite_memory`:** entrada `csuite_decision` ID `a47d1c66-19aa-4ee3-912e-be9dc2bb1272`
- **Memória Buzz:** `openclaw/memory/2026-04-13-pingostudio-264.md` + `openclaw/memory/2026-04-14-pingostudio-264-pivot-metabase.md`

Para retomar a missão em qualquer sessão: consulte os 4 acima.

## Referências

- Plano aprovado: `/root/.claude/plans/cosmic-greeting-wadler.md`
- Stack Adventure: `/CLAUDE.md` (BHAG, North Star, infra)
- Setup VPS / NGINX: `tools/vps-infra/docker-compose.yml`, `tools/vps-infra/nginx/conf.d/adventure-labs-https.conf`
- Convenções de cliente: `clients/03_young/CONTEXTO_CONTA_YOUNG_2026-03.md`
