# POP — Onboarding de cliente novo (pasta + documentos)

Procedimento operacional padrão para **humano ou agente** quando um cliente novo entra na operação da Adventure Labs.

## Objetivo

Garantir que todo cliente novo entre com:

- estrutura mínima de documentação,
- links operacionais (Asana/Drive),
- governança de dados (Infisical/Supabase),
- rastreabilidade de escopo e histórico desde o fechamento.

## Quando executar

- Fechamento de novo contrato/acordo.
- Reativação de cliente antigo sem base documental atual.
- Migração de cliente para dentro do monorepo.

## Checklist de execução (ordem obrigatória)

1. **Criar pasta canónica do cliente**
   - Em `clients/<codigo>_<slug>/` (quando existir base em `clients`).
   - Quando o cliente já estiver concentrado em `knowledge/04_PROJETOS_DE_CLIENTES/<slug>/`, manter a convenção local e criar/atualizar `README.md` do hub.

2. **Criar documentação mínima**
   - `README.md` (hub do cliente)
   - `CONTEXTO_CONTA_<CLIENTE>_<YYYY-MM>.md`
   - `HISTORICO_OPERACIONAL_<CLIENTE>_<YYYY-MM>.md`
   - Usar como referência: `clients/_template/CLIENT_OPERACIONAL.md`

3. **Preencher campos operacionais obrigatórios**
   - Link do projeto no Asana
   - Link da pasta no Google Drive
   - IDs de contas de anúncio (Google/Meta) ou placeholder explícito
   - Responsáveis internos da Adventure

4. **Registrar modelo comercial**
   - Fee mensal (valor e data de início)
   - Escopo vigente (incluindo exceções ao plano padrão)
   - Regras de governança (ex.: contrato formal ou critérios de `gaveta`)

5. **Definir governança de dados**
   - **Infisical:** segredos, tokens, chaves, credenciais
   - **Supabase (registry):** IDs e metadados operacionais que precisem consulta estruturada por agentes/automações
   - Nunca salvar segredo em markdown/código versionado

6. **Conectar no consolidado mensal**
   - Atualizar `knowledge/04_PROJETOS_DE_CLIENTES/entregas-por-cliente-<YYYY-MM>.md` com linha da conta
   - Adicionar link para o hub do cliente no consolidado

7. **Conectar na camada de agentes (quando aplicável)**
   - Criar/atualizar `apps/core/admin/agents/gerente_<cliente>/`
   - Criar/atualizar skill de contexto em `apps/core/admin/agents/skills/<cliente>-contexto/SKILL.md`
   - Referenciar os docs canónicos no `AGENT.md`

## Critérios de pronto

- [ ] Hub do cliente criado e navegável
- [ ] Contexto + histórico criados
- [ ] Asana + Drive preenchidos (ou placeholder explícito)
- [ ] Governança de dados documentada (Infisical/Supabase)
- [ ] Consolidado mensal atualizado
- [ ] (Se aplicável) gerente/skill de contexto criados

## Não conformidades comuns (evitar)

- Criar só um arquivo solto sem hub/índice.
- Deixar conta sem link de Asana/Drive.
- Misturar segredo com documentação operacional.
- Não registrar escopo comercial e depois perder referência no handoff.
