# Andon — workflow n8n (Asana → C-Suite + Founder)

## O que faz

Dispara **POST** `https://admin.adventurelabs.com.br/api/csuite/andon-asana-run` com `x-admin-key: CRON_SECRET`. O **Admin** (Vercel) lê o Asana e grava `adv_founder_reports` + espelho `adv_csuite_memory` (`source: ["asana"]`).

O token Asana **não** passa pelo n8n — fica só nas env vars do projeto Admin.

## Variáveis no Vercel (apps/core/admin)

| Variável | Descrição |
|----------|-----------|
| `ASANA_ACCESS_TOKEN` | OAuth ou PAT — **`tools/asana-cli`**: `node asana-login.mjs oauth --write-admin-env` |
| `ASANA_PROJECT_GIDS` | GIDs dos projetos, separados por vírgula (ex. `123,456`) |
| `CRON_SECRET` | Já usado por Zazu/Lara; mesmo valor na credencial n8n |

## n8n

1. Importar `andon-asana-daily-v1.json`.
2. Credencial **Header Auth** (ou Generic): header `x-admin-key` = valor de `CRON_SECRET`.
3. Ajustar URL se o Admin usar domínio diferente.
4. Ajustar cron no nó Schedule (padrão 10:00 UTC ≈ 07:00 BRT).

## Teste manual

**1) Diagnóstico (não grava nada)** — valida `CRON_SECRET`, token Asana e acesso aos GIDs:

```bash
curl -sS "$ADMIN_URL/api/csuite/andon-asana-run" -H "x-admin-key: $CRON_SECRET" | jq .
```

Esperado: `asanaTokenValid: true`, `projects` com `name` por GID.

**2) Snapshot completo** — grava `adv_founder_reports` + `adv_csuite_memory`:

```bash
curl -sS -X POST "$ADMIN_URL/api/csuite/andon-asana-run" \
  -H "Content-Type: application/json" \
  -H "x-admin-key: $CRON_SECRET" \
  -d '{}'
```

Resposta `ok: true` e `memorySync.ok: true` = sucesso.

## Teste local (monorepo)

No `apps/core/admin/.env.local`: `CRON_SECRET`, `ASANA_ACCESS_TOKEN`, `ASANA_PROJECT_GIDS`.

```bash
# Terminal 1 — Admin na porta 3001
pnpm admin:dev

# Terminal 2 — na raiz do monorepo
pnpm test:andon          # diagnóstico
pnpm test:andon:post    # grava relatório + memória C-Suite

# Alternativa: cd apps/core/admin && pnpm dev && pnpm test:andon
```

Produção: `ADMIN_URL=https://admin.adventurelabs.com.br pnpm test:andon`.

**`ECONNREFUSED 127.0.0.1:3001`:** o teste chama a API do Admin — é preciso **deixar o servidor rodando** no terminal 1 (`pnpm admin:dev`) antes de `pnpm test:andon` no terminal 2.
