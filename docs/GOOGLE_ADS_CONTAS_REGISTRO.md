# Google Ads — registro de Customer IDs (contas)

Referência interna para configurar `GOOGLE_ADS_CUSTOMER_ID` no Infisical / Vercel por deploy ou cliente.

**Isto não substitui credenciais:** tokens OAuth, Developer Token e refresh token continuam apenas em segredos (`GOOGLE_ADS_*`), nunca versionados.

O Admin / API aceitam o ID **com ou sem hífens**; o código normaliza para a API.

| Uso / cliente | Formato exibição (Google Ads) | Formato API (sem hífen) |
|---------------|------------------------------|-------------------------|
| Adventure MCC (conta admin principal) | `750-881-0550` | `7508810550` |
| Adventure Labs (veiculação própria, sob MCC) | `585-458-7443` | `5854587443` |
| Rose | `167-722-6456` | `1677226456` |
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

### Caso auditado: `[Auxílio Materniade] - [Vercel]` — `23646258632` (2026-03-23)

Leitura via **Google Ads API** (conta `1677226456`). Premissas do negócio confirmadas: há saldo, anúncios com destino `https://auxiliomaternidade.roseportaladvocacia.com.br/`, campanha **Ativada** / **Qualificada** no UI.

| Verificação | Resultado API / nota |
|-------------|----------------------|
| **Orçamento diário** | `campaign_budget.amount_micros` = **30 000 000** → **R$ 30,00/dia** (ok). |
| **Estratégia de lances** | `bidding_strategy_type` = **TARGET_SPEND** (gasto alvo / automação de lances ligada ao orçamento). |
| **Rede** | Pesquisa Google + rede de pesquisa parceira ativas. |
| **Geográfico** | **Inclusão:** Estado do Rio Grande do Sul (`geoTargetConstants/20104`). **Exclusão:** município Santo Antônio da Patrulha (`9047812`, negativo) — impacto marginal no volume. |
| **Horários / negativas de campanha** | Nenhum critério `AD_SCHEDULE`; nenhuma palavra-chave negativa ao nível de campanha na leitura. |
| **Grupo de anúncios** | Um AG ativo: `[Cliques Site Vercel] - [RS]-[Excluir=SAP]`, `ad_group.status` = ENABLED. |
| **Palavras-chave** | Várias em **correspondência ampla** (`match_type` BROAD), `status` ENABLED, `system_serving_status` = **ELIGIBLE** (elegíveis a leilão — não é bloqueio de política nem “volume de pesquisa zero” na API). |
| **Lances (causa provável)** | `ad_group.cpc_bid_micros` e `effective_cpc_bid_micros` nas palavras-chave = **10 000** micros → **R$ 0,01** por clique. Para intenção jurídica / INSS / maternidade no RS, este valor está **ordens de magnitude abaixo** do necessário para ganhar leilão → **Ad Rank insuficiente** → **0 impressões** mesmo com conta e anúncios “aprovados”. |
| **Métricas 30 dias** | `impressions` = 0, `cost_micros` = 0 (confirma ausência de entrega). |
| **Anúncio RSA** | `final_urls` corretos; `policy_summary` coerente com aprovado no painel. |

**Conclusão:** não há indício, nesta leitura, de falha de URL, de segmentação que “zere” o RS inteiro, nem de pausa estrutural. O motivo técnico principal alinhado aos dados da API é **lance máximo efetivo irrealista (R$ 0,01)** para o leilão das queries configuradas.

**Ações recomendadas (com aprovação marketing / Rose):**

1. No Google Ads: **Palavras-chave** ou **Grupo de anúncios** → definir **lance máx. CPC** ou **teto** compatível com o mercado (ponto de partida frequentemente **R$ 2–8+** por termo, a validar com colunas *Primeira página* / *Topo de página* e Simulador de lances — valores reais variam).
2. Se mantiver automação **TARGET_SPEND**: confirmar no UI se existe **limite de CPC máx.** global ou por grupo; remover teto de centavos se existir.
3. Após subir lances: aguardar **24–48 h** e rever *Termos de pesquisa*, IS% e custo; ajustar negativas e concordância.
4. Script reutilizável no repo: `apps/core/admin/scripts/diag-rose-campaign.mjs` (executar com Infisical `/admin`).

**Alteração aplicada (2026-03-23):** CPC máx. **R$ 4,50** (`4_500_000` micros) no grupo `195753400524` e nas **35** palavras-chave positivas da campanha `23646258632` (API). Estratégia de negócio: gerar impressões e, com dados estáveis, **reduzir lances gradualmente** monitorando IS%, CPA e termos de pesquisa. Script: `apps/core/admin/scripts/apply-rose-search-cpc-bump.mjs` (`[campaignId] [cpcBrl]` opcionais).

**Governança Rose (Asana, 2026-03-23):** Direito Bancário `21258319337` **permanece pausado**. Prioridade de otimização: campanha **Auxílio Maternidade Vercel** `23646258632`; a outra linha (`23628537292`) serve de referência — se performar melhor, transferir insights (keywords, títulos, descrições, frases) para a Vercel. Card P0 `1213744799182618` (donos operacionais **ceo@adventurelabs.com.br** / utilizador Asana *Comando Estelar*); subtarefa P1 `1213786030182857` (due 2026-03-28) — [Asana](https://app.asana.com/1/1213725900473628/project/1213756022506822/task/1213786030182857).
