# Projetos Arquivados

> Projetos que foram desativados do deploy automático (Vercel, etc) mas cujo código e documentação são preservados no repo para referência futura ou revival.

## Regra

Um projeto entra aqui quando:
1. Não está em produção ativa
2. Consumia recursos de deploy (Vercel rate limit, CI minutes)
3. Tem valor estratégico futuro (pode renascer) OU valor histórico (documentar o que foi)

## Projetos

| Nome | Status | Código-fonte no repo | Pode renascer? |
|------|--------|---------------------|----------------|
| [xpostr](./xpostr.md) | Arquivado 2026-04-17 | `apps/labs/xpostr/` | ✅ Sim — automação X/Threads |
| [elite](./elite.md) | Arquivado 2026-04-17 | `apps/core/elite/` (vazio) | ✅ Sim — WorkOS plano Elite |

## Como reativar

1. Remover menção do projeto deste índice
2. Reconectar Git no Vercel (ou plataforma equivalente)
3. Verificar `.env.example` atualizado
4. Atualizar `CLAUDE.md` com status ativo
