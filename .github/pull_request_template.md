## Objetivo do PR

- [ ] Mudança principal descrita com contexto
- [ ] Impacto esperado informado (produto, operação, docs, dados)

## Checklist Wiki Corporativa (obrigatório quando aplicável)

### Escopo de atualização
- [ ] Este PR altera apenas código sem impacto em documentação SSOT
- [ ] Este PR altera documentação e atualiza o módulo SSOT correto (`M01`..`M12`)
- [ ] Este PR altera múltiplos domínios e atualiza todos os módulos donos, sem duplicação

### Regras de qualidade
- [ ] Frontmatter obrigatório presente nos módulos alterados (`module`, `title`, `ssot`, `owner`, `updated`, `version`, `apps_scope`, `review_sla`, `sources`)
- [ ] Seção `Como atualizar este módulo` presente e atualizada
- [ ] Nenhum valor real de env foi documentado (apenas `[oculto]` ou `••••••`)
- [ ] Links do `docs/WIKI_CORPORATIVO_INDEX.md` continuam válidos
- [ ] Itens sem evidência marcados como `a mapear` ou `não evidenciado no escopo atual`

### Validação automatizada
- [ ] Executei `./tools/scripts/validate-wiki-corporativo.sh`
- [ ] Score final >= 80%

## Evidências

- Relatório de validação: `docs/inventario/_raw/VALIDATION_REPORT.md`
- Módulos tocados:
  - [ ] `M01`
  - [ ] `M02`
  - [ ] `M03`
  - [ ] `M04`
  - [ ] `M05`
  - [ ] `M06`
  - [ ] `M07`
  - [ ] `M08`
  - [ ] `M09`
  - [ ] `M10`
  - [ ] `M11`
  - [ ] `M12`

## Riscos e rollback

- [ ] Riscos identificados e mitigação descrita
- [ ] Estratégia de rollback definida (se aplicável)
