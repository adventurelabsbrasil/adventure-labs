# Passos finais no Wix para concluir configuração e migração

Resultado dos comandos que rodei:

- **Vercel:** capclear.com.br já está no projeto **capclear** e já está **verificado**. Nada a fazer na Vercel.
- **DNS (consulta pública):** ainda não aparecem registros; ao configurar no Wix, eles passam a valer e o Google/Vercel verificam.

Faça só o que está abaixo no Wix.

---

## Onde no Wix

Acesse: [manage.wix.com/dashboard/212a1607-bae9-4a3d-9c23-a6abba7c91b7](https://manage.wix.com/dashboard/212a1607-bae9-4a3d-9c23-a6abba7c91b7) → **Configurações** (ou Domínios) → **Gerenciar** o domínio **capclear.com.br** → **Gerenciar registros DNS** (ou “Manage DNS Records”).  
Adicione os registros abaixo como **registros personalizados** se o Wix pedir.

---

## 1. Verificação do Google (“Verificar o Gmail”)

Adicione **um** dos dois (TXT ou CNAME).

**Opção A – TXT (recomendado):**

| Tipo | Nome/Host | Valor | TTL |
|------|-----------|------|-----|
| TXT  | @ (ou em branco / padrão) | `google-site-verification=5KaBBeesoSnyIWDA8DTuxZUJr1zdY3cJ2sXud-wtkf8` | Menor possível |

**Opção B – CNAME (alternativa):**

| Tipo  | Nome/Host   | Valor                              | TTL  |
|-------|-------------|------------------------------------|------|
| CNAME | `chhbze3bwyw2` | `gv-cv4izarnfjlhci.dv.googlehosted.com` | Menor possível |

Depois: no **Admin do Google** (onde estava a tela de verificação), marque o checkbox e clique em **Confirm**.

---

## 2. Email (Gmail) – MX do Google

Para o email contato@capclear.com.br funcionar no Gmail, o domínio precisa dos **MX do Google**. No mesmo lugar dos registros DNS do Wix, adicione os MX que o **Google Admin** mostrar para você (ou use os padrão do Google Workspace):

| Prioridade | Valor (servidor)        |
|------------|-------------------------|
| 1          | smtp.google.com         |
| ou (conta mais antiga) | aspmx.l.google.com |
| 5          | alt1.aspmx.l.google.com |
| 5          | alt2.aspmx.l.google.com |
| 10         | alt3.aspmx.l.google.com |
| 10         | alt4.aspmx.l.google.com |

O Admin do Google (Domínios → seu domínio) indica exatamente quais MX usar; use essa lista se não houver instrução diferente.

---

## 3. Usar o email no Gmail (app ou web)

- **Servidor de entrada (IMAP):** imap.gmail.com (porta 993, SSL)  
- **Servidor de saída (SMTP):** smtp.gmail.com (porta 587, TLS)  
- **Usuário:** contato@capclear.com.br  
- **Senha:** use uma **Senha de app** do Google (não a senha normal). Em [myaccount.google.com/security](https://myaccount.google.com/security) → Verificação em duas etapas → Senhas de app, crie uma e use no Gmail.

No Gmail: Adicionar outra conta → Configuração manual → IMAP e preencha com os dados acima.

---

## 4. DKIM (TXT 2048 – autenticação de email do Google)

Depois da verificação do domínio, o Google pode pedir que você publique um registro **DKIM** (TXT) para assinatura de emails. Isso evita que mensagens de contato@capclear.com.br caiam em spam.

**No Wix:** Domínios → capclear.com.br → **Gerenciar registros DNS** → Adicionar registro **TXT** (personalizado):

| Tipo | Nome/Host | Valor |
|------|-----------|--------|
| TXT  | `google._domainkey` | `v=DKIM1;k=rsa;p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA6DfLtzcbAG9wP+7Nw4vS54JnimVq6RIv7QnmeGqbxXJ8lu0CSU1w3Kivjf5pYQNZFa3jWdKjZZXSL/sEMbvZJxOaJMu0XMrLM+P+x+HbGa/fGpzjGcfkwuDaFEhsbOsO9sp9OORMq8e98OeFPlX3Fouzm4tn9kTzK8E+XIOWLBvn4jEKvkQWmmZRmvirXst/tYJkT8eLDbtNQipH60V85wsGSJXwfFvzMtDrBrXLUI/Qg5MiRVSBqhI3REa/34WQcwiMUldRoDpWyAQedSmKvmoJuvk7V31DbI210Vccezwe2TUdqYCZzUVblmxFdh4MI3fVE7X80f/6TXX+yFJ4uQIDAQAB` |

- **Nome:** no Wix use só o subdomínio: `google._domainkey` (o painel completa com .capclear.com.br).
- **Valor:** copie o valor **inteiro** que o Google mostrar (começa com `v=DKIM1;k=rsa;p=...`). Se o Google gerar um valor diferente deste, use o que o Admin mostrar.
- Depois de salvar, espere **cerca de 30 minutos** para propagar e clique em **Verificar** (ou equivalente) na tela do Google onde pediu o DKIM.

---

## Resumo

| Onde        | O que fazer |
|------------|-------------|
| **Wix – DNS** | 1) TXT (ou CNAME) de verificação do Google. 2) MX do Google. 3) TXT DKIM `google._domainkey` (se o Google pedir). |
| **Google Admin** | Confirmar verificação do domínio; depois verificar DKIM (aguardar ~30 min após publicar o TXT). |
| **Gmail**   | Adicionar conta contato@capclear.com.br com senha de app (IMAP/SMTP acima). |

**Vercel:** nada; o domínio capclear.com.br já está verificado no projeto capclear.

Quando terminar os passos no Wix e no Google, a configuração e a migração do site (Vercel) e do email (Gmail) estão concluídas.
