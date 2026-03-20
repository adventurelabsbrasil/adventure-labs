# Young Talents ATS — modelo de acesso e segurança

Documentação **genérica** para quem clona o monorepo: não inclui URLs de produção, chaves, e-mails reais nem identificadores de projeto. Esses valores ficam só em **variáveis de ambiente** e no **Supabase Dashboard** (fora do Git).

## Objetivo

- **Sem cadastro em `user_roles` → sem acesso ao ATS interno** (nem só leitura). O bloqueio é feito em **RLS (Postgres)** + checagens no **app** (`hasStaffRole` / rotas).
- **Candidatos** usam apenas o formulário público **`/apply`** como cliente **anon** (sem necessidade de login para se inscrever).
- **Staff** (`admin`, `editor`, `viewer`) só após **linha explícita** em `young_talents.user_roles` (criada por admin na tela Usuários, Edge Function ou processo equivalente).
- O trigger **`sync_user_role_on_login`** **não** cria papel automático no primeiro login; só **atualiza** `user_id` / metadados se já existir linha para aquele e-mail (match case-insensitive nas migrations atuais).

## Camadas

| Camada | Papel |
|--------|--------|
| **Supabase Auth** | Identidade (ex.: e-mail, OAuth). Ter sessão **não** equivale a acesso ao CRM. |
| **`young_talents.user_roles`** | Fonte da verdade dos papéis de staff. |
| **RLS** | `SELECT` em dados do ATS exige função do tipo **`has_staff_access()`** (repo `plataforma`) ou equivalente **`has_privileged_role('viewer')`** (path `clients/04_young/...`), conforme a linha de migrations aplicada. |
| **App React** | Painel interno só se existir documento de role staff; **viewer** = somente leitura; rotas sensíveis respeitam permissões. |
| **Formulário `/apply`** | Duplicidade de e-mail via **RPC** (`public_candidate_email_exists`), sem listar a base; cidades com política **anon** limitada onde aplicável. |

## Deploy de SQL

Há **duas árvores** de migrations no monorepo; use **uma** linha contínua no mesmo projeto Supabase:

- **`apps/clientes/young-talents/plataforma/supabase/migrations/`** — inclui **037–039** (staff read, sync sem viewer automático, RPC público, endurecimento de `activity_log`). Detalhes: `apps/clientes/young-talents/plataforma/docs/SECURITY_MODEL.md`.
- **`clients/04_young/young-talents/supabase/migrations/`** — inclui **028** com modelo `has_privileged_role('viewer')` (espelho conceitual; não misturar políticas duplicadas sem revisão).

Scripts de diagnóstico (SQL ad-hoc): `docs/young-talents/sql/` — ver README dessa pasta.

## Supabase Dashboard (operacional)

Recomendações **documentais** (sem valores):

- Avaliar **desabilitar sign-up aberto** se o fluxo for “só entra quem foi cadastrado”.
- **OAuth (ex.: Google):** alinhar à política de convite / usuário pré-existente; contas em `auth.users` sem `user_roles` permanecem sem dados do ATS graças ao RLS, mas ainda são contas órfãs no Auth.
- **Redirect URLs:** configurar apenas os domínios reais do deploy (não versionar a lista aqui).

## Dados legados

Quem já tinha linha em `user_roles` (ex.: `viewer` criado por trigger antigo) **continua** com acesso até **remoção ou alteração** da role no painel Usuários ou via SQL administrativo. Por isso uma passada de **limpeza** em `user_roles` pode ser necessária após endurecer o modelo.

## Onde não colocar segredos

- Não commitar `.env`, service role keys, senhas, e-mails pessoais de clientes ou **project ref** do Supabase em READMEs.
- Usar `.env.example` só com **nomes** de variáveis e placeholders (`https://YOUR_PROJECT.supabase.co`).

---

[[Home]] · Ver também `docs/young-talents/sql/README.md` e `SECURITY_MODEL.md` no app plataforma.
