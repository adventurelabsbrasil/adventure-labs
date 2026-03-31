# ROSE — Execução GTM (M2 parcial)

Data: 2026-03-27
Container: `GTM-MN283T6L`  
Account ID: `6346592639`  
Container ID: `247597067`  
Workspace: `2` (`Default Workspace`)

## Ações executadas via CLI + Infisical (`/clientes/03_ROSE`)

### 1) Lookup e descoberta de workspace

- `pnpm google:gtm:lookup GTM-MN283T6L` ✅
- `pnpm google:gtm:workspaces 6346592639 247597067` ✅

### 2) Criação de triggers de evento customizado

- Trigger `EV - page_view` criado com `triggerId=7` ✅
- Trigger `EV - click_cta` criado com `triggerId=8` ✅

### 3) Inventário de tags existente

- Tag `Google Ads` (`AW-16549386051`, all pages) ✅
- Tag `Vinculador de Conversões GoogleAds` (all pages) ✅

### 4) Publicação de versão (sucesso)

- `pnpm google:gtm:publish-version 6346592639 247597067 2` ✅
- Versão publicada: `2`
- Nome da versão: `ROSE - eventos page_view e click_cta`
- URL da versão:
  - `https://tagmanager.google.com/#/versions/accounts/6346592639/containers/247597067/versions/2?apiLink=version`

### 5) Tag de conversão Ads para `page_view` (sucesso)

- Tag criada: `Ads Conversion - page_view LP Auxilio Maternidade` (`tagId=9`)
- Tipo: `awct`
- Trigger: `EV - page_view` (`triggerId=7`)
- `send_to` aplicado: `AW-16549386051/xTwGCNvw1ZAcEMOurtM9`
- Versão publicada: `3`
- URL da versão:
  - `https://tagmanager.google.com/#/versions/accounts/6346592639/containers/247597067/versions/3?apiLink=version`

### 6) Ação e tag de conversão Ads para `click_cta` (sucesso)

- Ação criada no Google Ads (conta ROSE):
  - Nome: `Clique CTA WhatsApp - LP Auxilio Maternidade`
  - Resource: `customers/1677226456/conversionActions/7551362152`
  - `send_to`: `AW-16549386051/xDgrCOjI4pAcEMOurtM9`
- Tag GTM criada:
  - Nome: `Ads Conversion - click_cta WhatsApp LP Auxilio`
  - Tipo: `awct`
  - Trigger: `EV - click_cta` (`triggerId=8`)
  - `tagId=10`
- Versão publicada: `4`
- URL da versão:
  - `https://tagmanager.google.com/#/versions/accounts/6346592639/containers/247597067/versions/4?apiLink=version`

## Diagnóstico técnico

As credenciais em `/clientes/03_ROSE` agora permitem:

- leitura de contas/containers/workspaces;
- criação de trigger em workspace.
- publicação de versão no live.

## Situação final (M2)

- `page_view` e `click_cta` configurados com triggers no GTM.
- Tag de conversão Ads para `page_view` e `click_cta` criadas e publicadas no live.
