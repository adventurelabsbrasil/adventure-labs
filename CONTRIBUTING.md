# Como contribuir

## Setup inicial

```bash
git clone --recurse-submodules <url> 01_ADVENTURE_LABS
cd 01_ADVENTURE_LABS
./scripts/setup.sh   # inicializa submodules, git hooks, symlinks e verifica pnpm
pnpm install
```

---

## Estrutura e taxonomia

- Respeitar a taxonomia em `knowledge/` (00–99)
- Novos documentos: seguir `MANUAL_TAXONOMIA_REPOSITORIO.md`
- Clientes: código em `apps/clientes/NN_nome/`, docs operacionais em `clients/NN_nome/`

### Critério: submodule vs. workspace local

| Tipo de app | Critério | Estratégia git |
|---|---|---|
| Core product (admin, adventure, elite) | Deploy próprio, versionamento independente | **Submodule** |
| App de cliente com deploy próprio | CI independente, equipe externa ou contrato próprio | **Submodule** |
| App de cliente interno em desenvolvimento | Apenas equipe Adventure Labs, sem deploy independente | **Workspace local** |
| Labs / experimentos | Sem deploy em produção | **Workspace local** |
| Pacote compartilhado | Consumido por ≥2 apps | **Workspace local** em `packages/` |

Ao criar um novo app de cliente, decida o critério acima **antes** de criar o repo.

### Separação `apps/clientes/` vs `clients/`

```
apps/clientes/NN_cliente/   → Código-fonte das aplicações (apps, submodules)
clients/NN_cliente/         → Documentação operacional de conta (contexto, sem código)
```

---

## Segurança

**Nunca commitar:**
- `.env`, `.env.local` ou qualquer arquivo com valores reais de variáveis
- `client_secret*.json`, `credentials.json`, `token.json`, `service_account*.json`
- Extratos, CPFs, dados de clientes, respostas sigilosas
- Backups com sufixo `.bak`

**Workflow correto:**
1. Crie `.env.local` (ignorado pelo git) com valores reais para desenvolvimento
2. Suba as variáveis para Infisical: `pnpm secrets:push:infisical`
3. Use `.env.example` como template — **somente placeholders** no formato `YOUR_KEY_HERE`
4. Para produção: configure as variáveis diretamente no Vercel / Railway

**Pre-commit hook:** o repo tem um hook em `.githooks/pre-commit` que bloqueia
automaticamente padrões de credenciais conhecidas (Google API Keys, JWTs, etc.).
Instalado automaticamente pelo `scripts/setup.sh`.

**Incidente de credencial exposta:** siga o `docs/SECURITY_RUNBOOK.md`.

---

## Código

- Package manager: **pnpm** (apenas — não usar npm install nem yarn)
- Admin: monorepo pnpm, Next.js, Supabase
- Ver `.cursorrules` em `apps/core/admin/` para convenções de código
- Lockfile único: `pnpm-lock.yaml` — nunca commitar `package-lock.json` ou `yarn.lock`

### Adicionando nova issue / feature

1. Criar issue no **Asana** (projeto Tasks) com ID e prioridade P0–P3
2. Registrar em `docs/BACKLOG.md` com o GID numérico do Asana
3. Formato obrigatório: `[P1][NOME] Título da feature`

---

## Regra de sobrescrita

Em conflito: **PARE → mostre o existente → confirme com o Founder** antes de substituir.
