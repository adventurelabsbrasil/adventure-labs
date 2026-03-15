---
title: Young Talents — Acesso de desenvolvedores e Supabase (RLS)
domain: conhecimento
tags: [young-talents, supabase, rls, c-suite, permissoes, admin]
updated: 2026-03-10
---

# Acesso de desenvolvedores e Supabase (Young Talents)

Documento de referência para a liderança (C-suite): quem tem acesso total ao sistema e onde está documentado o que foi feito no banco e nas permissões. Consumido pela base de conhecimento do /admin (API context-docs, relatório C-Suite).

---

## Quem tem acesso total (desenvolvedor)

Estes três usuários têm permissão total no app Young Talents: podem criar e editar empresas, vagas, candidatos, usuários e demais dados, além de acessar o log de atividades.

| E-mail | Papel |
|--------|--------|
| dev@adventurelabs.com.br | Conta técnica de desenvolvimento |
| contato@adventurelabs.com.br | Adventure Labs (contato / C-suite) |
| eduardo@youngempreendimentos.com.br | Eduardo Tebaldi (operação / C-suite) |

Eles entram no app com o próprio e-mail (e senha ou Google, conforme configurado) e usam o sistema com as mesmas permissões de administrador total.

---

## O que foi feito no banco (Supabase)

- Foram ajustadas as **regras de segurança (RLS)** do banco para que os três usuários acima tenham sempre acesso permitido às tabelas do projeto (empresas, vagas, candidatos, usuários, etc.), mesmo quando outras checagens falham.
- Foi corrigido um problema em que a tela de **usuários** e ações como **criar empresa** retornavam erro de permissão ou "permission denied"; com as migrações 024 a 031 aplicadas no Supabase, isso deixa de ocorrer para esses usuários.
- Nenhum dado foi removido; apenas foram criadas/alteradas regras de permissão no banco.

---

## Onde está a documentação técnica

No repositório do projeto Young Talents (`clients/04_young/young-talents/`):

- **Permissões e desenvolvedores (detalhado):** `docs/RLS_E_DESENVOLVEDORES.md` — lista de migrations (024–031), ordem de aplicação no Supabase e como adicionar outro desenvolvedor no futuro.
- **Diagnóstico do Supabase:** `docs/DIAGNOSTICO_SUPABASE.md` (como rodar) e `docs/DIAGNOSTICO_SUPABASE.sql` (script SQL).
- **Setup geral do Supabase:** `docs/GUIA_SETUP_SUPABASE.md`.

---

## O que fazer se algo parar de funcionar para esses usuários

1. Confirmar que estão logados com um dos três e-mails acima.
2. Se o erro for de "permissão" ou "políticas de segurança", verificar no Supabase (projeto Young Talents) se as migrations **024 a 031** estão aplicadas (arquivos em `supabase/migrations/` no repositório).
3. Em caso de dúvida, um desenvolvedor pode rodar o script de diagnóstico (`docs/DIAGNOSTICO_SUPABASE.md`) e conferir o resultado.
