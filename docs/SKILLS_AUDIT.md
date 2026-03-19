# Skills Audit — .cursor/skills

Data: 2026-03-19

## Resultado da varredura

- Pasta auditada: `.cursor/skills/`
- Estado atual: subpastas existem, porem **sem arquivos ativos** (`README.md`/`SKILL.md` ausentes).
- Referencias diretas a Clerk: **nenhuma encontrada** nos arquivos ativos dessa pasta (na pratica, nao ha arquivos para varrer).

## Itens marcados para exclusao (redundantes/obsoletos)

- `.cursor/skills/clientes/` (vazio)
- `.cursor/skills/comercial/` (vazio)
- `.cursor/skills/desenvolvimento/` (vazio)
- `.cursor/skills/gestao-corporativa/` (vazio)
- `.cursor/skills/marketing/` (vazio)
- `.cursor/skills/google-ads-specialist/` (vazio)
- `.cursor/skills/meta-ads-specialist/` (vazio)

## Justificativa tecnica

- Estrutura duplicada e sem conteudo executavel.
- Taxonomia de skills em uso real esta em `apps/admin/agents/skills/`.
- Padrao vigente do monorepo para auth/backend esta orientado a Next.js + Supabase Auth.
