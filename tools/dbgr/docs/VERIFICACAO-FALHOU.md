# "Verification could not be completed" – o que fazer

Quando o Google mostra **"Unable to verify at the moment"** ou **"Verification could not be completed"**, siga estes passos na ordem.

---

## 1. Conferir qual código o Google está pedindo **agora**

Na **mesma tela** do Admin Console onde aparece o erro:

- Se estiver na opção **TXT**, o Google mostra um valor que começa com `google-site-verification=...`
- **Copie esse valor inteiro** (do `g` de google até o último caractere). Não pode faltar nem sobrar nenhum caractere.

No Wix você já tem dois TXT diferentes (5KaBBees... e SclXvGEM...). O que importa é: **o valor que está na tela do Google agora** tem que existir **igual** no Wix. Se a tela do Google mostrar um terceiro código, é esse que precisa estar no Wix.

---

## 2. Ajustar o TXT no Wix para ficar **exatamente** igual

1. No Wix: **Domínios** → **capclear.com.br** → **Gerenciar registros DNS** → seção **TXT**.
2. Veja se já existe uma linha cujo **Valor** seja **exatamente** o que você copiou do Google (incluindo `google-site-verification=`).
3. **Se não existir** ou estiver diferente:
   - **Adicione** um novo registro TXT (ou **edite** o que for o correto).
   - **Nome do host:** deixe o padrão do Wix para o domínio raiz (geralmente `capclear.com.br` ou em branco/@).
   - **Valor:** cole **só** o que você copiou do Google. Sem espaço antes/depois, sem aspas, sem quebra de linha.
4. Salve e espere **pelo menos 10–15 minutos** (em alguns casos o Google diz até 48 h, mas muitas vezes 15–30 min já basta).

Depois volte no Admin Console e clique em **Verificar** de novo.

---

## 3. Se ainda falhar: usar o método **CNAME**

Às vezes o TXT demora ou o provedor altera algo no valor. O CNAME costuma ser mais estável.

1. No Admin Console, na tela de verificação, mude para a opção **CNAME** (em vez de TXT), se estiver disponível.
2. O Google vai mostrar algo como:
   - **Nome / Host:** `chhbze3bwyw2` (ou similar)
   - **Valor / Aponta para:** `gv-cv4izarnfjlhci.dv.googlehosted.com` (ou similar)
3. No Wix, em **Gerenciar registros DNS** → **CNAME**:
   - **Adicionar registro**
   - **Nome do host:** exatamente o que o Google mostrou (ex.: `chhbze3bwyw2`) – **sem** `.capclear.com.br` no final, só o que está na tela.
   - **Valor:** exatamente o que o Google mostrou (ex.: `gv-cv4izarnfjlhci.dv.googlehosted.com`).
4. Salve, espere 10–15 minutos e, no Admin, clique em **Verificar** de novo.

---

## 4. Conferências rápidas

| O quê | Certifique-se |
|-------|----------------|
| **TXT** | O valor no Wix é **idêntico** ao da tela do Google (copiar/colar evita erro de digitação). |
| **CNAME** | O **nome** no Wix é só a parte que o Google pede (ex.: `chhbze3bwyw2`), não o domínio completo. |
| **Propagação** | Depois de salvar no Wix, espere 10–15 min (ou até 1–2 h) antes de clicar em Verificar. |
| **Tentativas** | Se clicar em Verificar muitas vezes seguidas, espere 30–60 min e tente de novo. |

---

## 5. Resumo

1. Ver na tela do Google o **código exato** (TXT ou CNAME).
2. No Wix, colocar esse valor **exatamente igual** (TXT ou CNAME).
3. Esperar 10–15 min (ou mais) e clicar em **Verificar** de novo.
4. Se o TXT continuar falhando, tentar o **CNAME** com os dados que o Google mostrar na opção CNAME.

Se depois de 24–48 h ainda falhar, vale entrar em contato com o suporte do Wix e perguntar se há alguma limitação para registros TXT/CNAME de verificação do Google no domínio raiz.
