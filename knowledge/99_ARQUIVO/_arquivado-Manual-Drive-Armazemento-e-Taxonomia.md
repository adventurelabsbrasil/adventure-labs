# **Manual de Armazenamento e Taxonomia: Adventure Labs**

Versão: 1.0  
Última Atualização: Janeiro/2026  
Objetivo: Garantir que qualquer membro da equipe encontre qualquer arquivo em menos de 30 segundos e manter a segurança dos dados da empresa.

## ---

**1\. Regras de Ouro (Os Mandamentos)**

1. **Nenhum arquivo solto na Raiz:** A pasta principal (Root) deve conter apenas **pastas numeradas** e este manual. Todo arquivo deve viver dentro de uma categoria.  
2. **Numeração é Lei:** Nunca remova os números do início das pastas (00\_, 01\_). Eles mantêm a ordem lógica de fluxo de trabalho, independente da ordem alfabética.  
3. **Segurança em Cascata:** Cuidado ao compartilhar pastas "Pai". Se você der acesso à 00\_GESTAO, a pessoa verá tudo dentro dela. Prefira compartilhar as subpastas específicas.  
4. **Arquivo Morto:** Projetos encerrados ou versões antigas que não devem ser usadas **devem** ser movidos para a pasta 99\_ARQUIVO. Mantenha as pastas de trabalho limpas.

## ---

**2\. Mapa da Estrutura (Onde salvar o quê)**

### **📂 00\_GESTAO\_CORPORATIVA**

*Acesso Restrito: Sócios e Administrativo.*

* **O que vai aqui:** Tudo que mantém a empresa existindo legalmente e financeiramente.  
* **Subpastas Críticas:** FINANCEIRO (Notas, Boletos), JURIDICO (Contratos Sociais), PESSOAS (Docs de RH, Folha).  
* **Nota:** Processos operacionais (como fazer o trabalho) **não** ficam aqui, ficam em 07\_CONHECIMENTO.

### **📂 01\_COMERCIAL**

*Acesso: Time de Vendas e Sócios.*

* **O que vai aqui:** Tudo relacionado a trazer dinheiro novo.  
* **Estrutura:** Leads, CRM, Propostas em aberto e Materiais de Apresentação/Venda.

### **📂 02\_MARKETING**

*Acesso: Time de Marketing e Design.*

* **O que vai aqui:** A construção da marca **Adventure Labs**.  
* **Conteúdo:** Brandbook, Redes Sociais da própria empresa, Gestão do Site Institucional.

### **📂 03\_PRODUTOS (SaaS e Ferramentas Próprias)**

*Acesso: Misto (Devs e Produto).*

* **Divisão Obrigatória:**  
  * 01\_Engenharia\_Dev: Códigos, arquitetura, chaves de API, documentação técnica.  
  * 02\_Estrategia\_Growth: Roadmap de produto, lançamentos, pesquisa de mercado, pricing do SaaS.  
  * 03\_Suporte: Tutoriais para o usuário final.

### **📂 04\_ENTREGA (Clientes)**

*Acesso: Operação, Atendimento e Gerentes.*

* **O que vai aqui:** O trabalho vendido e executado.  
* **Regra:** Cada cliente tem sua pasta própria. Dentro dela, seguimos o padrão:  
  * 01\_Admin (Contrato/Briefing)  
  * 02\_Projetos (O trabalho em si)  
  * 99\_Finais (Apenas arquivos aprovados para entrega)

### **📂 05\_LABORATORIO**

*Acesso: Time de Inovação e Sócios.*

* **O que vai aqui:** Projetos em fase de ideação, testes de IA, rascunhos que ainda não são produtos oficiais nem clientes ativos.

### **📂 06\_CONHECIMENTO**

*Acesso: **Público (Toda a empresa)**.*

* **O que vai aqui:** A "Wikipédia" da Adventure Labs.  
* **Conteúdo:** Playbooks, Processos, Modelos (Templates), Cursos comprados, Gravações de treinamentos.

## ---

**3\. Padrão de Nomenclatura (Como nomear arquivos)**

Para evitar arquivos como apresentacao\_final\_agora\_vai\_v2.pdf, adote o padrão universal da Adventure Labs:

Estrutura: DATA\_CLIENTE-PROJETO\_CONTEUDO\_VERSAO  
Formato de Data: AAAA-MM-DD (Ano-Mês-Dia)

### **Exemplos Práticos:**

* **Correto:** 20260116\_AdvLabs\_Proposta-Comercial\_CocaCola\_v01.pdf  
* **Correto:** 20260210\_ClienteX\_Relatorio-Mensal\_Jan26.xlsx  
* **Correto:** 20260320\_SaaS-Proprio\_Roadmap-Q2\_vFinal.ppt

Por que começar com a data invertida?  
Porque o computador ordenará seus arquivos cronologicamente de forma automática, facilitando encontrar a versão mais recente.

## ---

**4\. Manutenção e Higiene**

* **Sexta-feira da Faxina:** Uma vez por mês, dedique 15 minutos para mover arquivos da raiz para as pastas corretas e enviar projetos cancelados para o 99\_ARQUIVO.  
* **Duplicidade:** Evite ter o mesmo arquivo em dois lugares. Se necessário, use a função "Adicionar atalho" do Google Drive (clique direito \> Organizar \> Adicionar atalho).

---

**Dúvidas?** Consulte a pasta 06\_CONHECIMENTO para tutoriais detalhados ou contate a administração.