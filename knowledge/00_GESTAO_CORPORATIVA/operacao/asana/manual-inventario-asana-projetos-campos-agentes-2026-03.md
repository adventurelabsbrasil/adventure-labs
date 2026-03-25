# Manual versionável do Asana — inventário de projetos, campos e protocolo de uso

> Atualizado em: 2026-03-24  
> Fonte: leitura via MCP Asana (`search_objects`, `get_project`)  
> Dono do processo: Founder + Comando Estelar (roteamento)  
> Objetivo: padronizar uso humano/agentes e preparar integração com automações

## 1) Objetivo operacional

Este manual define:

- para que serve cada projeto do Asana;
- quais campos personalizados existem e quando usar;
- como humanos e agentes devem criar, triar, rotear e executar tarefas;
- o contrato mínimo de dados para automações (n8n, agentes, relatórios).

Regra principal: **toda demanda entra no `Inbox`** e só depois é roteada para o projeto final.

## 2) Inventário de projetos (snapshot atual)

## Ativos

| Projeto | GID | Finalidade | Status |
|---|---:|---|---|
| Inbox | `1213744799182607` | Porta de entrada única de demandas (humano + IA) e roteamento | Ativo |
| Marketing | `1213709303845547` | Execução e acompanhamento de iniciativas de marketing | Ativo |
| Martech MVP | `1213709221981135` | Roadmap e execução de entregas do MVP martech | Ativo |
| ACORE — Plano & roadmap | `1213811323633178` | Planejamento tático do ACORE (fases de infraestrutura/produto) | Ativo |
| 01_YOUNG | `1213756022506816` | Operação do cliente Young | Ativo |
| 02_LIDERA | `1213756022506819` | Operação do cliente Lidera | Ativo |
| 03_ROSE | `1213756022506822` | Operação do cliente Rose | Ativo |
| 05_BENDITTA | `1213756022506825` | Operação do cliente Benditta | Ativo |
| Memória Whatsapp: integração com repositório, RAG / contexto — roadmap | `1213788734243886` | Backlog estratégico de memória/contexto WhatsApp | Ativo |

## Arquivados

| Projeto | GID | Observação |
|---|---:|---|
| Comando Estelar | `1213754299190779` | Arquivado; não usar como entrada de novas demandas |
| Assessoria Martech 2026T2 | `1213709221981066` | Arquivado; contém campos legados de mídia/orçamento |

## 2.1) Redundâncias detectadas e diretriz ACORE

### Redundâncias de projeto (risco de retrabalho)

- `Inbox` já cobre captura e triagem; criar demandas diretamente em projetos finais sem roteamento duplica contexto.
- `ACORE — Plano & roadmap` e `Martech MVP` podem receber temas similares; usar o critério abaixo para não duplicar cards.
- Projeto arquivado `Comando Estelar` ainda aparece em histórico; não deve receber item novo.

### Regra de decisão (fonte única)

1. **Entrada sempre no Inbox** (`Entrada`) para toda nova demanda humano/agente.
2. Se for **execução de entrega** (campanha, LP, operação), rotear para projeto de execução (`Marketing`, `Martech MVP`, cliente).
3. Se for **governança de fases/decisão ACORE**, manter no projeto `ACORE — Plano & roadmap` e referenciar o card de execução (link cruzado), sem duplicar checklist.
4. Se um card já existe em outro projeto, criar no máximo **1 card mestre** e usar subtarefa/comentário para vínculo, nunca clonar título idêntico.

### Regra de campos para evitar duplicidade semântica

- `Prioridade Técnica` é o campo canônico; evitar uso operacional de `Prioridade (legado)`.
- `Status` deve ser representado por seção/fluxo do projeto; evitar manter dois status concorrentes (campo + seção).
- Quando `Nível de Projeto = Cliente`, `Cliente` é obrigatório; sem isso, manter no `Inbox`.

## 3) Campos personalizados (catálogo único)

Campos identificados nos projetos ativos e legados:

| Campo | GID | Tipo | Onde aparece | Uso esperado |
|---|---:|---|---|---|
| Nível de Projeto | `1213784416863724` | Enum | Inbox, Marketing, Martech MVP | Classificar escopo (`Labs`, `Core`, `Cliente`) |
| C-Suite | `1213784532394929` | Enum | Inbox, Marketing, Martech MVP | Definir owner executivo do roteamento (`Founder`, `Comando Estelar`, `CTO`, `CFO`, `CMO`, `COO`, `CPO`) |
| Departamento | `1213784688270396` | Multi-enum | Inbox, Marketing, Martech MVP | Classificar domínio (ex.: `Marketing`, `Tecnologia`, `Operações`) |
| Cliente | `1213784559302671` | Reference | Inbox, Marketing, Martech MVP | Vincular tarefa ao cliente (registro de referência do Asana) |
| Prioridade Técnica | `1213784245674968` | Enum | Marketing, Martech MVP | Prioridade técnica (`Baixa`, `Média`, `Alta`, `Urgente`) |
| Responsável | `1213729202088748` | People | Marketing | Responsável operacional nominal |
| Prioridade (legado) | `1213709303845552` | Enum | Marketing | Campo histórico; evitar duplicidade com Prioridade Técnica |
| Status (legado) | `1213709303845557` | Enum | Marketing | Campo histórico; preferir status por seção/fluxo |
| Channel (legado) | `1213710561367637` | Enum | Assessoria Martech 2026T2 (arquivado) | Uso apenas para consulta histórica |
| Audience (legado) | `1213710561367660` | Enum | Assessoria Martech 2026T2 (arquivado) | Uso apenas para consulta histórica |
| Budget (legado) | `1213710771517388` | Number | Assessoria Martech 2026T2 (arquivado) | Uso apenas para consulta histórica |
| Actual spend (legado) | `1213710771517393` | Number | Assessoria Martech 2026T2 (arquivado) | Uso apenas para consulta histórica |
| Goal completion target (legado) | `1213710771517398` | Number | Assessoria Martech 2026T2 (arquivado) | Uso apenas para consulta histórica |

## Convenção recomendada (automação)

- **Obrigatórios no `Inbox`**: `C-Suite`, `Departamento`, `Nível de Projeto`.
- **Condicional**: `Cliente` obrigatório quando `Nível de Projeto = Cliente`.
- **Projeto de destino**: definido após triagem.

## 4) Protocolo de uso por humanos e agentes

## 4.1 Fluxo único (entrada → execução)

1. Criar tarefa no `Inbox` na seção `Entrada`.
2. Triar em `Triagem` preenchendo campos mínimos.
3. Rotear em `Roteamento` para projeto final.
4. Executar no projeto final respeitando o kanban local.
5. Atualizar evidências/links e concluir.

## 4.2 O que humanos devem fazer

- Criar títulos claros com formato: `Domínio: ação objetiva`.
- Preencher contexto mínimo no `notes` (o que, por que, dependências).
- Definir `C-Suite` e `Departamento` antes de mover para `Roteamento`.
- Se for cliente, preencher `Cliente` antes do roteamento.
- Evitar criar tarefas direto em projetos finais (exceto hotfix já roteado).

## 4.3 O que agentes devem fazer

- Escrever tarefas estruturadas e acionáveis (sem ambiguidade).
- Garantir campos mínimos para roteamento automatizado.
- Incluir dependências explícitas quando houver handoff entre times.
- Não usar projeto arquivado para captura de novos itens.
- Quando houver conflito de destino/campo, manter no `Inbox` e sinalizar para decisão do Founder.

## 5) Mapa de responsabilidade (owner padrão)

| Tipo de demanda | C-Suite sugerido | Projeto destino padrão |
|---|---|---|
| Estratégia geral Founder/Grove | Founder ou Comando Estelar | Inbox (até triagem) |
| Produto/Admin/arquitetura | CTO ou CPO | ACORE / Martech MVP |
| Marketing/campanhas | CMO | Marketing |
| Cliente Young | CPO (gerente de conta) | 01_YOUNG |
| Cliente Lidera | CPO (gerente de conta) | 02_LIDERA |
| Cliente Rose | CPO (gerente de conta) | 03_ROSE |
| Cliente Benditta | CPO (gerente de conta) | 05_BENDITTA |

## 6) Seções por projeto (resumo)

- `Inbox`: `Entrada` → `Triagem` → `Roteamento` → `Tratamento`.
- `Marketing`: `Backlog` → `A fazer` → `Em andamento` → `Em revisão` → `Aprovado` → `Monitoramento`.
- `Martech MVP`: `Ideação` → `I.Planejamento` → `II.Desenvolvimento` → `III.Configuração` → `IV.Execução` → `V.Análise e Otimização` → `Parking Lot`.
- Projetos de cliente (`01_YOUNG`, `02_LIDERA`, `03_ROSE`, `05_BENDITTA`): fluxo padrão kanban de cliente (`Backlog`, `A fazer`, `Em andamento`, `Em revisão`, `Aprovado`, `Monitoramento`).
- `ACORE — Plano & roadmap`: seções por fase (0 a 5) + backlog.

## 7) Contrato mínimo para automações (n8n/agentes)

Toda automação que cria tarefa deve enviar:

- `name` (título objetivo),
- `notes` com contexto e próximo passo,
- `project_id` inicial = `Inbox` (`1213744799182607`),
- `section_id` inicial = `Entrada` (`1213744799182608`),
- custom fields:
  - `C-Suite` (`1213784532394929`) com enum válido,
  - `Departamento` (`1213784688270396`) com pelo menos 1 valor,
  - `Nível de Projeto` (`1213784416863724`) com enum válido,
  - `Cliente` (`1213784559302671`) quando aplicável.

## Regras de validação recomendadas

- bloquear criação fora do `Inbox` para origens automáticas;
- bloquear `Nível de Projeto = Cliente` sem `Cliente` preenchido;
- bloquear roteamento para projeto arquivado;
- registrar `source` da automação no início do `notes`.

## 8) Governança e versionamento

- Este documento é versionado no Git e deve ser atualizado quando:
  - projeto novo for criado/arquivado,
  - campo personalizado for adicionado/removido,
  - regra de triagem/roteamento mudar.
- Frequência recomendada de revisão: semanal (ritual do Comando Estelar).
- Em conflitos de processo: aplicar regra de sobrescrita (Founder decide substituir/manter/mesclar).

## 9) Próximos ajustes sugeridos

1. Padronizar campos dos projetos de cliente para aceitar `C-Suite`, `Departamento`, `Nível de Projeto` e `Cliente`.
2. Desativar de vez o uso operacional do projeto `Comando Estelar` (arquivado) para evitar duplicidade.
3. Consolidar ou remover campos legados de `Marketing` (`Prioridade`, `Status`) após migração completa para o padrão novo.

## 10) V2 técnica para n8n (payloads prontos)

## 10.1 IDs de referência (produção atual)

- `Inbox` (project): `1213744799182607`
- `Entrada` (section Inbox): `1213744799182608`
- `Triagem` (section Inbox): `1213767418789303`
- `Roteamento` (section Inbox): `1213767418789302`
- `Tratamento` (section Inbox): `1213767418789304`

### Campos

- `C-Suite` (field): `1213784532394929`
  - Founder: `1213784532394930`
  - Comando Estelar: `1213784532394931`
  - CTO: `1213784532394932`
  - CFO: `1213784532394933`
  - CMO: `1213784559985266`
  - COO: `1213784559985267`
  - CPO: `1213784559985268`
- `Departamento` (field multi-enum): `1213784688270396`
  - Produto: `1213784688270397`
  - Comercial: `1213784688270398`
  - Marketing: `1213784688270399`
  - Operações: `1213784688270400`
  - Tecnologia: `1213784688270401`
  - Financeiro: `1213784688270402`
  - Pessoas: `1213784688270403`
  - Jurídico: `1213784688270404`
- `Nível de Projeto` (field): `1213784416863724`
  - Labs: `1213784416863725`
  - Core: `1213784416863726`
  - Cliente: `1213784416863727`
- `Cliente` (field reference): `1213784559302671`

## 10.2 Payload base (criação de tarefa no Inbox)

Exemplo para usar em automação que chama `create_tasks`:

```json
{
  "default_project": "1213744799182607",
  "tasks": [
    {
      "name": "Marketing: finalizar LP /martech e handoff para tráfego",
      "section_id": "1213744799182608",
      "notes": "[source:n8n/webhook] Contexto: ...\nPróximo passo: ...\nDependências: ...",
      "custom_fields": "{\"1213784532394929\":\"1213784559985266\",\"1213784688270396\":[\"1213784688270399\"],\"1213784416863724\":\"1213784416863726\"}"
    }
  ]
}
```

Observação importante:
- no MCP atual, `custom_fields` entra como string JSON;
- para campo multi-enum (`Departamento`), enviar array de option GIDs.

## 10.3 Payload de roteamento (mover para projeto final)

Exemplo para usar em `update_tasks` quando sair de `Roteamento`:

```json
{
  "tasks": [
    {
      "task": "TASK_GID",
      "add_projects": [
        {
          "project_id": "1213709303845547",
          "section_id": "1213709303845548"
        }
      ],
      "remove_projects": [
        "1213744799182607"
      ]
    }
  ]
}
```

No exemplo acima, a tarefa sai do `Inbox` e entra em `Marketing` na seção `A fazer`.

## 10.4 Matriz de roteamento (se X então Y)

| Condição (após triagem) | Projeto destino | Seção inicial |
|---|---|---|
| Departamento inclui `Marketing` e tema de campanha/mídia | `Marketing` (`1213709303845547`) | `A fazer` (`1213709303845548`) |
| Tema de produto martech/MVP (execução técnica de MVP) | `Martech MVP` (`1213709221981135`) | `I.Planejamento` (`1213709221981141`) |
| Tema de governança/fase ACORE | `ACORE — Plano & roadmap` (`1213811323633178`) | `Backlog` (`1213811262871274`) |
| Nível = Cliente e Cliente = Young | `01_YOUNG` (`1213756022506816`) | `A fazer` (`1213767453210632`) |
| Nível = Cliente e Cliente = Lidera | `02_LIDERA` (`1213756022506819`) | `A fazer` (`1213767418789280`) |
| Nível = Cliente e Cliente = Rose | `03_ROSE` (`1213756022506822`) | `A fazer` (`1213767418789288`) |
| Nível = Cliente e Cliente = Benditta | `05_BENDITTA` (`1213756022506825`) | `A fazer` (`1213767418789294`) |
| Contexto incompleto/ambíguo | `Inbox` (`1213744799182607`) | `Triagem` (`1213767418789303`) |

## 10.5 Regras de fallback para automação

1. Se faltar `C-Suite`, setar `Comando Estelar` por padrão.
2. Se faltar `Departamento`, setar `Operações` e manter em `Triagem`.
3. Se `Nível de Projeto = Cliente` sem `Cliente`, bloquear roteamento e comentar motivo.
4. Se destino estiver arquivado, manter no `Inbox` e comentar erro operacional.
5. Nunca criar tarefa nova em projeto arquivado.

