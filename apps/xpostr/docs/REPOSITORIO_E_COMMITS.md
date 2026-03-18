# Xpostr — onde versionar e como commitar

## Opção A — Monorepo atual (`01_ADVENTURE_LABS`)

**Quando faz sentido:** um único lugar para Adventure Labs, deploy Vercel com **Root Directory** = `apps/xpostr`.

**Commits só do Xpostr** (sem levar lixo do resto do mono):

```bash
git add apps/xpostr/ knowledge/03_PROJETOS_INTERNOS/xpostr/
# se alterou workspace:
git add package.json pnpm-lock.yaml

git commit -m "feat(xpostr): descrição curta"
git push
```

Convenção: prefixo `feat(xpostr):`, `fix(xpostr):`, etc.

---

## Opção B — Repositório dedicado (ex.: `github.com/.../xpostr`)

**Quando faz sentido:** histórico e PRs só do produto, Vercel ligado direto na raiz do repo, acesso de terceiros sem o monorepo inteiro.

**Caminho 1 — Copiar (perde histórico antigo do app)**  
Copiar a pasta `apps/xpostr/` para um repo novo e dar o primeiro commit lá.

**Caminho 2 — Subtree (mantém histórico da pasta)**  
Na raiz do monorepo:

```bash
git subtree split -P apps/xpostr -b xpostr-split
git remote add xpostr-origin https://github.com/SEU_ORG/xpostr.git
git push xpostr-origin xpostr-split:main
```

Depois clones futuros trabalham só no repo `xpostr`. Sincronizar mono → dedicado de novo exige repetir subtree ou script.

---

## Opção C — Dentro do `admin`

**Não recomendado:** Admin já é um app grande (dashboard interno); o Xpostr é outro produto (auth, cron, X API). Misturar aumenta acoplamento e deploy confuso.

---

## Resumo

| Abordagem        | Commit “só Xpostr” | Repo limpo só Xpostr |
|------------------|--------------------|----------------------|
| Mono + paths     | Sim (disciplina)   | Não                  |
| Repo `/xpostr`   | N/A                | Sim                  |
| Dentro do admin  | Confuso            | Não                  |

Deploy na Vercel: em mono, configure **Root Directory** = `apps/xpostr`; em repo dedicado, raiz do projeto.

**Deploy não atualiza?** No painel Vercel do projeto Xpostr confira **Root Directory = `apps/xpostr`**. Se estiver em `apps/admin`, o push do Xpostr não altera esse deploy — crie outro projeto Vercel com root `apps/xpostr` ou ajuste a root. **Redeploy manual:** Deployments → ⋮ → Redeploy.
