# Young Pingostudio — Looker Studio sobre Supabase

Migração do dashboard Looker Studio da Young Empreendimentos da fonte **Google Sheets** para **Supabase PostgreSQL** (`vvtympzatclvjaqucebr`), onde o CRM próprio Pingolead escreve.

Ticket: **PINGOSTUDIO-264**

## Arquitetura

```
Pingolead (PWA Young) ──writes──▶  Supabase vvtympzatclvjaqucebr
                                     │ schema: <ver 01_introspect.out.txt>
                                     │
                                     │ role: looker_reader  (SELECT + BYPASSRLS)
                                     ▼ pooler IPv4 (aws-0-sa-east-1.pooler.supabase.com:6543)
                              Looker Studio (novo report Adventure)
                                     │
                                     ▼ compartilhado com Young (viewer)
```

## Escopo

- ✅ Criar role `looker_reader` no Supabase com SELECT nas tabelas Pingolead + BYPASSRLS
- ✅ Clonar o relatório Looker Studio atual e trocar a data source de Sheets → Postgres Supabase via conector nativo
- ✅ Compartilhar o novo relatório com stakeholders Young
- ❌ **Não** migrar dados históricos da planilha (Pingolead preenche do zero)
- ❌ **Não** alterar código da Pingolead
- ❌ **Não** deletar planilha ou relatório antigo (apenas arquivar/deprecar)

## Estrutura de arquivos

```
pingostudio/
├── README.md                                           # este arquivo
├── HANDOFF.md                                          # estado atual e próximos passos
├── FIELD_MAPPING.md                                    # template p/ rastrear fields Sheets→Postgres
├── scripts/
│   ├── 00_connect.sh                                   # helper: testa direct→pooler, exporta URL
│   ├── 01_introspect.sql                               # roda no Supabase, descobre schema
│   ├── 01_introspect.out.txt                           # output (adicionar após rodar)
│   └── 02_validate_looker_reader.sh                    # 3 testes do looker_reader
└── supabase/
    └── migrations/
        └── 20260413000000_create_looker_reader.sql    # role + grants + BYPASSRLS
```

## Como aplicar (passo a passo)

### 1. Introspectar o schema Pingolead no Supabase

Numa máquina com acesso à internet (ex.: seu laptop, VPS Adventure):

```bash
export PGPASSWORD='lg9S6Iz8y4LKSjxu'

# Tentar direct connection primeiro
psql "postgresql://postgres@db.vvtympzatclvjaqucebr.supabase.co:5432/postgres?sslmode=require" \
     -f apps/clientes/04_young/pingostudio/scripts/01_introspect.sql \
     > apps/clientes/04_young/pingostudio/scripts/01_introspect.out.txt 2>&1

# Se falhar (DNS IPv6), tentar pooler IPv4:
psql "postgresql://postgres.vvtympzatclvjaqucebr@aws-0-sa-east-1.pooler.supabase.com:6543/postgres?sslmode=require" \
     -f apps/clientes/04_young/pingostudio/scripts/01_introspect.sql \
     > apps/clientes/04_young/pingostudio/scripts/01_introspect.out.txt 2>&1
```

Inspecione `01_introspect.out.txt`. Anote:

- O **nome do schema** onde a Pingolead criou as tabelas (pode ser `public`, `pingolead`, `crm`, `young` ou outro)
- As **tabelas** que o Pingolead usa (nomes, colunas, tipos)
- Se há **RLS ativo** nelas (esperado: sim, é default Supabase)

### 2. Ajustar e aplicar a migration do `looker_reader`

Abra `supabase/migrations/20260413000000_create_looker_reader.sql` e:

1. Substitua `<SENHA_GERADA>` pela senha exibida no chat pelo Claude (já guardada no Vaultwarden como **"Young Pingolead Looker Reader"**).
2. Se o schema da Pingolead **não for `public`**, troque todas as ocorrências de `public` pelo nome correto nas linhas de GRANT.

Rode:

```bash
export PGPASSWORD='lg9S6Iz8y4LKSjxu'
psql "postgresql://postgres@db.vvtympzatclvjaqucebr.supabase.co:5432/postgres?sslmode=require" \
     -f apps/clientes/04_young/pingostudio/supabase/migrations/20260413000000_create_looker_reader.sql
```

**IMPORTANTE:** após rodar, reverta o arquivo (deixe `<SENHA_GERADA>` como placeholder) antes de dar commit. A senha real fica só no Vaultwarden.

### 3. Validar o `looker_reader`

Script pronto (`scripts/02_validate_looker_reader.sh`) roda os 3 testes em sequência:

```bash
export LOOKER_READER_PWD='<senha do Vaultwarden>'
export PINGOSTUDIO_TABLE='public.<alguma_tabela_pingolead>'   # descoberta no passo 1

bash apps/clientes/04_young/pingostudio/scripts/02_validate_looker_reader.sh
```

Saída esperada:

```
=== 1. Conexão básica ===
  OK  SELECT 1 → 1
=== 2. Read via BYPASSRLS ===
  OK  COUNT public.<tabela> → N linhas
=== 3. INSERT deve ser negado ===
  OK  INSERT negado (read-only confirmado)
=== ✅ TUDO OK. looker_reader pronto para ser usado no Looker Studio. ===
```

Se qualquer teste falhar, revisar a migration antes de ir pro Looker.

### 4. Novo Looker Studio

Usar `FIELD_MAPPING.md` como planilha de controle ao longo desta fase.

1. Abrir o relatório atual: https://lookerstudio.google.com/reporting/0449c5e9-0773-4f50-a9be-4a9af1dbcd51/page/zHINF/edit
2. **Arquivo → Fazer uma cópia**. Título: **"Young Empreendimentos — Dashboard (Supabase)"**.
3. **Recursos → Gerenciar fontes de dados adicionadas → Adicionar uma fonte → PostgreSQL**:
   - Host: `aws-0-sa-east-1.pooler.supabase.com` (confirmar em Supabase dashboard → Settings → Database → Connection pooling se a região for outra)
   - Porta: `6543`
   - Database: `postgres`
   - Usuário: `looker_reader.vvtympzatclvjaqucebr`
   - Senha: do Vaultwarden
   - **Enable SSL**: sim (obrigatório)
4. Selecionar as tabelas Pingolead necessárias. Criar uma data source por tabela (ou usar Custom Query para joins).
5. Em cada gráfico/scorecard/tabela do relatório: **Alterar fonte de dados** → apontar para o Postgres. Remapear campos — os nomes de colunas do Postgres podem diferir dos cabeçalhos do Sheets. Registrar cada mapeamento em `FIELD_MAPPING.md`.
6. Refazer fórmulas de métricas calculadas (CPL, CPM, ROAS etc.) se aplicável.
7. Recriar filtros globais (datas, empreendimento, canal) apontando para colunas do Postgres.
8. Remover a data source antiga (Sheets) da cópia.
9. **Compartilhar**: pegar a lista de stakeholders da aba Compartilhar do relatório original e adicionar no novo (rastrear no `FIELD_MAPPING.md`).

### 5. Arquivar fontes antigas

- Renomear o relatório antigo para `[DEPRECATED 2026-04] Young ...` e mover permissões para read-only.
- Mover a planilha Sheets para pasta de arquivo no Drive (`99_ARQUIVO_YYYY_MM/`). **Não excluir**.

## Gestão de segredos

- **Senha `postgres` (superuser):** conforme instruções do ticket. **Não versionar.** Guardar no **Vaultwarden**.
- **Senha `looker_reader`:** gerada no deploy; gravar no Vaultwarden em item **"Young Pingolead Looker Reader"**. **Não versionar.**

Nenhum arquivo neste diretório deve conter senhas reais — apenas placeholders.

## Referências no repo

- `supabase/migrations/20260318000000_adv_crm_schema.sql` — padrão de schema CRM Adventure (comparação)
- `apps/clientes/04_young/young-talents/supabase/migrations/002_create_candidates_table.sql` — padrão de migration com RLS
- `apps/clientes/04_young/young-emp/docs/PLANO.md` — contexto martech Young (entidades planejadas)
- `clients/03_young/CONTEXTO_CONTA_YOUNG_2026-03.md` — contexto da conta

## Status

Ver [`HANDOFF.md`](HANDOFF.md) para o estado atual da migração.
