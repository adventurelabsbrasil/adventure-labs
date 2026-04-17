# xpostr — Arquivado

**Arquivado em:** 2026-04-17
**Motivo:** Rate limit Vercel (Hobby tier, 100 deploys/24h) com 3 projetos apontando para o mesmo código. Renascer quando houver foco.

---

## O que é

Automação de publicação programada em **X (Twitter) + Threads**, com ideação via LLM, fila de posts, quotas por persona e publicação via API oficial.

**Visão:** "Voz pública automatizada da Adventure Labs e clientes — geração de conteúdo com LLM + agendamento + métricas."

## Código-fonte (preservado)

| Caminho | Conteúdo |
|---------|---------|
| `apps/labs/xpostr/` | Next.js app completo (src, supabase migrations, package.json) |
| `apps/labs/xpostr/MVP_ADVENTURE_LABS-Xpostr.md` | Spec MVP (56 KB) |
| `apps/labs/xpostr/docs/` | Agendamento cron, especificação técnica, LLM cota, X publicação |
| `knowledge/03_PROJETOS_INTERNOS/xpostr/PLANO_VOZ_PUBLICA.md` | Estratégia de voz pública |
| `workflows/n8n/xpostr/xpostr-gemini-test-v1.json` | Workflow n8n de teste Gemini |

## Projetos Vercel desativados (2026-04-17)

- `xpostr` (canônico)
- `adventure-xpostr` (duplicata)
- `adventure-labs-xpostr` (duplicata)

## Stack técnica

- **Frontend:** Next.js + Tailwind
- **Backend:** Supabase (migrations em `apps/labs/xpostr/supabase/`)
- **LLM:** Gemini (workflow n8n de teste) — roteamento pelo LLM_ROUTING.md
- **Agendamento:** cron (ver `docs/AGENDAMENTO_CRON.md`)
- **APIs:** X/Twitter API v2, Threads API

## Como renascer

1. Escolher UM projeto Vercel canônico (sugestão: `xpostr`)
2. Reconectar no Vercel com rootDirectory = `apps/labs/xpostr`
3. Configurar envs conforme `.env.example`
4. Aplicar migrations Supabase
5. Importar workflow n8n

## Referências de pensamento

- Issue/PR: nenhum no momento do arquivamento
- Análise estratégica: ver `_internal/relatorio-estrategico-2026-04-16.md` se existir menção
