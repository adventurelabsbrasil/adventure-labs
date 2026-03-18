# O que fazer agora: Gmail + site com e sem www na Vercel

Dois blocos: (1) usar o email no Gmail; (2) fazer capclear.com.br (sem www) abrir na Vercel.

---

## 1. Abrir o email contato@capclear.com.br no Gmail

O DNS já está certo (MX e TXT do Google). Falta só **adicionar a conta** no Gmail e usar **senha de app**.

### 1.1 Criar uma senha de app no Google

1. Acesse: **[myaccount.google.com/security](https://myaccount.google.com/security)**
2. Ative **Verificação em duas etapas** (se ainda não estiver).
3. Em **"Senhas de app"** (ou "Como fazer login no Google"), crie uma nova:
   - Selecione "Outro (nome personalizado)" e digite algo como **Gmail CapClear**.
   - Copie a senha de **16 caracteres** (ex.: `abcd efgh ijkl mnop`). Você vai usar ela no passo 1.2 (pode colar sem espaços).

### 1.2 Adicionar a conta no Gmail (app ou web)

**No Gmail na web (gmail.com):**

1. Clique no seu avatar (canto superior direito) → **Adicionar outra conta**.
2. Digite o email: **contato@capclear.com.br**.
3. Quando pedir a senha, **não** use a senha normal da conta. Use a **senha de app** de 16 caracteres que você criou.
4. Se aparecer "Configuração manual" ou "Outro tipo de conta", escolha **IMAP** e preencha:
   - **Servidor de entrada (IMAP):** imap.gmail.com — Porta: **993** — SSL
   - **Servidor de saída (SMTP):** smtp.gmail.com — Porta: **587** — TLS
   - **Usuário:** contato@capclear.com.br  
   - **Senha:** a senha de app

**No app Gmail (celular):**

1. Menu → **Adicionar outra conta** → **Google** (ou "Outro" se não aparecer Google).
2. Email: **contato@capclear.com.br**.
3. Senha: use a **senha de app** (não a senha normal).
4. Se pedir servidores, use os mesmos acima (IMAP/SMTP).

Depois disso, o email contato@capclear.com.br passa a aparecer no Gmail junto com as outras contas.

---

## 2. Fazer www e sem www abrirem o site da Vercel

Hoje:

- **www.capclear.com.br** já aponta para a Vercel (está ok).
- **capclear.com.br** (sem www) ainda aponta para o Wix (registro A = 216.198.79.1).

Para o domínio raiz também abrir na Vercel, altere **só o registro A** no Wix.

### 2.1 No Wix – editar o registro A

1. Acesse: [Gerenciar registros DNS](https://manage.wix.com/dashboard/212a1607-bae9-4a3d-9c23-a6abba7c91b7) (ou Configurações → Domínios → capclear.com.br → **Gerenciar registros DNS**).
2. Na seção **A (Host)**, localize a linha:
   - **Nome do host:** capclear.com.br  
   - **Valor:** 216.198.79.1  
3. Clique em **Editar** nessa linha.
4. Troque o **Valor** de `216.198.79.1` para: **76.76.21.21**
5. Salve.

O IP **76.76.21.21** é o da Vercel para domínio raiz. Assim, capclear.com.br (sem www) passa a abrir o mesmo projeto que www na Vercel (a Vercel costuma redirecionar raiz → www ou servir o mesmo site nos dois).

### 2.2 Aguardar propagação

Pode levar de alguns minutos a até 24–48 horas. Depois disso:

- **capclear.com.br** → site na Vercel  
- **www.capclear.com.br** → site na Vercel (já está assim)

---

## Resumo

| Objetivo | O que fazer |
|----------|-------------|
| **Email no Gmail** | Criar senha de app no Google; no Gmail, adicionar conta contato@capclear.com.br usando essa senha (e IMAP/SMTP se pedir). |
| **www e sem www na Vercel** | No Wix, editar o registro **A** de capclear.com.br: valor **76.76.21.21** (no lugar de 216.198.79.1). |

Nada mais é obrigatório no DNS para esses dois objetivos.
