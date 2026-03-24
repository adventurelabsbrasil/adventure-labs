# Manual IA / Cursor — Adventure OS

**Idioma:** respostas e documentação em **pt-BR**; inglês na camada técnica do código (nomes, APIs, libs). Regra: [`.cursor/rules/adventure-locale-pt-br.mdc`](../.cursor/rules/adventure-locale-pt-br.mdc).

## Bootstrap de sessão (ordem sugerida)

1. [`knowledge/06_CONHECIMENTO/os-registry/INDEX.md`](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md) — **onde está cada coisa**  
2. [`AGENTS.md`](../AGENTS.md) — identidade, skills, sigilo  
3. [`protocolo-grove-roteamento.md`](../knowledge/06_CONHECIMENTO/protocolo-grove-roteamento.md) — GTD, perguntas se ambíguo, distribuição WorkOS / C-Suite / técnico  
4. Se stack ou fases: [`ACORE_CONSTITUTION.md`](../ACORE_CONSTITUTION.md), [`ACORE_ROADMAP.md`](ACORE_ROADMAP.md)

**Retomar programa / fases:** bloco pronto em [`PLANO_ADVENTURE_OS_UNIFICADO.md`](PLANO_ADVENTURE_OS_UNIFICADO.md) (*Retomar no Cursor*).  
**Braindump + `@`:** com ficheiros em `docs/braindump/`, aplica-se a regra [`.cursor/rules/adventure-braindump-triage.mdc`](../.cursor/rules/adventure-braindump-triage.mdc).

## Antes de propor path ou criar ficheiro

- Consultar **INDEX**; não duplicar `docs/` vs `knowledge/` sem critério ([política no INDEX §2](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md)).  
- **Demanda só “empresa”** (comercial, RH, processo): apontar `knowledge/NN_*` + Asana; não criar pasta na raiz *ad hoc*.

## Pull requests

- [ ] Atualizei [`os-registry/INDEX.md`](../knowledge/06_CONHECIMENTO/os-registry/INDEX.md) se adicionei MCP, workflow, app, skill, runbook relevante.  
- [ ] Decisão **estrutural** (SSOT, repos, tenant): [`docs/adr/`](adr/README.md) + INDEX na mesma linha de raciocínio.  
- [ ] Respeitei [security-sensitives](../.cursor/rules/security-sensitives.mdc) e redlines de agentes.  
- [ ] Multitenant: filtros `tenant_id` / RLS nas consultas Supabase.

## Validação técnica (quando aplicável)

- `./tools/scripts/typecheck-workspaces.sh`  
- `./tools/scripts/lint-workspaces.sh`  
- `./tools/scripts/test-workspaces.sh`
- Para contexto de segurança Supabase (roles/RLS/advisories), consultar:
  - [`docs/RELATORIO_ROLES_E_SECURITY_ADVISOR_ADVENTURELABSBRASIL.md`](RELATORIO_ROLES_E_SECURITY_ADVISOR_ADVENTURELABSBRASIL.md)
  - `apps/clientes/young-talents/plataforma/docs/RELATORIO_ROLES_E_SECURITY_ADVISOR.md`

## Fase 2 (opcional)

- Manifestos YAML: [`knowledge/06_CONHECIMENTO/os-registry/manifests/README.md`](../knowledge/06_CONHECIMENTO/os-registry/manifests/README.md)  
- Links: [`tools/scripts/validate-registry-links.sh`](../tools/scripts/validate-registry-links.sh)

## Young Talents / Adventure Talents (ATS)

- Tratar como **projeto de cliente entregue** (propriedade Young Empreendimentos): [`docs/YOUNG_TALENTS_PROJETO_ENTREGUE.md`](YOUNG_TALENTS_PROJETO_ENTREGUE.md).  
- Monorepo mantém histórico técnico/handoff em `apps/clientes/young-talents/plataforma/`; não assumir roadmap comercial interno.  
- **Supabase compartilhado:** a Adventure mantém acesso ao projeto Supabase do Young Talents para suporte e diagnóstico quando necessário.  
- Histórico de acesso/repo: [`docs/young-talents/CHANGELOG.md`](young-talents/CHANGELOG.md).

---

*Humano: [`MANUAL_HUMANO_ADVENTURE_OS.md`](MANUAL_HUMANO_ADVENTURE_OS.md).*
