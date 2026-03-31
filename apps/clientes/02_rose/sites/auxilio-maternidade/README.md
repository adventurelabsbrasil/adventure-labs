# Auxílio Maternidade — Landing Page (Rose Portal Advocacia)

Landing de conversão responsiva para o serviço de **Auxílio-Maternidade** da Rose Portal Advocacia. Destinada a subdomínio de roseportaladvocacia.com.br. Site estático (HTML + CSS), sem formulário; todos os contatos são direcionados ao WhatsApp.

**Google Tag Manager** ativo no `<head>/<noscript>` com container `GTM-MN283T6L`.  
A LP também publica eventos no `dataLayer` para operação de mídia:

- `page_view` no carregamento da página;
- `click_cta` em cliques de CTAs de WhatsApp.

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

## Repositório separado (para Vercel sem Root Directory)

Este projeto é um **repositório Git próprio** (raiz = pasta do site). Assim você importa no Vercel direto, sem configurar Root Directory.

**Depois de criar o repositório no GitHub** (ex.: `adventurelabsbrasil/rose-auxilio-maternidade`), na pasta do site rode:

```bash
cd clients/02_rose/sites/auxilio-maternidade
git remote add origin https://github.com/adventurelabsbrasil/rose-auxilio-maternidade.git
git branch -M main
git push -u origin main
```

(Substitua a URL pelo seu repositório.)

---

## Deploy no Vercel — subdomínio

**Subdomínio:** `auxiliomaternidade.roseportaladvocacia.com.br`

### 1. Criar projeto no Vercel

1. Acesse [vercel.com](https://vercel.com) e faça login.
2. **Add New** → **Project** e importe o **repositório deste site** (ex.: `rose-auxilio-maternidade`).
3. Em **Configure Project**:
   - **Root Directory:** deixe em branco (a raiz do repo já é o site).
   - **Framework Preset:** deixe **Other** (ou **None**).
   - **Build Command:** deixe em branco (site estático).
   - **Output Directory:** deixe em branco.
4. Clique em **Deploy**. O site ficará em um URL tipo `*.vercel.app`.

### 2. Configurar o domínio customizado (DNS no Registro.br)

1. No projeto Vercel, vá em **Settings** → **Domains** e adicione: `auxiliomaternidade.roseportaladvocacia.com.br`.
2. No **Registro.br** (painel do domínio roseportaladvocacia.com.br), crie **apenas um registro CNAME** (não é necessário trocar os nameservers do domínio inteiro):

   | Campo        | Valor |
   |-------------|--------|
   | **Tipo**    | CNAME |
   | **Nome**    | `auxiliomaternidade` |
   | **Destino / Aponta para** | `53d9de5c1367684b.vercel-dns-017.com` |

3. Salve no Registro.br e aguarde a propagação (minutos a algumas horas). O Vercel ativará o SSL automaticamente.

**Opção alternativa (não recomendada para só um subdomínio):** usar os nameservers do Vercel no domínio inteiro (`ns1.vercel-dns.com`, `ns2.vercel-dns.com`) — isso delegaria todo o DNS de roseportaladvocacia.com.br para o Vercel. Para apenas este site no subdomínio, o CNAME acima é suficiente.

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
