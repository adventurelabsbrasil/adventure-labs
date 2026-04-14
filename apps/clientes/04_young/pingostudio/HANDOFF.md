# HANDOFF — PINGOSTUDIO-264 (Young / Migração de BI)

**Data inicial:** 2026-04-13 (v1: Looker Studio)
**Data do pivot:** 2026-04-14 (v2: Metabase)
**Branch:** `claude/migrate-looker-supabase-1DHBz`
**Responsável Adventure:** Rodrigo Ribas (interim, Mateus em férias)

---

## ⚠️ PIVOT v2 — Metabase Adventure (2026-04-14)

A missão **pivotou de Looker Studio para Metabase** após decisão Founder + Caroline + Eduardo. Razões em [`README.md`](README.md). Para executar:

- 📘 **Como executar:** [`METABASE_SETUP.md`](METABASE_SETUP.md) — passo-a-passo da UI (Fase A → G)
- 💻 **SQL versionado:** [`QUERIES_CRM.sql`](QUERIES_CRM.sql) — 15 Questions p/ os 5 dashboards
- 🎯 **Funil real:** [`FUNIL_PINGOLEAD.md`](FUNIL_PINGOLEAD.md) — preencher após Fase B

A role `looker_reader` criada na v1 é **reaproveitada intacta** (nome fica, funciona pra Metabase). Senha permanece a mesma (Vaultwarden). Os bloqueios da v1 (pooler IPv4, MCP cross-org, cliques no browser) deixam de ser críticos: Metabase na VPS Adventure resolve.

O que segue abaixo é histórico v1 — útil pra credenciais, comandos psql legados, contexto da senha. Não considerar Looker Studio como caminho ativo.

---

## Sumário executivo (v1, histórico)

Task de migração do dashboard Looker Studio da Young Empreendimentos, trocando a fonte de dados de Google Sheets para o Supabase Postgres do projeto `vvtympzatclvjaqucebr` (onde o CRM Pingolead escreve). Escopo: só a camada de visualização. Sem migração de dados históricos.

**Entregue nesta branch:**

- Migration `20260413000000_create_looker_reader.sql` com role `looker_reader` + `BYPASSRLS` + SELECT em schema configurável
- Script de introspecção `scripts/01_introspect.sql` para mapear o schema real da Pingolead
- `README.md` do pingostudio com passo-a-passo completo de deploy e validação
- Atualização de `apps/clientes/04_young/README.md` listando o novo módulo

**Pendente (bloqueado por rede no ambiente Claude Code):**

- Executar introspecção no Supabase (Fase 1) — **precisa ser rodado pelo usuário ou via VPS**
- Aplicar migration e criar `looker_reader` (Fase 3)
- Clonar e remapear Looker Studio (Fase 4)
- Compartilhar + deprecar antigos (Fase 5)

---

## Bloqueio técnico principal

O ambiente onde o Claude Code roda está atrás de um egress proxy HTTP com allowlist — **hosts do Supabase (`*.supabase.co`, `*.pooler.supabase.com`) não estão na allowlist**. Além disso, conexões Postgres são TCP puro, que um proxy HTTP não tunela. Consequências:

1. **Não posso introspectar o schema Pingolead** do meu ambiente — preciso que você rode o `scripts/01_introspect.sql` localmente e me devolva o output (ou adicione ao repo como `01_introspect.out.txt`).
2. **Não posso aplicar a migration** do `looker_reader` pelo meu ambiente — mesmo motivo. O arquivo SQL está pronto, mas tem que ser aplicado via `psql` em máquina com acesso à internet.
3. **MCP Supabase também não tem permissão** no projeto `vvtympzatclvjaqucebr` (não aparece em `list_projects` da org `xmijkpuquwzgtrhznabs`). Só aparecem `Young Talents` (ttvwfocuftsvyziecjeu) e `adventurelabsbrasil` (ftctmseyrqhckutpfdeq). Se você quiser que eu aplique via MCP em próxima rodada, é preciso linkar `vvtympzatclvjaqucebr` à sua conta/org Supabase Management ou me passar acesso.

Alternativas possíveis (escolha):

- **(A, default)** Você roda o introspect + migration localmente. Me manda o output pra eu avançar para Fase 4 (Looker).
- **(B)** Você conecta o project ID `vvtympzatclvjaqucebr` à organização Supabase acessível pelo MCP. Aí rodo tudo automaticamente.
- **(C)** Você me passa uma VPN/bastion com acesso à internet aberto e eu rodo daí (mais atrito).

---

## Senha gerada para `looker_reader`

Gerada com `openssl rand -base64 32 | tr -d '\n/+='`:

```
XC5rD1kuO4thTnVPynD6WAx9PGaD6ibz
```

**Próximos passos com a senha:**

1. Copiar e colar no Vaultwarden, item novo **"Young Pingolead Looker Reader"** com:
   - Usuário: `looker_reader.vvtympzatclvjaqucebr`
   - Senha: `XC5rD1kuO4thTnVPynD6WAx9PGaD6ibz`
   - URL: `https://vvtympzatclvjaqucebr.supabase.co`
   - Notas: "Role read-only para Looker Studio. Criada em 2026-04-13 via PINGOSTUDIO-264. Pooler IPv4: aws-0-sa-east-1.pooler.supabase.com:6543"
2. Antes de rodar a migration, abrir `supabase/migrations/20260413000000_create_looker_reader.sql` e trocar `<SENHA_GERADA>` por `XC5rD1kuO4thTnVPynD6WAx9PGaD6ibz`.
3. Rodar a migration.
4. **Importante:** reverter o arquivo (deixar `<SENHA_GERADA>`) antes de commitar. Senha só vive no Vaultwarden.

Se preferir regenerar (recomendado se achar que foi exposta demais no chat), basta:

```bash
openssl rand -base64 32 | tr -d '\n/+=' | head -c 32
```

---

## Estado dos assets do projeto

| Asset | URL | Status | Ação |
|-------|-----|--------|------|
| Supabase projeto | `https://vvtympzatclvjaqucebr.supabase.co` | Ativo, Pingolead escrevendo | Aplicar migration |
| Looker Studio atual | `https://lookerstudio.google.com/reporting/0449c5e9-0773-4f50-a9be-4a9af1dbcd51` | Ativo em produção | Clonar → deprecar após cutover |
| Google Sheets fonte | `https://docs.google.com/spreadsheets/d/1jJRFPzxClfYiVgEY6xwK-bethAc6-nQFSufgHQ4XuAU` | Ativo | Arquivar no Drive após cutover |
| Pingolead (PWA) | (externo, dono: Eduardo Tebaldi) | Em produção | Sem mudança — já popula o Supabase |

---

## Correções de infraestrutura aplicadas

Conforme feedback do usuário (aprovação do plano):

1. **Conexão via Connection Pooler IPv4** — o Looker Studio falha na conexão direta IPv6 `db.<ref>.supabase.co:5432`. Migration e README usam `aws-0-sa-east-1.pooler.supabase.com:6543` com usuário no formato `looker_reader.<project_ref>`.
2. **`BYPASSRLS` no role** — `GRANT SELECT` sozinho retorna zero linhas se as tabelas Pingolead tiverem RLS ativo (default Supabase). Adicionado `ALTER ROLE looker_reader BYPASSRLS;` na migration.
3. **Senha manual no Vaultwarden** — Claude não escreve no Vaultwarden; senha gerada e exposta acima para inserção manual; arquivo commitado com placeholder `<SENHA_GERADA>`.

---

## Próximos passos para o usuário (ordem)

- [ ] Inserir a senha `XC5rD1kuO4thTnVPynD6WAx9PGaD6ibz` no Vaultwarden como "Young Pingolead Looker Reader".
- [ ] Rodar `scripts/01_introspect.sql` (ver README). Adicionar output ao repo ou me enviar.
- [ ] Com base no output: ajustar o schema em `20260413000000_create_looker_reader.sql` se não for `public`.
- [ ] Rodar a migration (com a senha substituída). Reverter o placeholder antes de commitar.
- [ ] Validar o `looker_reader` com os 3 testes do README (SELECT 1, SELECT COUNT, INSERT deve negar).
- [ ] Me avisar para retomar a Fase 4 (Looker Studio) — precisarei:
  - [ ] PDF do relatório Looker Studio atual (para mapear campos vs colunas do Postgres)
  - [ ] Confirmação de que o `looker_reader` funciona
- [ ] Após cutover, arquivar planilha e marcar relatório antigo como deprecated.

---

## Comandos úteis (cola-pronto)

```bash
# === Introspect ===
export PGPASSWORD='lg9S6Iz8y4LKSjxu'
psql "postgresql://postgres@db.vvtympzatclvjaqucebr.supabase.co:5432/postgres?sslmode=require" \
     -f apps/clientes/04_young/pingostudio/scripts/01_introspect.sql \
     > apps/clientes/04_young/pingostudio/scripts/01_introspect.out.txt

# === Aplicar migration (após trocar <SENHA_GERADA>) ===
psql "postgresql://postgres@db.vvtympzatclvjaqucebr.supabase.co:5432/postgres?sslmode=require" \
     -f apps/clientes/04_young/pingostudio/supabase/migrations/20260413000000_create_looker_reader.sql

# === Validar looker_reader ===
export PGPASSWORD='XC5rD1kuO4thTnVPynD6WAx9PGaD6ibz'
psql "postgresql://looker_reader.vvtympzatclvjaqucebr@aws-0-sa-east-1.pooler.supabase.com:6543/postgres?sslmode=require" \
     -c "SELECT 1;"
```

Se o host `db.<ref>.supabase.co` não resolver (só IPv6 em alguns ambientes), use o pooler no lugar:

```bash
psql "postgresql://postgres.vvtympzatclvjaqucebr@aws-0-sa-east-1.pooler.supabase.com:6543/postgres?sslmode=require" \
     -f apps/clientes/04_young/pingostudio/scripts/01_introspect.sql
```

Região do pooler: confirmar no Supabase dashboard → **Settings → Database → Connection pooling**. Pode ser `sa-east-1`, `us-east-1`, ou outra.
