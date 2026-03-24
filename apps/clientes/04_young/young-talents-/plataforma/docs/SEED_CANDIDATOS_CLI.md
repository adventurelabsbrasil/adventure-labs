# Seed de candidatos via CLI (truncar + subir de novo)

Este guia explica como **apagar todo o conteúdo** da tabela `young_talents.candidates` no Supabase e **subir de novo** usando os arquivos seed gerados (`seed-candidates-part-*.sql`), **tudo pelo terminal**, sem colar SQL no dashboard.

---

## 1. Conectar o projeto ao Supabase (CLI)

### 1.1 Instalar (ou evitar instalação global)

- **Sem instalar (recomendado no macOS):** use `npx supabase` no lugar de `supabase` em todos os comandos (ex.: `npx supabase login`). Evita erro de permissão (`EACCES`) do `npm install -g`.
- **macOS (Homebrew):** `brew install supabase/tap/supabase` — não precisa de permissão de admin.
- **npm global (pode dar EACCES):** `npm install -g supabase`. Se der "permission denied", use `npx supabase` ou Homebrew.

### 1.2 Fazer login

```bash
npx supabase login
```

Abra o link no navegador, autorize e volte ao terminal.

### 1.3 Vincular o projeto (link)

No diretório do projeto (onde está a pasta `supabase/`):

```bash
npx supabase link --project-ref SEU_PROJECT_REF
```

(Se instalou a CLI globalmente, pode usar só `supabase` em vez de `npx supabase`.)

O **Project Ref** aparece na URL do dashboard:  
`https://supabase.com/dashboard/project/XXXXXXXX` → use `XXXXXXXX`.

Quando pedir, informe a **senha do banco** (a mesma que você usa no Supabase Dashboard → Settings → Database). Ela fica salva localmente para comandos como `db push` e `db pull`.

---

## 2. Connection string (para rodar o seed)

O comando `supabase link` não executa arquivos SQL arbitrários no remoto. Para rodar os seeds, usamos um script Node que se conecta **diretamente ao Postgres** com a connection string.

### 2.1 Obter a connection string

1. Abra o **Supabase Dashboard** do seu projeto.
2. Vá em **Project Settings** (ícone de engrenagem) → **Database**.
3. Em **Connection string**, escolha **URI**.
4. Copie a URL. Ela tem a forma:
   ```text
   postgresql://postgres.[PROJECT_REF]:[YOUR-PASSWORD]@aws-0-[REGION].pooler.supabase.com:6543/postgres
   ```
5. Substitua `[YOUR-PASSWORD]` pela senha do banco (a mesma do link).

### 2.2 Colocar no .env

No **`.env`** na raiz do projeto (não commitar; o `.env` já está no `.gitignore`):

```env
SUPABASE_DB_URL=postgresql://postgres.XXXXXXXX:SuaSenhaAqui@aws-0-sa-east-1.pooler.supabase.com:6543/postgres
```

Use a URL que você copiou, com a senha já preenchida.

---

## 3. Gerar os arquivos seed (se ainda não tiver)

Os arquivos `seed-candidates-part-01.sql`, `part-02.sql`, … são gerados a partir do CSV:

```bash
npm run generate-candidates-sql
```

Isso lê `assets/candidates/candidates.csv` e grava os `.sql` em `scripts/output/`.  
Se o CSV for grande, serão geradas várias partes (ex.: part-01 até part-86).

---

## 4. Rodar o seed pelo terminal

Com o `SUPABASE_DB_URL` no `.env` e os arquivos em `scripts/output/`:

```bash
npm run seed-candidates-db
```

O script:

1. Conecta ao Postgres do Supabase usando `SUPABASE_DB_URL`.
2. Executa **TRUNCATE young_talents.candidates RESTART IDENTITY CASCADE** (apaga todos os candidatos e reinicia o contador de IDs; CASCADE limpa tabelas que referenciam `candidates`, ex.: `applications`).
3. Executa **em ordem** cada arquivo `seed-candidates-part-01.sql`, `part-02.sql`, ….
4. No final mostra o total de registros em `young_talents.candidates`.

Assim você **deleta todo o conteúdo atual de candidates** e **sobe de novo** no formato dos seeds, tudo via CLI/terminal.

---

## 5. Resumo rápido

| Passo | Comando / ação |
|-------|-----------------|
| 1 | `npx supabase login` (ou `supabase login` se a CLI estiver instalada) |
| 2 | `npx supabase link --project-ref SEU_PROJECT_REF` (e informar senha do DB) |
| 3 | Dashboard → Settings → Database → Connection string (URI) → copiar |
| 4 | Colocar no `.env`: `SUPABASE_DB_URL=postgresql://...` (com senha) |
| 5 | (Opcional) `npm run generate-candidates-sql` para gerar/atualizar os `.sql` |
| 6 | `npm run seed-candidates-db` para truncar e aplicar os seeds |

---

## 6. Erros comuns

- **"SUPABASE_DB_URL is not defined"**  
  Crie/edite o `.env` na raiz do projeto com `SUPABASE_DB_URL=...` (a URI completa com senha).

- **"connection refused" / "timeout"**  
  Confira se a URI está correta (projeto, região, porta 6543 para pooler) e se a senha não tem caracteres especiais que precisem de URL-encode.

- **"Nenhum arquivo seed-candidates-part-*.sql"**  
  Rode antes: `npm run generate-candidates-sql`.

- **"permission denied" / "must be owner"**  
  Use a connection string do usuário **postgres** (a URI que o dashboard mostra já é para o postgres). Não use a anon key aqui; o script usa conexão direta ao Postgres.
