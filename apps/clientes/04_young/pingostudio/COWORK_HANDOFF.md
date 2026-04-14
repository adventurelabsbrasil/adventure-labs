# Handoff para sessão Cowork — PINGOSTUDIO-264 v2

> **Para:** Claude rodando em modo Cowork (com Chrome control) — nova sessão
> **De:** Claude Code Cloud (sessão de 2026-04-14, container `container_01Jg1fhTWJwyaNpjBfoYNvD3`)
> **Rodrigo (Founder):** cola o bloco `## PROMPT INICIAL` inteiro na sessão Cowork depois de logar no Metabase. O resto desse arquivo é referência.

---

## PROMPT INICIAL (cola isto na sessão Cowork)

```
Comandante, missão PINGOSTUDIO-264 v2: criar dashboard Metabase da Young
Empreendimentos sobre CRM do Supabase Pingolead.

CONTEXTO (ler antes de mexer):
- Branch: claude/migrate-looker-supabase-1DHBz (repo adventurelabsbrasil/adventure-labs)
- Docs-chave (ler nesta ordem):
  1. apps/clientes/04_young/pingostudio/README.md (visão geral)
  2. apps/clientes/04_young/pingostudio/METABASE_SETUP.md (passo-a-passo detalhado — SEU GUIA)
  3. apps/clientes/04_young/pingostudio/QUERIES_CRM.sql (15 SQL queries prontas)
  4. apps/clientes/04_young/pingostudio/FUNIL_PINGOLEAD.md (template p/ preencher Fase B)

HIVE MIND (estado cross-sessão):
- Supabase Adventure (ftctmseyrqhckutpfdeq) → agent_context tabela
- key: young.pingostudio.looker_migration (valor JSON tem status, decisões, links)

ESTADO ATUAL:
✅ Role looker_reader criada no Supabase Young (vvtympzatclvjaqucebr)
   - 9 tabelas crm_* liberadas (SELECT + BYPASSRLS)
   - Validada via direct IPv6 (21.898 linhas em crm_deals)
✅ Plan v2 aprovado pelo Rodrigo (pivot de Looker Studio → Metabase)
✅ QUERIES_CRM.sql pronto com chute inteligente de enums
⬜ Fase A: conectar Supabase Young ao Metabase (você começa aqui)
⬜ Fase B: descobrir enums reais, atualizar FUNIL_PINGOLEAD.md
⬜ Fase C: Collection + Group + Permissions
⬜ Fase D: 15 Questions + 5 Dashboards
⬜ Fase E: convidar 1 usuário Young teste
⬜ Fase F: subdomínio (opcional)
⬜ Fase G: cutover + deprecar Looker antigo

O QUE EU (Rodrigo) JÁ FIZ NO CHROME ANTES DE PASSAR PRA VOCÊ:
- Logado em https://bi.adventurelabs.com.br como Admin
- Tenho a senha do looker_reader no Vaultwarden (item "Young Pingolead
  Looker Reader"). Se precisar, me pede que eu colo ou abro o
  Vaultwarden num tab separado.

EXECUÇÃO:
1. Comece abrindo o METABASE_SETUP.md e leia Fase A → G
2. Tire screenshot do estado atual do Metabase antes de começar
3. Execute Fase A (conectar DB) — me mostra cada passo ANTES de clicar
   Save, principalmente os campos sensíveis
4. Depois de cada Fase completa, atualize agent_context no Supabase
   Adventure (key young.pingostudio.looker_migration, campo
   status_cowork) via Supabase MCP se tiver acesso; senão, reporta
   em texto que eu propago

GUARDRAILS:
- NUNCA commite senhas no repo. Placeholder <SENHA_GERADA> é o que vai
  em arquivos versionados.
- NÃO abra PR (git) sem minha autorização explícita.
- Se encontrar algo inesperado (tabela/campo sumiu, permissão negada,
  dashboard com zero dados), PARA e me chama antes de improvisar.
- Ao convidar usuário Young (Fase E), use APENAS o email que eu
  mencionar explicitamente.

CONFIRMA que entendeu a missão, lê os 4 docs na ordem, e começa
Fase A passo-a-passo mostrando screenshots. Go.
```

---

## Materiais de apoio que o Cowork vai precisar

### Credenciais (não colar no chat — passa via Vaultwarden ou copy-paste pontual quando pedir)

| Asset | Onde buscar | Quando usa |
|-------|-------------|-----------|
| Admin login Metabase | Vaultwarden (item Adventure Labs Metabase) | Já deve estar logado antes de passar controle |
| Senha `looker_reader` | Vaultwarden, item **"Young Pingolead Looker Reader"** — `XC5rD1kuO4thTnVPynD6WAx9PGaD6ibz` | Fase A (conectar DB) |
| Senha superuser Postgres Young | No HANDOFF.md e no texto deste handoff (`lg9S6Iz8y4LKSjxu`) | Não usada no Metabase (só a do looker_reader) |
| Email pessoa Young teste | Caroline indica | Fase E |

### Links úteis

- Metabase Adventure: https://bi.adventurelabs.com.br
- Supabase project Young: https://vvtympzatclvjaqucebr.supabase.co
- Looker antigo (referência visual, desativar em Fase G): https://lookerstudio.google.com/reporting/0449c5e9-0773-4f50-a9be-4a9af1dbcd51
- Planilha Sheets atual (arquivar em Fase G): https://docs.google.com/spreadsheets/d/1jJRFPzxClfYiVgEY6xwK-bethAc6-nQFSufgHQ4XuAU

### Valores de conexão (cola direto no Metabase Admin → Databases → Add)

**Tentativa 1 (direct IPv6):**
```
Database type:   PostgreSQL
Display name:    Young Pingolead (CRM)
Host:            db.vvtympzatclvjaqucebr.supabase.co
Port:            5432
Database name:   postgres
Username:        looker_reader
Password:        <do Vaultwarden>
Schemas:         public
Use SSL:         ON
```

**Tentativa 2 (pooler IPv4, se direct falhar):**
```
Host:            aws-0-sa-east-1.pooler.supabase.com
Port:            6543
Username:        looker_reader.vvtympzatclvjaqucebr
```

---

## O que o Cowork reporta de volta

Quando terminar cada Fase, o Claude Cowork deve:

1. **Screenshot final** da tela de sucesso (Metabase mostrando database conectado, collection criada, etc.)
2. **Log de decisões** que ele tomou no meio do caminho (ex.: "usei tentativa 2 pooler porque direct deu timeout")
3. **Próximos passos** sugeridos caso a Fase seguinte precise de input seu
4. **Atualização do agent_context** via MCP Supabase (se disponível na sessão Cowork):
   ```sql
   UPDATE agent_context
   SET value = jsonb_set(value, '{status_cowork}', '"fase_X_completed"'::jsonb),
       updated_at = now()
   WHERE key = 'young.pingostudio.looker_migration';
   ```

Se MCP Supabase não estiver disponível na sessão Cowork, pede pro Rodrigo propagar esse update (ele manda o comando SQL via chat normal do Claude Code cloud).

---

## Quando o Cowork terminar Fase E

Ele te devolve o controle. Você volta aqui (Claude Code cloud, esta sessão ou nova) e faz:

1. Validar `agent_context` tem status `v2_metabase_mvp_delivered`
2. Commit + push de qualquer artefato novo (screenshots, logs, .out.json)
3. Opcionalmente abrir PR se você autorizar
4. Atualizar `adv_csuite_memory` com entrada final de cutover

---

## Se algo der muito errado no Cowork

Opções de escape:

- **Pooler IPv4 falha:** provavelmente `looker_reader` não está registrado no Supavisor (cache). Rodar `GRANT looker_reader TO authenticator;` via Supabase SQL Editor como superuser. Depois reconecta.
- **Enum `status` radicalmente diferente do chute:** Cowork atualiza `FUNIL_PINGOLEAD.md` com valores reais, fazer replace-all em `QUERIES_CRM.sql`, recriar Questions.
- **Dashboards vazios mesmo com 21k linhas:** `BYPASSRLS` não pegou. Fazer `ALTER ROLE looker_reader BYPASSRLS;` novamente (idempotente) via SQL Editor Supabase.
- **Permissões de Collection vazando:** Fase C mal configurada. Admin → Permissions → Data → Group Young → bloquear explicitamente todos databases exceto "Young Pingolead (CRM)".

Se nenhuma dessas resolver, Cowork para e chama o Rodrigo pra triagem.
