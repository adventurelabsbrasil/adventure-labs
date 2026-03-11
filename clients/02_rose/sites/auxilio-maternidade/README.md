# Auxílio Maternidade — Landing Page (Rose Portal Advocacia)

Landing de conversão responsiva para o serviço de **Auxílio-Maternidade** da Rose Portal Advocacia. Destinada a subdomínio de roseportaladvocacia.com.br. Site estático (HTML + CSS), sem formulário; todos os contatos são direcionados ao WhatsApp.

**Google Ads (gtag.js)** instalado no `<head>` com ID `AW-16549386051`. Google Tag Manager não está em uso nesta LP.

---

## Estrutura da página (7 seções)

1. **Hero** — Frame único contendo título, subtítulo, CTA e foto da Dra. Roselaine Portal. Título com destaque em “Auxílio-Maternidade” (verde). Foto 340×453px no desktop, ancorada à base do frame.
2. **Nossos Serviços** — Grid de 6 serviços (Mães Desempregadas, MEI/Autônomas, Rurais, Adoção/Guarda, Revisão de Valor, Indeferimentos INSS) + CTA “Tirar minhas dúvidas”.
3. **Sobre o Escritório** — Box escuro com título “Rose Portal Advocacia: Experiência que gera resultados.”, texto, CTA “Conheça nossa trajetória” e imagem `roseportal-auxilio-maternidade.webp` (maior no desktop, alinhada ao bloco de texto).
4. **Por que nos escolher** — Checklist com 4 itens + CTA “Falar com um especialista”.
5. **Prova Social** — Depoimento (Mariana S., Mãe do pequeno Lucas) + CTA “Quero meu benefício”.
6. **Outras especialidades** — Lista de áreas (Empréstimo Consignado, Fraudes de Pix, etc.) + CTA “Entrar em contato”.
7. **Rodapé** — Contato (Porto Alegre, RS; telefone; e-mail), CTA “Chamar agora” e redes sociais.

Botão flutuante de WhatsApp no canto inferior direito em todas as resoluções.

---

## Design

| Item | Especificação |
|------|----------------|
| **Paleta** | Marrom Sóbrio `#382C27`, Rosa Queimado `#C9A99A` (acentos/ícones), Branco Neve `#FDFAFB` |
| **CTAs (WhatsApp)** | Verde `#25d366` (botões de ação e botão flutuante) |
| **Ícones não-WhatsApp** | Rosa Queimado `#C9A99A` (serviços, checklist, prova social, outras especialidades, redes) |
| **Títulos** | Prosto One (Google Fonts) |
| **Corpo** | Jura (Google Fonts) |
| **Contato** | +55 51 99660-5387 em todos os links |
| **Endereço** | Porto Alegre, RS |

Cada seção possui pelo menos um CTA para WhatsApp, com textos variados (sem repetir “Falar no WhatsApp”).

---

## Hero: frame único

No mobile e no desktop, a headline e a foto da Dra. Rose ficam dentro de um **frame único** (`.hero-frame`): fundo semi-opaco, borda discreta, border-radius e sombra. Isso evita o efeito de conteúdo “flutuando” e mantém o layout alinhado.

---

## Imagens e assets

| Arquivo | Uso |
|---------|-----|
| `images/logo.png` | Header (centralizado, 118×64px) |
| `images/foto-dra.png` | Foto da Dra. Roselaine no hero |
| `images/hero-bg.jpeg` | Fundo do hero |
| `images/roseportal-auxilio-maternidade.webp` | Seção “Sobre o Escritório” (Rose Portal: Experiência que gera resultados.) |
| `images/sobre-auxilio-maternidade.jpg` | Reserva/alternativa (ex-Unsplash) |
| `images/favicon.png` | Ícone da aba |

---

## Formulário

Esta LP **não utiliza formulário**. Todos os contatos são direcionados ao WhatsApp (CTAs em cada seção + botão flutuante).

---

## Deploy no Vercel — subdomínio

**Subdomínio:** `auxiliomaternidade.roseportaladvocacia.com.br`

### 1. Criar projeto no Vercel

1. Acesse [vercel.com](https://vercel.com) e faça login.
2. **Add New** → **Project** e importe o repositório (GitHub/GitLab/Bitbucket) que contém este código.
3. Em **Configure Project**:
   - **Root Directory:** clique em **Edit** e defina:  
     `01_ADVENTURE_LABS/clients/02_rose/sites/auxilio-maternidade`  
     (ou o caminho equivalente até a pasta `auxilio-maternidade` no seu repo).
   - **Framework Preset:** deixe **Other** (ou **None**).
   - **Build Command:** deixe em branco (site estático).
   - **Output Directory:** deixe em branco (a raiz da pasta é o output).
4. Clique em **Deploy**. O site ficará em um URL tipo `*.vercel.app`.

### 2. Configurar o domínio customizado

1. No projeto, vá em **Settings** → **Domains**.
2. Em **Add**, informe: `auxiliomaternidade.roseportaladvocacia.com.br`.
3. O Vercel mostrará as instruções de DNS. Para subdomínio, normalmente:
   - **Tipo:** CNAME  
   - **Nome:** `auxiliomaternidade` (ou `auxiliomaternidade.roseportaladvocacia` conforme o painel DNS).
   - **Valor / Aponta para:** `cname.vercel-dns.com` (ou o domínio que o Vercel indicar, ex.: `cname.vercel-dns.com`).
4. No painel do provedor do domínio **roseportaladvocacia.com.br**, crie o registro CNAME conforme acima.
5. Aguarde a propagação (minutos a algumas horas). O Vercel ativará o SSL automaticamente.

### 3. Conferir

- Acesse `https://auxiliomaternidade.roseportaladvocacia.com.br` e confira a landing.
- Em **Deployments**, cada push na branch conectada gera um novo deploy.

### Outro host (fora do Vercel)

Enviar a pasta inteira (ou apenas `index.html`, `styles.css`, `images/`, `vercel.json` pode ser ignorado) para o servidor e configurar o DNS do subdomínio (CNAME ou A) conforme o provedor.

---

## Estrutura de arquivos

```
auxilio-maternidade/
├── index.html
├── styles.css
├── vercel.json          # config deploy Vercel (subdomínio: auxiliomaternidade.roseportaladvocacia.com.br)
├── images/
│   ├── hero-bg.jpeg
│   ├── logo.png
│   ├── foto-dra.png
│   ├── roseportal-auxilio-maternidade.webp
│   ├── sobre-auxilio-maternidade.jpg
│   ├── logo-rodape.png  (se usado)
│   └── favicon.png
├── references/
│   └── Desktop.png
├── README.md
└── .gitignore
```
