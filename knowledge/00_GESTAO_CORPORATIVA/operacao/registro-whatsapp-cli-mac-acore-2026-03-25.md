# Registro técnico — whatsapp-cli no Mac (base ACORE)

Data: 2026-03-25  
Responsável pelo registro: Assistente (Cursor)

## Objetivo

Documentar o estado atual da instalação local do `whatsapp-cli` no macOS para acelerar futuras integrações e automações do ACORE, sem execução de rollout em produção neste momento.

## Estado atual validado (Mac local)

- Instalação executada com sucesso via:
  - `go install github.com/vicentereig/whatsapp-cli@latest`
- Versão resolvida no momento da instalação:
  - `github.com/vicentereig/whatsapp-cli v1.3.2`
- Binário presente em:
  - `~/go/bin/whatsapp-cli`
- PATH da sessão original não incluía `~/go/bin` por padrão.
- Após export temporário abaixo, comando funcionou normalmente:
  - `export PATH="$PATH:$(go env GOPATH)/bin"`
- Verificação funcional realizada:
  - `whatsapp-cli --help` (retornou uso básico e flag `-store`)

## Conflito com stack atual do monorepo

Conclusão: **sem conflito direto de código/dependência** no estado atual.

- Não há referência a `whatsapp-cli` no código versionado.
- Há uso existente de outras abordagens de WhatsApp no monorepo, principalmente:
  - `tools/whatsapp-web` (Node + `whatsapp-web.js`)
  - documentação e rotas operacionais em `openclaw/whatsapp` e `knowledge/`
- Risco potencial é operacional (não de instalação):
  - executar múltiplos clientes WhatsApp simultâneos na mesma conta pode causar instabilidade de sessão.

## Como isso ajuda o ACORE futuramente

- Abre caminho para **canal CLI padronizado** para automações leves em shell/n8n.
- Permite construir jobs com execução local ou remota (Coolify/VPS), com persistência de sessão por diretório (`-store`).
- Facilita protótipos rápidos de:
  - envio programado,
  - coleta operacional,
  - gatilhos de alertas internos.
- Pode ser usado como camada de integração para agentes (com contratos de entrada/saída claros), antes de evoluir para serviço dedicado.

## Diretrizes recomendadas para próxima fase

- Usar local (Mac) para desenvolvimento e testes.
- Produção contínua (24/7) em VPS/Coolify com:
  - volume persistente para sessão,
  - política de restart,
  - logs/healthcheck.
- **Nunca** versionar dados de sessão/autenticação em Git.
- Manter segredos apenas em variáveis de ambiente seguras.

## Checklist de retomada (quando priorizar)

1. Padronizar script wrapper (`tools/`) para chamadas do `whatsapp-cli`.
2. Definir pasta de store persistente fora do repositório.
3. Especificar contrato de integração (input/output) para n8n/ACORE.
4. Criar runbook de operação (login QR, rotação, troubleshooting, observabilidade).
5. Validar estratégia de convivência com `tools/whatsapp-web` para evitar sessão concorrente.

## Observação de segurança

Este registro não contém credenciais, tokens, números privados ou sessão autenticada.
