# Reference — material auxiliar para o Claude Code

Pasta onde anexar arquivos de referência que o Claude precisa ler durante a missão (PDFs, screenshots, exports). Vive no git para ficar versionado com o código, mas a ideia é que cada arquivo seja efêmero: descartar após uso (ou migrar para Drive se for asset permanente do cliente).

## Convenção de nomes

- `looker_atual_YYYY-MM-DD.pdf` — export do relatório Looker Studio atual (Sheets como fonte)
- `looker_novo_YYYY-MM-DD.pdf` — export do relatório novo após a migração (para auditoria de paridade)
- `screenshot_<elemento>_YYYY-MM-DD.png` — prints de elementos do report quando descrição textual não basta

## Como subir (modo nuvem, sem terminal local)

### Opção A — GitHub web UI (recomendada, 1 clique)

1. Abrir o browser neste link:
   https://github.com/adventurelabsbrasil/adventure-labs/upload/claude/migrate-looker-supabase-1DHBz/apps/clientes/04_young/pingostudio/reference
2. Arrastar o PDF na área "Drag files here"
3. Commit message: `docs(pingostudio): PDF do Looker atual para remap`
4. Radio "Commit directly to the `claude/migrate-looker-supabase-1DHBz` branch"
5. "Commit changes"

Na próxima sessão do Claude Code, eu dou `git pull` e leio o PDF direto do filesystem.

### Opção B — Via Buzz (Telegram)

Mandar o PDF no grupo do `ceo_buzz_Bot`. Buzz baixa, move para `apps/clientes/04_young/pingostudio/reference/` na VPS, commita e pusha na branch `claude/migrate-looker-supabase-1DHBz`.

(Requer o Buzz ter handler de mídia + auth de write no repo — atualmente Buzz faz commits via gh CLI com o token do Founder, ok.)

## Limites e cuidados

- **Tamanho**: PDF ideal < 10 MB. Se passar, usar Drive ou Supabase Storage e linkar aqui via markdown.
- **Conteúdo sensível**: se o report contém métricas confidenciais da Young (valores R$, leads com nome), o repo é privado (`adventurelabsbrasil/adventure-labs`) — OK. Se fosse público, mandaríamos para Drive.
- **Pós-uso**: após o Claude concluir a Fase 4 (remap dos fields), o PDF pode ser removido deste diretório num commit de limpeza (`git rm reference/looker_atual_*.pdf`). A história fica no git, mas HEAD fica enxuto.

## Estado atual

- [ ] `looker_atual_2026-04-13.pdf` — aguardando upload
