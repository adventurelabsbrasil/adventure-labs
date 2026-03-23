# M01 — Estrutura, fluxo e arquitetura

**Estado:** rascunho adotado para execução (versão do programa em `../VERSION`).  
**Objetivo do módulo:** definir formato de trabalho, governança e estrutura operacional — não o produto Martech em si.

## 1. Escopo e north star

- Operação Martech em **camadas**, com evolução contínua de agentes, MCP, CLI, tools, skills e personas.
- **Atores humanos (inicial):** Rodrigo Ribas (founder); Igor Ribas (design gráfico e apoio a marketing).
- **IA:** evolui conforme necessidade; nenhuma IA é acionada sem **skills** e **escopo** alinhados ao projeto; cada agente pode ter **motor/modelo prioritário** documentado.

## 2. Portfólio de trabalho

Três trilhos:

1. **Core** — projetos internos Adventure.  
2. **Clientes** — multi-tenant.  
3. **Labs** — laboratório e experimentação.

## 3. Fonte da verdade (SSOT) por tipo

| Tipo | Canônico |
|------|----------|
| Tarefa acionável com prazo | **Asana** |
| Email | **Informa** (contexto/gatilho), não SSOT de tarefa |
| Decisões e registro operacional no repo | **`knowledge/`** |
| Contexto longo de cliente | **`knowledge/`** |
| Documentação extensa / material “vivo” | **Docs** (Drive etc.), com ponte no `knowledge/` quando necessário |

## 4. Captura (inbox GTD)

- **Asana** — inbox / projeto de captura.  
- **Bot Telegram** — pode **criar card novo** **ou** **comentar** em projeto/card existente.  
- Regra operacional: a triagem deve decidir encaixe em fila nova vs. trabalho já existente.

## 5. Camadas do fluxo (confirmadas)

1. **Captura**  
2. **Triagem** (CEO IA)  
3. **Roteamento** (C-Suite + skills / subagentes)  
4. **Execução operacional** (agentes, Cursor, ferramentas)  
5. **Pós-produção IA (4b)** — ver secção 7  
6. **Revisão humana** (kanban Asana)  
7. **Registro** (`knowledge/` + Docs)  
8. **Métricas / ROI** — evolução (projetos smart, custo-benefício)

## 6. CEO IA e hierarquia de IA

- **CEO IA:** persona **única**, **orquestrador central** entre o **C-Suite**.  
- **C-Suite:** C-levels com **subagentes ou skills**; **agentes operacionais** abaixo.  
- **Escalamento em dúvidas (loop-back e classificação):**  
  - **C-Suite que supervisionou** a frente, **consultando manuais** (`knowledge/`, regras no repo).  
  - Em dúvida → **CEO IA**.  
  - CEO IA em dúvida → **humano**.

## 7. Pós-produção IA (4b)

**Obrigatório** quando:

- **Sensível** — conforme [checklist automática](../artefatos/checklist-sensivel.md) (qualquer item 1–7 = sim), **ou**  
- **Transformação de pipeline** — ideia, subprojeto ou subtarefa vira **algo novo** na pipeline (novo pacote de trabalho / trilho).

**Não** obrigatório por “sensível” quando a checklist inteira indica exceção **labs** (pergunta 8), desde que 1–7 sejam todas **não** e não haja reformulação de pipeline.

## 8. Validação humana (gates)

O humano prioriza **descarregar** ideias e demandas num único lugar; a máquina organiza e executa onde couber.

**Validação humana obrigatória para:**

- Publicação final.  
- Itens sensíveis em código.  
- Violação de regras ou políticas.  
- **Qualquer contato com externos** (cliente ou não).

**Autorização de publicação (Rodrigo e Igor):** pode ser feita **apenas** por **movimento/aprovação no kanban Asana** (estados/colunas exatos ficam para definição do CEO IA quando o C-Suite estiver maduro).

## 9. Regras fixas vs flexíveis

- **Fixas** no repositório (constituição técnica, segurança, RLS/multitenant, políticas).  
- **Flexíveis** em Docs, com mapa no repo apontando “onde está a política X”.

## 10. Riscos prioritários (red lines)

1. Vazamento **multi-tenant** entre clientes.  
2. **Credenciais / segredos** em código ou fora de vault.  
3. **Decisões ou contato externo** sem validação humana explícita.

## 11. Cursor e monorepo

- Um **workspace** no monorepo principal é o padrão sugerido; paths e regras por trilho (**core / clientes / labs**) disciplinam contexto.  
- **Definição literal de “labs”** para o atalho da checklist: manter alinhada a pastas/tags de projeto (ex.: `apps/labs/*`, tag Asana `labs`) — detalhar no playbook Asana quando existir.

## 12. CI / deploy / pipes

- Estado **“após aprovação humana”** pode incluir passos automáticos (CI) que falham e **reabrem** trabalho — a definir por projeto.  
- **Pipes exclusivas** ou **subrepos** para projetos novos: hipótese em aberto; decisão documentada por projeto ao onboardar.

## 13. Artefatos deste módulo

- [Diagrama principal](../artefatos/diagrama-fluxo-principal.md)  
- [Checklist sensível](../artefatos/checklist-sensivel.md)  
- [RACI mínimo](../artefatos/raci-minimo.md)

## 14. Próximos módulos (fora de M01)

- Stack inicial, ROI, skills/MCP como catálogo com critério econômico.  
- Rituais de equipe após desenho final de agentes e papéis humanos.
