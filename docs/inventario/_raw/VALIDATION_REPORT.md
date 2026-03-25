# VALIDATION_REPORT — Auditoria Wiki Corporativa

Data da auditoria: 2026-03-25  
Escopo: `docs/WIKI_CORPORATIVO_INDEX.md` + módulos `M01` a `M12`  
Status da execução: concluída em sequência (`V01` → `V08`)

## 1) Score geral

- **Checks aprovados:** 166
- **Total de checks:** 166
- **Score final:** **100,00%**
- **Classificação:** **APROVADO para merge** (>= 80%)

### Critério de score utilizado

- `V01`: 12 módulos x 9 campos obrigatórios = 108 checks.
- `V02`: 1 check (referências quebradas no padrão solicitado).
- `V03`: 1 check (vazamento de valor na coluna `valor` do M04).
- `V04`: 12 checks (12 blocos `RAW:` do `RAW_DATA.md` cobertos em módulos).
- `V05`: 6 checks (entidades-chave auditadas para consistência nominal).
- `V06`: 12 checks (contagem de pendências registrada por módulo).
- `V07`: 16 checks (16 links `.md` no INDEX resolvidos para arquivo existente).
- `V08`: 12 checks (presença da seção "Como atualizar este módulo" em M01..M12).

---

## 2) Resultados por validação

## V01 — Cabeçalhos obrigatórios

Campos obrigatórios: `module`, `title`, `ssot`, `owner`, `updated`, `version`, `apps_scope`, `review_sla`, `sources`

| módulo | module | title | ssot | owner | updated | version | apps_scope | review_sla | sources |
|---|---|---|---|---|---|---|---|---|---|
| M01 | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| M02 | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| M03 | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| M04 | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| M05 | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| M06 | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| M07 | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| M08 | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| M09 | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| M10 | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| M11 | OK | OK | OK | OK | OK | OK | OK | OK | OK |
| M12 | OK | OK | OK | OK | OK | OK | OK | OK | OK |

**Resultado V01:** 108/108 checks.

## V02 — Referências cruzadas ("ver módulo MXX")

- Ocorrências encontradas no padrão `ver módulo MXX`: **0**.
- Referências quebradas: **nenhuma**.

**Resultado V02:** 1/1 check.

## V03 — Envs sem valores (M04)

- Auditoria da seção de envs do `M04` concluída.
- Nenhuma célula da coluna `valor` contém dado real.
- Valores permanecem mascarados (ex.: `` `[oculto]` ``).

**Resultado V03:** **OK** (1/1 check).

## V04 — Cobertura do RAW_DATA

Comparação entre os 12 blocos `## RAW: ...` de `docs/inventario/_raw/RAW_DATA.md` e a cobertura temática em M01..M12:

| item do RAW_DATA | cobertura em módulos | status |
|---|---|---|
| Estrutura de diretórios | M01/M09 | OK |
| Apps e packages | M02 | OK |
| Rotas HTTP | M02 | OK |
| Variáveis de ambiente | M04 | OK |
| Tabelas e schemas Supabase | M03 | OK |
| Agentes, skills e tools | M05 | OK |
| Workflows e automações | M06 | OK |
| MCPs e CLIs | M05 | OK |
| Integrações terceiras | M07 | OK |
| Arquivos de mídia e assets | M09 | OK |
| Scripts registrados | M02 | OK |
| Domínios e subdomínios | M08 | OK |

- Itens do RAW sem documentação em módulos: **nenhum**.

**Resultado V04:** 12/12 checks.

## V05 — Consistência de nomes

Validações executadas e consistentes:

1. `lidera-space` (canônico com alias legado documentado).
2. `young-talents` (app/path) e `young_talents` (schema SQL) sem conflito.
3. `Supabase` consistente entre M03/M04/M07.
4. `n8n` consistente entre M06/M07/M08.
5. `Asana` consistente entre M05/M06/M07.
6. `Wix` consistente entre M07/M08.

**Resultado V05:** 6/6 checks.

## V06 — Pendências abertas

Contagem de itens marcados explicitamente como `[PENDENTE]` ou `[NÃO ENCONTRADO]` por módulo:

| módulo | pendências |
|---|---:|
| M01 | 0 |
| M02 | 0 |
| M03 | 0 |
| M04 | 0 |
| M05 | 0 |
| M06 | 0 |
| M07 | 0 |
| M08 | 0 |
| M09 | 0 |
| M10 | 0 |
| M11 | 0 |
| M12 | 0 |

Total de pendências explícitas em M01..M12: **0**.

**Resultado V06:** 12/12 checks.

## V07 — Links do INDEX

Arquivo auditado: `docs/WIKI_CORPORATIVO_INDEX.md`

- Links `.md` detectados no INDEX: **16**
- Links quebrados: **0**

**Resultado V07:** **OK** (16/16 checks).

## V08 — Módulos sem "Como atualizar"

- Módulos faltando a seção `Como atualizar este módulo`: **nenhum**.

**Resultado V08:** 12/12 checks.

---

## 3) Lista priorizada de correções necessárias antes do merge

- Nenhuma correção bloqueante identificada nesta rodada.

---

## 4) Melhorias opcionais (MVP+1)

- Automatizar V01/V07/V08 em CI para prevenção de regressão documental.
- Transformar V06 em métrica semanal automática por módulo.
- Adicionar validação semântica para referências cruzadas além do padrão literal `ver módulo MXX`.

---

## Decisão final de aprovação

- **Score final:** 100,00%
- **Status:** **APROVADO para merge**
