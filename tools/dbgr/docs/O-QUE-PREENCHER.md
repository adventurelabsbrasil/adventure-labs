# O que preencher para eu rodar tudo e fazer a migração

Uma única lista: o que vai no **.env**, o que (se algo) você me passa em arquivo, e o que eu consigo rodar sozinho vs o que você faz no Wix/Google.

---

## 1. O que precisa estar no .env (para eu rodar tudo)

Preencha **só isto** no arquivo `.env` na raiz do projeto:

| Variável | Obrigatório? | O que colar |
|----------|--------------|-------------|
| **VERCEL_TOKEN** | **Sim** | Token da conta Vercel ([criar aqui](https://vercel.com/account/tokens)). Token da **conta**, não do projeto. |
| **TARGET_DOMAIN** | Recomendado | `capclear.com.br` (já é o default; pode deixar em branco). |
| **TARGET_EMAIL** | Recomendado | `contato@capclear.com.br` (já é o default; pode deixar em branco). |
| **WIX_API_KEY** | Não | Só se quiser; expira em ~20 min. Para a migração não é necessário. |
| **WIX_SITE_ID** | Não | Só se preencher WIX_API_KEY. |

**Resumo:** com **VERCEL_TOKEN** preenchido (e, se quiser, TARGET_DOMAIN e TARGET_EMAIL) eu consigo rodar diagnóstico, config domain e gerar todos os passos da migração. Wix no .env é opcional.

---

## 2. Preencher em arquivo para mim? Não precisa.

- Os dados do Google (TXT/CNAME de verificação) já estão em [WIX-DADOS.md](WIX-DADOS.md).
- Domínio e email já estão no .env ou como default (capclear.com.br, contato@capclear.com.br).
- **Não** precisa criar `wix-info.md` nem preencher mais nada em arquivo para eu rodar os comandos e te orientar na migração.

Se no meio do processo eu precisar de algo (ex.: nome exato do projeto na Vercel), eu peço. O nome do projeto na Vercel que usamos é **capclear** (já vimos no debug).

---

## 3. O que eu rodo por você (automatizado)

Com o .env preenchido, eu posso rodar:

1. **`dbgr debug`** – diagnóstico (DNS, Vercel, Gmail).
2. **`dbgr config domain --project capclear`** – garantir que capclear.com.br está no projeto certo na Vercel e **obter os registros DNS** (CNAME ou A) que a Vercel indica.
3. **`dbgr config gmail`** – instruções para usar o email no Gmail (IMAP/SMTP, senha de app).
4. **`dbgr migrate domain`** e **`dbgr migrate email`** – checklists da migração.

Isso me dá o estado atual e **a lista exata do que você precisa configurar no Wix** (registros DNS).

---

## 4. O que só você pode fazer (no Wix e no Google)

Eu **não** tenho acesso ao painel do Wix nem ao Admin do Google. Você precisa:

| Onde | O que fazer |
|------|----------------|
| **Wix – DNS** | Adicionar/alterar registros: (1) TXT ou CNAME do Google para verificação; (2) MX do Google para o email; (3) CNAME ou A que a Vercel indicar para o site. |
| **Google Admin** | Clicar em “Confirm” depois de adicionar o TXT/CNAME no Wix; ativar Gmail e configurar o que o Admin pedir. |
| **Gmail (app ou web)** | Adicionar a conta contato@capclear.com.br com senha de app (instruções do `dbgr config gmail`). |

Depois que eu rodar os comandos, te devolvo **uma lista objetiva** do tipo: “adicione estes N registros no Wix (Domínios → Gerenciar registros DNS)” com tipo, nome e valor de cada um.

---

## 5. Ordem prática para a migração

1. **Você:** deixa o .env com **VERCEL_TOKEN** (e opcionalmente TARGET_DOMAIN e TARGET_EMAIL).
2. **Eu:** rodo `debug`, `config domain --project capclear` e te passo os registros DNS (Vercel + lembrete do TXT/CNAME do Google e MX).
3. **Você:** no Wix, em Domínios → Gerenciar registros DNS, adiciona o TXT (ou CNAME) do Google; depois os MX do Google; depois o CNAME (ou A) da Vercel.
4. **Você:** no Admin do Google, clica em Confirm; espera propagar; usa `dbgr config gmail` para configurar o Gmail no app/web.
5. Quando o domínio verificar na Vercel e o email funcionar, a “migração” do site e do email está feita; sair do plano Wix (cancelar) é um passo posterior, quando quiser.

---

**Em uma frase:** preencha só o **VERCEL_TOKEN** no .env (e, se quiser, TARGET_DOMAIN e TARGET_EMAIL). Com isso eu rodo tudo, te digo exatamente o que colar no Wix e no Google, e você aplica lá.
