# Análise da Stack OpenClaw + Stack Completa (17/04/2026)

**Responsável**: Buzz (OpenClaw)
**Data**: 2026-04-17
**Prioridade**: Alta
**Ref**: [Issue #27](https://github.com/adventurelabsbrasil/adventure-labs/issues/27)

---

## Contexto
Análise realizada com base em:
- Relatório estratégico do Claude (16/04/2026).
- Auditoria do monorepo (`stack-completa-2026-04-16.md`).
- Branches ativas no GitHub (`claude/infra`, `claude/mercado-pago-integration-eHScy`).
- Discussões nesta sessão com o Rodrigo.

---

## Resumo Executivo

### Gargalos Críticos
| Área               | Gargalo                                                                 | Solução Proposta                                                                 |
|--------------------|-------------------------------------------------------------------------|----------------------------------------------------------------------------------|
| **Comunicação**    | WhatsApp não autônomo (número pessoal do Rodrigo).                     | Configurar Moto G52 + Evolution API + `agent:whatsapp`.                          |
| **Infraestrutura** | Tailscale Funnel não configurado (Metabase não exposto).               | Corrigir comando: `tailscale serve 3000/tcp && tailscale funnel 3000 on`.       |
| **Automação**      | Plane subutilizado (12 containers rodando sem uso efetivo).            | Desligar Plane e liberar RAM na VPS.                                            |
| **Contexto**       | Agentes não compartilham memória de longo prazo.                       | Implementar `pgvector` no Supabase.                                             |
| **Marketing**      | Nenhum ESP (Email Service Provider) configurado.                       | Configurar Brevo (free até 300 emails/dia).                                     |

---

## Ações Prioritárias

### 🔴 Alta Prioridade

1. **Configurar Moto G52 + Evolution API** (Claude Code):
   - Comprar chip físico para o Moto G52.
   - Configurar instância no Evolution API (`100.69.141.1:8080`).
   - Criar `agent:whatsapp` para automação de atendimento.

2. **Desligar Plane** (Buzz):
   - Executar:
     ```bash
     cd /opt/adventure-labs/plane && docker-compose down
     ```
   - Liberar ~2GB de RAM na VPS.

3. **Corrigir Tailscale Funnel** (Claude Code):
   - Acessar VPS e executar:
     ```bash
     tailscale serve 3000/tcp
     tailscale funnel 3000 on
     ```

---

## Oportunidades

### 🟡 Média Prioridade

1. **Google Chat como Hub Interno**:
   - Migrar comunicação interna para o Google Chat.
   - Integrar com n8n para notificações (ex: tarefas do Plane, alertas do Metabase).

2. **ESP (Brevo)**:
   - Configurar Brevo para email marketing (free até 300 emails/dia).
   - Criar templates para leads e clientes.

3. **Registro Centralizado de Ligações**:
   - Configurar Google Voice para registrar ligações.
   - Integrar com n8n para criar tarefas de follow-up no Plane.

---

## Próximos Passos

1. **Rodrigo**:
   - Comprar chip físico para o Moto G52.
   - Configurar Google Voice.

2. **Claude Code**:
   - Configurar Evolution API + `agent:whatsapp`.
   - Corrigir Tailscale Funnel.

3. **Buzz**:
   - Desligar Plane.
   - Implementar `pgvector` no Supabase.
   - Configurar Brevo.

---

## Anexos
- [Relatório Estratégico (16/04/2026)](./relatorio-estrategico-2026-04-16.md)
- [Stack Completa (16/04/2026)](./stack-completa-2026-04-16.md)
- [Stack Report (16/04/2026)](./stack-report-2026-04-16.md)
- [Auditoria Monorepo (15/04/2026)](./auditoria-monorepo-2026-04-15.md)
