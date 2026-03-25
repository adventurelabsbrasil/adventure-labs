# Manual — Campanhas, URLs e UTMs (Adventure Labs)

**Público:** gestor de tráfego júnior (Meta Ads, Google Ads, LinkedIn Ads, TikTok Ads).  
**Objetivo:** padronizar destinos, parâmetros UTM e nomenclatura para as **landings públicas** do site Adventure, com foco na **LP ICP MarTech** (`/lp/martech`) e páginas irmãs.

**Última revisão:** março/2026 (alinhado ao app Adventure: atribuição em `sessionStorage`, evento `generate_lead` no `dataLayer`, gravação em Supabase `conversion_forms`).

---

## 1. URLs base (destino dos anúncios)

Usar sempre **HTTPS** e o domínio de produção acordado com o time (hoje o site público costuma ser **`https://www.adventurelabs.com.br`**).

| Uso recomendado | Path | Notas |
|-----------------|------|--------|
| **Home / marca** | `/` | Entrada geral; formulários modais podem usar atribuição se a home chamar `captureLandingAttribution`. |
| Landing legada A | `/landing` | Rota pública histórica. |
| Landing legada B | `/landingpage` | Rota pública histórica. |
| **MarTech (oferta principal site)** | `/martech` | Página longa MarTech + modais de qualificação. |
| **LP ICP MarTech (captação direta)** | `/lp/martech` | **Destino preferido para campanhas de aquisição** focadas em empresas de serviço +R$100k/mês; formulário na própria página. |
| Pós-conversão (LP acima) | `/obrigado` | Página de agradecimento após envio do form da `/lp/martech` (não usar como URL final de anúncio). |
| Teste interno wizard | `/martech-wizard-test` | **Não** usar em mídia paga. |

**Canonical da LP ICP (referência SEO):** `https://adventurelabs.com.br/lp/martech` — em anúncios pode manter `www` se for o domínio padrão do site; o importante é **consistência** e o mesmo domínio em todas as plataformas.

---

## 2. Parâmetros UTM que o site grava

O front captura **apenas** estes cinco parâmetros (padrão **minúsculas**, como na especificação Google):

| Parâmetro | Função |
|-----------|--------|
| `utm_source` | Origem paga ou orgânica rastreada (ex.: `meta`, `google`, `linkedin`, `tiktok`). |
| `utm_medium` | Tipo de mídia (ex.: `cpc`, `paid_social`, `display`, `discovery`). |
| `utm_campaign` | Nome da campanha (slug estável, sem espaços preferencialmente). |
| `utm_content` | Criativo / formato / variante (ex.: `video_01`, `carrossel_b2b`). |
| `utm_term` | Palavra-chave (Search) ou rótulo extra (interesses, público A/B). |

**Comportamento técnico (resumo):**

- Na **primeira visita** à landing com query string, esses valores são guardados na sessão (`sessionStorage`).
- Se o utilizador voltar à mesma aba **sem** UTMs na URL, **mantêm-se** os valores da primeira captura.
- Se a URL **traz UTMs de novo**, estes **substituem** os anteriores na sessão.
- **Referrer** do documento também é enviado ao servidor quando há envio de formulário (`page_referrer`).

**Não inventar outros nomes** (`source`, `utm_Source`, `UTM_CAMPAIGN`) — o sistema **não** os mapeia para as colunas UTM do lead.

---

## 3. Convenção de nomenclatura (padrão Adventure)

Objetivo: ler a coluna no CRM / planilha e saber **de onde veio** o lead.

### 3.1 `utm_source` (quem entregou o clique)

| Plataforma | Valor sugerido `utm_source` |
|------------|----------------------------|
| Meta (Facebook / Instagram) | `meta` |
| Google Ads | `google` |
| LinkedIn Ads | `linkedin` |
| TikTok Ads | `tiktok` |

*(Se o relatório interno já usar `facebook` em vez de `meta`, alinhar com o CMO/gestor sênior e **manter fixo** em todas as campanhas.)*

### 3.2 `utm_medium`

| Tipo | Valor sugerido |
|------|----------------|
| CPC / leilão pesquisa | `cpc` |
| Redes sociais pagas | `paid_social` |
| Display / Demand Gen | `display` ou `demand_gen` |
| LinkedIn patrocinado | `paid_social` ou `cpc` (escolher um e padronizar) |

### 3.3 `utm_campaign`

- Formato sugerido: `marco_ano_objetivo_publico` em **minúsculas e underscores**.  
- Exemplos: `martech_icp_servicos_q2_2026`, `lp_martech_lookalike_ceo_sp`.

### 3.4 `utm_content`

- Identifica **criativo** ou **formato**: `feed_video_30s_v1`, `stories_static_logo`, `pmax_martech_br`.

### 3.5 `utm_term`

- **Google Search:** palavra-chave ou nome do grupo de anúncios (sem caracteres que quebrem URL — usar `+` ou `%20` na URL final).  
- **Social:** opcional para público (`lal_2pct`, `interesse_martech`, `retargeting_30d`).

---

## 4. URL final modelo (copiar e adaptar)

**Base LP ICP:**

```text
https://www.adventurelabs.com.br/lp/martech?utm_source=meta&utm_medium=paid_social&utm_campaign=martech_icp_q2_2026&utm_content=feed_video_01&utm_term=lookalike_2pct
```

**Base MarTech (página longa):**

```text
https://www.adventurelabs.com.br/martech?utm_source=google&utm_medium=cpc&utm_campaign=martech_search_br&utm_content=rsa_grupo1&utm_term=agencia+martech
```

**Regras:**

- Colocar UTMs **depois** do `?`; primeiro parâmetro com `?`, seguintes com `&`.
- Evitar espaços na URL; usar `_` ou `+` em `utm_term` quando necessário.
- Testar no navegador: página deve abrir **sem** erro 404.

---

## 5. Por plataforma — checklist rápido

### 5.1 Meta Ads (Facebook / Instagram)

1. **URL do site (destino):** colar a URL completa **com UTMs** no nível do anúncio (ou usar parâmetros da ferramenta, se a conta usar “Parâmetros de URL” no conjunto/anúncio).
2. Garantir que a URL final inclui os **cinco** UTMs quando possível.
3. **Pixel / CAPI:** conversões são configuradas no **Gerenciador de Eventos**; o site também dispara `Lead` no pixel em envios de formulário da LP — alinhar com o time para não duplicar conversões no relatório.
4. **iOS / AT:** atribuição pode diferir; UTMs continuam essenciais para cruzar com `conversion_forms`.

### 5.2 Google Ads

1. **URL final:** página de destino **com** UTMs **ou** uso de **modelo de rastreamento** / **sufixo de URL final** a nível de conta/campanha/grupo para acrescentar `utm_*` de forma consistente.
2. **Pesquisa:** preencher `utm_term` com `{keyword}` ou nome do grupo, conforme política interna (e testar se a macro é suportada na sua estrutura).
3. **Performance Max / Demand Gen:** definir `utm_campaign` e `utm_content` por asset group ou convenção única por campanha para não misturar leads no CRM.

### 5.3 LinkedIn Ads

1. Incluir os mesmos parâmetros na **URL de destino** do criativo ou da InMail.
2. LinkedIn pode usar **Lead Gen Forms** nativos — nesse caso o lead **não passa** pela `/lp/martech`; combinar com o time se houver integração separada. Para tráfego para o **site**, manter UTMs na URL.
3. **Insight Tag:** opcional no projeto; variável de ambiente `VITE_LINKEDIN_PARTNER_ID` no front quando configurada.

### 5.4 TikTok Ads

1. URL de destino com os mesmos `utm_source=tiktok` e `utm_medium` acordados (`paid_social` ou `cpc`).
2. **Pixel TikTok:** configurar evento de conversão alinhado ao envio do formulário (evitar double-count com GTM).
3. Atentar a **App vs Web** — este manual é para tráfego **web** para `adventurelabs.com.br`.

---

## 6. O que acontece quando o utilizador converte (LP `/lp/martech`)

1. Dados vão para **`conversion_forms`** no Supabase, com:
   - `form_source` = `martech-icp`
   - `company_segment`, `role` (cargo), e-mail, telefone, etc.
   - Colunas `utm_source`, `utm_medium`, `utm_campaign`, `utm_content`, `utm_term`, `landing_path`, `page_referrer`, `created_at`.
2. No **dataLayer** (GTM): evento `generate_lead` com `form_type: martech-icp`, `page_path` e eco das UTMs quando existirem.
3. **gtag / fbq** podem disparar conforme scripts da página — validar com **Tag Assistant** / **Meta Pixel Helper** em staging ou produção.

**Visualização interna (CRM Adventure logado):**  
`Marketing` → **Leads LP MarTech** → rota `/marketing/landing-leads`.

---

## 7. Eventos e GTM (resumo para alinhar com quem mexe no container)

| Evento / chave | Quando | Notas |
|----------------|--------|--------|
| `generate_lead` | Após sucesso no envio do form da `/lp/martech` | `form_type`: `martech-icp` |
| Camadas opcionais | Mesmo push | `utm_source`, `utm_medium`, `utm_campaign`, `utm_content`, `utm_term`, `page_path` |

Outras landings podem usar `form_type`: `conversion` ou `work-with-us` — não misturar relatórios sem filtrar.

---

## 8. Checklist antes de publicar campanha

- [ ] URL final abre em aba anónima e mostra a landing correta (`/lp/martech` ou `/martech`).
- [ ] Os cinco UTMs estão presentes ou a política do time define quais podem ficar vazios.
- [ ] `utm_source` reflete a plataforma (`meta`, `google`, `linkedin`, `tiktok`).
- [ ] Nome da campanha (`utm_campaign`) é **único** o suficiente para não colidir com outra iniciativa no mesmo trimestre.
- [ ] `utm_content` permite identificar o criativo nos relatórios.
- [ ] Foi feito **um teste de envio** de formulário e o lead aparece no CRM ou no Supabase com UTMs preenchidas.
- [ ] Não há duplicidade agressiva de tags (dois pixels disparando a mesma conversão sem regra no GTM).

---

## 9. Erros frequentes (evitar)

1. **URL sem `www` vs com `www`** misturada sem redirect — pode duplicar sessões; alinhar com o padrão do site.
2. **Maiúsculas inconsistentes** — usar sempre **minúsculas** nos nomes dos parâmetros (`utm_source`, não `UTM_Source`).
3. **Caracteres especiais** não codificados (`&`, `#`, espaços) na URL — quebram a query string.
4. Colocar UTMs só no **rastreamento** da plataforma mas **não** na URL que o browser carrega — o site **só lê** query string da página carregada (e o que ficar guardado na sessão conforme regra da secção 2).
5. Usar `/obrigado` como URL de anúncio — o utilizador não vê a oferta; sempre destino = landing de venda.

---

## 10. Referência técnica no repositório

- Captura UTM: `apps/core/adventure/src/lib/marketing/landingAttribution.ts`
- Evento GTM: `apps/core/adventure/src/lib/marketing/trackGenerateLead.ts`
- Persistência lead LP: `saveLpMartechLead` / `conversion_forms` em `apps/core/adventure/src/lib/services/formSubmission.ts`
- Rotas públicas: `apps/core/adventure/src/routes/index.tsx` (`/lp/martech`, `/obrigado`, `/martech`, …)

---

*Documento operacional Adventure Labs — Marketing. Em caso de mudança de domínio ou de estrutura de GTM, atualizar este manual e avisar o gestor sênior.*
