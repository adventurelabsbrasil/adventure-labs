# O que os dados do Registro.br mostram – e por que a verificação falha

Os arquivos **icannRegistry.txt** e **rawRegistryRDAP_Response.txt** mostram onde o domínio **capclear.com.br** está **realmente** apontando. Isso explica a dificuldade com a verificação do Google.

---

## O que está no registro (Registro.br / ICANN)

Para **capclear.com.br** consta:

- **Nameservers (servidores de DNS):**
  - **ns1.emailverification.info**
  - **ns2.emailverification.info**

- **Registrar:** TOWEB-BRASIL (via Registro.br)
- **Status:** active
- **Contato:** Vagner Porto Farias, contato@somoslidera.com.br

Ou seja: o DNS **oficial** do domínio (o que a internet e o Google usam) é o que está configurado **nesses servidores** – **ns1.emailverification.info** e **ns2.emailverification.info**.

---

## O problema

No **Wix** você está editando DNS e vê, por exemplo:

- **NS:** ns15.wixdns.net, ns14.wixdns.net  
- **TXT, MX, A, CNAME** que você adicionou

Mas no **registro do domínio** (.com.br) os nameservers **não** são do Wix. Eles são **emailverification.info**.  
Então:

- O que vale para **capclear.com.br** na internet é o DNS em **emailverification.info**, não o que aparece no painel do Wix.
- Se você só alterou registros no Wix, o Google (e qualquer outro serviço) continua consultando o DNS em **emailverification.info**.
- Por isso a **verificação do Google** não conclui: o TXT de verificação precisa existir no DNS **autoritativo**, ou seja, em **emailverification.info** (ou os NS do domínio precisam ser trocados para o Wix).

---

## O que fazer (duas saídas)

### Opção A: Colocar o TXT (e o que mais precisar) onde o domínio aponta hoje

Quem controla **ns1.emailverification.info** e **ns2.emailverification.info** é quem de fato gerencia o DNS de **capclear.com.br**.

- Se for um painel da **Wix** (por exemplo “conexão por apontamento” ou algo ligado a email), procure nesse mesmo fluxo onde editar DNS do domínio **capclear.com.br** e adicione lá o **TXT de verificação do Google** (e MX, A, etc., se necessário).
- Se for outro provedor (ex.: TOWEB-BRASIL, Registro.br, ou o serviço por trás de “emailverification.info”), entre no painel **desse** provedor, no domínio **capclear.com.br**, e adicione:
  - O **TXT** exato que o Google pede na tela de verificação  
  (e, se quiser usar CNAME, o CNAME que o Google indicar).

Depois de salvar, espere 10–15 min e tente **Verificar** de novo no Admin do Google.

### Opção B: Fazer o domínio usar os nameservers do Wix

Aí o painel **Wix** (onde você já colocou TXT, MX, A, CNAME) passa a ser o DNS oficial do domínio.

1. No **Registro.br** (ou no painel do **registrar** do domínio, ex.: TOWEB-BRASIL), abra a gestão do domínio **capclear.com.br**.
2. Onde houver **“Servidores DNS”** / **“Nameservers”**, troque para os do Wix, por exemplo:
   - **ns14.wixdns.net**
   - **ns15.wixdns.net**  
   (confirme os nomes exatos no próprio Wix: Domínios → seu domínio → como conectar / usar DNS da Wix.)
3. Salve e aguarde a propagação (minutos a algumas horas).
4. Depois que a delegação estiver apontando para o Wix, o DNS que você já configurou no Wix (TXT, MX, A, etc.) passará a valer para todo o mundo – e a verificação do Google deve funcionar.

---

## Resumo

| Onde está hoje (registro) | Onde você editava | Consequência |
|---------------------------|-------------------|--------------|
| **NS:** ns1/ns2.emailverification.info | Wix (TXT, MX, A…) | O DNS que vale é o de **emailverification.info**. Alterações só no Wix não surtem efeito para o domínio. |

**Próximo passo:**  
- **Opção A:** Descobrir quem controla **emailverification.info** (Wix, TOWEB-BRASIL, outro) e adicionar o TXT de verificação do Google **nesse** painel.  
- **Opção B:** No Registro.br / registrar, alterar os nameservers de **capclear.com.br** para os do Wix; aí o que você já configurou no Wix passa a valer e a verificação tende a funcionar.

Se você disser se tem acesso a algum painel da TOWEB-BRASIL ou do Registro.br (ou onde comprou o .com.br), dá para detalhar o passo a passo (onde clicar para ver/trocar NS ou onde adicionar TXT).
