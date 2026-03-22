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

---

## Diagnóstico rápido: campanhas sem impressões (Rose `1677226456`)

Quando as campanhas **não imprimem**, o Admin só reflete o que a API devolve — a causa quase sempre está **no próprio Google Ads**. No painel da conta **167-722-6456**, verificar em ordem:

1. **Pagamento e faturamento** — conta suspensa, cartão recusado, limite atingido.
2. **Status da campanha e dos anúncios** — pausados, “Eligibility” / políticas, anúncios reprovados ou “Under review”.
3. **Orçamento e lances** — orçamento diário esgotado, estratégia de lance muito baixa para o leilão, CPC máx. insuficiente.
4. **Palavras-chave e correspondência** — volume de pesquisa zero, exclusões a bloquear tudo, concordância demasiado restrita.
5. **Localização e segmentação** — público demasiado estreito; horários em que a campanha não corre.
6. **Conta ligada corretamente** — confirmar no Infisical que `GOOGLE_ADS_CUSTOMER_ID` para o deploy Rose é **`1677226456`** (sem hífens) e que o utilizador OAuth tem acesso a **esta** subconta (MCC vs subconta).
7. **Relatórios** — *Reports* → intervalo de datas que inclua os últimos dias; comparar com o que o Admin mostra.

Tarefa Asana relacionada: `1213744799182618` (BACKLOG P0 Rose).
