# Alterar nameservers no Registro.br para usar o DNS do Wix

Com o acesso ao Registro.br, você pode trocar os servidores DNS de **capclear.com.br** para os do Wix. A partir daí, o DNS que você já configurou no Wix (TXT do Google, MX, A, CNAME) passa a valer e a verificação do Google tende a funcionar.

---

## 1. Acessar o Registro.br

1. Acesse **https://registro.br**
2. Clique em **"Acessar"** ou **"Acesso ao sistema"**
3. Faça login com seu usuário e senha (e reCAPTCHA, se pedir)

---

## 2. Abrir o domínio capclear.com.br

1. Na lista de domínios da sua conta, **clique no domínio capclear.com.br**
2. Abre a página de gestão desse domínio

---

## 2.1. Se aparecer “Provedor selecionado: TOWEB-BRASIL” e os campos DNS estiverem bloqueados

Quando o domínio foi **pago por um provedor** (TOWEB-BRASIL, usado pela Wix para .com.br), o Registro.br às vezes **não deixa editar** os servidores DNS direto nessa tela. A mensagem diz que as únicas opções são “cancelar a seleção do provedor atual” ou “retornar ao último provedor pagador”.

**Tente nesta ordem:**

1. **Procurar botão/link “Alterar Servidores DNS” ou “Editar”** na mesma página ou em outra aba. Se existir e permitir editar, use e coloque **Servidor 1:** `ns14.wixdns.net`, **Servidor 2:** `ns15.wixdns.net`, depois Salvar.

2. **Se não houver como editar:** usar a opção **“Cancelar a seleção do provedor atual”** ou marcar **NENHUM** (em vez de TOWEB-BRASIL). Isso **não tira** a propriedade do domínio: você continua como titular (registrante). O que muda é só quem **administra** o domínio: deixa de ser a TOWEB-BRASIL e passa a ser a **administração direta do NIC.br** – ou seja, você passa a gerenciar o domínio direto pela **sua conta no Registro.br** (NIC.br é quem opera o Registro.br).  
   - **Texto que aparece na tela (exemplo):** *"Verificamos sua opção de exclusão do provedor TOWEB-BRASIL (48) para administração de seu domínio. Desta forma, o domínio passará para a administração direta do NIC.br. Para efetivação deste ato, deve-se anuir ao contrato para registro de domínios .br, clicando no botão Confirmar abaixo."*  
   - **É seguro:** “administração direta do NIC.br” significa que o domínio fica sob gestão do **registro** (Registro.br), ou seja, na **sua** conta; você só precisa aceitar o contrato .br e confirmar. Não há perda de propriedade nem transferência para terceiros.  
   - Depois de confirmar, volte na página do domínio e altere os servidores DNS para ns14.wixdns.net e ns15.wixdns.net.

3. **Se ainda não der:** a alteração dos nameservers pode ter que ser feita no painel do **provedor que pagou** (TOWEB-BRASIL). Acesse **https://www.towebbrasil.com** (ou o painel que a Wix/TOWEB tiver te passado), faça login e procure a gestão do domínio **capclear.com.br** e a opção de alterar **Servidores DNS** / **Nameservers** para **ns14.wixdns.net** e **ns15.wixdns.net**.

4. **Alternativa:** contatar o **suporte da Wix** e dizer que o domínio .com.br está com DNS no provedor (emailverification.info) e que você quer usar os nameservers da Wix (ns14.wixdns.net, ns15.wixdns.net); às vezes eles conseguem orientar ou fazer a alteração do lado deles/provedor.

---

## Qual opção é mais segura?

| Opção | Risco de perder domínio? | Observação |
|-------|---------------------------|------------|
| **Cancelar provedor / marcar NENHUM (opção 2)** | Em geral **não**. O domínio costuma continuar na sua conta no Registro.br; só deixa de estar “vinculado” ao provedor TOWEB. Você continua como titular (registrante). | **Sempre leia o aviso na tela.** Se o texto disser que o domínio permanece na sua conta, é seguro. Se falar em perda ou transferência do domínio, não prossiga e fale com o Registro.br. |
| **Alterar DNS no painel da TOWEB-BRASIL** | Não altera propriedade. | Você **nunca usou** towebbrasil.com, então provavelmente **não tem** usuário/senha lá. Quem comprou pelo Wix pode ter sido a Wix em nome deles. Nesse caso, só com o **suporte da Wix** (ou da TOWEB, com comprovante) para conseguir acesso ou pedir a alteração dos NS. |
| **Pedir à Wix para alterar os NS** | Não altera propriedade. | Mais lento, mas seguro: você não mexe no Registro.br nem em painel que não conhece. |

**Recomendação:** a opção **mais segura e que você pode fazer sozinho** é a **opção 2** (cancelar a seleção do provedor / marcar NENHUM), **desde que** o texto na tela do Registro.br confirme que o domínio permanece na sua conta. Depois disso você altera os servidores DNS para os do Wix no próprio Registro.br. Se não quiser mexer nisso, a alternativa é abrir chamado no **suporte da Wix** e pedir que alterem os nameservers para ns14.wixdns.net e ns15.wixdns.net.

---

## 3. Alterar os servidores DNS (quando a tela permitir)

1. Na página do domínio, procure a parte de **DNS** ou **Servidores DNS**
2. Clique em **"Alterar Servidores DNS"** (ou texto equivalente)
3. Nos campos, **substitua** os valores atuais pelos do Wix:

   | Campo        | Valor atual (trocar por) | Novo valor (Wix)    |
   |-------------|---------------------------|---------------------|
   | **Master (NS1)** | ns1.emailverification.info | **ns14.wixdns.net** |
   | **Slave 1 (NS2)** | ns2.emailverification.info | **ns15.wixdns.net** |

   Se houver **Slave 2 (NS3)**, pode deixar em branco ou remover (o Wix usa só dois).

4. Confirme que não há erro de digitação (ns**14**, ns**15**, **.wixdns.net**)
5. Clique em **Salvar** / **Salvar Dados**

---

## 4. Depois de salvar

- O Registro.br costuma aplicar a mudança no **próximo horário de publicação** (pode ser em poucos minutos ou em algumas horas).
- A **propagação** pelo mundo pode levar de alguns minutos a até 24–48 h; em muitos casos em 1–2 h já funciona.
- Quando a propagação estiver ok, o DNS do domínio passa a ser o que está no **Wix** (incluindo o TXT de verificação do Google que você já colocou lá).

---

## 5. Quando o DNS já estiver no Wix

1. Espere pelo menos **30–60 minutos** (ou até 2 h para ter certeza).
2. No **Admin do Google**, na tela de verificação do domínio, clique em **Verificar** de novo.
3. O Google deve encontrar o TXT no Wix e a verificação deve concluir.

Se ainda falhar, confira no Wix se o registro **TXT** com o valor que o Google pede está exatamente igual (sem espaço, sem caractere a mais).

---

## Resumo

| Onde        | O que fazer |
|------------|-------------|
| **Registro.br** | Login → domínio capclear.com.br → Alterar Servidores DNS → NS1: **ns14.wixdns.net**, NS2: **ns15.wixdns.net** → Salvar |
| **Depois** | Esperar 30 min a 2 h → no Admin do Google, clicar em **Verificar** de novo |

Assim o domínio passa a usar o DNS do Wix e o que você já configurou no painel do Wix (incluindo o TXT do Google) passa a valer para todo o mundo.

---

## Por que usar os NS do Wix (e não apontar direto para a Vercel)?

- **Agora:** No Wix você já tem tudo configurado (TXT do Google, MX, SPF, A e CNAME para a Vercel). Colocando os nameservers do Wix no Registro.br, esse DNS passa a valer **na hora** – sem recriar registro em outro lugar. Site continua na Vercel (via A/CNAME no Wix) e o email (Google via Wix) tende a verificar.
- **Se apontar direto para a Vercel:** você teria que **recriar** no DNS da Vercel: A, CNAME www, MX do Google, TXT de verificação, SPF, etc. Dá para fazer, mas é retrabalho agora.
- **Quando sair do Wix (futuro):** na hora da migração, você troca os NS para Registro.br ou Vercel e recria os registros (ou passa a usar só a Vercel como DNS). Esse passo acontece de qualquer forma; usar Wix agora **não prende** o domínio, só evita retrabalho hoje.

**Conclusão:** use os NS do Wix agora; deixe a mudança de NS (para Vercel ou Registro.br) para o dia em que realmente sair do Wix.
