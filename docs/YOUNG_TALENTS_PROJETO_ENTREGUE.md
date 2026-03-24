# Young Talents ATS — projeto de cliente entregue (Young Empreendimentos)

**Atualização:** 2026-03-23

## Posicionamento

O ATS **Young Talents** (código em `apps/clientes/young-talents/plataforma`, espelho SQL/docs em `clients/04_young/young-talents`) está classificado como **projeto de cliente entregue**, sob propriedade da **Young Empreendimentos**.

A pasta permanece no monorepo por histórico técnico, handoff e eventuais ajustes de garantia/suporte acordados, sem caracterização de roadmap de produto interno Adventure.

## Fonte de verdade do código

| Uso | Caminho |
|-----|---------|
| App canónico (Vite, UI, scripts) | `apps/clientes/young-talents/plataforma/` |
| Migrations / espelho cliente | `clients/04_young/young-talents/` (alinhar com o app quando houver divergência) |
| Governança e histórico repo | [`docs/young-talents/CHANGELOG.md`](young-talents/CHANGELOG.md) |
| Deploy / Supabase / testes `/apply` | [`apps/clientes/young-talents/plataforma/docs/DEPLOY_VERCEL_E_CANDIDATOS.md`](../apps/clientes/young-talents/plataforma/docs/DEPLOY_VERCEL_E_CANDIDATOS.md) |

## Repositório externo (`adventurelabsbrasil/young-talents`)

Como a propriedade está com a Young Empreendimentos, o repositório externo deve ser tratado como referência de cliente e governado conforme o acordo entre as partes.

**Humano (Founder / GitHub):** manter permissões mínimas necessárias, sem registrar tokens, convites ou credenciais no Git.

## Fluxo Git (equipa + agentes Cursor)

- O monorepo Adventure mantém **histórico técnico** e documentação de referência do período de entrega.
- Novas evoluções estratégicas do produto devem seguir a governança da Young Empreendimentos.
- Se houver ajuste pontual em contexto de suporte, registrar em [`BACKLOG.md`](BACKLOG.md) e [`docs/young-talents/CHANGELOG.md`](young-talents/CHANGELOG.md).

## Relação com o cliente Young Empreendimentos

O cliente opera o sistema como proprietário. O monorepo da Adventure não define roadmap comercial do ATS. Contratos e dados sensíveis permanecem fora do Git ([`security-sensitives`](../.cursor/rules/security-sensitives.mdc)).

## Supabase (acesso compartilhado)

Mesmo com a propriedade do produto na Young Empreendimentos, o projeto Supabase do Young Talents permanece compartilhado com a Adventure Labs para atividades de suporte, diagnóstico técnico e continuidade de handoff quando solicitado.

## Ver também

- [OS Registry — mapa produto §8](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md)  
- [Manual IA — secção Young Talents](../MANUAL_IA_ADVENTURE_OS.md)  
- Wiki: `wiki/Young-Talents-ATS-Seguranca.md`
