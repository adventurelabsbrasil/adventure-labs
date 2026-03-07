---
title: Manual de Armazenamento e Taxonomia — Adventure Labs
domain: gestao_corporativa
tags: [drive, taxonomia, processos, armazenamento]
updated: 2026-03-07
---

# Manual de Armazenamento e Taxonomia — Adventure Labs

Versão: 1.0  
Última atualização: Janeiro/2026  
Objetivo: Garantir que qualquer membro da equipe encontre qualquer arquivo em menos de 30 segundos e manter a segurança dos dados da empresa.

**Origem:** Drive 00_GESTAO_CORPORATIVA/04_PROCESSOS. Espelho no repo: `/context` (taxonomia 00–99).

---

## 1. Regras de Ouro (Os Mandamentos)

1. **Nenhum arquivo solto na Raiz:** A pasta principal (Root) deve conter apenas **pastas numeradas** e este manual. Todo arquivo deve viver dentro de uma categoria.
2. **Numeração é Lei:** Nunca remova os números do início das pastas (00_, 01_). Eles mantêm a ordem lógica de fluxo de trabalho, independente da ordem alfabética.
3. **Segurança em Cascata:** Cuidado ao compartilhar pastas "Pai". Se você der acesso à 00_GESTAO, a pessoa verá tudo dentro dela. Prefira compartilhar as subpastas específicas.
4. **Arquivo Morto:** Projetos encerrados ou versões antigas que não devem ser usadas **devem** ser movidos para a pasta 99_ARQUIVO. Mantenha as pastas de trabalho limpas.

---

## 2. Mapa da Estrutura (Onde salvar o quê)

### 00_GESTAO_CORPORATIVA

*Acesso Restrito: Sócios e Administrativo.*

- **O que vai aqui:** Tudo que mantém a empresa existindo legalmente e financeiramente.
- **Subpastas críticas:** FINANCEIRO (Notas, Boletos), JURIDICO (Contratos Sociais), PESSOAS (Docs de RH, Folha).
- **Nota:** Processos operacionais (como fazer o trabalho) ficam em 06_CONHECIMENTO no repo; no Drive podem estar em pasta de processos.

### 01_COMERCIAL

*Acesso: Time de Vendas e Sócios.*

- **O que vai aqui:** Tudo relacionado a trazer dinheiro novo.
- **Estrutura:** Leads, CRM, Propostas em aberto e Materiais de Apresentação/Venda.

### 02_MARKETING

*Acesso: Time de Marketing e Design.*

- **O que vai aqui:** A construção da marca **Adventure Labs**.
- **Conteúdo:** Brandbook, Redes Sociais da própria empresa, Gestão do Site Institucional.

### 03_PRODUTOS (SaaS e Ferramentas Próprias)

*Acesso: Misto (Devs e Produto).*

- **Divisão obrigatória:**
  - 01_Engenharia_Dev: Códigos, arquitetura, chaves de API, documentação técnica.
  - 02_Estrategia_Growth: Roadmap de produto, lançamentos, pesquisa de mercado, pricing do SaaS.
  - 03_Suporte: Tutoriais para o usuário final.

### 04_ENTREGA (Clientes) / 04_PROJETOS_DE_CLIENTES

*Acesso: Operação, Atendimento e Gerentes.*

- **O que vai aqui:** O trabalho vendido e executado.
- **Regra:** Cada cliente tem sua pasta própria. Dentro dela:
  - 01_Admin (Contrato/Briefing)
  - 02_Projetos (O trabalho em si)
  - 99_Finais (Apenas arquivos aprovados para entrega)

### 05_LABORATORIO

*Acesso: Time de Inovação e Sócios.*

- **O que vai aqui:** Projetos em fase de ideação, testes de IA, rascunhos que ainda não são produtos oficiais nem clientes ativos.

### 06_CONHECIMENTO

*Acesso: Público (Toda a empresa).*

- **O que vai aqui:** A "Wikipédia" da Adventure Labs.
- **Conteúdo:** Playbooks, Processos, Modelos (Templates), Cursos comprados, Gravações de treinamentos.

---

## 3. Padrão de Nomenclatura (Como nomear arquivos)

Estrutura: **DATA_CLIENTE-PROJETO_CONTEUDO_VERSAO**  
Formato de Data: AAAA-MM-DD (Ano-Mês-Dia)

### Exemplos

- **Correto:** 20260116_AdvLabs_Proposta-Comercial_CocaCola_v01.pdf
- **Correto:** 20260210_ClienteX_Relatorio-Mensal_Jan26.xlsx
- **Correto:** 20260320_SaaS-Proprio_Roadmap-Q2_vFinal.ppt

Começar com a data invertida faz o computador ordenar os arquivos cronologicamente.

---

## 4. Manutenção e Higiene

- **Sexta-feira da Faxina:** Uma vez por mês, 15 minutos para mover arquivos da raiz para as pastas corretas e enviar projetos cancelados para o 99_ARQUIVO.
- **Duplicidade:** Evite o mesmo arquivo em dois lugares. Se necessário, use "Adicionar atalho" do Google Drive (clique direito → Organizar → Adicionar atalho).

---

*Dúvidas: consulte 06_CONHECIMENTO ou a administração.*
