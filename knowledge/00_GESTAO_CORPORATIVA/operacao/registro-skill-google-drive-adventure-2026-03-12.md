---
title: Registro — Skill Google Drive da Adventure (implementação)
domain: gestao_corporativa
tags: [skill, google-drive, coo, ohno, grove, csuite, conhecimento, admin]
updated: 2026-03-12
---

# Registro — Skill Google Drive da Adventure (implementação)

**Data:** 12/03/2026  
**Objetivo:** Registrar o que foi feito na implementação da skill de acesso ao Google Drive da Adventure (leitura e escrita), owner COO (Ohno), e o que permanece pendente para o C-Suite.

---

## O que foi feito

### 1. Documento de plano

| Artefato | Local |
|----------|--------|
| Plano | `apps/admin/docs/PLANO_SKILL_GOOGLE_DRIVE_ADVENTURE.md` |

- Objetivo, escopo (leitura/escrita), personas (Founder, Grove, C-Level, n8n/Railway), segurança, fases de implementação e referência à API futura.

### 2. Skill no admin

| Artefato | Local |
|----------|--------|
| Skill | `apps/admin/agents/skills/google-drive-adventure/SKILL.md` |

- **Owner:** COO (Ohno). **Persona:** Drive. **Role:** Curador de Documentos Google Drive da Adventure.
- Seções: Objetivo, Quando usar, Input esperado, Passos, Output esperado, Critérios de revisão.
- Regra de sobrescrita aplicável (protocolo Grove); referência ao plano em `docs/`.

### 3. Ajustes nos agentes e no catálogo

| Artefato | Alteração |
|----------|-----------|
| `apps/admin/agents/grove_ceo.md` | Inclusão na seção **Delegação ao C-Suite**: consultar/atualizar documentos no Google Drive da Adventure → Ohno (COO), skill `google-drive-adventure`; Grove pode acionar em uso pontual; escrita segue protocolo de sobrescrita. |
| `apps/admin/packages/ai-core/personas/ohno_coo.md` | Nova responsabilidade e linha na tabela **SKILLS ASSOCIADAS** para `google-drive-adventure` (leitura/escrita no Drive; regra de sobrescrita). |
| `apps/admin/agents/skills/README.md` | Nova linha no catálogo **COO (Ohno)**: `google-drive-adventure \| Drive \| Curador de Documentos Google Drive da Adventure`. |

---

## O que falta (próximos passos)

| Fase | Descrição | Responsável |
|------|-----------|-------------|
| API read-only | Implementar rotas `GET /api/gdrive/list` e `GET /api/gdrive/document?id=...` no Admin; credenciais em env (Vercel/Railway). | CTO / dev |
| API write | Implementar `POST /api/gdrive/document` (criar/atualizar) com regra de conflito (409 + corpo existente). | CTO / dev |
| Credenciais e vault | Documentar em `_internal/vault` onde guardar chaves GDrive; configurar variáveis no Vercel. | Ops / Founder |
| Doc n8n/Railway | Seção "Acesso ao Google Drive" em doc de workflows (endpoints, `x-admin-key`, exemplos de nó HTTP). | Quando API existir |
| reference.md (opcional) | IDs de pastas raiz do Drive, convenções de nomes e limites em `agents/skills/google-drive-adventure/reference.md`. | Ohno / Founder |

---

## Referências

- Plano completo: `apps/admin/docs/PLANO_SKILL_GOOGLE_DRIVE_ADVENTURE.md`
- Skill: `apps/admin/agents/skills/google-drive-adventure/SKILL.md`
- Grove: `apps/admin/agents/grove_ceo.md` (delegação Drive → Ohno)
- Ohno: `apps/admin/packages/ai-core/personas/ohno_coo.md` (skill na tabela)
