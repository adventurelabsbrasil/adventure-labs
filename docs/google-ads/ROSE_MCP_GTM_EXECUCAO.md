# ROSE — Execução M1/M2 (Google Ads + GTM)

Cliente: **ROSE**  
Google Ads: `167-722-6456`  
GTM: `GTM-MN283T6L`  
Landing inicial: `https://auxiliomaternidade.roseportaladvocacia.com.br`

## M1 — Acessos (MCP-first + fallback CLI)

### 1) Credenciais no Infisical (modelo híbrido recomendado)

- **Google Ads (conta Adventure / gestão central):** `/admin`
- **Google Tag Manager da cliente ROSE:** `/clientes/03_ROSE`

Obrigatórias:

- `GOOGLE_ADS_CLIENT_ID`
- `GOOGLE_ADS_CLIENT_SECRET`
- `GOOGLE_ADS_DEVELOPER_TOKEN`
- `GOOGLE_ADS_REFRESH_TOKEN`
- `GOOGLE_ADS_CUSTOMER_ID=167-722-6456`

Recomendadas:

- `GOOGLE_ADS_LOGIN_CUSTOMER_ID` (quando operação via MCC)
- `GTM_CLIENT_ID`
- `GTM_CLIENT_SECRET`
- `GTM_REFRESH_TOKEN` (gerado com escopos de edição/publicação)
- `GTM_TAG_ID=GTM-MN283T6L`

Escopos recomendados ao gerar `GTM_REFRESH_TOKEN`:

- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.publish`

### 2) Teste de acesso via CLI (contingência)

```bash
pnpm google:verify
pnpm google:ads:diag
pnpm google:ads:conversions 167-722-6456
pnpm google:gtm:lookup
```

Se o lookup GTM retornar `accountId` e `containerId`, o acesso de leitura está pronto.

> Os scripts da raiz usam por padrão:
> - `INFISICAL_GOOGLE_ADS_PATH=/admin`
> - `INFISICAL_GOOGLE_GTM_PATH=/clientes/03_ROSE`
>
> Se precisar apontar para outro path, exporte as variáveis antes de rodar os comandos.

### 3) Teste via MCP no Cursor

Servidor: `google-marketing` (em `.cursor/mcp.json`)  
Fluxo mínimo:

1. `verify_google_access`
2. `gtm_lookup_container` com `tagId: "GTM-MN283T6L"`
3. `gtm_list_workspaces` com `accountId/containerId` retornados
4. `ads_customer_diagnostics` com `customerId: "167-722-6456"`

## M2 — Tags (page_view + click_cta)

## Taxonomia adotada

- `page_view` para visualização da landing.
- `click_cta` para cliques em botões primários (principalmente WhatsApp).

## Implementação na página

A landing recebeu um script client-side que:

- envia `dataLayer.push({ event: "page_view", ... })` no carregamento;
- captura clique em `<a>` com `href` de WhatsApp e envia
  `dataLayer.push({ event: "click_cta", cta_id, cta_text, ... })`.

Arquivo: `apps/clientes/02_rose/sites/auxilio-maternidade/index.html`

## Configuração GTM recomendada

1. **Trigger** `EV - page_view`  
   - Tipo: Custom Event  
   - Event name: `page_view`

2. **Trigger** `EV - click_cta`  
   - Tipo: Custom Event  
   - Event name: `click_cta`

3. **Tag** `GA4 - page_view`  
   - Event name: `page_view`  
   - Trigger: `EV - page_view`

4. **Tag** `Ads Conversion - click_cta WhatsApp`  
   - Tipo: Google Ads Conversion Tracking  
   - Trigger: `EV - click_cta`  
   - Filtro recomendado (quando aplicável): `cta_channel equals whatsapp`

Observação operacional atual:

- já publicada a tag de Ads para `page_view` com label da LP;
- para `click_cta`, é necessário definir/confirmar `conversionLabel` dedicado de clique no Google Ads.

5. Publicar versão do container com changelog claro.

## Fallback CLI para criar entidades GTM (via payload)

Payloads prontos:

- `apps/clientes/02_rose/sites/auxilio-maternidade/gtm-payloads/trigger-page-view.json`
- `apps/clientes/02_rose/sites/auxilio-maternidade/gtm-payloads/trigger-click-cta.json`
- `apps/clientes/02_rose/sites/auxilio-maternidade/gtm-payloads/tag-ga4-page-view.json`
- `apps/clientes/02_rose/sites/auxilio-maternidade/gtm-payloads/tag-ads-click-cta.json`

Exemplo de uso:

```bash
pnpm google:gtm:create-raw <accountId> <containerId> <workspaceId> triggers apps/clientes/02_rose/sites/auxilio-maternidade/gtm-payloads/trigger-page-view.json
pnpm google:gtm:create-raw <accountId> <containerId> <workspaceId> triggers apps/clientes/02_rose/sites/auxilio-maternidade/gtm-payloads/trigger-click-cta.json
```

Depois de ajustar `firingTriggerId`/labels nos payloads de tags:

```bash
pnpm google:gtm:create-raw <accountId> <containerId> <workspaceId> tags apps/clientes/02_rose/sites/auxilio-maternidade/gtm-payloads/tag-ga4-page-view.json
pnpm google:gtm:create-raw <accountId> <containerId> <workspaceId> tags apps/clientes/02_rose/sites/auxilio-maternidade/gtm-payloads/tag-ads-click-cta.json
pnpm google:gtm:version-publish <accountId> <containerId> <workspaceId> "ROSE page_view + click_cta" "Eventos da LP auxiliomaternidade"
```

## Checklist de QA

- [ ] GTM `GTM-MN283T6L` detectado no Tag Assistant.
- [ ] `page_view` aparece no fluxo de eventos ao abrir a LP.
- [ ] `click_cta` dispara ao clicar nos CTAs do WhatsApp.
- [ ] Não dispara `click_cta` em elementos não-CTA.
- [ ] Sem duplicidade de firing.
- [ ] Versão do container publicada.
- [ ] Diagnóstico da conversão no Google Ads sem erro crítico após propagação.
