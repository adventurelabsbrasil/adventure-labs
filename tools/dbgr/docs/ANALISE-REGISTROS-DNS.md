# Análise dos registros DNS (tela que você escaneou)

Resumo do que está configurado no Wix para **capclear.com.br**:

---

## Nenhum registro atrapalha a verificação do Google

Revendo a página que você enviou (**registrosDns.txt**):

- **TXT:** você tem os dois códigos de verificação (5KaBBees... e SclXvGEM...). O Google só exige que **um** deles bata com o código que aparece na tela de verificação do Admin. Nenhum dos dois atrapalha o outro.
- **MX:** todos apontam para o Google (aspmx, alt1, alt2, alt3, alt4). Não interferem na etapa “Verificar domínio”.
- **SPF** (`v=spf1 include:_spf.google.com ~all`): correto para Google e não afeta a verificação.
- **A, CNAME (www, pt), NS:** não são usados na verificação de domínio; nenhum deles bloqueia o fluxo.

Ou seja: **na sua configuração atual, nenhum registro DNS deveria impedir a verificação.** Se deu erro ontem, as causas mais prováveis são as da seção abaixo.

---

## O que já está correto

| Tipo | Nome do host | Valor | Conclusão |
|------|--------------|--------|-----------|
| **TXT** | capclear.com.br | `google-site-verification=5KaBBeesoSnyIWDA8DTuxZUJr1zdY3cJ2sXud-wtkf8` | Verificação do Google (Gmail) já adicionada. |
| **TXT** | capclear.com.br | `google-site-verification=SclXvGEM8r0gE5VY4q6f5Q5Ekwbe9E-19UavmfpY3aw` | Outro código de verificação (pode manter). |
| **TXT** | capclear.com.br | `v=spf1 include:_spf.google.com ~all` | SPF para envio de email pelo Google. |
| **MX** | capclear.com.br | aspmx.l.google.com (10), alt1 (20), alt2 (30), alt3 (40), alt4 (50) | Email já aponta para Google Workspace. |
| **CNAME** | www.capclear.com.br | 800ee0b46c2dad80.vercel-dns-017.com | **www** já aponta para a Vercel. |

Conclusão: **Verificação do Google** e **email (MX)** estão ok. **www.capclear.com.br** abre o site na Vercel.

---

## Único ajuste opcional: domínio raiz (sem www)

| Tipo | Nome do host | Valor atual | Observação |
|------|--------------|-------------|------------|
| **A** | capclear.com.br | 216.198.79.1 | Esse IP é do **Wix**. Ou seja, **capclear.com.br** (sem www) ainda abre o site no Wix. |

Se quiser que **capclear.com.br** (sem www) também abra o site da Vercel:

1. Na Vercel, no projeto **capclear**, veja qual é o registro recomendado para o domínio raiz (geralmente um **CNAME** para algo como `cname.vercel-dns.com` ou IPs em **A**).  
2. No Wix, na seção **A (Host)**:
   - **Opção A:** editar o registro **capclear.com.br** e trocar o valor **216.198.79.1** pelo CNAME ou IP que a Vercel indicar (no Wix, domínio raiz às vezes só permite A; se a Vercel der só CNAME, pode ser que o Wix não permita CNAME no apex – aí manter o A para a Vercel se eles informarem IPs).  
   - **Opção B:** manter como está e usar só **www.capclear.com.br** na Vercel; aí o raiz continua no Wix até você migrar o domínio.

A Vercel costuma oferecer “redirect” de capclear.com.br para www.capclear.com.br. Se já estiver assim no projeto, assim que você apontar o A (ou CNAME) do raiz para a Vercel, o raiz passará a redirecionar para www ou para o app.

---

## Resumo

- **Gmail / Google Workspace:** TXT de verificação e MX já configurados. Pode ir no Admin do Google e clicar em **Confirm** se ainda não fez; depois use o Gmail com **contato@capclear.com.br** e **senha de app** (imap.gmail.com / smtp.gmail.com).
- **Site:** **www.capclear.com.br** já está na Vercel. O domínio raiz **capclear.com.br** ainda aponta para o Wix; altere o registro **A** no Wix só se quiser que o raiz também sirva o site da Vercel (ou redirecione para www).

Nada obrigatório: email e www já estão corretos; o ajuste do A é só para o raiz abrir na Vercel também.

---

## Se a verificação do Google der erro de novo

1. **Código certo na tela**  
   Na tela de verificação do Admin Console, o Google mostra **um** valor de TXT (ou CNAME). Esse valor tem que ser **exatamente igual** a um dos que estão no Wix (incluindo `google-site-verification=` e o resto, sem espaço no início/fim). Confira no Wix, em **TXT**, se existe uma linha com esse valor exato.

2. **Propagação**  
   Às vezes o Google ainda não “vê” o TXT. Vale esperar 5–10 minutos e clicar em **Verificar** de novo, ou tentar em outra hora.

3. **Tentar o CNAME em vez do TXT**  
   Se a verificação por TXT continuar falhando, no Admin escolha a opção **CNAME** e no Wix adicione:
   - Nome: `chhbze3bwyw2`
   - Valor: `gv-cv4izarnfjlhci.dv.googlehosted.com`  
   Depois de salvar, aguarde alguns minutos e clique em **Verificar** de novo.

4. **Muitas tentativas**  
   Se você clicar em Verificar muitas vezes em pouco tempo, o Google pode limitar. Espere alguns minutos (ou 1 hora) e tente de novo.
