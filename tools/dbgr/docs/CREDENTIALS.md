# Tudo que precisa estar no .env para trabalhar livremente

O Dbgr usa **apenas** o arquivo `.env` na raiz do projeto. Nunca commite o `.env`.

---

## Lista completa: o que incluir no .env

| Variável | Obrigatório? | Onde obter | Uso no Dbgr |
|----------|---------------|------------|--------------|
| **VERCEL_TOKEN** | Sim (para `config domain` e debug completo) | [vercel.com/account/tokens](https://vercel.com/account/tokens) → Create. Use escopo **Full Account** (ou leitura + adicionar domínios). | Listar projetos/domínios, adicionar domínio ao projeto, ver estado de verificação. |
| **WIX_API_KEY** | Não | [dev.wix.com](https://dev.wix.com/docs/rest) – só se você tiver um app Wix com API. | Tentativa de enriquecer o relatório; a API não expõe email/DNS do plano comercial. |
| **WIX_SITE_ID** | Não (só junto com WIX_API_KEY) | Painel do site Wix ou URL do editor. | Identificar o site na API Wix. |
| **TARGET_DOMAIN** | Não (tem default) | Ex.: `capclear.com.br` | Domínio padrão em `debug` e `config domain`. |
| **TARGET_EMAIL** | Não (tem default) | Ex.: `contato@capclear.com.br` | Email padrão em `config gmail`. |

---

## Observações importantes

1. **Wix: token dura ~20 minutos**  
   O token da API Wix (WIX_API_KEY) expira em cerca de 20 min. Se o `debug` der erro de Wix depois de um tempo, gere um novo token em [dev.wix.com](https://dev.wix.com) e atualize o `.env`.

2. **Wix: formato do WIX_SITE_ID**  
   O valor certo é **só o GUID do site** (ex.: `212a1607-bae9-4a3d-9c23-a6abba7c91b7`).  
   - Onde achar: na URL do painel, ex. `https://manage.wix.com/dashboard/212a1607-bae9-4a3d-9c23-a6abba7c91b7` → o ID é a parte depois de `/dashboard/`.  
   - Se você colar algo como `5eda6834-...?metaSiteId=212a1607-bae9-4a3d-9c23-a6abba7c91b7`, o Dbgr usa automaticamente o `metaSiteId` (o segundo GUID). Pode deixar assim ou colar só `212a1607-bae9-4a3d-9c23-a6abba7c91b7`.

3. **Vercel: token da conta (não do projeto)**  
   Usar o **token da conta** na Vercel está correto. O Dbgr precisa listar projetos e adicionar domínio a um projeto (ex.: capclear); isso é feito com token de conta. Token só do projeto não seria suficiente.

---

## O que **não** colocar no .env

- **Senha do email** (ex.: CapClear26) – o Dbgr não a usa. Só você usa no Gmail ou no Admin do Google.
- **Senha da conta Wix** – o Dbgr não faz login no Wix; no máximo usa API key de app, se você tiver.
- **Senha do Firebase** – o Dbgr ainda não chama Firebase; se no futuro precisar, será documentado aqui.

---

## Exemplo de .env preenchido (para trabalhar livremente)

```env
VERCEL_TOKEN=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
TARGET_DOMAIN=capclear.com.br
TARGET_EMAIL=contato@capclear.com.br
```

Com isso já dá para:

- `dbgr debug` – diagnóstico completo (DNS + Vercel + diagnóstico Gmail).
- `dbgr config domain --project <nome-projeto>` – adicionar domínio e ver instruções DNS.
- `dbgr config gmail` – instruções de Gmail com inferência de provedor.

Se quiser tentar enriquecer com Wix (opcional):

```env
WIX_API_KEY=seu_token_do_app_wix
WIX_SITE_ID=id_do_site
```

---

## Por comando

| Comando | Precisa de |
|---------|-------------|
| `dbgr debug` | VERCEL_TOKEN (recomendado). TARGET_DOMAIN opcional. |
| `dbgr config gmail` | Nada obrigatório; TARGET_EMAIL opcional. Com debug: VERCEL_TOKEN opcional. |
| `dbgr config domain` | **VERCEL_TOKEN** obrigatório. --project obrigatório. TARGET_DOMAIN opcional. |
| `dbgr migrate domain` / `migrate email` | Nenhuma variável. |
