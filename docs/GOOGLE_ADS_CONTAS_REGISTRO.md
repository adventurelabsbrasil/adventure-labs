# Google Ads — registro de Customer IDs (contas)

Referência interna para configurar `GOOGLE_ADS_CUSTOMER_ID` no Infisical / Vercel por deploy ou cliente.

**Isto não substitui credenciais:** tokens OAuth, Developer Token e refresh token continuam apenas em segredos (`GOOGLE_ADS_*`), nunca versionados.

O Admin / API aceitam o ID **com ou sem hífens**; o código normaliza para a API.

| Uso / cliente | Formato exibição (Google Ads) | Formato API (sem hífen) |
|---------------|------------------------------|-------------------------|
| Rose | `167-722-6456` | `1677226456` |
| Admin Adventure Labs | `585-458-7443` | `5854587443` |
| Ribas Soluções Criativas (conta admin legada, vários clientes) | `704-812-2845` | `7048122845` |
| Benditta | `731-754-8145` | `7317548145` |
| Young (matriz) | `949-922-5274` | `9499225274` |

## Onde configurar

- **Infisical:** pasta `/admin` (ou pasta do deploy do cliente), variável `GOOGLE_ADS_CUSTOMER_ID`.
- **Vercel:** Environment Variables do projeto que aponta para `apps/core/admin`.

Atualizado para registro operacional (ACORE). Em caso de mudança de conta no Google Ads, atualize esta tabela e o Infisical.
