# Young Talents / Adventure Talents — produto interno Adventure Labs

**Atualização:** 2026-03-21

## Posicionamento

O ATS **Young Talents** (código em `apps/clientes/young-talents/plataforma`, espelho SQL/docs em `clients/04_young/young-talents`) passa a ser tratado como **ativo interno da Adventure Labs**: produto a **refinar e comercializar** (ex.: white-label, licenciamento, entrega para novos clientes), e não apenas como “só projeto do cliente” no sentido operacional de manutenção reativa.

A pasta continua sob `apps/clientes/` por **topologia do monorepo** ([ADR-0002](adr/0002-clients-submodule-vs-apps-clientes-workspace.md)); a **governança de produto e roadmap** é da Adventure.

## Fonte de verdade do código

| Uso | Caminho |
|-----|---------|
| App canónico (Vite, UI, scripts) | `apps/clientes/young-talents/plataforma/` |
| Migrations / espelho cliente | `clients/04_young/young-talents/` (alinhar com o app quando houver divergência) |
| Governança e histórico repo | [`docs/young-talents/CHANGELOG.md`](young-talents/CHANGELOG.md) |
| Deploy / Supabase / testes `/apply` | [`apps/clientes/young-talents/plataforma/docs/DEPLOY_VERCEL_E_CANDIDATOS.md`](../apps/clientes/young-talents/plataforma/docs/DEPLOY_VERCEL_E_CANDIDATOS.md) |

## Repositório externo (`adventurelabsbrasil/young-talents`)

Durante o incidente de **manutenção a partir de 17/mar/2026**, o repositório externo foi partilhado para permitir ajustes urgentes. Esse modo **encerra-se** como fluxo de trabalho preferido: **consolidar alterações no monorepo** `01_ADVENTURE_LABS` e tratar o GitHub externo como legado até arquivar ou arquivar acesso.

**Humano (Founder / GitHub):** revogar ou reduzir permissões no repo externo quando já não forem necessárias; não documentar tokens nem convites em Markdown.

## Fluxo Git (equipa + agentes Cursor)

- **Commits e push** no monorepo Adventure são o canal **normal** para correcções, issues técnicas e melhorias futuras do ATS (após `pnpm build` / lint onde aplicável e sem segredos).
- Registar trabalho relevante em [`BACKLOG.md`](BACKLOG.md) e, em marcos de acesso, uma linha em [`docs/young-talents/CHANGELOG.md`](young-talents/CHANGELOG.md).

## Relação com o cliente Young Empreendimentos

O cliente pode continuar a usar uma instância deployada; **roadmap de produto** e **priorização comercial do ativo** são decididos pela Adventure. Contratos e dados sensíveis permanecem fora do Git ([`security-sensitives`](../.cursor/rules/security-sensitives.mdc)).

## Ver também

- [OS Registry — mapa produto §8](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md)  
- [Manual IA — secção Young Talents](../MANUAL_IA_ADVENTURE_OS.md)  
- Wiki: `wiki/Young-Talents-ATS-Seguranca.md`
