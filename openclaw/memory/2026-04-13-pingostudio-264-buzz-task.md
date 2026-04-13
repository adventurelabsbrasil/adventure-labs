# Delegação Buzz — PINGOSTUDIO-264 (Young / Looker Studio → Supabase)

> **Para:** Buzz (OpenClaw, VPS `187.77.251.199`)
> **De:** Rodrigo (via Claude Code, sessão 2026-04-13)
> **Missão:** executar as fases que o Claude Code não conseguiu por falta de rota de rede/browser no sandbox.

## Contexto em uma linha

Claude Code preparou toda a infra no repo (branch `claude/migrate-looker-supabase-1DHBz`, commits `90887f3 → a35047e → 2f0c758`). Ver detalhe completo no `agent_context` chave `young.pingostudio.looker_migration` ou no arquivo `apps/clientes/04_young/pingostudio/HANDOFF.md`.

Seu papel agora: rodar os passos que dependem de acesso à internet (Supabase) e ao Telegram, e parar quando a tarefa exigir Vaultwarden ou browser com sessão Google (essas ficam para o Rodrigo).

---

## O que Buzz deve fazer (ordem)

### Passo 1 — Sincronizar o workspace

```bash
cd /root/repos/adventure-labs
git fetch origin
git checkout claude/migrate-looker-supabase-1DHBz
git pull origin claude/migrate-looker-supabase-1DHBz

# Sync da memória Buzz do repo para o workspace ativo
cp openclaw/memory/2026-04-13-*.md /root/.openclaw/workspace/memory/
```

**Validar:** `ls -la /root/.openclaw/workspace/memory/ | grep 2026-04-13` deve listar dois arquivos (`...pingostudio-264.md` e `...pingostudio-264-buzz-task.md`).

### Passo 2 — Introspectar o schema da Pingolead no Supabase

```bash
cd /root/repos/adventure-labs
export PGPASSWORD='lg9S6Iz8y4LKSjxu'

# Helper testa direct→pooler e exporta PINGOSTUDIO_CONN_URL
source apps/clientes/04_young/pingostudio/scripts/00_connect.sh

# Dump estrutural
psql "$PINGOSTUDIO_CONN_URL" \
     -f apps/clientes/04_young/pingostudio/scripts/01_introspect.sql \
     > apps/clientes/04_young/pingostudio/scripts/01_introspect.out.txt 2>&1

# Verifica que gerou algo útil
head -40 apps/clientes/04_young/pingostudio/scripts/01_introspect.out.txt
```

**Validar:** o arquivo deve ter ≥ 1KB e conter seções "Schemas que NÃO são do Supabase/system", "Tabelas por schema", etc. Se aparecer "could not translate host name" ou "password authentication failed", **PARAR e notificar Rodrigo via Telegram** — não continuar.

### Passo 3 — Commitar o output do introspect

```bash
cd /root/repos/adventure-labs
git add apps/clientes/04_young/pingostudio/scripts/01_introspect.out.txt
git commit -m "chore(young/pingostudio): adiciona output do introspect do Supabase

Executado pelo Buzz no VPS. Schema Pingolead descoberto, pronto para
o Claude Code ajustar a migration e remapear fields do Looker."
git push origin claude/migrate-looker-supabase-1DHBz
```

### Passo 4 — PARAR aqui (requer humano)

Antes de aplicar a migration do `looker_reader`, **precisa** do Rodrigo:

1. Confirmar que a senha `XC5rD1kuO4thTnVPynD6WAx9PGaD6ibz` foi inserida no Vaultwarden como "Young Pingolead Looker Reader" (Buzz não tem write no Vaultwarden)
2. Olhar o `01_introspect.out.txt` e decidir se o schema correto é `public` ou outro (se a Pingolead usa schema customizado, a migration precisa ser ajustada antes de aplicar)

**Buzz não deve aplicar a migration sozinho.** Só depois que o Rodrigo aprovar.

### Passo 5 — Notificar Rodrigo via Telegram

```bash
source /opt/adventure-labs/scripts/adventure_ops.sh   # carrega notify_telegram

notify_telegram "📦 <b>PINGOSTUDIO-264 — Introspect concluído</b>%0A%0A
Rodrigo, executei os passos que consigo:%0A
✅ Sync do workspace openclaw/memory%0A
✅ Introspect do schema Pingolead em vvtympzatclvjaqucebr%0A
✅ Commit + push do 01_introspect.out.txt%0A%0A
<b>Preciso de você antes de aplicar a migration:</b>%0A
1. Confirmar senha 'XC5r...6ibz' no Vaultwarden (item 'Young Pingolead Looker Reader')%0A
2. Ler 01_introspect.out.txt e me dizer se o schema da Pingolead é 'public' ou outro%0A
3. Anexar PDF do Looker atual quando retomar com o Claude Code para Fase 4%0A%0A
Detalhes em agent_context key young.pingostudio.looker_migration ou em apps/clientes/04_young/pingostudio/HANDOFF.md"
```

---

## Fase 2 (só se Rodrigo aprovar explicitamente depois)

Quando Rodrigo responder com:
- Confirmação que a senha está no Vaultwarden
- Nome do schema correto (ex.: `public` ou `pingolead` etc.)

Aí Buzz executa:

### Passo 6 — Aplicar a migration

```bash
cd /root/repos/adventure-labs
export PGPASSWORD='lg9S6Iz8y4LKSjxu'

MIG=apps/clientes/04_young/pingostudio/supabase/migrations/20260413000000_create_looker_reader.sql
SCHEMA="public"   # <-- trocar aqui se Rodrigo disse outro schema

# Cria um arquivo temporário com a senha real (não no repo)
cp "$MIG" /tmp/looker_reader_apply.sql
sed -i "s/<SENHA_GERADA>/XC5rD1kuO4thTnVPynD6WAx9PGaD6ibz/" /tmp/looker_reader_apply.sql

# Se schema ≠ public, troca também
if [ "$SCHEMA" != "public" ]; then
  sed -i "s/ public / $SCHEMA /g; s/SCHEMA public/SCHEMA $SCHEMA/g" /tmp/looker_reader_apply.sql
fi

# Aplica
source apps/clientes/04_young/pingostudio/scripts/00_connect.sh
psql "$PINGOSTUDIO_CONN_URL" -f /tmp/looker_reader_apply.sql

# Remove o arquivo com a senha
shred -u /tmp/looker_reader_apply.sql

# Arquivo original no repo fica intacto com <SENHA_GERADA> — NUNCA commitar a senha real
```

### Passo 7 — Validar o `looker_reader`

```bash
export LOOKER_READER_PWD='XC5rD1kuO4thTnVPynD6WAx9PGaD6ibz'
export PINGOSTUDIO_TABLE="$SCHEMA.<alguma_tabela_pingolead_do_introspect>"

bash apps/clientes/04_young/pingostudio/scripts/02_validate_looker_reader.sh
```

Se os 3 testes passarem (OK / OK / OK), prosseguir. Se falhar qualquer um, rollback (`DROP ROLE looker_reader`) e escalar.

### Passo 8 — Notificar o cutover ready

```bash
notify_telegram "🟢 <b>PINGOSTUDIO-264 — looker_reader PRONTO</b>%0A%0A
Role criado, BYPASSRLS ativo, SELECT validado, INSERT negado.%0A%0A
<b>Próximo passo do Rodrigo:</b> retomar sessão Claude Code, anexar PDF do Looker atual, executar Fase 4 (clone + remap) usando apps/clientes/04_young/pingostudio/FIELD_MAPPING.md.%0A%0A
Host pooler: aws-0-sa-east-1.pooler.supabase.com:6543%0A
User: looker_reader.vvtympzatclvjaqucebr%0A
Senha: Vaultwarden → 'Young Pingolead Looker Reader'"
```

---

## O que Buzz NÃO deve fazer

- ❌ Escrever/rotacionar senhas no Vaultwarden (só humano)
- ❌ Clonar o Looker Studio (precisa browser com sessão Google autenticada — fora do escopo Buzz)
- ❌ Abrir PR (`gh pr create`) — aguardar pedido explícito do Rodrigo
- ❌ Commitar a senha real em qualquer arquivo — sempre apagar arquivos temporários com `shred -u`
- ❌ Prosseguir para Passo 6+ sem confirmação do Rodrigo sobre senha no Vaultwarden + nome do schema

## Registros para o próximo Buzz / Claude

Ao terminar cada fase (Passo 5 e Passo 8), atualizar o `agent_context`:

```sql
-- depois do Passo 5 (introspect feito)
UPDATE agent_context
SET value = jsonb_set(value, '{status_buzz}', '"introspect_done_awaiting_founder"'::jsonb),
    updated_at = now()
WHERE key = 'young.pingostudio.looker_migration';

-- depois do Passo 7 (looker_reader validado)
UPDATE agent_context
SET value = jsonb_set(value, '{status_buzz}', '"looker_reader_ready_awaiting_claude_fase4"'::jsonb),
    updated_at = now()
WHERE key = 'young.pingostudio.looker_migration';
```

Usar o MCP Supabase (projeto `ftctmseyrqhckutpfdeq`) ou `psql` via `NEXT_PUBLIC_SUPABASE_URL` que o Buzz já conhece.
