# Young Empreendimentos — Handoff PINGOSTUDIO-264 (2026-04-13)

> Marco operacional: dashboard Looker Studio começa a migrar de Google Sheets para Supabase (`vvtympzatclvjaqucebr`), com o CRM próprio Pingolead como fonte de dados.

## Contexto

A planilha que alimenta o Looker Studio do cliente Young virou gargalo (limites do Sheets, sem versionamento, sem RLS). O Eduardo Tebaldi já levou o Pingolead (PWA CRM da Young) a escrever direto no Supabase. Esta missão move a camada de visualização para acompanhar — passa a ler do Postgres, mantendo Looker Studio como interface (não troca por Metabase nesta etapa).

## Decisão estratégica

- **Cutover frio**, sem migrar histórico: o relatório novo arranca zerado e enche conforme o Pingolead operar.
- **Looker Studio mantido** (Founder confirmou em vez de migrar para Metabase agora) — Young/equipe já está acostumada com a UI.
- **Conexão via pooler IPv4** (`aws-0-sa-east-1.pooler.supabase.com:6543`) — direct connection IPv6 do Supabase falha no Looker.

## Entregue hoje

- Branch: `claude/migrate-looker-supabase-1DHBz` (commits `90887f3`, `a35047e`)
- Pasta nova: `apps/clientes/04_young/pingostudio/` com migration, scripts de introspect/validate, README, HANDOFF e FIELD_MAPPING template
- Senha forte para o role `looker_reader` gerada (`XC5r...6ibz`, registrada no HANDOFF para o Founder colar no Vaultwarden)

## Pendente para virar valor entregue ao cliente

1. Founder rodar introspect + aplicar migration no Supabase (sandbox Claude sem rota de rede)
2. Validar `looker_reader` (script `02_validate_looker_reader.sh`)
3. Founder mandar PDF do Looker atual + output do introspect → Claude prossegue para Fase 4 (clone do report, troca de data source, remap de fields)
4. Pingolead começar a popular tabelas para o relatório novo deixar de mostrar "sem dados"
5. Compartilhar relatório novo com stakeholders Young e arquivar planilha + relatório antigo

## Riscos / pontos de atenção

- **Pingolead**: depende do Eduardo confirmar o status do schema e da escrita (não checado nesta missão por bloqueio de rede). Se a Pingolead ainda não escreve o que o Looker espera, vai aparecer dashboards vazios mesmo após cutover.
- **MCP Supabase sem permissão** no project ID dado pelo Founder. Avaliar acoplar `vvtympzatclvjaqucebr` à org `xmijkpuquwzgtrhznabs` para o Claude conseguir aplicar migrations sozinho nas próximas iterações.
- **Mateus Fraga em férias**: comunicação operacional com o Young pode ficar mais lenta. Rodrigo está como interim.

## Referências

- Detalhe completo: `apps/clientes/04_young/pingostudio/HANDOFF.md`
- Histórico de Buzz: `openclaw/memory/2026-04-13-pingostudio-264.md`
- Plano original assinado pelo Founder: `/root/.claude/plans/cosmic-greeting-wadler.md` (sandbox)
