---
title: Young Talents ATS — Feedback usuária Carla (Março 2026)
domain: projetos_clientes
tags: [young-talents, ats, young, feedback, carla, csuite, backlog]
updated: 2026-03-16
---

# Young Talents ATS — Feedback usuária Carla (Março 2026)

**Cliente:** Young Empreendimentos  
**App:** Young Talents (ATS)  
**Fonte:** Carla (usuária do app)  
**Data do registro:** 16/03/2026  
**Público:** C-Suite e equipe — visibilidade do feedback para priorização e acompanhamento.

---

## Resumo executivo

A usuária Carla enviou uma lista de **12 pontos** (melhorias e correções) sobre o uso do Young Talents ATS no dia a dia. Os itens foram formalizados como **issues com critérios de aceite** e estão disponíveis no repositório do projeto. Este documento registra o feedback na base de conhecimento para que o C-Suite (Ohno, Torvalds, Cagan, etc.) e a equipe tenham acesso sem precisar entrar no repo.

**Onde está o detalhamento técnico:**  
- Repo: `clients/04_young/young-talents` (subrepo `adventurelabsbrasil/young-talents`)  
- Doc completo: `docs/futuras-melhorias/ISSUES_CARLA_ATS_2026.md`

**GitHub:** Issues criadas em [adventurelabsbrasil/young-talents/issues](https://github.com/adventurelabsbrasil/young-talents/issues) — #1 (YT-01) a #12 (YT-12).

---

## Lista de issues (resumo para priorização)

| ID     | Título resumido                                      | Prioridade |
|--------|------------------------------------------------------|------------|
| YT-01  | Filtros: idade e dados do formulário                 | Alta       |
| YT-02  | Sincronizar status Pipeline ↔ Candidatura            | Alta       |
| YT-03  | Manter filtro ao voltar do perfil do candidato       | Alta       |
| YT-04  | Foto/currículo sem autorização do candidato           | Alta       |
| YT-05  | Acesso por usuário (quem solicitou abertura da vaga) | Média      |
| YT-06  | Migrar banco de talentos antigo → novo               | Média      |
| YT-07  | CNH e todos os dados do formulário no cadastro       | Alta       |
| YT-08  | Permissão: cadastrar novos empreendimentos           | Alta       |
| YT-09  | Etapa "Vaga pausada" no funil                        | Alta       |
| YT-10  | Permissão: vincular candidato à vaga                 | Alta       |
| YT-11  | Desistência: só motivo, sem retorno obrigatório      | Média      |
| YT-12  | Atualizar status da vaga (fechada/preenchida)         | Alta       |

---

## Temas principais (para C-Suite)

1. **Permissões (RLS/roles):** Vários relatos de “não tenho permissão” — cadastro de empreendimentos (YT-08), vincular candidato à vaga (YT-10), atualizar status da vaga (YT-12). Revisão de políticas Supabase e perfis de usuário é prioritária.

2. **Dados e formulário:** CNH e demais dados da inscrição precisam aparecer de forma obrigatória e completa no cadastro do candidato (YT-07). Filtros devem incluir idade e todos os campos do formulário (YT-01).

3. **Pipeline e UX:** Sincronizar status entre pipeline e candidatura (YT-02); manter filtros ao voltar do perfil (YT-03); nova etapa “Vaga pausada” (YT-09); fluxo de desistência sem “retorno obrigatório” (YT-11).

4. **Foto/currículo:** Visualização por recrutadores sem depender de autorização do candidato (YT-04) — alinhar com termos de uso/LGPD.

5. **Rastreabilidade e migração:** Quem solicitou abertura da vaga por usuário (YT-05); migração do banco de talentos antigo para o novo (YT-06).

---

## Próximos passos sugeridos

- **Product (Cagan):** Priorizar itens de Alta; agrupar YT-08, YT-10, YT-12 (permissões) em um único esforço de revisão RLS/roles.
- **Tech (Torvalds):** Revisar RLS e roles no Supabase (Young Talents); ativar Issues no repo `adventurelabsbrasil/young-talents` se o time for usar GitHub para backlog.
- **Operação (Ohno):** Alinhar com Carla prazos e ordem de entrega; combinar migração (YT-06) com cliente (dados do banco antigo).

---

*Documento gerado a partir do feedback da usuária Carla. Detalhes e critérios de aceite em `clients/04_young/young-talents/docs/futuras-melhorias/ISSUES_CARLA_ATS_2026.md`.*
