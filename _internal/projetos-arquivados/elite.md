# elite — Arquivado

**Arquivado em:** 2026-04-17
**Motivo:** Pasta `apps/core/elite/` existe vazia há tempos, gerava projeto Vercel no ar consumindo quota de deploy sem nunca ter tido código.

---

## O que era (intenção original)

Workspace/serviço diferenciado para clientes que assinam o **plano Elite** da Adventure Labs. Ideia embrionária sem código escrito ainda.

**Conceito:**
- Área exclusiva para clientes premium
- Funcionalidades adicionais: dashboards personalizados, acesso prioritário a agentes C-Suite, relatórios customizados
- Separação de billing/permissionamento de LideraSpace ou app principal

## Estado atual no repo

- `apps/core/elite/` — diretório vazio (sem arquivos)

## Projeto Vercel desativado

- `elite` (Vercel) — desativado 2026-04-17

## Como renascer

1. Definir escopo mínimo (MVP) — qual a diferença concreta vs plano padrão?
2. Definir se é:
   - (a) Novo app Next.js standalone
   - (b) Feature-flag dentro do LideraSpace (preferível, menos infra)
3. Decidir pricing e positioning antes de escrever código
4. Recriar projeto Vercel quando houver código real

## Referência estratégica

- BHAG: "martech 99% autônoma e comunidade híbrida de soluções criativas"
- Plano Elite pode ser o canal para **demonstrar** o BHAG para clientes premium
