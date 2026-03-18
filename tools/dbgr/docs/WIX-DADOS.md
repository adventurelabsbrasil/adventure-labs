# Quais dados do Wix me passar (e onde achar)

O Dbgr precisa só de **alguns** dados do Wix para te orientar (domínio, DNS, email). Você **não** precisa preencher tudo do painel — só o que está na tabela abaixo.

**Onde colar:** use o arquivo `wix-info.md` na raiz do projeto (copie de [wix-info.example.md](../wix-info.example.md)). Preencha e deixe no workspace; eu leio de lá. **Nunca** coloque senha do Wix nem do email nesse arquivo.

---

## Dados já fornecidos (capclear)

- **Domínio:** capclear.com.br  
- **Email:** contato@capclear.com.br  
- **Provedor email:** Google Workspace (revenda Wix)

### Verificação do Google (Admin Console – “Verificar o Gmail”)

**Opção 1 – Registro TXT (recomendado no Wix):**

| Campo   | Valor |
|--------|--------|
| Tipo   | TXT |
| Valor  | `google-site-verification=5KaBBeesoSnyIWDA8DTuxZUJr1zdY3cJ2sXud-wtkf8` |
| Nome   | valor padrão (@ ou em branco) |
| TTL    | menor valor possível |

**Opção 2 – Registro CNAME (alternativa):**

| Campo  | Valor |
|--------|--------|
| Tipo   | CNAME |
| Nome   | `chhbze3bwyw2` |
| Valor  | `gv-cv4izarnfjlhci.dv.googlehosted.com` |
| TTL    | menor valor possível |

**No Wix:** Domínios → Gerenciar registros DNS → adicionar como registro personalizado (custom). Depois volte no Admin do Google e clique em **Confirm** (confirmar que atualizou o código no host do domínio).

---

## 1. O que importa

| Dado | Onde achar no Wix | O que colar no wix-info.md |
|------|-------------------|----------------------------|
| **Site ID** | URL do painel: `manage.wix.com/dashboard/XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX` → a parte depois de `dashboard/` | `Site ID: 212a1607-bae9-4a3d-9c23-a6abba7c91b7` (ou já está no .env como WIX_SITE_ID) |
| **Domínio principal** | Configurações do site → Domínio | Ex.: `capclear.com.br` |
| **Como o domínio está conectado** | Domínio → Gerenciar → ver se está "Conectado ao Wix" (name servers) ou "Apontando" (pointing) | `Conexão: name servers` ou `Conexão: pointing` |
| **Registros DNS atuais** | Domínio → Gerenciar → **Gerenciar registros DNS** (ou "Manage DNS Records") | Liste o que aparecer: tipo (A, CNAME, MX, TXT), nome/host e valor. Pode ser em lista ou tabela. |
| **Email comercial** | Configurações → Email comercial (ou "Business Email") | Se está ativo, qual provedor (Google Workspace / Wix) e se já adicionou o domínio no Google Admin. |
| **TXT de verificação do Google** | No mesmo lugar dos registros DNS: veja se existe um registro **TXT** cujo valor começa com `google-site-verification=` | `TXT verificação Google: sim` ou `não` e, se tiver, o valor (ou "já adicionei, valor confidencial"). |

Nada de senhas, tokens nem códigos de segurança.

---

## 2. Registros DNS – exemplo do que colar

No Wix: **Domínios** → seu domínio → **Gerenciar registros DNS**.

Copie o que aparecer, por exemplo:

```
A     @       123.45.67.89
CNAME www     something.vercel-dns.com
MX    @       1  aspmx.l.google.com
MX    @       5  alt1.aspmx.l.google.com
TXT   @       google-site-verification=abc123...
```

Ou em texto livre, ex.:

- A: @ → 123.45.67.89  
- CNAME: www → cname.vercel-dns.com  
- MX: 1 aspmx.l.google.com, 5 alt1.aspmx.l.google.com  
- TXT: google-site-verification=... (sim/não)

Assim consigo ver se o TXT do Google e os MX já estão no Wix e o que falta para a Vercel.

---

## 3. Resumo

- **Arquivo para preencher:** `wix-info.md` na raiz (copie de `wix-info.example.md`).
- **Conteúdo:** Site ID (se quiser), domínio, tipo de conexão, lista de DNS (A, CNAME, MX, TXT), estado do email e se o TXT do Google está lá.
- **Não inclua:** senhas, tokens, códigos de segurança.

Quando você colar os arquivos do workspace (ou preencher o `wix-info.md`), eu uso só esses dados para te dizer exatamente o que configurar no Wix para Gmail e para a Vercel.
