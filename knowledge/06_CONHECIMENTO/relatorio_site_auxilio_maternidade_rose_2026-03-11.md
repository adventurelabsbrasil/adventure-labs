# Relatório de Entrega — Site Auxílio-Maternidade (Rose Portal Advocacia)

**Data:** 11 de Março de 2026  
**Cliente:** Rose (02_rose) — Rose Portal Advocacia  
**Projeto:** Landing page estática para o serviço de Auxílio-Maternidade  
**Localização no repositório:** `01_ADVENTURE_LABS/clients/02_rose/sites/auxilio-maternidade/`

---

## Resumo

Foi criada e entregue uma **landing page de conversão** para o serviço de **Auxílio-Maternidade** da Rose Portal Advocacia. O site é estático (HTML + CSS), responsivo, sem formulário, com foco em direcionar o visitante ao WhatsApp em cada “dobra” da página. Destina-se a ser publicado em subdomínio de roseportaladvocacia.com.br.

---

## O que foi feito

### Conteúdo e estrutura (7 seções)

1. **Hero** — Título (“Garanta seu Auxílio-Maternidade com quem entende o valor da sua jornada.”), subtítulo, CTA principal e foto da Dra. Roselaine Portal, dentro de um **frame único** delimitado (evita efeito de conteúdo flutuante).
2. **Nossos Serviços** — Grid de 6 serviços: Mães Desempregadas, MEI/Autônomas, Rurais, Adoção/Guarda, Revisão de Valor, Indeferimentos INSS.
3. **Sobre o Escritório** — Box escuro com o título “Rose Portal Advocacia: Experiência que gera resultados.”, texto institucional, CTA “Conheça nossa trajetória” e imagem `roseportal-auxilio-maternidade.webp` (maior no desktop, alinhada ao bloco de texto).
4. **Por que nos escolher** — Quatro diferenciais (Atendimento Digital, Análise Gratuita, Agilidade, Honorários Justos) + CTA.
5. **Prova Social** — Depoimento (Mariana S., Mãe do pequeno Lucas) + CTA.
6. **Outras especialidades** — Lista de outras áreas do escritório (Empréstimo Consignado, Fraudes de Pix, Direito Bancário, etc.) + CTA.
7. **Rodapé** — Contato (Porto Alegre, RS; telefone; e-mail), CTA e redes sociais. Sem formulário.

### Design e UX

- **Paleta:** Marrom Sóbrio (#382C27), Rosa Queimado (#C9A99A) para ícones e destaques não relacionados ao WhatsApp, Branco Neve (#FDFAFB).
- **CTAs WhatsApp:** Verde (#25d366) nos botões de ação e no botão flutuante; ícones de seção (serviços, checklist, prova social, outras especialidades) em Rosa Queimado para não competir com o CTA.
- **Tipografia:** Prosto One (títulos) e Jura (corpo), via Google Fonts.
- **Responsividade:** Breakpoints 360 → 480 → 768 → 1024 → 1280 px; hero com frame único em mobile e desktop; foto da Dra. Rose ancorada à base do frame; imagem da seção Sobre maior no desktop e alinhada ao bloco de texto.
- **Conversão:** Pelo menos um CTA para WhatsApp em cada seção, com frases variadas (ex.: “Tirar minhas dúvidas”, “Falar com um especialista”, “Quero meu benefício”, “Entrar em contato”, “Chamar agora”) para evitar repetição de “Falar no WhatsApp”. Botão flutuante de WhatsApp em todas as resoluções.

### Imagens e assets

- Logo no header (centralizado, 118×64 px).
- Foto da Dra. Roselaine no hero (`foto-dra.png`), com sombra de chão e dentro do frame.
- Imagem da seção Sobre: `roseportal-auxilio-maternidade.webp` (definida pela cliente); no desktop a foto é exibida em tamanho maior e alinhada à altura do bloco de texto.
- Fundo do hero: `hero-bg.jpeg`; favicon e logo de rodapé conforme pasta `images/`.

### Observações técnicas

- **Google Tag Manager:** não incluído; instalação prevista para etapa posterior.
- **Formulário:** não utilizado; todos os contatos são via WhatsApp.
- **Deploy:** site estático; pode ser publicado em qualquer host (ex.: Vercel) apontando a raiz para a pasta do projeto; DNS do subdomínio a ser configurado pela cliente/provedor.

---

## Arquivos principais

| Caminho | Descrição |
|--------|-----------|
| `clients/02_rose/sites/auxilio-maternidade/index.html` | Markup da landing (7 seções + footer + botão flutuante) |
| `clients/02_rose/sites/auxilio-maternidade/styles.css` | Estilos globais, tokens, responsividade e componentes |
| `clients/02_rose/sites/auxilio-maternidade/README.md` | Documentação do site (estrutura, design, deploy, imagens) |
| `clients/02_rose/README.md` | Atualizado com referência ao projeto auxilio-maternidade |

---

## Base de conhecimento (admin)

Este relatório foi registrado na base de conhecimento do admin em:  
`apps/core/admin/conhecimento/relatorio_site_auxilio_maternidade_rose_2026-03-11.md`

---

*Relatório registrado na pasta de conhecimento da Adventure Labs.*
