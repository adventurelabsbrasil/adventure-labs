# Vercel no Monorepo Adventure Labs — Manual Versionado

Manual operacional e de governança do Vercel para a stack da Adventure Labs, alinhado ao A.C.O.R.E. e ao modelo atual de monorepo.

## Objetivo

- Registrar o estado real da conta/projetos Vercel em checkpoints versionados.
- Padronizar como criamos, auditamos e evoluímos projetos Vercel ligados ao GitHub.
- Evitar drift de configuração entre Vercel, monorepo e documentação.

## Escopo na arquitetura

- O Vercel segue parte oficial da stack para deploy de apps web (Next.js/Vite) mesmo com origem no GitHub.
- No monorepo, priorizar apps em `apps/core/*` e `apps/clientes/*`.
- Pastas em `clients/*` podem existir como histórico/submódulo, mas a referência operacional prioritária é o workspace ativo no monorepo.

## Mapa trilogia: Core, Cliente, Labs

*Registo Founder.* Taxonomia operacional para classificar trabalho, deploy e prioridade no monorepo. Complementa [.cursorrules](../.cursorrules) e [ADR-0002](adr/0002-clients-submodule-vs-apps-clientes-workspace.md).

| Trilho | Definição | Onde costuma viver no repo | Notas |
|--------|-----------|----------------------------|--------|
| **Core** | Aplicações e sites do **core business** da Adventure: operação interna, produto Adventure, marketing institucional, integrações que sustentam a empresa. | `apps/core/*` (ex.: `admin`, `adventure`, `elite` até consolidar no site; `adventure-work-os` é **método/docs**, sem deploy web obrigatório) | **Não** confundir com entregas de **cliente**. |
| **Cliente** | Marcas/organizações com **entregas contratadas**; cada uma com **subdomínio tenant** `{{slug}}.adventurelabs.com.br` (e paths por produto quando aplicável). | `apps/clientes/*`, `clients/*` (submódulos), repos dedicados | Lista canônica de clientes ativos (nomes comerciais): **Lidera**, **Rose**, **Benditta**, **Capclear**, **Speed**, **Young**, **Altemir**. |
| **Labs** | Apps, **tools** e projetos **em construção** para virarem **produto**, **MVP** ou oferta futura; experimentação e R&D. | `apps/labs/*`, `tools/*` (quando não forem só scripts internos), pastas assim etiquetadas | Quando um lab **estabiliza** e passa a servir o **core business**, pode **promover-se a Core** (mover para `apps/core/*` ou equivalente) — registrar decisão (ex.: linha neste manual + [ACORE_SESSION_LOG](ACORE_SESSION_LOG.md) ou ADR). |

**Regra de promoção Labs → Core:** critério = valor para operação Adventure + manutenção contínua + alinhamento à constituição (RLS, tenant, etc.); não há promoção automática.

**Clientes — slugs de subdomínio (padrão):** ver tabela na secção *Padrão de domínios — clientes* (inclui `altemir.adventurelabs.com.br`).

## Projeto Core vs site institucional vs projetos de cliente

| Tipo | O que é | Exemplo de host / rota | Repo / app típico |
|------|---------|------------------------|-------------------|
| **Projeto Core (interno)** | Produto Adventure para operação interna (auth **WorkOS**, backoffice, integrações). **Não** é o “portal tenant” do cliente. | `admin.adventurelabs.com.br` | `apps/core/admin` |
| **Site institucional** | Marketing Adventure: home, LPs de serviços, conteúdo editorial. | `adventurelabs.com.br/` + rotas abaixo | `apps/core/adventure` |
| **Projeto de cliente** | Entrega contratada (LMS, RH, finanças, etc.) sob o **subdomínio do tenant** com **paths** por produto. | `lidera.adventurelabs.com.br/space`, `/skills`, `/flow` | **Três repos Git distintos** (Space, Skills, Flow); **um** subdomínio tenant; routing por path. |

**Regra de leitura:** `admin.*` = **Core** (WorkOS). `{cliente}.*` = entrada do **tenant**; dentro dela, cada **projeto** expõe-se por **path** (ou app separado com rewrite), conforme tabela Lidera neste manual.

## Repositório Git canônico — raiz vs submódulos

**Monorepo (raiz):** `adventurelabsbrasil/adventure-labs` — origem `https://github.com/adventurelabsbrasil/adventure-labs.git`.

Vários apps em `apps/core/*` e `apps/clientes/young-talents/plataforma` são **submódulos** com repositório próprio. Para Vercel, a decisão típica é:

| Estratégia | Quando usar |
|------------|-------------|
| **Projeto Vercel → repo do submódulo** | App já vive em repo dedicado (`admin`, `elite`, `young-talents`, etc.): build simples, sem depender de `pnpm` na raiz do monorepo. |
| **Projeto Vercel → monorepo + Root Directory** | App só existe no workspace sem repo separado (ex.: `apps/clientes/benditta/app`) ou política explícita de um único pipeline; atenção a **submódulos vazios** no clone da Vercel (precisa `git submodule` no build ou ignorar pastas). |

Decisão de taxonomia `clients/` vs `apps/clientes/`: [ADR-0002 — clients submodule vs apps-clientes](adr/0002-clients-submodule-vs-apps-clientes-workspace.md).

### Mapa de repos (referência a partir de `.gitmodules`)

| Caminho no monorepo | Repositório GitHub |
|---------------------|-------------------|
| `apps/core/admin` | `adventurelabsbrasil/admin` |
| `apps/core/elite` | `adventurelabsbrasil/elite` |
| `apps/core/adventure` | `adventurelabsbrasil/adventure` |
| `apps/clientes/young-talents/plataforma` | `adventurelabsbrasil/young-talents` |
| `apps/clientes/lidera/space` | `adventurelabsbrasil/lidera-space` |
| `apps/clientes/lidera/skills` | `adventurelabsbrasil/lidera-skills` |
| `apps/clientes/lidera/flow` | **Repo distinto** (ex. `adventurelabsbrasil/lidera-flow`) — alinhar em `.gitmodules` quando existir |
| `apps/clientes/benditta/app` | *(sem submódulo)* — código no **monorepo** `adventurelabsbrasil/adventure-labs` |

### Decisão Founder — Vercel para Core (Admin, site Adventure, Elite como LP)

Registo de sessão Q&A: **Admin** e **site (`adventure`)** têm como **alvo** projeto Vercel ligado ao **monorepo** `adventurelabsbrasil/adventure-labs` com **Root Directory** explícito. A **Elite** é **LP** servida pelo **mesmo** deploy que o site (rotas/slugs), não um terceiro projeto Vercel.

| Projeto lógico | Papel | Root Directory no Vercel (hoje) | Notas |
|----------------|--------|---------------------------------|--------|
| **admin** | App Admin (**WorkOS**) | `apps/core/admin` | Caminho canônico atual no monorepo. |
| **elite** | LP(s) do **site** | *ver projeto `adventure`* | Conteúdo hoje em `apps/core/elite` até consolidar; **sem** projeto Vercel dedicado à Elite (Q&A). |
| **adventure** | Site institucional + LPs (rotas/slugs) | `apps/core/adventure` | **Convenção desejada:** quando existir pasta, migrar para `apps/core/sites/adventure`. |

**Importante:** a pasta `apps/core/sites/` **ainda não existe** no clone atual do monorepo — na Vercel usar sempre o path **real** até haver refactor/movimento de pastas.

Os submódulos Git (`adventurelabsbrasil/admin`, `elite`, `adventure`) continuam válidos para **clone local** e histórico. **Deploy Vercel (alvo):** monorepo + roots **`apps/core/admin`** e **`apps/core/adventure`**; a **Elite** não tem projeto separado (integrada ao site por rotas/slugs).

#### Q&A — branch de produção e domínios (Core)

| Decisão | Valor (Founder) |
|---------|-----------------|
| **Branch produção** | **`main`** para os projetos Core ligados ao monorepo (exceções: documentar por app). |
| **Admin** (Core) | `https://admin.adventurelabs.com.br` — projeto **interno** Adventure com **WorkOS** (não confundir com subdomínio tenant `{{cliente}}.adventurelabs.com.br`). |
| **Adventure** (site institucional) | `https://adventurelabs.com.br/` (**home**). No **mesmo** deploy: LPs de serviços martech **`/landing`** e **`/landingpage`**; **Elite** como LP por **rotas/slugs** (sem projeto Vercel separado Elite). |
| **Elite** (landing) | Parte do **site** (`adventure`); rotas/slugs no mesmo projeto/deploy. |

**Nota:** código da Elite pode continuar temporariamente em `apps/core/elite` no monorepo até refactor para rotas dentro de `apps/core/adventure` (ou import/build partilhado).

### Padrão de domínios — clientes (subdomínio = tenant)

**Objetivo (Founder):** cada **cliente** (trilho **Cliente**, ver *Mapa trilogia*) com **subdomínio próprio** sob `adventurelabs.com.br`, como entrada do **ambiente da organização (tenant)** — utilizadores vêem **apenas** apps, dashboards e integrações **permitidos** para esse tenant.

**Lista canônica de clientes (nomes):** Lidera, Rose, Benditta, Capclear, Speed, Young, Altemir.

| Cliente / slug | Subdomínio canônico (padrão) |
|----------------|------------------------------|
| Benditta | `benditta.adventurelabs.com.br` |
| Young | `young.adventurelabs.com.br` |
| Lidera | `lidera.adventurelabs.com.br` |
| Rose | `rose.adventurelabs.com.br` |
| Capclear | `capclear.adventurelabs.com.br` |
| Speed | `speed.adventurelabs.com.br` |
| Altemir | `altemir.adventurelabs.com.br` |

**Implementação técnica:** respeitar **RLS** e `tenant_id` / `client_id` em dados; ver governança multitenant em `.cursorrules` e [ADMIN_POR_CLIENTE_SUBDOMINIO.md](ADMIN_POR_CLIENTE_SUBDOMINIO.md). O mapeamento **subdomínio → projeto Vercel** (app dedicado vs portal Admin) é decisão de produto por cliente — registrar no provisionamento.

**Apps com repo dedicado** (ex.: `young-talents`, `lidera-space`): deploy preferencial a partir do **submódulo**; hostname tenant + **path** quando vários produtos compartilham o mesmo subdomínio (ex.: Lidera).

### Lidera — três apps, três repos, um subdomínio (Founder)

**Modelo confirmado:** **Skills**, **Space** e **Flow** são **aplicações com repositórios Git diferentes**; todas podem (e devem, alvo) expor-se **no mesmo subdomínio** `lidera.adventurelabs.com.br`, cada qual no seu **path**:

| Produto | Repo (nome canônico) | Descrição | URL pública alvo |
|---------|------------------------|-----------|------------------|
| **Space** | `adventurelabsbrasil/lidera-space` | LMS (`lideraspacev1`) | `https://lidera.adventurelabs.com.br/space` |
| **Skills** | `adventurelabsbrasil/lidera-skills` | Avaliação de desempenho (RH) — entregue | `https://lidera.adventurelabs.com.br/skills` |
| **Flow** | **repo dedicado distinto** (ex.: `adventurelabsbrasil/lidera-flow` — confirmar URL no GitHub) | Gestão financeira — entregue | `https://lidera.adventurelabs.com.br/flow` |

**Implementação Vercel:** **três projetos/deployments** (um por repo), cada um com **Root `.`** no respectivo repositório; no domínio **`lidera.adventurelabs.com.br`**, a opção escolhida pelo Founder é um **projeto porta (gateway)** com **rewrites** para os três deployments (ver subsecção abaixo). Alternativas (middleware, multi-zone) ficam como exceção documentada se necessário.

#### Lidera — projeto porta (gateway) e rewrites (decisão Founder)

**Modelo:** além dos **três** deployments (space, skills, flow), existe um **quarto** projeto Vercel **porta** com o domínio customizado **`lidera.adventurelabs.com.br`**, apenas com regras de roteamento (sem duplicar a app).

1. Provisionar e estabilizar deploy de **`lidera-space`**, **`lidera-skills`** e **`lidera-flow`** (cada um no seu repo, Root **`.`**).
2. Anotar o **URL de produção** de cada projeto (ex.: `*.vercel.app` ou domínio próprio do app, se existir).
3. Criar o projeto **porta** (repositório mínimo com `vercel.json` ou app “shell”). Associar **`lidera.adventurelabs.com.br`** só a este projeto.
4. Configurar `rewrites` apontando `/space`, `/skills` e `/flow` para os hosts reais. Cada app filho pode precisar de **`basePath`** / **`assetPrefix`** (Next.js) ou equivalente para servir corretamente sob subpath — validar rotas, assets e redirects após o primeiro deploy.

Exemplo (`vercel.json` no repo do projeto **porta** — **substituir** `SEU-SPACE`, etc., pelos hosts reais da Vercel):

```json
{
  "rewrites": [
    { "source": "/space", "destination": "https://SEU-SPACE.vercel.app/space" },
    { "source": "/space/:path*", "destination": "https://SEU-SPACE.vercel.app/space/:path*" },
    { "source": "/skills", "destination": "https://SEU-SKILLS.vercel.app/skills" },
    { "source": "/skills/:path*", "destination": "https://SEU-SKILLS.vercel.app/skills/:path*" },
    { "source": "/flow", "destination": "https://SEU-FLOW.vercel.app/flow" },
    { "source": "/flow/:path*", "destination": "https://SEU-FLOW.vercel.app/flow/:path*" }
  ]
}
```

Se um deployment filho servir na **raiz** (`/`) sem prefixo, ajuste os `destination` para `https://HOST.vercel.app/:path*` e mantenha o `source` com o prefixo no tenant — testar 404 de assets.

**Documentação:** registrar no próximo snapshot os **quatro** nomes de projeto na Vercel e a versão final dos rewrites.

No monorepo, **Space** e **Skills** constam em `.gitmodules`; **Flow** segue o mesmo princípio de **repo separado** — alinhar submódulo ou clone quando o repo estiver referenciado.

### Decisão Founder — clientes (submódulo / repo dedicado)

Para **Young Talents**, **Lidera** (**space**, **skills**, **flow** — cada um o seu repo) e, em geral, apps com **repo Git próprio**: o projeto Vercel deve ligar-se ao **repositório correspondente** com **Root Directory** = **`.`** (raiz desse repo).

**Exceção — Benditta:** não há submódulo em `.gitmodules`; o código está no monorepo. Mantém-se **Vercel → `adventurelabsbrasil/adventure-labs`** + Root `apps/clientes/benditta/app` até existir repo dedicado (opcional ADR se migrar).

## Fonte de verdade e versionamento

- **Manual canônico:** este arquivo.
- **Evidência temporal (snapshot):** seção `Histórico de snapshots`.
- Frequência recomendada: atualização mensal ou a cada mudança relevante de projetos/domínios.

## Procedimento padrão de auditoria (CLI)

Executar na raiz do repositório:

```bash
npx vercel --version
npx vercel whoami
npx vercel teams ls
npx vercel projects ls
npx vercel api /v9/projects
npx vercel api '/v6/deployments?limit=20'
npx vercel api '/v5/domains'
```

Se o comando exigir shell com escape (`?`), manter aspas simples.

### Inventário e nomes de projeto (política ACORE)

- **Fonte primária:** usar a **CLI** (comandos acima, `projects ls` e API `/v9/projects`) para listar projetos, domínios e IDs — evita depender de listas manuais ao Founder.
- **Quando envolver o Founder:** apenas para **nome comercial** de marca, copy para stakeholders ou decisão de produto que **não** apareça no painel/CLI.
- **Ambientes sem sessão Vercel (CI, agente):** executar os mesmos comandos onde houver `vercel login` ou token válido; colar o resumo no **Histórico de snapshots** deste manual.
- **Tabela de revisão** (*Checklist — Revisão periódica*): preencher **Nome do projeto na Vercel** a partir de `npx vercel projects ls` ou do JSON de `/v9/projects`, após cada Import.

## Leitura dos resultados

- `projects ls` + `api /v9/projects`: catálogo de projetos.
- `api /v6/deployments`: atividade recente de deploy.
- `api /v5/domains`: domínios ativos.
- Resultado vazio pode indicar fase de bootstrap, conta errada, ou migração em andamento.

## Padrão de criação de novos projetos (A.C.O.R.E.)

**Preferência dentro do plano ACORE:** criar projetos Vercel **a partir do GitHub** (**Import Project** / integração Git), **não** como projeto “vazio” só na UI. Assim cada projeto nasce **já ligado** ao repo: deploys por push/PR, histórico no GitHub e alinhamento à matriz (repo + root + branch documentados).

- **Monorepo** (`adventurelabsbrasil/adventure-labs`): no fluxo de import, escolher o **mesmo** repositório **mais de uma vez** se precisares de **vários** projetos Vercel (ex.: `admin` e `adventure`), alterando apenas o **Root Directory** e o nome do projeto em cada import.
- **Repo dedicado** (submódulo, ex. `young-talents`): um **Import** por repositório, **Root** normalmente **`.`** (raiz do clone).

Fluxo típico: **Vercel Dashboard** → **Add New…** → **Project** → **Import Git Repository** → autorizar/escolher org `adventurelabsbrasil` → selecionar repo → **Configure Project** (Root Directory, framework, build, branch de produção). Comandos CLI (`vercel link`, etc.) são **opcionais** após o Git estar ligado.

Para cada novo app publicado em Vercel:

1. Confirmar app-alvo no monorepo (`apps/core/*` ou `apps/clientes/*`).
2. **Importar** o repositório GitHub correto (fluxo acima) e confirmar ligação Git em **Settings → Git**.
3. Definir **Root Directory** para a pasta exata do app.
4. Registrar variáveis de ambiente sem secrets em Git (`.env.example` apenas com placeholders).
5. Registrar no snapshot do mês:
   - nome do projeto
   - repo GitHub conectado
   - root directory
   - branch de produção
   - domínio(s)
   - status (ativo, congelado, descontinuado)

## Segurança e governança

- Nunca versionar tokens, secrets ou credenciais Vercel.
- Usar placeholders (`process.env.*`) em documentação.
- Apps com Supabase devem respeitar RLS e filtro por `tenant_id`/`client_id` no código da aplicação.

## Histórico de snapshots

### 2026-03-23 — Fase atual: baseline sem projetos ativos

Evidências coletadas via CLI:

- `npx vercel --version` -> `50.35.0`
- `npx vercel whoami` -> `adventurelabsbrasil`
- `npx vercel teams ls` -> time listado: `Adventure Labs` (`adventurelabsbrasil`)
- `npx vercel projects ls` -> `No projects found under adventurelabsbrasil`
- `npx vercel api /v9/projects` -> `"projects": []`
- `npx vercel api '/v6/deployments?limit=20'` -> `"deployments": []`
- `npx vercel api '/v5/domains'` -> `"domains": []`

Interpretação do momento:

- Conta autenticada e CLI funcional.
- Estado atual parece de **pré-provisionamento** ou **higienização completa** da conta.
- O documento legado com lista antiga de projetos deve ser tratado como histórico e não como estado atual.

### 2026-03-23 — Atualização: política CLI, grafia Lidera, gateway rewrites

- **Inventário:** política formal em *Procedimento padrão de auditoria (CLI)* — priorizar CLI para nomes de projeto; Founder só para **nomes comerciais** quando necessário.
- **Cliente:** grafia oficial **Lidera** nas listas comerciais (URLs e slugs mantêm `lidera`).
- **Lidera (roteamento):** decisão **projeto porta + `vercel.json` rewrites** documentada na secção *Lidera — projeto porta (gateway) e rewrites*.
- **P0 Core (`admin` + `adventure`):** estado da conta no snapshot acima **inalterado** (sem projetos listados na passagem de referência). Próximo passo operacional = **Import duplo** no monorepo + envs + domínios + smoke test (checklist *Provisionamento P0*). Após provisionar, repetir `projects ls` e preencher a **tabela de revisão** e o *Template — Snapshot pós-provisionamento P0*.

### Matriz inicial de provisionamento (planejada)

| Prioridade | Projeto Vercel (sugestão) | App no monorepo | Root Directory | Repositório GitHub alvo | Domínio esperado (referência) | Status atual |
|---|---|---|---|---|---|---|
| P0 | `admin` | `apps/core/admin` | **`apps/core/admin`** | **`adventurelabsbrasil/adventure-labs`** (decisão Founder) | `admin.adventurelabs.com.br` | Pendente |
| P0 | `adventure` (site + LPs) | `apps/core/adventure` | **`apps/core/adventure`** (futuro: `apps/core/sites/adventure`) | **`adventurelabsbrasil/adventure-labs`** | `adventurelabs.com.br/` + **`/landing`**, **`/landingpage`** (martech) + Elite por rotas/slugs | Pendente |
| — | `elite` (LP) | `apps/core/elite` | *incluído no deploy `adventure`* | *idem `adventure`* | *rotas/slugs no site* | Ver nota Elite |
| P1 | `young-talents` | `apps/clientes/young-talents/plataforma` | **`.`** (repo `young-talents`) | **`adventurelabsbrasil/young-talents`** (submódulo) | **`young.adventurelabs.com.br`** (padrão tenant) | Pendente |
| P2 | `benditta` | `apps/clientes/benditta/app` | `apps/clientes/benditta/app` | **`adventurelabsbrasil/adventure-labs`** (sem submódulo) | **`benditta.adventurelabs.com.br`** (padrão tenant) | Pendente |
| P2 | `lidera-space` | `apps/clientes/lidera/space` | **`.`** (repo `lidera-space`) | **`adventurelabsbrasil/lidera-space`** (submódulo) | **`lidera.adventurelabs.com.br/space`** (LMS) | Pendente |
| P2 | `lidera-skills` | `apps/clientes/lidera/skills` | **`.`** (repo `lidera-skills`) | **`adventurelabsbrasil/lidera-skills`** (submódulo) | **`lidera.adventurelabs.com.br/skills`** (RH) | Pendente |
| P2 | `lidera-flow` | `apps/clientes/lidera/flow` *(ou só repo remoto)* | **`.`** no repo **lidera-flow** | **`adventurelabsbrasil/lidera-flow`** *(URL exata a confirmar)* | **`lidera.adventurelabs.com.br/flow`** (finanças, entregue) | Pendente |

Observações de governança:

- **Lidera:** três **projetos** no **mesmo** subdomínio — paths `/space`, `/skills`, `/flow`; ver secção *Lidera — três projetos*.
- **Rose, Capclear, Speed, Altemir:** padrão de subdomínio documentado; provisionar quando houver app no inventário.
- Confirmar para cada item o repositório canônico em produção antes de criar o projeto.
- Se houver dúvida entre repo dedicado e monorepo, registrar decisão em ADR antes de provisionar.
- Após criar cada projeto, atualizar esta tabela para `Ativo` e preencher domínio real.

## Próximos passos recomendados

1. Validar os domínios reais por app (`apps/core/*` e apps clientes ativos).
2. Provisionar os projetos P0 da matriz e registrar evidências de CLI no próximo snapshot.
3. Atualizar este manual na seção de snapshot imediatamente após cada provisionamento.

## Template — Snapshot pós-provisionamento P0

Duplicar o bloco abaixo e preencher com data real e evidências da execução:

```md
### AAAA-MM-DD — Pós-provisionamento P0 (admin + site adventure)

Evidências coletadas via CLI:

- `npx vercel --version` -> `<versao-cli>`
- `npx vercel whoami` -> `<usuario-ou-time>`
- `npx vercel projects ls` -> `<resumo-da-lista>`
- `npx vercel api /v9/projects` -> `<count-projetos>`
- `npx vercel api '/v6/deployments?limit=20'` -> `<count-deployments>`
- `npx vercel api '/v5/domains'` -> `<count-dominios>`

Projetos provisionados:

| Projeto | App no monorepo | Root Directory | Repositório conectado | Branch produção | Domínio | Status |
|---|---|---|---|---|---|---|
| admin | apps/core/admin | apps/core/admin | <org/repo> | <main|master|outro> | admin.adventurelabs.com.br | Ativo |
| adventure | apps/core/adventure | apps/core/adventure | <org/repo> | main | adventurelabs.com.br — `/`, `/landing`, `/landingpage`, Elite (rotas) | Ativo |

Checklist de validação:

- [ ] Build em produção concluído sem erro
- [ ] Variáveis de ambiente obrigatórias configuradas
- [ ] Domínio apontando corretamente
- [ ] Callback/auth validado (quando aplicável)
- [ ] Smoke test manual executado

Pendências e riscos:

- `<pendencia-1>`
- `<pendencia-2>`
```

## Checklist operacional — Provisionamento P0 (`admin` e site `adventure`)

### 1) Pré-check local (CLI e conta)

```bash
npx vercel --version
npx vercel whoami
npx vercel teams ls
```

Critério de aceite:

- CLI responde sem erro.
- Conta/time corretos para provisionamento.

### 2) Projeto `admin` (root explícito) — **Import GitHub** (recomendado)

1. **Vercel** → **Add New…** → **Project** → **Import** o repositório **`adventurelabsbrasil/adventure-labs`** (ou, se a política for repo do submódulo `admin`, o repo **`adventurelabsbrasil/admin`** — alinhar à matriz executiva).
2. Nome do projeto: ex. `admin` (ou `adventure-labs-admin`).
3. **Root Directory:** `apps/core/admin` (se o import for do monorepo) ou **`.`** (se o import for só do repo `admin`).
4. **Production Branch:** `main`.
5. Concluir o primeiro deploy; depois **Settings → Environment Variables** e **Domains** (`admin.adventurelabs.com.br`).

*Alternativa CLI (secundária):* `vercel link` dentro da pasta do app após clone — desde que o projeto no dashboard fique com **Git** conectado; evitar criar projeto **sem** repositório ligado.

Critério de aceite:

- Projeto visível em `npx vercel projects ls` com **Git** apontando para o repo esperado.
- Root Directory e branch de produção corretos.

### 3) Projeto do site (`adventure`) — inclui LPs (ex.: Elite) — **segundo Import** no monorepo

Não criar projeto Vercel separado para Elite; configurar **um** projeto para o **site**:

1. **Novo Import** do **mesmo** repositório **`adventurelabsbrasil/adventure-labs`** (segundo projeto Vercel no monorepo).
2. Nome do projeto: ex. `adventure` ou `adventure-labs-site`.
3. **Root Directory:** `apps/core/adventure`.
4. **Production Branch:** `main`.
5. LPs (Elite, `/landing`, `/landingpage`): **rotas e slugs** na mesma app.

Critério de aceite:

- Projeto do site visível em `npx vercel projects ls`, com Git = monorepo e root `apps/core/adventure`.
- Apex `adventurelabs.com.br` e rotas de LP servidas pelo mesmo deployment.

### 4) Variáveis de ambiente (sem secrets no Git)

Para cada projeto (`admin`, `adventure`):

- Definir variáveis obrigatórias no painel Vercel (Production/Preview/Development conforme necessidade).
- Garantir que o repositório mantenha apenas `.env.example` com placeholders.

Critério de aceite:

- Build não falha por ausência de env.
- Nenhum segredo inserido em arquivos versionados.

### 5) Domínios e DNS

Adicionar domínio(s) de produção no projeto correspondente e apontar DNS conforme instruções da Vercel. Subdomínios de **cliente** (`*.adventurelabs.com.br`) seguem o padrão tenant documentado na secção *Padrão de domínios — clientes (subdomínio = tenant)*.

Critério de aceite:

- Domínio resolve para o projeto correto.
- HTTPS emitido e acesso público funcional.

### 6) Deploy e smoke test

Após conectar Git e configurar env/domínio:

- Disparar deploy de produção (push na branch de produção ou redeploy no painel).
- Validar rotas principais, autenticação e páginas críticas.

Critério de aceite:

- Último deployment em estado `Ready`.
- Smoke test manual concluído sem bloqueio.

### 7) Fechamento documental (obrigatório)

Ao concluir P0:

1. Atualizar a matriz deste manual (`Status` -> `Ativo` nos itens provisionados: `admin` + `adventure`).
2. Duplicar e preencher o bloco `Template — Snapshot pós-provisionamento P0`.
3. Atualizar `docs/BACKLOG.md` e `docs/ACORE_SESSION_LOG.md` com evidências e pendências.

## Checklist — Revisão periódica da carteira (todos os deploys)

Objetivo: alinhar **painel Vercel** à **matriz executiva** e registrar drift (projeto criado com outro nome, domínio trocado, app descontinuado).

### Ritmo sugerido

- **Mensal** ou após qualquer mudança de domínio/repo/Root Directory.
- Após revisão, copiar uma linha de evidência para `Histórico de snapshots` (data + `projects ls` resumido).

### Passos (CLI)

```bash
npx vercel whoami
npx vercel teams ls
npx vercel projects ls
npx vercel api /v9/projects
```

### Tabela de revisão (preencher a cada passagem)

Preencher **Nome do projeto na Vercel** com o identificador devolvido por `npx vercel projects ls` ou pela API `/v9/projects` (não confundir com nome comercial da marca ao comunicar fora do painel).

| Projeto lógico | Repo GitHub esperado | Nome do projeto na Vercel | Production branch | Root Directory no painel | Último deploy (data) | Estado `Ready`? | Domínio em produção | Delta vs matriz |
|---|---|---|---|---|---|---|---|---|
| admin | `adventurelabsbrasil/adventure-labs` |  | `main` | `apps/core/admin` |  |  | `admin.adventurelabs.com.br` |  |
| adventure | `adventurelabsbrasil/adventure-labs` |  | `main` | `apps/core/adventure` |  |  | `/`, `/landing`, `/landingpage`, LPs (Elite) |  |
| young-talents | `adventurelabsbrasil/young-talents` |  | `main` (a confirmar no repo) | `.` |  |  | `young.adventurelabs.com.br` |  |
| benditta | `adventurelabsbrasil/adventure-labs` |  | `main` | `apps/clientes/benditta/app` |  |  | `benditta.adventurelabs.com.br` |  |
| lidera-space | `adventurelabsbrasil/lidera-space` |  | `main` (a confirmar no repo) | `.` |  |  | `lidera.adventurelabs.com.br/space` |  |
| lidera-skills | `adventurelabsbrasil/lidera-skills` |  | `main` (a confirmar no repo) | `.` |  |  | `lidera.adventurelabs.com.br/skills` |  |
| lidera-flow | `adventurelabsbrasil/lidera-flow` *(confirmar)* |  | `main` (a confirmar) | `.` |  |  | `lidera.adventurelabs.com.br/flow` |  |
| lidera-gateway | *(repo porta / stub)* |  | `main` *(a confirmar)* | `.` |  |  | `lidera.adventurelabs.com.br` (rewrites) |  |

Critério de aceite da revisão:

- Cada app **ativo** em negócio tem linha preenchida ou motivo explícito (*não provisionado*, *outro host*, *congelado*).
- Domínios e repos batem com a **matriz executiva** ou a divergência está em `Delta vs matriz` + tarefa Asana / BACKLOG.

## Carteira completa de projetos (Adventure + clientes)

Classificação **Core / Cliente / Labs:** ver secção [Mapa trilogia: Core, Cliente, Labs](#mapa-trilogia-core-cliente-labs).

A **onda P0** é **`admin`** + **site** (`adventure`, incluindo LPs como Elite por rotas). O inventário de referência para Vercel deve cobrir toda a carteira aplicável:

### Core (Adventure)

| Projeto lógico | Caminho no monorepo | Faixa sugerida |
|---|---|---|
| admin | `apps/core/admin` | P0 |
| adventure (site + LPs / slugs) | `apps/core/adventure` (+ conteúdo Elite até consolidar) | P0/P1 |
| elite (LP) | `apps/core/elite` | *Sem deploy Vercel separado — integrado ao projeto `adventure`* |

### Clientes (workspaces ativos)

Clientes canônicos (Founder): **Lidera**, **Rose**, **Benditta**, **Capclear**, **Speed**, **Young**, **Altemir** — nem todos têm ainda linha na matriz Vercel até existir app inventariado.

| Projeto lógico | Caminho no monorepo | Faixa sugerida |
|---|---|---|
| young-talents | `apps/clientes/young-talents/plataforma` | P1 |
| benditta | `apps/clientes/benditta/app` | P2 |
| lidera-space | `apps/clientes/lidera/space` | P2 |
| lidera-skills | `apps/clientes/lidera/skills` | P2 |
| lidera-flow | `apps/clientes/lidera/flow` | P2 |

Nota: **lidera-flow** é projeto **entregue** (gestão financeira), **repo separado** de Space e Skills; URL alvo `lidera.adventurelabs.com.br/flow`. Pasta `apps/clientes/lidera/flow` no monorepo pode ser stub até submódulo/repo alinhado.

### Labs (experimentação → possível promoção a Core)

Trilho **Labs:** apps e tools **em construção** para produto/MVP; quando estáveis e alinhados ao core business, **promover** a **Core** (ver *Mapa trilogia*).

| Projeto lógico | Caminho no monorepo | Faixa sugerida |
|---|---|---|
| xpostr | `apps/labs/xpostr` | P3 |
| openclaw | `openclaw` | P3 |
| xtractor | `tools/xtractor` | P3 |

*Outros* em `apps/labs/*` ou `tools/*` entram aqui até reclassificação.

Critérios para entrar no Vercel:

- app web com deploy contínuo por GitHub;
- owner definido (negócio + técnico);
- variáveis de ambiente e domínio mapeados;
- runbook mínimo de operação e rollback documentado.

Observação de governança:

- Nem todo projeto da Adventure precisa estar no Vercel ao mesmo tempo.
- A ordem P0/P1/P2/P3 representa sequência operacional recomendada, não obrigação de provisionamento simultâneo.

## Matriz executiva de provisionamento (painel único)

Atualizar esta tabela como painel vivo de operação:

| Faixa | Projeto lógico | Tipo | Caminho no monorepo | Owner (negócio) | Owner técnico | Repositório canônico | Root Directory (Vercel) | Domínio alvo | Status provisionamento |
|---|---|---|---|---|---|---|---|---|---|
| P0 | admin | core (interno) | `apps/core/admin` — **WorkOS**; não é subdomínio tenant | Founder / Operações internas | CTO | **`adventurelabsbrasil/adventure-labs`** | **`apps/core/admin`**; branch **`main`** | `admin.adventurelabs.com.br` | Planejado |
| P0 | adventure | core (site) | `apps/core/adventure` — home + **`/landing`**, **`/landingpage`** (martech) + Elite e outras LPs por rotas | Founder / Operações internas | CTO | **`adventurelabsbrasil/adventure-labs`** | **`apps/core/adventure`**; branch **`main`** | `adventurelabs.com.br/` (apex + rotas) | Planejado |
| — | elite (LP) | core | `apps/core/elite` *(até consolidar)* | — | — | *mesmo deploy que `adventure`* | *rotas/slugs no site* | *sem projeto Vercel dedicado* | Ver Q&A |
| P1 | young-talents | cliente | `apps/clientes/young-talents/plataforma` | Young Empreendimentos | Dev Young / CTO | **`adventurelabsbrasil/young-talents`** (submódulo) | **`.`** no repo do submódulo | **`young.adventurelabs.com.br`** | Planejado |
| P2 | benditta | cliente | `apps/clientes/benditta/app` | Benditta / Founder | CTO | **`adventurelabsbrasil/adventure-labs`** | **`apps/clientes/benditta/app`** (sem submódulo) | **`benditta.adventurelabs.com.br`** | Planejado |
| P2 | lidera-space | cliente (LMS) | `apps/clientes/lidera/space` | Lidera | Squad cliente / CTO | **`adventurelabsbrasil/lidera-space`** (submódulo) | **`.`** no repo do submódulo | **`lidera.adventurelabs.com.br/space`** | Planejado |
| P2 | lidera-skills | cliente (RH) | `apps/clientes/lidera/skills` — entregue | Lidera | Squad cliente / CTO | **`adventurelabsbrasil/lidera-skills`** (submódulo) | **`.`** no repo do submódulo | **`lidera.adventurelabs.com.br/skills`** | Planejado |
| P2 | lidera-flow | cliente (finanças) | repo **lidera-flow** (distinto de space/skills) — entregue | Lidera | Squad cliente / CTO | **`adventurelabsbrasil/lidera-flow`** *(confirmar slug no GitHub)* | **`.`** no repo | **`lidera.adventurelabs.com.br/flow`** | Planejado |
| P2 | lidera-gateway | cliente (roteamento) | repo mínimo com `vercel.json` (projeto **porta**) — sem app de negócio | Lidera | Squad cliente / CTO | repo dedicado ou stub no monorepo *(a definir)* | **`.`** | **`lidera.adventurelabs.com.br`** (rewrites → space/skills/flow) | Planejado |
| P3 | xpostr | labs | `apps/labs/xpostr` | Labs | Squad Labs | `adventurelabsbrasil/adventure-labs` | `apps/labs/xpostr` | sob demanda | Backlog |
| P3 | openclaw | laboratório/plataforma | `openclaw` | Operações IA | CTO | `adventurelabsbrasil/adventure-labs` (ou repo dedicado, a validar) | `openclaw` | sob demanda | Backlog |
| P3 | xtractor | ferramenta | `tools/xtractor` | Operações internas | CTO | `adventurelabsbrasil/adventure-labs` | `tools/xtractor` | sob demanda | Backlog |

Notas deste preenchimento:

- **Padrão tenant:** subdomínios `*.adventurelabs.com.br` por cliente; ver tabela na secção *Padrão de domínios — clientes*.
- **Core:** `admin.*` = projeto interno **WorkOS**; `adventure` = **site** (home, `/landing`, `/landingpage`, Elite por rotas).
- **Clientes:** subdomínio tenant + **paths** por produto (Lidera: `/space`, `/skills`, `/flow` via projeto **porta** + rewrites).
- **Elite:** LP no **site**; sem deploy Vercel separado.
- **Clientes com submódulo:** Vercel → **repo dedicado** + Root **`.`** onde aplicável; **rewrites** para paths no mesmo host quando necessário.
- **Benditta:** sem submódulo → monorepo + `apps/clientes/benditta/app` + build pnpm workspace.
- **Rose, Capclear, Speed, Altemir:** subdomínios padrão documentados; entrar na matriz quando houver app.
- **Labs:** carteira P3 e similares; promoção para Core quando o Founder/CTO formalizar.
- Conflito repo dedicado vs monorepo: registrar em **ADR** antes de `Em provisionamento`.

## Checklist de aprovação (itens provisórios)

Usar este bloco para formalizar decisões antes do provisionamento:

| Projeto lógico | Campo provisório | Valor proposto | Aprovado por | Data (AAAA-MM-DD) | Status de aprovação | Observações |
|---|---|---|---|---|---|---|
| admin | Repositório canônico | `adventurelabsbrasil/adventure-labs` |  |  | Pendente | Root `apps/core/admin`; app com **WorkOS**. |
| admin | Root Directory | `apps/core/admin` |  |  | Pendente |  |
| admin | Branch produção | `main` |  |  | Pendente | Core / monorepo. |
| admin | Domínio alvo | `admin.adventurelabs.com.br` |  |  | Pendente | Core **WorkOS**; não é hostname tenant. |
| elite (LP) | Integração | Mesmo projeto/deploy que **adventure** |  |  | Pendente | Rotas/slugs; código pode estar em `apps/core/elite` até refactor. |
| adventure | Repositório canônico | `adventurelabsbrasil/adventure-labs` |  |  | Pendente | Site + LPs (incl. Elite). |
| adventure | Root Directory | `apps/core/adventure` |  |  | Pendente |  |
| adventure | Branch produção | `main` |  |  | Pendente |  |
| adventure | Rotas site | `/`, `/landing`, `/landingpage`, Elite (slugs) |  |  | Pendente | Martech LPs + home no apex. |
| adventure | Domínio alvo | `adventurelabs.com.br/` (apex) |  |  | Pendente | Mesmo deploy para todas as rotas acima. |
| young-talents | Repositório canônico | `adventurelabsbrasil/young-talents` |  |  | Pendente | Deploy pelo **repo do submódulo** (preferência Founder). |
| young-talents | Root Directory | `.` |  |  | Pendente |  |
| young-talents | Domínio alvo | `young.adventurelabs.com.br` |  |  | Pendente | Padrão tenant. |
| benditta | Repositório canônico | `adventurelabsbrasil/adventure-labs` |  |  | Pendente | Sem submódulo; Root `apps/clientes/benditta/app`; build monorepo pnpm. |
| benditta | Domínio alvo | `benditta.adventurelabs.com.br` |  |  | Pendente | Padrão tenant. |
| lidera-space | Repositório canônico | `adventurelabsbrasil/lidera-space` |  |  | Pendente | Deploy pelo repo do submódulo. |
| lidera-space | Root Directory | `.` |  |  | Pendente |  |
| lidera-space | Domínio alvo | `lidera.adventurelabs.com.br/space` |  |  | Pendente | LMS; rewrites no host `lidera.*`. |
| lidera-skills | Repositório canônico | `adventurelabsbrasil/lidera-skills` |  |  | Pendente | Deploy pelo repo do submódulo. |
| lidera-skills | Root Directory | `.` |  |  | Pendente |  |
| lidera-skills | Domínio alvo | `lidera.adventurelabs.com.br/skills` |  |  | Pendente | RH; entregue. |
| lidera-flow | Repositório canônico | `adventurelabsbrasil/lidera-flow` *(confirmar)* |  |  | Pendente | Repo **distinto** de space e skills. |
| lidera-flow | Root Directory | `.` |  |  | Pendente |  |
| lidera-flow | Domínio alvo | `lidera.adventurelabs.com.br/flow` |  |  | Pendente | Mesmo subdomínio `lidera.*` que space/skills; path `/flow`. |
| lidera-gateway | Papel | Projeto **porta** — domínio `lidera.adventurelabs.com.br` + `vercel.json` rewrites → space/skills/flow |  |  | Pendente | **Quarto** projeto Vercel; sem app de negócio duplicada; ver secção *Lidera — projeto porta*. |
| rose | Domínio alvo (futuro) | `rose.adventurelabs.com.br` |  |  | Pendente | Padrão tenant; sem app listado na matriz ainda. |
| capclear | Domínio alvo (futuro) | `capclear.adventurelabs.com.br` |  |  | Pendente | Idem. |
| speed | Domínio alvo (futuro) | `speed.adventurelabs.com.br` |  |  | Pendente | Idem. |
| altemir | Domínio alvo (futuro) | `altemir.adventurelabs.com.br` |  |  | Pendente | Cliente; app a mapear na matriz quando existir. |

Regras de fechamento:

- Só mudar status da matriz executiva para `Em provisionamento` após aprovação dos itens provisórios do projeto.
- Em caso de divergência estrutural (repo dedicado vs monorepo), abrir/atualizar ADR e referenciar em `Observações`.

Legenda de status:

- `Planejado`: mapeado, ainda não criado na Vercel.
- `Em provisionamento`: criação/configuração em andamento.
- `Ativo`: projeto criado, domínio/HTTPS ok, último deploy `Ready`.
- `Congelado`: existe, sem evolução ativa.
- `Descontinuado`: retirado de operação.
