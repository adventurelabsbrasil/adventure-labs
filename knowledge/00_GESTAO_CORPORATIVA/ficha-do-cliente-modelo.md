# Ficha do Cliente — modelo e acessos

Documento que define o **modelo único de “resumo” por cliente** na Adventure Labs: naming, o que entra em cada parte e onde ficam **credenciais e acessos** (ex.: GreatPages, Google Ads, domínios).

---

## 1. Naming: Ficha do Cliente

| Termo | Uso na AL | Onde vive |
|-------|-----------|-----------|
| **Resumo executivo** | Documento estratégico da **própria agência** (Adventure Labs). Ex.: [resumo-executivo-adventure-labs-2026.md](resumo-executivo-adventure-labs-2026.md). | `/context/00_GESTAO_CORPORATIVA` |
| **Sumário executivo** | Pode ser usado como sinônimo de “resumo executivo” em contexto corporativo. Evitar para **clientes** para não confundir com o da agência. | — |
| **Ficha técnica** | Mais associado a especificações técnicas (stack, integrações, domínios). Útil como **seção** dentro da ficha do cliente. | Parte da Ficha do Cliente |
| **Ficha do Cliente** ✅ | **Modelo adotado:** o “resumo” por cliente — um lugar só onde temos dados cadastrais, acessos, links e observações. | App Admin (dados) + opcionalmente doc em `/context/04_PROJETOS_DE_CLIENTES` quando for só texto não sigiloso |

**Recomendação:** usar **Ficha do Cliente** como termo padrão. Ela é composta por:

1. **Dados cadastrais** — tabela `adv_clients` (nome, CNPJ, contato, status, tipo).
2. **Acessos e credenciais** — tabela `adv_client_accesses` (sistemas, URLs, login, senha, observação). **Nunca em arquivos versionados.**
3. **Resumo em texto** (opcional) — se precisar de um parágrafo “quem é o cliente, foco, principais entregas”, pode viver em doc em `context/04_PROJETOS_DE_CLIENTES/[nome-cliente].md` **sem** logins/senhas.

---

## 2. Acessos e credenciais (GreatPages, Google Ads, etc.)

- **Onde:** apenas no **App Admin**, na tabela `adv_client_accesses`, vinculada a `adv_clients`.
- **O que guardar por acesso:** serviço (ex. GreatPages), URL do painel, login/e-mail, senha, observação (ex. “acesso para a página www.roseportaladvocacia.com.br”).
- **Sigilo:** credenciais **não** devem constar em arquivos do repositório (nem em `/context`). Só no banco, com RLS (equipe autenticada).

Cadastro no Admin: na tela do cliente (editar/detalhe), seção **Acessos**, com lista de acessos e botão “Novo acesso”.

---

## 3. Estrutura da Ficha do Cliente (resumo)

| Bloco | Onde | Exemplo |
|-------|------|--------|
| Dados cadastrais | `adv_clients` | Nome, CNPJ, contato, status, tipo (fixo/pontual) |
| Acessos | `adv_client_accesses` | GreatPages (URL, login, senha, observação); Google Ads; hospedagem; etc. |
| Projetos | `adv_projects` | Projetos ligados ao cliente |
| Resumo em texto (opcional) | `context/04_PROJETOS_DE_CLIENTES/[cliente].md` | Uma página com contexto do cliente **sem** credenciais |

---

## 4. Exemplo de uso (GreatPages)

- **Serviço:** GreatPages  
- **URL:** https://greatpages.com.br  
- **Login:** (e-mail do painel)  
- **Senha:** (guardada só no Admin)  
- **Observação:** “Acesso para a página www.roseportaladvocacia.com.br no Great Pages”

Esse registro é criado na seção **Acessos** da Ficha do Cliente no Admin, vinculado ao cliente (ex.: Rose). Não colocar usuário/senha em nenhum `.md` do repo.

---

*Criado pelo Grove em 03/03/2026. Atualize este doc quando houver mudança no modelo (novas tabelas ou campos).*
