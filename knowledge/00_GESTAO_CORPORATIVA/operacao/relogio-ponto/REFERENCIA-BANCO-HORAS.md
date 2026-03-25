# Referência — banco de horas / relógio-ponto (Adventure Labs)

Documento para **equipa e agentes**: onde estão os dados, como apurar horas e como pedir relatórios atualizados.

## Projeto Supabase

- **Nome:** adventurelabsbrasil  
- **Uso:** registro de ponto interno da Adventure Labs.

## Identidade e UUIDs (não confundir)

Três identificadores diferentes convivem; **só coincidem se alguém alinhou manualmente**.

| Onde | Campo | Significado típico |
|------|--------|---------------------|
| **auth.users** | `id` | UUID do utilizador no Supabase Auth (sessão JWT `sub`). |
| **adv_profiles** | `id` | PK da tabela — por defeito é `gen_random_uuid()`, **independente** do Auth. O App Admin resolve perfil por **`user_email`**, não por este `id`. |
| **time_bank_employees** | `id` | PK do funcionário no relógio **legado**; no caso do Mateus foi criado **igual** ao `auth.users.id` por convenção. |
| **time_bank_entries** | `employee_id` | FK → `time_bank_employees.id` (no Mateus, o mesmo UUID do Auth). |

**Exemplo (Mateus):** Auth `id` = `time_bank_employees.id` = `time_bank_entries.employee_id`; `adv_profiles.id` pode ser **outro** UUID até aplicares housekeeping — o comportamento do Admin **não depende** de `adv_profiles.id` = `auth.users.id`.

Para alinhar `adv_profiles.id` ao Auth (opcional, só estética / relatórios manuais no SQL), existe migração `supabase/migrations/20260325103000_align_mateus_adv_profile_id_with_auth.sql`.

## Duas fontes de batidas (importante)

| Colaborador / caso | Tabela principal | Chave |
|--------------------|------------------|--------|
| **Mateus Scopel** | `public.time_bank_entries` | `employee_id` → `time_bank_employees.email = 'mateuslepocs@gmail.com'` |
| **Igor Ribas** (e demais no fluxo novo) | `public.adv_time_bank_entries` | `user_email = 'igor@adventurelabs.com.br'` |
| Rodrigo / outros | Verificar **primeiro** `adv_time_bank_entries` por `user_email`; se vazio, **não** assumir — checar `time_bank_entries` via join em `time_bank_employees`. |

O app **adventurelabs.com.br/relogio-ponto** migrou / unificou para o modelo `adv_*`; registros antigos ou exceções podem permanecer só em `time_bank_*`.

## Colunas úteis

- **Batidas:** `type` ∈ (`clock_in`, `clock_out`), `recorded_at` (timestamptz UTC no banco).  
- **Geo (quando existir):** `latitude`, `longitude` (em ambas as famílias de tabelas, conforme migrações).  
- **Observação:** `note`.

## Fuso na apresentação

- Converter sempre para **`America/Sao_Paulo`** ao exibir:  
  `timezone('America/Sao_Paulo', recorded_at)`.

## Apuração de horas (pares válidos)

1. Ordenar por `recorded_at`.  
2. Para cada linha `clock_in`, se a **linha seguinte** for `clock_out`, somar `clock_out - clock_in`.  
3. Ignorar `clock_out` duplicado consecutivo, `clock_in` sem saída, ou quebra de ordem (tratar em observações do relatório).

## Total no SQL (padrão)

```sql
WITH e AS (
  SELECT type, recorded_at,
    LEAD(type) OVER (ORDER BY recorded_at) AS nt,
    LEAD(recorded_at) OVER (ORDER BY recorded_at) AS n_utc
  FROM public.adv_time_bank_entries  -- ou time_bank_entries com filtro employee_id
  WHERE user_email = 'igor@adventurelabs.com.br'  -- ajustar
)
SELECT ROUND(SUM(EXTRACT(EPOCH FROM (n_utc - recorded_at)) / 3600.0)::numeric, 4) AS total_horas
FROM e WHERE type = 'clock_in' AND nt = 'clock_out';
```

Para **Mateus**, substituir a fonte por `time_bank_entries` com `JOIN time_bank_employees` no `employee_id` dele.

## Local aproximado (bairro) a partir de lat/long

- Usar **geocodificação reversa** (ex.: [Nominatim](https://nominatim.openstreetmap.org/) / OpenStreetMap) com **User-Agent** identificando a empresa e **uso responsável** (rate limit).  
- Campo usual no JSON: `address.suburb` ou `address.neighbourhood` + cidade/UF.  
- Valores são **aproximados** (precisão do GPS e da base OSM).

## Uso de banco (folgas / abatimentos)

- `adv_time_bank_usages` / `time_bank_usages` — não entram no total de **horas trabalhadas**; são lançamentos de uso do banco.

## Pedido rápido a um agente

- *“Relatório de ponto atualizado do Mateus”* → fonte `time_bank_entries` + e-mail acima + PDF/md em `knowledge/00_GESTAO_CORPORATIVA/operacao/relogio-ponto/`.  
- *“Relatório do Igor”* → `adv_time_bank_entries` + `igor@adventurelabs.com.br`.  
- *“Banco de horas do [nome]”* → consultar esta referência, identificar tabela, aplicar regra de pares, converter para São Paulo, mencionar se geo veio vazio.

## Admin (App Core)

- **Registro de ponto (operacional):** `/dashboard/ponto` — integrado ao `adv_time_bank_entries`; utilizadores com role `tarefas` na equipa têm acesso (guard do dashboard).  
- **Relatórios e exportação CSV (gestão):** `/dashboard/ponto/relatorio` — consolida `adv_time_bank_entries` + `time_bank_entries` (legado) via API com `SUPABASE_SERVICE_ROLE_KEY`; só perfis que **não** são `tarefas`.  
- Colaboradores com role `tarefas` devem usar o **mesmo e-mail** do Supabase Auth que consta em `adv_profiles` / batidas, para bater o ponto e para RLS de insert.

## Relatórios gerados (exemplos)

Pasta: [`relogio-ponto/`](.)

| Colaborador | Markdown | HTML (impressão) | PDF |
|-------------|----------|------------------|-----|
| Mateus Scopel | [relatorio-ponto-mateus-scopel-2026-03-24.md](relatorio-ponto-mateus-scopel-2026-03-24.md) | [relatorio-ponto-mateus-scopel-2026-03-24.html](relatorio-ponto-mateus-scopel-2026-03-24.html) | [relatorio-ponto-mateus-scopel-2026-03-24.pdf](relatorio-ponto-mateus-scopel-2026-03-24.pdf) |
| Igor Ribas | [relatorio-ponto-igor-ribas-2026-03-24.md](relatorio-ponto-igor-ribas-2026-03-24.md) | [relatorio-ponto-igor-ribas-2026-03-24.html](relatorio-ponto-igor-ribas-2026-03-24.html) | [relatorio-ponto-igor-ribas-2026-03-24.pdf](relatorio-ponto-igor-ribas-2026-03-24.pdf) |

**Regenerar PDF no macOS** (Chrome instalado), ajustando caminho da pasta:

```bash
BASE=".../knowledge/00_GESTAO_CORPORATIVA/operacao/relogio-ponto"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$BASE/relatorio-ponto-mateus-scopel-2026-03-24.pdf" \
  "file://$BASE/relatorio-ponto-mateus-scopel-2026-03-24.html"
```

Repetir para o ficheiro `igor` trocando os nomes. Atualizar antes o `.html` / `.md` com dados frescos do Supabase.

---

*Última atualização de conteúdo processual: 2026-03-24.*
