# Security Runbook — Adventure Labs

**Owner:** Torvalds (CTO)
**Atualizado:** 2026-04-01

---

## Resposta a credencial exposta em repositório

### Passo 1 — Revogar imediatamente (ação humana, <15 min)

| Tipo de credencial | Onde revogar |
|---|---|
| Google API Key / OAuth Secret | [Google Cloud Console](https://console.cloud.google.com) → APIs & Services → Credentials |
| Supabase Anon/Service Key | Supabase Dashboard → Project Settings → API → Regenerate |
| OpenAI / Anthropic key | Plataforma respectiva → API Keys |
| Webhook secret | Revogar na plataforma de origem |
| Infisical token | Infisical Dashboard → Access Control |

**Revogar sempre antes de purgar o histórico.** O tempo entre exposição e revogação é o janela de risco.

---

### Passo 2 — Identificar o alcance da exposição

```bash
# Descobrir em quais commits a credencial aparece
git log -S "CHAVE_EXPOSTA" --all --oneline

# Ver quais arquivos contêm a chave
git grep "CHAVE_EXPOSTA" $(git rev-list --all)
```

---

### Passo 3 — Purgar do histórico git

> ⚠️ Rewrite de histórico é destrutivo. Avisar toda a equipe **antes** de executar.

**Opção A — BFG Repo Cleaner (recomendado, mais rápido):**

```bash
# Instalar BFG
brew install bfg   # ou baixar em https://rtyley.github.io/bfg-repo-cleaner/

# Criar arquivo com strings a remover
echo "CHAVE_EXPOSTA" > secrets.txt

# Purgar do histórico (clone bare separado)
git clone --mirror <url-repo> repo-mirror.git
bfg --replace-text secrets.txt repo-mirror.git
cd repo-mirror.git && git reflog expire --expire=now --all && git gc --prune=now --aggressive

# Force-push
git push --force
```

**Opção B — git filter-repo:**

```bash
pip install git-filter-repo

git filter-repo --replace-text secrets.txt
git push origin --force --all
git push origin --force --tags
```

---

### Passo 4 — Atualizar Infisical com nova credencial

```bash
# Após obter a nova chave:
infisical secrets set NOME_DA_CHAVE=NOVO_VALOR --env=dev --path=/caminho
infisical secrets set NOME_DA_CHAVE=NOVO_VALOR --env=prod --path=/caminho

# Ou usar o script de push em lote:
pnpm secrets:push:infisical
```

---

### Passo 5 — Atualizar deploys

- **Vercel:** Dashboard → Project → Settings → Environment Variables → atualizar
- **Railway:** Dashboard → Service → Variables → atualizar
- Trigger redeploy após atualizar variáveis

---

### Passo 6 — Documentar o incidente

Registrar em `_internal/audit-secrets-summary.md`:

```markdown
## YYYY-MM-DD — Credencial [TIPO] exposta

- **Arquivo afetado:** `caminho/do/arquivo`
- **Tipo:** Google API Key / JWT / etc.
- **Revogada em:** HH:MM (X min após descoberta)
- **Histórico purgado:** sim/não
- **Nova chave configurada em:** Infisical, Vercel, Railway
- **Causa raiz:** [ex: valor real em .env.example, arquivo commitado acidentalmente]
- **Prevenção adotada:** [ex: regra adicionada ao pre-commit hook]
```

---

## Guardrails preventivos ativos

| Mecanismo | Arquivo | O que bloqueia |
|---|---|---|
| Pre-commit hook | `.githooks/pre-commit` | Padrões conhecidos (Google keys, JWTs, Supabase keys) |
| GitHub Actions | `.github/workflows/security-scan.yml` | Gitleaks em todo PR/push + arquivos proibidos |
| .gitignore | `.gitignore` | `client_secret*.json`, `token.json`, `credentials.json`, `.env.*` |

---

## Auditoria manual periódica

Execute mensalmente:

```bash
bash scripts/audit-secrets.sh
```

O script verifica padrões de credenciais nos arquivos rastreados e gera relatório em `_internal/audit-secrets-report.md` (ignorado pelo git).
