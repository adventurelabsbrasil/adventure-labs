# ROSE — Validação de acesso Ads/GTM (M1)

Data: 2026-03-27

## Escopo validado

- Conta Google Ads: `167-722-6456`
- Container GTM: `GTM-MN283T6L`
- Path de segredos: Infisical `/clientes/rose` (padrão atual)

## Resultados dos comandos

### `pnpm google:verify`

- Status: **OK**
- OAuth de Ads ativo (`tokenType=Bearer`, `expiresIn=3599`)
- `GOOGLE_ADS_DEVELOPER_TOKEN`: presente
- `GTM_TAG_ID`: ausente no env atual

### `pnpm google:ads:diag 167-722-6456`

- Status: **OK**
- Conta identificada: `Roselaine Portal Advocacia`
- Campanhas retornadas (amostra):
  - `21258319337` `[Tráfego] - [Pesquisa] - [Direito Bancário]` (PAUSED)
  - `23628537292` `[Tráfego] - [Auxílio Materniade]` (ENABLED)
  - `23646258632` `[Tráfego] - [Pesquisa] - [Auxílio Materniade] - [Vercel]` (ENABLED)

### `pnpm google:gtm:lookup GTM-MN283T6L`

- Status: **FALHOU**
- Erro: `PERMISSION_DENIED` com `ACCESS_TOKEN_SCOPE_INSUFFICIENT`
- Diagnóstico: refresh token atual não tem escopo suficiente para Tag Manager API.

## Ação necessária para desbloquear GTM (M1)

Gerar e salvar no Infisical (`/clientes/rose`) credenciais OAuth com escopo GTM:

- `GTM_CLIENT_ID`
- `GTM_CLIENT_SECRET`
- `GTM_REFRESH_TOKEN`
- `GTM_TAG_ID=GTM-MN283T6L`

Escopo recomendado na concessão OAuth:

- `https://www.googleapis.com/auth/tagmanager.edit.containers`
