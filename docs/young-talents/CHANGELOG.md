# Young Talents — histórico operacional (governança Git)

Registro de decisões sobre **repositório**, **acesso** e **fluxo de contribuição**. Complementa o changelog técnico do app em `apps/clientes/young-talents/plataforma`.

---

## 2026-03-21 — Produto interno Adventure; monorepo como SSOT; fim do fluxo emergencial externo

- O ATS **Young Talents** é **projeto entregue** para a Young Empreendimentos. Ver [`docs/YOUNG_TALENTS_PROJETO_ENTREGUE.md`](../YOUNG_TALENTS_PROJETO_ENTREGUE.md).
- **Fonte de verdade do código:** monorepo **`01_ADVENTURE_LABS`** (`apps/clientes/young-talents/plataforma` + espelho `clients/04_young/young-talents`). Equipa e agentes Cursor: **commit e push** aqui para correcções, issues e melhorias (sem credenciais no Git).
- O repositório **`adventurelabsbrasil/young-talents`** deixa de ser o canal preferido após o período de **manutenção emergencial** (incidentes desde 17/mar/2026). Consolidar mudanças no monorepo; no GitHub, **rever permissões** de colaboradores externos quando já não forem necessárias.

## 2026-03-23 — Correção de governança: propriedade Young Empreendimentos

- Status oficial atualizado: o ATS **não é produto interno da Adventure**; é **projeto entregue** e sob propriedade da **Young Empreendimentos**.
- O monorepo da Adventure mantém histórico técnico e documentação de handoff, sem assumir roadmap comercial do produto.
- Referência atualizada em [`docs/YOUNG_TALENTS_PROJETO_ENTREGUE.md`](../YOUNG_TALENTS_PROJETO_ENTREGUE.md).

## 2026-03-20 — Acesso privado e contribuição via fork *(período encerrado — ver 2026-03-21)*

- Registo histórico: repositório tratado como privado; colaborador externo com fluxo de fork/PR para corrigir erros pós-manutenção.
- **Estado atual:** substituído pelo fluxo do monorepo (secção acima).

---

## Ver também

- [`docs/YOUNG_TALENTS_PROJETO_ENTREGUE.md`](../YOUNG_TALENTS_PROJETO_ENTREGUE.md)
- Modelo de segurança (RLS, staff): `wiki/Young-Talents-ATS-Seguranca.md` (raiz do monorepo).
- SQL de diagnóstico: `docs/young-talents/sql/README.md`.
