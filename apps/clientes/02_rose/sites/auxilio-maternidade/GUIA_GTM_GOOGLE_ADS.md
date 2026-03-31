# Guia Operacional — GTM + Google Ads (LP Auxílio-Maternidade)

Este guia orienta a configuração de rastreamento de conversão da landing page:

- Domínio: `https://auxiliomaternidade.roseportaladvocacia.com.br`
- Container GTM: `GTM-MN283T6L`
- Conversion ID Google Ads: `AW-16549386051`
- Conversão principal: clique em links/botões de WhatsApp

---

## 1) Pré-requisitos

Antes de começar, confirme:

- Você tem acesso ao **Google Tag Manager** (container `GTM-MN283T6L`).
- Você tem acesso ao **Google Ads** da conta correta.
- A LP já está publicada na Vercel com o snippet do GTM.

---

## 2) Confirmar instalação do GTM no site

1. Acesse `https://auxiliomaternidade.roseportaladvocacia.com.br`.
2. Abra a extensão **Tag Assistant** (Google).
3. Verifique se o container `GTM-MN283T6L` é detectado.

Se o GTM não aparecer, não avance para as tags de conversão antes de corrigir isso.

---

## 3) Criar tag Conversion Linker (obrigatória)

No GTM:

1. Vá em **Tags** → **New**.
2. Em **Tag Configuration**, escolha **Conversion Linker**.
3. Nome da tag: `CL - All Pages`.
4. Em **Triggering**, selecione **All Pages**.
5. **Save**.

---

## 4) Criar tag base Google Ads (recomendado)

No GTM:

1. Vá em **Tags** → **New**.
2. Tipo: **Google tag**.
3. Nome: `GoogleTag - AW-16549386051`.
4. Tag ID: `AW-16549386051`.
5. Trigger: **All Pages**.
6. **Save**.

Se a interface não mostrar “Google tag”, siga com a etapa 5 normalmente.

---

## 5) Criar trigger de clique no WhatsApp

No GTM:

1. Vá em **Triggers** → **New**.
2. Tipo: **Just Links**.
3. Nome do trigger: `Click - WhatsApp Links`.
4. Marque:
  - **Wait for tags** (2000ms)
  - **Check validation**
5. Em “This trigger fires on”, escolha **Some Link Clicks**.
6. Configure as condições (com OR):
  - `Click URL` `contains` `api.whatsapp.com/send`
  - `Click URL` `contains` `wa.me`
  - `Click URL` `contains` `whatsapp.com`
7. **Save**.

> Alternativa recomendada neste repo (mais estável): usar trigger de **Custom Event** com nome `click_cta`, já enviado pelo `dataLayer` da landing.

---

## 6) Criar tag de conversão Google Ads

No Google Ads, copie o `Conversion Label` da ação de conversão desejada.

No GTM:

1. Vá em **Tags** → **New**.
2. Tipo: **Google Ads Conversion Tracking**.
3. Nome da tag: `Ads Conversion - WhatsApp Click`.
4. Campos:
  - **Conversion ID**: `16549386051` (somente números, sem `AW-`)
  - **Conversion Label**: colar o label da ação
  - **Value**: em branco (ou `1` se decidir usar valor fixo)
  - **Currency**: `BRL` (somente se usar Value)
5. Trigger: `Click - WhatsApp Links`.
6. **Save**.

---

## 7) Testar no modo Preview do GTM

1. Clique em **Preview** no GTM.
2. Informe a URL da LP.
3. No site aberto em debug, clique em pelo menos 2 CTAs de WhatsApp (incluindo botão flutuante).
4. Confirme no painel de eventos:
  - `CL - All Pages` disparou no carregamento.
  - `Ads Conversion - WhatsApp Click` disparou no clique.
5. Garanta que a tag de conversão não dispara em cliques fora do WhatsApp.

### Eventos técnicos disponíveis na LP

A landing já publica no `dataLayer`:

- `page_view` (carregamento da página)
- `click_cta` (cliques em CTAs do WhatsApp)

Você pode usar estes eventos como trigger no GTM para reduzir ambiguidade de seletor.

---

## 8) Publicar alterações no GTM

1. Clique em **Submit**.
2. Em versão, use:
  - Nome: `WhatsApp conversion tracking`
  - Descrição: `Conversion linker + Google Ads conversion for WhatsApp clicks`
3. Clique em **Publish**.

---

## 9) Validar no Google Ads

1. Acesse Google Ads → **Tools and settings** → **Conversions**.
2. Abra a conversão configurada.
3. Verifique o diagnóstico da tag.
4. Status esperado após tráfego/cliques:
  - “Tag ativa” / “Registrando conversões” (pode levar algumas horas).

---

## 10) Checklist de aceite

Use este checklist final:

- GTM `GTM-MN283T6L` detectado em produção.
- Conversion Linker ativo em todas as páginas.
- Trigger de WhatsApp capturando `api.whatsapp.com/send` e `wa.me`.
- Tag `Ads Conversion - WhatsApp Click` disparando no clique certo.
- Sem duplicidade de conversão no debug.
- Versão publicada no GTM.
- Diagnóstico da conversão no Google Ads sem erro crítico.

---

## Troubleshooting rápido

- **Tag não dispara no clique:** revisar filtro do trigger em `Click URL`.
- **Dispara em excesso:** restringir trigger para links exatos de WhatsApp.
- **Google Ads mostra “não verificada”:** aguardar processamento e gerar cliques reais de teste.
- **Dúvida de duplicidade:** confirmar se não existe outra tag de conversão ativa para o mesmo evento.

