# Guia de Uso do App - Young Talents ATS

Guia canônico para utilização do sistema de gerenciamento de recrutamento Young Talents ATS.

---

## Primeiros Passos

### Acessar o Sistema

1. Acesse a URL do sistema fornecida pelo administrador
2. Clique em **"Entrar com Google"**
3. Selecione sua conta Google autorizada
4. Você será redirecionado para o Dashboard

### Navegação e Menu Lateral

O menu lateral fornece acesso às seções principais:

| Ícone | Seção | Descrição |
|-------|-------|-----------|
| LayoutDashboard | **Dashboard** | Visão geral com gráficos e KPIs |
| GitBranch | **Pipeline** | Kanban do processo seletivo |
| Users | **Banco de Talentos** | Lista completa de candidatos |
| FileText | **Formulários Recebidos** | Submissões via formulário público |
| Briefcase | **Vagas** | Gestão de vagas abertas |
| BarChart3 | **Relatórios** | Relatórios e análises |
| Settings | **Configurações** | Ajustes do sistema |
| Info | **Sobre** | Informações do sistema e guia |

---

## Seções Principais

### Dashboard

- **KPIs**: Total de Candidatos, Contratados, Vagas Abertas, Reprovados
- **Gráficos**: Candidatos por Status, Cidade, Fonte, Área de Interesse, evolução mensal
- Clique nos KPIs para filtrar candidatos relacionados

### Pipeline de Talentos

- Visualização Kanban por etapa (Inscrito → Considerado → Entrevista I → Testes → Entrevista II → Seleção)
- **Arrastar e soltar** cards entre colunas
- Busca local, filtros por status e ordenação
- Modo lista disponível

### Banco de Talentos

- Tabela com todos os candidatos
- Busca em tempo real
- Ordenação por coluna (clique no cabeçalho)
- Filtros avançados (período, status, vaga, cidade, área, fonte, etc.)
- Paginação configurável

### Formulários Recebidos

- Submissões vindas do formulário público (`/apply`)
- Visualização e processamento das candidaturas

### Vagas

- Criar, editar, excluir vagas
- Visualização por Status, Cidade, Empresa ou Período
- Vincular candidatos a vagas

### Relatórios

- Relatórios e análises do sistema

### Configurações

- Gerenciamento de Campos (visibilidade e obrigatoriedade)
- Configuração do Pipeline (etapas, motivos de perda)
- Empresas/Unidades
- Importar / Exportar
- Histórico de Ações
- Usuários

---

## Ações Frequentes

### Buscar Candidatos

1. Digite na barra de busca no topo da tabela
2. Busca em: nome, email, telefone, cidade, fonte, área de interesse, formação, escolaridade

### Filtrar Candidatos

1. Clique em **"Filtros Avançados"** (ícone de filtro)
2. Selecione: Período, Status, Vaga, Cidade, Área, Fonte, Escolaridade, etc.
3. Clique em **"Aplicar Filtros"**

### Ordenar Candidatos

1. Clique no cabeçalho da coluna
2. Clique novamente para inverter a ordem (crescente/decrescente)

### Adicionar Candidato

1. Clique em **"Adicionar"**
2. Preencha as abas (Pessoal, Profissional, Processo, Adicional)
3. Clique em **"Salvar"**

### Avançar Etapa

1. Abra o candidato no formulário
2. Use o menu **"Avançar Etapa do Processo"** na primeira aba
3. Selecione a próxima etapa e confirme

### Importar CSV

1. Configurações → **Importar / Exportar**
2. Baixe o modelo (CSV ou XLSX)
3. Preencha o arquivo
4. Clique em **"Iniciar Importação"**
5. Mapeie colunas, configure opções de duplicação e confirme

---

## Fluxos Principais

### Cadastro de Candidato

1. Banco de Talentos → Adicionar  
2. Preencha Pessoal, Profissional, Processo, Adicional  
3. Vincule a vaga (opcional) e defina status  
4. Salvar  

### Pipeline (Mover entre Etapas)

1. Arraste o card para a coluna desejada **ou**
2. Abra o candidato → Avançar Etapa → escolha a próxima etapa  

### Candidatura (Formulário Público)

1. Candidato acessa `/apply`
2. Preenche o formulário público
3. Submissão vai para **Formulários Recebidos**

---

## Formulário Público (`/apply`)

Candidatos não autenticados podem se candidatar:

1. Acesse a URL: `https://seu-app.vercel.app/apply`
2. Preencha os campos solicitados
3. Envie o formulário
4. O candidato aparece em **Formulários Recebidos** e pode ser incorporado ao Banco de Talentos

---

## Ajuda e Troubleshooting

### Filtros de Período Não Funcionam

- Verifique se os candidatos têm "Data de Cadastro" preenchida
- A coluna deve estar visível na tabela

### Candidato Não Aparece Após Importação

- Verifique se foi marcado como duplicado e ignorado
- Confira os filtros aplicados
- Consulte Histórico de Ações (Configurações)

### Não Consigo Criar Vaga Sem Empresa

- Crie a empresa em Configurações → Empresas/Unidades
- Ou use o botão "Nova" no formulário de vaga

### Dados Não Estão Normalizados

- O sistema normaliza ao salvar
- Edite manualmente ou reimporte para dados antigos

### Alternar Tema (Dark/Light)

- Clique no ícone de sol/lua no canto superior direito
- A preferência é salva automaticamente

---

## Suporte

1. Consulte este guia
2. Consulte a seção **Sobre** no app (link no menu)
3. Verifique **Histórico de Ações** para operações recentes
4. Entre em contato com o administrador do sistema

---

**Versão:** 1.0  
**Última atualização:** Fevereiro 2025
