# Relatório Founder — 04/03/2026

Brain dump do dia. Processado pelo Grove; resumo e complemento em [registro-dia-2026-03-04.md](../00_GESTAO_CORPORATIVA/operacao/registro-dia-2026-03-04.md).

---

## Conteúdo do relatório

- Consegui publicar a campanha do Google Ads da cliente Roselaine.
- Aproveito pra registrar que configuei o tag-manager na página da GreatPages dela e pageview — dados no final deste relatório para guardarmos em algum depósito interno nosso do cliente ou banco de dados.
- Consegui avançar bastante o projeto LideraSpace do cliente Lidera, ficando parecido com um Notion e funcionando para poder ver o frontend mostrando dados (coisa que não estava aparecendo). Vou precisar tirar um tempo depois para: 1. aprimorar UX dos módulos, 2. configurar as roles de acesso, 3. montar uma área separada de admin para add os programas e etc.
- Nosso app Admin evoluiu bastante hoje, apesar de 2 tentativas fracassadas: tentativa de conectar o Drive nele nativo, e tentativa de usar o n8n falhou de novo — vamos precisar retomar isso posteriormente.
- Benditta me mandou o vídeo mas ainda não estou satisfeito com o resultado; vão me mandar amanhã sem edição de textos e aí eu vejo se editamos para poder rodar.

---

## Dados para guardar (Roselaine — GTM / GreatPages)

Snippet do Google Tag Manager (gtag.js) configurado na página GreatPages. Conta Google Ads: `AW-16549386051`. Guardado em **App Admin → Clientes → Rose → Acessos** (registro «Google Tag Manager (GreatPages)»); também inserido via migration no Supabase.

```html
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-16549386051"></script>
<script>
window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());

gtag('config', 'AW-16549386051');
</script>
```

---

*Arquivado em 99_ARQUIVO. Origem: relatório Founder 04/03/2026.*
