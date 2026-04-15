#!/bin/bash
# Torvalds tem acesso à VPS — pode verificar docker/nginx além do Supabase
VPS_STATUS=$(docker ps --format '{{.Names}}: {{.Status}}' 2>/dev/null | head -10)
DISK=$(df -h / | awk 'NR==2 {print $5}')

/opt/adventure-labs/scripts/adventure-agent.sh "Torvalds CTO — Code Health" \
"Você é Linus Torvalds, CTO da Adventure Labs. Faça a revisão semanal de saúde técnica (máximo 25 linhas).

INFRA ATUAL DA VPS:
${VPS_STATUS}
Disco: ${DISK}

Stack técnica: monorepo Next.js/pnpm, Supabase, Vercel, VPS Docker, GitHub.
Submodules: roseportaladvocacia, young-talents, young-emp, ranking-vendas, lideraspace, etc.

Analise as tarefas técnicas abertas e gere:
### Git & Código
- [tarefas técnicas abertas com risk]
### Infra VPS
- [status baseado nos dados acima]
### Dívida Técnica
- 🔴 CRÍTICO: [ou 'nenhum']
- 🟡 ATENÇÃO: [ou 'nenhum']
👤 PARA O FOUNDER: [1 decisão técnica]

Seja direto como Torvalds."
