-- Parte 5 de 9 (até 300 linhas por arquivo para caber no SQL Editor)
-- Cole no SQL Editor do Supabase → Run. Depois execute a próxima parte.
-- Tabela permite múltiplos envios por email (cada linha = um envio com timestamp).

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Luísa Silva de Moraes','luisa-music@hotmail.com',NULL,'51996522787','2001-07-08',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=16x7ilojsoZxOCezKBH7GhdkdBvXHcFMP','Direito','Ensino Superior Incompleto','Uniritter',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Fórum de Santo Antônio da Patrulha;
2) Estagiária;
3) 10/02/2021 à 31/01/2023;
4) Atendimento de balcão cartorário, movimentação em processos físicos e eletrônicos, expedição de mandados e carta AR, baixa e arquivamento de processos, encaminhamento de AR por correio…

1.2) Promotoria de Justiça de Santo Antônio da Patrulha;
2.2) Estagiária;
3.2) 10/02/2023 em atuação;
4.2) Elaboração de minutas, análise processual, oferecimento de benefícios penais,  designação de audiências…',NULL,NULL,'Administrativa, Estágio','https://drive.google.com/open?id=12JLsJMky-BOfDBRaRgNEkYKvDlHSHlmb',NULL,'Instagram','Nao','R$ 1.500,00 +','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-17T17:40:00.000Z'::timestamptz),
  ('Everaldo Camargo Alves Junior','e.junioralves@hotmail.com',NULL,'55996570455','1994-01-23',32,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1sg8pMM7L1u1l1d7CaOoT0J4f6xZSCDIv','Administração de empresas','Pós-graduação Completa','Universidade Norte do Paraná - UNOPAR','2020-12-21','Sou formado','Posto Primeiro – Caixa/Frentista - 04/2023 a 10/2023
* Abertura e fechamento de caixa, atendimento do público que compra na loja de 
conveniência, abastecimento, limpeza e organização da loja, além de abastecer os de 
veículos, venda de óleos quando necessário, conferir óleo e água dos veículos que 
abastecem, limpar para-brisas, calibrar pneus e manter a pista sempre limpa e organizada.

Havan - Loja de Departamentos – Caixa/Repositor - 09/2022 a 02/2023
*  Abrir e fechar caixa sempre que a empresa tinha um fluxo muito grande de clientes e os 
caixas escalados não davam conta, passar mercadoria e receber o pagamento. Tinha como 
segundo cargo repositor, que consistia em deixar a área de venda abastecida e organizada 
dentro do layout que a empresa exigia, sempre atendendo e tirando dúvidas dos clientes 
que precisavam.

Clínica Odonto Excellence – Agente de cobrança - 09/2017 a 03/2022
*  Cobrança diária dos inadimplentes, renegociações, inclusão dos inadimplentes nos órgãos 
de proteção ao crédito. Responsável por fazer os clientes devedores a pagar e retornarem a 
fazer tratamento com a unidade novamente, oferecendo sempre alguma vantagem para o 
cliente e para a empresa. Atendimento de telefone e na recepção sempre que necessário 
sanando dúvidas de clientes e potenciais clientes','Possou MBA em Marketing Digital, com formação em 12/2021',NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=12-sCbfb6_enx5jkkxnBEJEZCud9O3KsQ',NULL,'Instagram','Não fui indicado.','1.500,00','Sim','Lizandra Mendonça - (55) 99969 1627 - Posto Primeiro
Amanda Coutinho (47) 999752 5064 - Havan
Liana Soares (55) 98457 0926 - Odonto Excellence','Quero inscrever-me no banco de talentos da Young!','Comecei minha jornada profissional aos 18 anos como jovem aprendiz em uma empresa estadual que tinha filial na minha cidade, ali foi onde tive o primeiro contato com a administração, aprendi a administrar tempo e recursos, foi onde vi que podia fazer disso uma profissão, já que a organização nunca foi um problema para mim. Terminado o contrato fui trabalhar em uma clínica odontológica onde fiquei quase 5 anos como agente de cobrança, foi nessa empresa que tive o contato real com a administração, onde pude colocar em prática alguns conhecimentos como contas a pagar e receber, planilhas, gerenciamento de equipe, pois, apesar de não ser minha função principal, a exercia sempre que necessário.
Na vida pessoal sou bastante caseiro, nas minhas horas livres gosto de estar em casa, ler um livro, olhar uma série ou filme ou sair para tomar um chimarrão, esse é meu tipo de passa tempo. Sou responsável naquilo que me proponho a fazer, sendo ele um desafio novo ou algo do cotidiano, com prazo ou não, gosto de estar com pessoas que me desafiam a melhorar todos os dias, e estou disposto a ouvir e repensar, atitudes e atos. Essa busca por desafios que me motiva a querer fazer outra faculdade, quem sabe numa nova área, uma especialização, até mesmo um mestrado, acredito que o mundo nunca para e com isso precisamos estar evoluindo com ele, sem deixar de lado o olhar atento para aqueles que estão ao meu redor, seja família, amigos ou colegas, acredito que há lugar para todos crescerem','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-17T19:57:00.000Z'::timestamptz),
  ('Patrícia Machado','paty.noia@gmail.com',NULL,'51995370064','1996-01-03',30,'Solteiro(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=150ATa7FrI2MQoxz3qlTzgYtpvU6cmf0v','Administração de empresas','Ensino Médio Completo','Uniasselvi','2024-08-08','Sou formado','Auxiliar contabilidade','Auxiliar administrativo',NULL,'Financeiro','https://drive.google.com/open?id=1y5OLurQFcyCQmMJZIct3TvP6dimceBnY',NULL,'Instagram','Não','0000','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-17T20:24:00.000Z'::timestamptz),
  ('Taciano Naressi Lopes','tacianob12@gmail.com',NULL,'51995293500','1996-10-15',29,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1HBck23ByIAoCkp0BDqEaDFds2i-QJIYN','Engenharia de Produção','Ensino Superior Completo','Universidade Federal do Rio Grande','2024-04-06','Sou formado','Prefeitura de Santo Antônio da Patrulha 
Estagiário de outubro de 2018 até outubro de 2020
Trabalhei no setor de cadastro imobiliário, com atendimento ao público e auxiliando na avaliação de guias de ITBI.

Prefeitura de Santo Antônio da Patrulha 
Contratado vinculado a Universidade na Secretária do Planejamento, Departamento de Engenharia e Arquitetura (DEA) 
De 2020 a Dezembro de 2023
Auxiliei na fiscalização de uma licitação de um serviço de georreferenciamento contratado pelo município, também trabalhei com um mapa georreferenciado para questões de viabilidade urbana, além de auxiliar os colegas em questões de engenharia.','Minha área de pesquisa durante toda a jornada acadêmica foi relacionada a questões de georreferenciamento, assim como meu TCC que foi focado em desenvolver um instrumento para identificação e controle de áreas de preservação permanente, todas informações estão no currículo lattes > http://lattes.cnpq.br/4756440599108334

Atualmente sou mestrando no Programa de Pós Graduação de Engenharia Mecânica da Universidade Federal do Rio Grande.',NULL,'Administrativa, Estágio, Licenciamentos, Engenharia','https://drive.google.com/open?id=1pUH44F0l0Lgab8yAu1jWxjpKHuApuFP9',NULL,'Instagram','Não','2800','Sim','Cleia Arioldi (51-999441070) / Secretária Administrativa - Prefeitura de Santo Antônio da Patrulha

Alexandre Paes (51-995524410) / Fiscal e Diretor setor de Finanças - Prefeitura de Santo Antônio da Patrulha 

Arthur Sessin (51-997837473) / Diretor Departamento de Engenharia e Arquitetura - Prefeitura Santo Antônio da Patrulha','Assistente de licenciamento','Sou uma pessoa comunicativa, tenho habilidades com o kit office e o software QGis 3.22, além de conhecimentos em AutoCad. 
Fiz parte do Rotoract SAP como trabalho voluntário voltado para a comunidade, além de participar da Associação Atlética Acadêmica FURG, entidade que promove a cultura, esporte e integração entre universidade e comunidade. 
Gosto de cozinhar, jogar futebol e ir ao estádio ver jogos do meu time do coração, gosto de viajar, pedalar e correr.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-18T01:21:00.000Z'::timestamptz),
  ('Arthur Ferreira da Costa Nunes','arthur-nunes01@hotmail.com',NULL,'55999519641','1990-07-12',35,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1nK_5nlJdYtogw490Hk3Iu_FrahNRadmE','Direito','Pós-graduação Completa','Universidade da Região da Campanha - Campus Alegrete','2016-08-26','Sou formado','Tenho experiência em escritóros de advocacia, tendo trabalhado na área por 8 anos logo após formado, tendo trabalhado em 3 escritórios de advocacia. Atualmente trabalho como corretor de imóveis a um ano.','Técnico em transações imobiliárias, especialista em direito imobiliário e pós_graduando em direito civil: obrigações, negócios e contratos.',NULL,'Administrativa, Comercial, Licenciamentos','https://drive.google.com/open?id=1fTzLS0d9wWrX-J3AiL0TXKwbtvB8GUfA',NULL,'Instagram','Não','R$ 2.500,00 à R$ 3.000,00.','Sim',NULL,'Assistênte de licenciamento',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-18T01:24:00.000Z'::timestamptz),
  ('Ellen Victor dos Santos','v.ellen55@yahoo.com',NULL,'55984015564','2004-01-05',22,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','DFAB4F7E-141A-4A47-A2F6-04633F8D6191 - Ellen Victor dos Santos.jpeg',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','WMS Supermercados Big
Cargo: Jovem Aprendiz
Período: 19/07/2021 – 20/01/2023
Principais atividades: Atendimento ao público, reposição de produtos, suporte ao RH e empacotamento nos caixas.','Preparando-se para o primeiro emprego
SENAC - Presencial
Carga horária: 21 horas
Data de conclusão: 10/11/2020
Informática avançada
Exattus Educação Profissional - Presencial Carga horária: 60 horas
Data de conclusão: 10/12/2018',NULL,'Administrativa, Arquitetura, Financeiro, Marketing','https://drive.google.com/open?id=1OnKbJYSgb2hCa9XYLB6DBZWMwUXiYwWv',NULL,'Instagram','Não','R$1.110,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom, o que falar sobre mim? essa pergunta é sempre muito difícil, eu sou uma artista, tenho uma página no instagram (@lostbags_) onde vendo minhas artes (ecobags, telas e peças de cerâmica fria), levo como hobbie e forma atual de sustento, mas busco uma oportunidade de emprego melhor já que o meio artístico não é tão bem remunerado… Eu sou uma pessoa criativa, interessada em ajudar as pessoas e muito empática, procuro sempre ser honesta e humilde nas relações com as pessoas, sei que sou uma ótima colega de trabalho, ou pelo menos tento ser.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-18T03:19:00.000Z'::timestamptz),
  ('Davi Machado','davibass12@gmail.com',NULL,'51992379773','1991-03-15',34,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1k333q6yahSOzDEY3cJ-lFZeSAyKKo3He',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','CCR Via Sul - Almoxarife - 20/07/2022 atualmente
Trabalho em uma base operacional da CCR ViaSul onde é armazenado todo o material para obras e manutenção de toda a rodovia BR 290, BR 101,rodovia 448 e BR 386.
Faço a gestão de estoque, entrada, armazenamento e saída através de planilhas de controle.
Trabalho com as ferramentas de gestão ERP SAP ECC e SAP GRC no dia a dia.
Faço as requisições de compras de todo o material desde insumos das bases operacionais e praças de pedágios até materiais utilizados nas obras.
Atendo os clientes internos, terceiros e diversos setores como TI, engenharia, conservação de obras, administrativo.
Realizo o lançamento das notas fiscais de materiais para pagamento dos fornecedores atendendo os requisitos solicitado como prazos, etc...
Atendo chamados para lançamento de notas fiscais recebidas em outras praças e base das unidades ViaSul e ViaCosteira.
Realizo cadastro de materiais e a inserção de SKUs.
Neste período que estou ali foi reestruturado o almoxarifado do zero onde foi definido todos os processos para atender a realidade do do local, organizado o layout dos materiais atendendo as normas ambientais, ergonômicas e de segurança.
Nisso foi feito todo o mapeamento, localização e endereçamento dos materiais, segregação de materiais obsoletos dos reaproveitáveis, otimização de espaço, organização, aquisição de todas as FISPQs, controle de validade através de planilhas do excel, aquisição de armário corta fogo para produtos inflamáveis, atualização dos alvarás dos prédios das bases, controle e restrição de acesso do espaço do almoxarifado, foi contratado uma empresa para reciclagem do lixo e ressolagens e reestruturação no escritório do almoxarifado.','Assistente de Logística - Instituto Federal do Rio Grande do Sul - 200 horas
Logística Reversa - Sebrae
Excel básico, intermediário e avançado - Fundação Bradesco
Power BI - Fundição Bradesco
5S  - Sebrae',NULL,'Administrativa, Financeiro, Marketing, Engenharia','https://drive.google.com/open?id=11vTAvm55AeZPYEq0EhKuyWjHZJkQPmaW',NULL,'Indicação','Não','4000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Gosto de música e tocar instrumentos. Toco contrabaixo, violão, guitarra e teclado.
Amo caminhar e correr.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-18T09:26:00.000Z'::timestamptz),
  ('Pablo fechner de lima','pablolimafechner@gmail.com',NULL,'984164591','1990-10-10',35,'Solteiro(a)','2','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1hcjvg4YMsOK8I1I38tXTPiiKN05i-B2X',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Sind táxi 

Motorista',NULL,NULL,'Comercial',NULL,NULL,'Facebook','Não','R$3,500,00','Sim','Sind táxi (55)32434040','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-18T14:44:00.000Z'::timestamptz),
  ('Zara Taniz da Silva Rodrigues','zararodrigues7@gmail.com',NULL,'51996701029','1995-11-20',30,'União estável','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1lJN_xSokfhO9loW79x5ZWpdguY3sru-D',NULL,'Ensino Superior Incompleto','Uniasselvi','2026-08-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Comércio de Medicamentos Brair Ltda, Operadora financeira, 10-10-23.... Operação de caixa, atendimento ao público, reposição de produtos','Assistente Administrativo; Informática Básica',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Agência de Empregos','Não','1900','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-18T14:53:00.000Z'::timestamptz),
  ('Kethelyn Bastos Lourenço','kethelynabrava@gmail.com',NULL,'55996680328','2001-06-17',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=14DNbL-aZ9FlaRljQjYgjhbFd77I35hRt',NULL,'Ensino Superior Incompleto','Urcamp','2025-03-08','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei desde os 14 anos na empresa do meu pai em Quarai com vendas e na parte administrativa, parei em 2020.  

Trabalhei como operadora de loja no supermercado Baklizi de 07/12/2020 a 07/03/2021, minha função era repor mercadoria em estoque.

Fiz estágio por dois anos na Procuradoria geral do Estado e fazia peças processuais e dava andamento nos processos, de 07/07/2021 a 07/07/2023.

Trabalhei como auxiliar administrativo na empresa Nossa Senhora Santana de cama mesa e banho, de 31/08/2023 a 31/12/2023

Também tenho experiência como social mídia, faço alguns freelancer','Estou no 9 semestre de direito, tenho curso de auxiliar jurídico, curso de inglês básico e informática.','Auxiliar Jurídico','Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1o0EZd5DmXwdY2qj99dDbzthmFvJW0uRE',NULL,'Facebook','Não','1.700 a 3.000','Sim','Procuradoria Geral do Estado
Telefone: (55) 3241 3636
Falar com Ana Elmira Dias, secretaria responsável pelos estágios.
Urcamp
(55) 3243 1960
Falar com Matusa Mendes, coordenadora do campus ou com José Carlos Lobato, coordenador do curso de direito.','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-18T15:25:00.000Z'::timestamptz),
  ('Pablo fechenr de lima','pablolimafechner@gmail.com',NULL,'55994164591','1990-10-10',35,'Solteiro(a)','2','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1gCWKsWlkxFr8W5dUHSK7Qm1qpUXPbTRR','Autônomo','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Sou taxista a 12 anos',NULL,NULL,'Novos Negócios',NULL,NULL,'Facebook','Minha esposa','1,8','Sim','Sind taxi 32434040','Comercial','Adoro dirigir tenho boa comunicação adoro trabalhar em equipe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-18T15:37:00.000Z'::timestamptz),
  ('Bruna da Silva Machado','bruna_silva_machado@outlook.com',NULL,'51996515754','1991-10-06',34,'União estável','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=18rdi6dHHbbRmrjQmkzkx9yiRXwIkJyan','Administração de empresas','Ensino Superior Completo','Uniasselvi','2019-09-18','Sou formado','2022 a atual (home office e partir de 15/01/2023 meio período presencial) Responsável administrativo: pagamento e recebimento de contas, conferência de pagamentos em extrato, emissão de boletos, emissão de contratos, cobrança, fechamento e balanço de estoque, atendimento ao cliente e toda e qualquer função administrativa.
2021-2022- Empresa  2As (home office) Criaçao de todo sistema financeiro via planilhas Excel, organização de pagamentos de funcionários, organização das despesas da empresa. Empresa dos EUA
2020-2021- Sócia proprietária empresa Doces litorâneas: controle e organização administrativas, controle de produção e entregas externas.
2018-2020: Foes Academy- Organizadora de eventos (cursos de Micropgmentaçao), responsável por cotações e negociações dos locais dos eventos, e responsável administrativa.',NULL,NULL,'Administrativa','https://drive.google.com/open?id=1Rsh-zaBKfJwNdoadwt9D-WfcJuJujLTh',NULL,'Indicação','Nao','R$2.500,00','Não','Edna Foes +55 51 99925-7374 (Foes Academy)
Angiele +1 (614) 592-3454 (2 As)','Assistente Financeiro','Sou extremamente comunicativa, parece clichê mas hoje procuro uma empresa onde eu possa crescer e me desenvolver profissionalmente, onde eu trabalho me chamam de "A SOLUCIONADORA DE PROBLEMAS" pois não tenho medo das dificuldades e vou atrás do que for necessário para resolver o que for necessário. Sou administradora por amor mesmo, desde pequena sempre foi isso que eu quis e quando me formei e comecei a trabalhar na aérea me apaixonei mais. Gosto dos desafios do financeiro de administrar e poder contribuir para o crescimento da empresa e assim eu crescer junto. O Fato de eu já ter tido minha própria empresa com certeza contribuiu muito para meu desenvolvimento, hoje eu entro de cabeça no meu trabalho e dou o melhor de mim sem me preocupar com hora, ou qualquer outra coisa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-18T17:22:00.000Z'::timestamptz),
  ('João Pedro Fernandes Famer','jpfamer97@gmail.com',NULL,'51998272517','2004-02-23',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1lMb6xwpdogfs2-SHSbPvOJhy02gZaaqf','Aspirante-a-Oficial do Exército da Arma de Engenharia','Ensino Médio Completo','Centro de Preparação de Oficiais da Reserva de Porto Alegre','2023-12-02','Não, no momento pausei/parei por um período.','Exército Brasileiro ( Centro de Preparação de Oficiais da Reserva de Porto Alegre)
Entrei como Aluno no Curso de Formação de Oficiais da Reserva, assim me formando e sendo declarado Aspirante a Oficial da arma de Engenharia, recebendo o diploma.
Entrei no início de fevereiro de 2023 e sai no dia 2 de dezembro de 2023 no final do curso
Principais atividades era o cumprimento de horário, dia começava 7 horas da manhã e indo até as 17:00, mas algumas vezes ia até a noite, aprendi a importância da disciplina, liderança e ética militar e principalmente do trabalho em equipe.
Fiz viagens para conhecer os Batalhões de Engenharia do exército em Cachoeira do Sul e Alegrete, assim aprendendo como funciona a Engenharia dentro do exército, a parte da engenharia de combate e à engenharia de construção, como varias estradas e vias que o exército esta fazendo.

Trabalhei na empresa Galpão F. Eventos da minha família, assim ajudando na locação do espaço e da organização para eventos.','Minha formação me permitiu desenvolver habilidades essenciais que contribuirão significativamente para a minha atuação na empresa. Aprendi a importância da disciplina, do trabalho em equipe e da liderança, aspectos cruciais para promover um ambiente de trabalho eficiente e harmonioso. Meu treinamento em ética e responsabilidade me tornou um profissional comprometido com a integridade e a excelência em todas as tarefas que realizo.',NULL,'Administrativa, Comercial, Novos Negócios, Engenharia','https://drive.google.com/open?id=1_VWTDOfAd1XTl7czfnUO7_BtTV-CUrgW',NULL,'Instagram','Não','1.999','Não',NULL,'Comercial','Gosto de falar Espanhol, pois aprendi a conversar com vários Argentinos acredito q seja um nível de fluência bom, gosto de estar com a família e amigos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-18T19:21:00.000Z'::timestamptz),
  ('patricia machado','paty.noia74@gmail.com',NULL,'51995370064','1996-01-03',30,'Solteiro(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1SZYHZaOkE_BP39kNc2dfOqhTjhPbxYBN',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','via uno, auxiliar de contabilidade, comecei 20/08/2020 e saio 15/08/2023 lançavas notas dos cliente, fazia cobranca pelo telefone',NULL,NULL,'Administrativa',NULL,'https://drive.google.com/open?id=1qCCxFNqGwuibqJmRRxEbtDLSZglYRa8d','Agência de Empregos','nao','0000','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-18T22:07:00.000Z'::timestamptz),
  ('Rafaela Ramos da Silva','rafaramossilva989@gmail.com',NULL,'51980447737','2001-08-06',24,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=13HJ126GvQMa4vKZ0R9-N5BCUCxBvNWOK','Administração de empresas','Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1- BT Telecom 
2-  Atendente interna 
3-  16.03.2018 / 20.11.2018
4- Atuava no atendimento ao cliente realizando vendas internas para empresas, 

1- Jovem Profissional 
2- Vendedora 
3-  07.02.2021 / 19.09.2021
4- Atuava na venda de cursos profissionalizantes e graduação,matrículas e organizando fechamento de turma','Olá, me chamo Rafaela  estou cursando Administração no Terceiro semestre na Instituição Uniasselvi, tenho conhecimento em informática básica, realizei curso preparatório  trainee Coach na mundo office .',NULL,'Administrativa, Estágio, Financeiro',NULL,'https://drive.google.com/open?id=1RAsHHclXLsptiItnysv3a_jXWFazM3LD, https://drive.google.com/open?id=1K6_dc0IfyWIc8m6leLI_x67WOO7cB96x','Indicação','Não','Salário compatível com a Função','Sim',NULL,'Assistente Financeiro','Olá meu nome é Rafaela estou curando administração pois sempre foi uma área que me despertou um enorme interesse. Gostaria de começar a atuar na área para por meu conhecimento em prática. Sou uma pessoa esforçada, dedicada gosto de trabalhar em grupo e dividir meu conhecimento. Aguardo o retorno da empresa pois estou ansiosa para fazer parte da equipe e dar o meu melhor ,desde já aqui fica meu agradecimento .','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-18T22:12:00.000Z'::timestamptz),
  ('Maria Eduarda Carvalho dos Santos','dudaasantos1408@gmail.com',NULL,'51980539110','2002-08-14',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Hz7Mpi9QfhFbMpwPoswD2zWzTQi9ta4l','Biologia','Ensino Superior Incompleto','Uniasselvi','2024-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Secretaria Municipal de Educação de Santo Antônio da Patrulha, recepcionista, de 16/09/21 até 15/06/23
Escola Municipal de Educação Infantil Isdra Abraham, auxiliar de turma, de 16/06/23 até o momento','Word, Excel, PowerPoint, Gestão Ambiental, Inglês Básico e Atendente de Farmácia',NULL,'Estágio, Licenciamentos',NULL,NULL,'Indicação','Não','2.000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-19T01:51:00.000Z'::timestamptz),
  ('Fernanda Maria de Oliveira','fernandamarianh@gmail.com',NULL,'51986120145','1997-06-22',28,'União estável','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=184lZkukj8-bx57QPfhVq-WNXqju-3rUn','Biologia','Pós-graduação Incompleta','Universidade Feevale','2022-07-23','Sou formado','Universidade Feevale: Agente de combate à dengue. Estágio com 09 meses de duração e iniciado em 2015. A principal atividade eram as visitas domiciliares para procura de foco de mosquitos.
Katy Calçados: Auxiliar de escritório. 01 e 02 meses, iniciados em 2016. As atividades eram: emissão de notas fiscais de compra e devolução, conferência de qualidade, auxílio ao setor de compras, auxílio ao setor de estoque e ao site da empresa.
Prefeitura de Campo Bom: Agente de Combate à Endemias. Estágio de 13 meses, com início em 2018. Atividades: visita a domicílios para procura de focos de mosquitos, ministração de palestras para profissionais da saúde e estudantes da Educação Básica.
Prefeitura de Viamão: Agente de Combate à Endemias. Contrato de trabalho, com duração de 09 meses e início em 2020. Atividades: visitas domiciliares, atendimento ao público em UBS para auxilio à vacinação de COVID-19, coleta de PCR e rotinas administrativas em UBS.
Hospital São Carlos: Assistente administrativo. 06 meses com início em 2021. Atividades: auxiliar de faturamento de convênios, rotinas administrativas, arquivamento de documentos.
Ao longo da Graduação as oportunidades que surgiram em minha área foram relacionadas às Endemias, por ser uma preocupação de todas as administrações, mas como estágios obrigatórios também atuei com Educação Ambiental e auxiliar de Biotério de experimentação animal.','Sou formada em Ciências Biológicas Bacharelado, possuo cursos curtos e médios em várias áreas de atuação, desde saúde pública até Defesa Civil. Durante a graduação participei de um grupo de pesquisa com foco em desastres e vulnerabilidade socioambiental, atualmente sou mestranda na mesma área, trabalhando com Gestão de Riscos e Desastres. Como formação complementar, estou me especializando em Perícias de documentos e assinaturas.',NULL,'Licenciamentos',NULL,NULL,'Anúncio Da Uniasselvi','Não','2.000','Sim',NULL,'Assistente de licenciamento','Estou me especializando em Perícias de documentos e assinaturas e findando o mestrado pretendo estudar sobre Perícias Ambientais, para alinhar minha área à um mercado com mais possibilidades. Estou estudando inglês para aumentar minhas habilidades profissionais e sempre que posso faço cursos onlines em temas do meu interesse, como áreas de risco, desastres e Educação Ambiental. Sou pesquisadora e extensionista voluntária em Gestão de Riscos desde a Graduação e possuo bolsa de mestrado na mesma área. Não fiz cursos de culinária, mas faço sushi muito bem, inclusive vendia na pandemia, também gosto de receitas de massas, como pães, macarrão e pizzas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-19T18:27:00.000Z'::timestamptz),
  ('Bibiana Souza','bibianasouza_rs@hotmail.com',NULL,'51995176608','2003-07-20',22,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1klI8sRUR2CX2qtO8doFlV-GXF6eJp_KA',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Aprendiz de Qualidade na empresa Magna Cosma,  início em novembro de 2020 e final em abril de 2022. Desenvolvia relatórios relacionados à qualidade das peças trabalhadas, realizava testes de qualidade e controlava o sistema interno de controle de qualidade. Além das atribuições principais, fazia algumas traduções de materiais vindos da matriz canadense. 
Estagio no Ministério Público de São Jose do Norte, início em novembro de 2022 e final em julho de 2023. Realizava aberturas de denúncias e  produzia peças jurídicas em geral, como arquivamentos e intimações, dependendo do caso trabalhado.',NULL,NULL,'Administrativa','https://drive.google.com/open?id=162Tndx-nbu-ZUeBHmyKHSbTfm_QQZmCW',NULL,'Indicação','Antonio Alves','R$1.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou fluente em inglês, certificada pelo TOEIC','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-19T19:40:00.000Z'::timestamptz),
  ('Rafael Santos Borba','raafael062009@gmail.com',NULL,'51980504101','1997-06-27',28,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1cfdiJzmvTEjhJ-jwlQ9KzIOtEP8G9DEk','Engenharia Agroindustrial Agroquímica','Ensino Superior Incompleto','FURG - Universidade Federal do Rio Grande','2025-01-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estou me candidatando ao meu primeiro emprego.','Participei do XIV Congresso Brasileiro de Gestão Ambiental, realizado em Natal/RN, no período de 07 a 10 novembro de 2023, e realizei a apresentação de 2 trabalhos técnico-científicos, com os seguintes temas; Análise da Qualidade da Água de Reuso para Abastecimento de Caldeira em uma Indústria Moveleira, Plano de Gestão de Resíduos Sólidos em uma Agroindústria.
Durante a minha formação cursei a disciplina de gestão ambiental, que tem na sua ementa legislação ambiental e as licenças ambientais, e com isso adquiri conhecimento base e desenvolvi um apreço sobre o assunto.','Não possuo.','Estágio, Licenciamentos','https://drive.google.com/open?id=1ZjXmLZu9YiyU3_58v-_lt2n2OsHSivKI','https://drive.google.com/open?id=1Eb8UeJLgOyLdN4OiMOZ-fo3pMULjme-u, https://drive.google.com/open?id=10T-nQQI19ZnsqTZODUOvoYFDVB6gi5Fh','Instagram','Sim, por Máximo Tronchoni.','Para o estágio eu vi que estão ofertando uma bolsa de R$ 1.600,00 e esta dentro da minha expectativa para um estágio. Para a vaga como assistente de licenciamento almejo R$ 2.000,00.','Sim','Não possuo.','Estágio na área licenciamento ambiental ou assistente de licenciamento.','Sou amante de um bom cafezinho, tempos atrás comecei a pesquisar sobre café e as diferentes formas de se fazer o cafezinho dos sonhos, e durante essas pesquisas aprendi que comprar o café em grão mesmo e moer ele na hora, proporciona uma experiência completamente diferente...','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-20T01:04:00.000Z'::timestamptz),
  ('Gisele de Lara Carneiro Perassollo','giseledelaraarquitetura@outlook.com',NULL,'55996887866','1994-07-30',31,'Casado(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1skzvOtTOmu6dtLabge9gSZhz1SEEjkIu','Arquitetura','Pós-graduação Completa','Universidade Integrada do Alto Uruguai e das Missões- Campus Santiago','2020-01-20','Sou formado','Gisele de Lara Arquitetura e Construção-Vínculo: arquiteta urbanista fundadora, Enquadramento Funcional: Proprietária- 2022 até o momento. 
É um escritório de arquitetura e urbanismo com sede em Jaguari e região , e online presta
serviços para todo o Brasil, o nosso escritório elabora projetos baseado em cada cliente e
suas peculiaridades, oferece um trabalho diferenciado focado na satisfação do usuário e
sua experiência positiva em relação a obra. Esta empresa trabalha com:-Projeto
arquitetônicos completos-Projetos para financiamentos-Projetos de interiores comerciais,
residenciais e corporativos-Projeto estrutural-Projetos elétricos-Projetos hidrossanitáriosregularização imobiliária -reformas e ampliações-perícias-laudos técnicos-projetos de
marcenaria-paisagismo-projetos luminotécnicos-projetos de acessibilidade-loteamentosProjetos urbanísticos-GERENCIAMENTO DE OBRAS/ADMINISTRAÇÃO-execuções de obrasPPCI-consultorias e assessorias.-Atendimento ao cliente

Profissional Liberal-Vínculo: arquiteta e urbanista, Enquadramento Funcional: profissional liberal- 2020-2022
Atua com os seguintes serviços:-Projeto arquitetônicos completos-Projetos para
financiamentos-Projetos de interiores comerciais, residenciais e corporativos-Projeto
estrutural-Projetos elétricos-Projetos hidrossanitários-regularização imobiliária -reformas e
ampliações-perícias-laudos técnicos-projetos de marcenaria-paisagismo-projetos
luminotécnicos-projetos de acessibilidade-loteamentos-Projetos urbanísticosGERENCIAMENTO DE OBRAS/ADMINISTRAÇÃO-execuções de obras-PPCI-consultorias e
assessorias.Trabalhamos em 2 modalidade:PRESENCIAL: todas as cidades
gaúchasONLINE: para todo Brasil e exterior

Prefeitura Municipal de Jaguari-RS- Vínculo: Bolsista, Enquadramento Funcional: estagiária de arquitetura e urbanismo, Carga
horária: 30 - 2016 a 2018- 
Auxiliar na identificação dos procedimentos realizados na unidade concedente de estagio,
acompanhar analise de projetos, elaboração de desenhos arquitetônicos, acompanhar
elaboração de projetos, relatórios sobre obras, acompanhar execução de obras, dentre
elas destaca-se as principais, ponte de rodagem da cidade de Jaguari, construção da nova
sede da Escola Municipal São José, construção e conclusão da E.M.E.I Doce Encanto,
reforma e ampliação da creche Tia Mana, pavimentação poliédrica, pavimentação asfaltica,
quadras poliesportivas e dentre outras obras, pertinentes e valorizadas na cidade,
acompanhar atendimento ao público, controle de planilhas ( orçamentos, cronogramas,
organização e listagens de obras em andamento, etc.), reproduzir projetos de arquitetura e
engenharia.

Prefeitura Municipal de Nova Esperança do Sul- Vínculo: Bolsista, Enquadramento Funcional: estagiária técnica em Segurança do Trabalho,
Carga horária: 30- 2014 a 2015
Identificação dos procedimentos realizados na unidade concedente de estágio,
acompanhar a documentação de segurança do trabalho, acompanhar fiscalização de obras de segurança, acompanhar o técnico de segurança do trabalho, agendamentos de
consultas e dentre outros.','Atualmente faço mestrado em Engenharia na Unipampa-Campus Alegrete, tenho pós graduação em Mentoria para ensino tecnológico e profissional pelo IFES-Campus Cachoeiro de Itapemirim , além de cursos extras como, Perícia Judicial, curso de extensão universitária em eletricista com ênfase em instalações fotovoltaicas, Minicurso de regularização de imóveis, e dentre outros.',NULL,'Arquitetura, Engenharia','https://drive.google.com/open?id=1KA0VcNad0JEfuq2Prs2kYxgtqwKp_oPy','https://drive.google.com/open?id=1rzCFSaYarCl745niPlRsgvS9G1syTEO_','Instagram','não','acima de 3500','Sim',NULL,'assistente de licenciamento',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-21T03:01:00.000Z'::timestamptz),
  ('Maiara da Silveira Viana','mayaradeltasul@gmail.com',NULL,'+5551980574402','1994-01-08',32,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1nXmrWb1JxK2jy-H-Cj5X2X4Ahputt_n1','Biologia','Pós-graduação Completa','Uniasselvi','2019-10-12','Sou formado','Vendedora - Lojas Deltasul
Professora- Escola Antonio Laureano
Analista Financeiro - Arrozagro Cerealista Ltda de 2020 ate o momento','Pos Graduada em Educação Inclusiva
Pos Graduada em Meio Ambiente e Sistentabilidade
Curso em Analista Financeiro',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1KkHEW9jZDPxSar-6qKBpD8qgZqKfq23J',NULL,'Agência de Empregos','Não','4.500,00','Não',NULL,'Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-22T00:08:00.000Z'::timestamptz),
  ('Andrieli Fraga da Silva','andrielifraga1997@hotmail.com',NULL,'51980353324','1997-05-04',28,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1IbPMaEnqsoR0F1bCp-FDzlHVZpHZAHqX','Ciências Contábeis','Ensino Superior Completo','Uniasselvi','2018-03-17','Sou formado','Nome da empresa: Santa economia
Cargo ocupado: Vendedora
Data início e fim: 13/03/2014 a 17/11/2016

Nome da empresa: Lojas Pompéia 
Cargo ocupado: Vendedora
Data início e fim: 17/11/2016 a 28/06/2018

Nome da empresa: Andreia Peixoto Contabilidade
Cargo ocupado: Auxiliar contábil
Data de início e fim: 04/02/2019 a 21/11/2019

Nome da empresa: clínica sorrifacil
Cargo ocupado: Recepcionista
Data de início e fim: 22/02/2020 a 06/11/2020

Nome do cargo: Lojas Hyundai Osório 
Cargo ocupado: Auliar financeiro
Data de início e fim: 21/12/2020 a 09/05/2023',NULL,NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1hYQ6DWTCQt_zh95qqKcRPzu_gr4dPvaK',NULL,'Instagram','Não','1700','Não','Carine- 98154-8648
Roy- 30959494','Assistente financeiro','Sou uma pessoa responsável, dedicada em tudo que faço, gosto de ter rotina, amo estar com minha família meu bem mais precioso.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-22T13:29:00.000Z'::timestamptz),
  ('Rodrigo Corrêa da Silveira','rcds7000@gmail.com',NULL,'55996752618','2000-11-10',25,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1vn4fNl3-50HIOMuIyLCZQeyBd_cTzm_9',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Empresa Almabaska vinhas e vinhos
Auxiliar administrativo
Periodo de 2021 até 2023
As atividades eram cuidar das finanças, organizar estoque, divulgar as redes sociais, cuidar das despesas e também tinha uma parte comercial em que eu vendia os produtos da empresa (azeite de oliva, vinhos e espumantes)','Curso Avançado de inglês.',NULL,'Administrativa, Financeiro, Novos Negócios, Engenharia','https://drive.google.com/open?id=1cs1hs2XYRk8Xy2t6yp4ePUGrczUX5VgG',NULL,'Facebook','Não','2500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu sou um rapaz muito hábil com tecnologia, tenho bastante conhecimento de hardware e software de computadores, sou muito atento aos detalhes e as vezes até um pouco chato com isso. Gosto bastante de aprender coisas novas e estou disposto a trabalhar para ter um futuro melhor. Como moro em região de fronteira eu falo espanhol além de inglês e português, então pode-se dizer que consigo me comunicar com quase todo mundo levando em conta as línguas universais. Sou apaixonado por basquete, nas horas vagas é meu espodten favorito de praticar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-23T09:10:00.000Z'::timestamptz),
  ('Patrick fidelis Severo','severopatrick3@gmail.com',NULL,'55997246618','2023-12-15',2,'Casado(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1hBiJVVL2OOT7RVteDZIobhR7bSKi8xFQ',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalho na imprensa pizzaria il gatto, função garçom, já trabalhei como vendedor em comércios varejão.',NULL,NULL,'Comercial',NULL,NULL,'Facebook','Nao','3.000','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-23T18:39:00.000Z'::timestamptz),
  ('Jéssica Garcia Pellisoli','jessicapellisoliagro@hotmail.com',NULL,'51995393092','1995-02-18',31,'Solteiro(a)','0','Sim','Caraá/rs','https://drive.google.com/uc?export=view&id=1C7RHAhsU8eXc0DT94qYZparSx7aSbm1b',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Segue no currículo anexo','Cursando Técnico em Enfermagem',NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1-R10ktRK_6QccopTP1iLhsYTIHGC1nqe',NULL,'Agência de Empregos','Não','1.700','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-24T00:40:00.000Z'::timestamptz),
  ('Maria Eduarda Barros Consul','consulduda6@gmail.com',NULL,'51997973993','2003-08-01',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1-1RIx9u4dUcoNEhdkXCWOkyyIZNI6WGf','Pedagogia e Iniciarei Adm.','Ensino Médio Completo','IEESA','2023-01-07','Não, no momento pausei/parei por um período.','Atualmente trabalho como Auxiliar Administrativo na empresa Frigorífico Lagoense.','Me formei em 2023/1 em Magistério junto com o ensino médio. Uma área lindíssima que tive o prazer de atuar por dois anos.
Mas hoje, sinto-me pronta para novos desafios e por isso iniciar a ADMINISTRAÇÃO será um objetivo ímpar na minha vida.',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não.','1700','Não','Gabriela Santos 519-97662947','Assistente financeiro.','Olá. Me chamo Maria Eduarda, tenho 20 anos. Formada em Magistério e cursando a Pedagogia, hoje me sinto preparada para aceitar novos desafios e um deles é iniciar uma nova jornada na graduação de Administração. 
Sou sonhadora, proativa, comunicativa e bem humorada. Tenho certeza dê que será uma ótima oportunidade a YOUNG.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-24T12:05:00.000Z'::timestamptz),
  ('José Roberto de Oliveira Sales','jroberto_7402@hotmail.com.br',NULL,'55991349214','1974-02-07',52,'Casado(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1nHHg1FYMoLyNLpl-n3K_Fr3WrpSd9JgQ','Gestão Pública','Ensino Superior Completo','Unipampa','2014-01-24','Sou formado','Drogaria Cidade- vendedor 13/09/2019 a 03/09/2021',NULL,'Corretor de imóveis','Comercial',NULL,NULL,'Agência de Empregos','Não','3000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-24T13:53:00.000Z'::timestamptz),
  ('Tauãne Oliveira do Nascimento','tauanenascimento76@gmail.com',NULL,'55999248398','2002-10-13',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1YgDCkdEiiVlg2WG-cZwwxS0MiBiHn64U','Administração em andamento','Ensino Superior Incompleto','Universidade Federal do Rio Grande','2027-01-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura Municipal de Santo Antônio da Patrulha, atuei como estagiária tendo como principal função a busca de valores para adquirir itens e serviços para o município.',NULL,NULL,'Administrativa','https://drive.google.com/open?id=1dP2T9N73mABaGf_JeyFGxplz2nOjNBby',NULL,'Instagram','Nao','1300','Não',NULL,'Estágio','Tenho conhecimento no pacote Office, habilidade de comunicação com qualquer faixa etária, habilidade de agir sob pressão. Acredito que uma entrevista presencial seria ótimo para nos conhecermos melhor.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-24T18:39:00.000Z'::timestamptz),
  ('Matheus.da Silveira Falkoski','matheus.falkoski20@gmail.com',NULL,'51999270127','2002-11-13',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=12j4a9Ni7fyTlSrxxT8We4hNgnHF49VC2','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2026-12-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','meu primeiro emprego','Informatica basica',NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1wvcFTxidSkCzHPOlvz_Zp3_dAujBa3zw','https://drive.google.com/open?id=1RXul4ehJI6Swjmvu4F7CYZCKgMXfGj0K','Instagram','ninguem','2000','Não',NULL,'Estágio Financeiro','curso de informatica basica 
curso digner grafico','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-25T22:36:00.000Z'::timestamptz),
  ('Graziela de Assunção','grazydeassuncao@gmail.com',NULL,'51997993931','1984-02-29',41,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ptFspdN4vXcTj0FjigME9mlrOrtIJFaP','Marketing','Ensino Superior Completo','Ftec Faculdades','2012-09-14','Sou formado','Intral S/A - Analista Comercial. Julho/2004 à Janeiro /2013.Responsável por atendimento ao cliente, aos representantes, analise de necessidades, elaboração e encaminhamento de propostas comerciais, controle de estoque.

Telesat Telecom ( Revenda de produtos da ViVo). Março/2016 à Maiô/2017. Responsável por realizar atendimento ao cliente, oferecer planos,  aparelhos e acessórios.

RR Shoes Industria de Calçados/ Via Uno. Setembro/2017 à Agosto/2023. Responsável por realizar atendimento a representante e lojistas, destruição de demandas entre a equipe, solicitação de orçamentos e prazos de serviços e materiais gráficos além elaboração de ordem de compra e contato direto com fornecedores.','Curso de como gerenciar reclamações de clientes, Curso de capacitação de vendas, Curso de técnicas de apresentação, Curso de Extensão de e Endomarketing.','Graduação em Marketing','Comercial, Marketing',NULL,NULL,'Indicação','Sim, Flavia','R$2.500,00','Não','Rita Rodrigues (Gerente de Marketing).                      51 99707-3500','Quero inscrever-me no banco de talentos da Young!','Olá, quero muito uma oportunidade, sou comunicativa, proativa, gosto de desafios, tudo que me proponho a fazer, realizo com o máximo de dedicação para alcançar o sucesso!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-26T22:04:00.000Z'::timestamptz),
  ('Jessica Rodrigues Gomes','jessicarodriguesgomes76@gmail.com',NULL,'55997142108','1993-12-23',32,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=104Na6C_RDuFkRHmsbLq7PQinjk2k0C_L',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Atendimento ao público 2 anos',NULL,NULL,'Administrativa',NULL,NULL,'Facebook','Nao','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-27T14:40:00.000Z'::timestamptz),
  ('Vitória Caroline da Silva Ribeiro','vittcaroline1@gmail.com',NULL,'51980105202','1999-03-24',26,'Divorciado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Hik_o4wR5sQ3SpwfAMM1ngcAwW0vPyVi','Administração de empresas','Ensino Superior Completo','Centro Universitário Leonardo da Vinci (Uniasselvi)','2023-08-07','Sou formado','Jovem aprendiz: RR Shoes/área da expedição 2016-2016
RR Shoes: Expedição 2016 - 2018
Loja Atrevida: Gerente 2018 - Dias atuais.','Iniciei uma graduação de Publicidade e Propaganda, porém tive que parar por conta da perda do serviço, retornarei assim que possível. Também irei dar inicio a pós graduação em Marketing Digital.','Vou adicionar meu diploma e meu curriculo abaixo:','Administrativa, Comercial, Marketing','https://drive.google.com/open?id=1E01qHENNbi2GXttfsKtZvnrDe1152vdZ','https://drive.google.com/open?id=1ktXkjEP1TbJyS_anyqDDChld4wBMy2ht, https://drive.google.com/open?id=1Nawq00f1UKHR0_hXeGuVPYYEvgdbihAq','Instagram','Não','Salário relativo a área de atuação','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Me chamo Vitória, tenho 24 anos. Me formei tem pouco tempo, e adoraria ingressar na área, trabalho como gerente em loja de roupa, e tenho facilidade em interagir com cliente. 
Tenho carteira de motorista A e B, e nenhuma dificuldade em trocar de cidade, estou aberta a novas experiências e novos ensinamentos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-28T04:15:00.000Z'::timestamptz),
  ('Quetelen Freiberger Martins','quetelenf@gmail.com',NULL,'51998757762','1998-07-31',27,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1pT2-p4uZeO5SZA_I5OKmlrqPASsSJhiJ',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Posto de Saúde Central 
Cargo: Recepção 
Principais atividades: atendimento direto ao público; agendamento de consultas; cadastro de pacientes.

Escola Técnica e Faculdade Jovem Profissional 
Cargo: Consultora de Vendas 2015 a 2017 e depois de 2021 a 2023
Principais atividades: vendas de cursos profissionalizantes, técnicos e graduação; vendas por telefone e presencial; treinamento de vendas; realização e digitalização de contratos; suporte para alunos através do WhatsApp.',NULL,'Curso de marketing e vendas; curso de oratória','Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram','Não','1800','Sim','Gilberto Mello 51998966086 Diretor geral da Escola Técnica e Faculdade Jovem Profissional','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-29T17:47:00.000Z'::timestamptz),
  ('Pamela Tainá Rosa da Silva','pamelasilva47748@gmail.com',NULL,'51998285881','1997-12-09',28,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1UIo9RYHCw9Xr-_g2tEN8mWZLOPEW46T4',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Prefeitura Municipal de Santo Antônio da patrulha
2017-2020 
Auxliar de Escritório 
Doces seleção 
06/2021- 10/2022 
Vendedora/atendente 
Rosângela Brito- 
04/2023-10/2023
Atendente 
ATL Transportadora
10/2023-01/2024 
Auxiliar de Escritório','Cursos básicos de informática',NULL,'Administrativa','https://drive.google.com/open?id=1SOkfQdf-1F3-7L1KcfNwPKE9MZSHGQiu',NULL,'Instagram','Sim, Suelen Lopes','2.000,00','Sim','Doces Seleção-  3662-6380 (Patrícia, Cândido ou Manoel)','Quero inscrever-me no banco de talentos da Young!','Tenho desejo em aprender com mais uma experiência diferente para mim, não tenho medo de desafios e tenho certeza que essa oportunidade seria mais um novo aprendizado pra mim.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-29T17:50:00.000Z'::timestamptz),
  ('Thiago Fabricio dos Santos Barbosa','Fabricioo100505@gmail.com',NULL,'51995104686','2005-05-05',20,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=156WBxqa4mk9Luo5iCPq_ebzhmyTZeaUj',NULL,'Ensino Superior Incompleto','Ulbra Canoas',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Cafe du Centro, Auxiliar administrativo, operador de caixa e atendente, 05/01/2020 até 18/01/2024','No momento estou fazendo um curso de excel avançado.',NULL,'Estágio',NULL,NULL,'Facebook','nao','1600','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho bastante conhecimento sobre como administrar bastante coisa, sempre administrei um negocio familiar, gosto de ter o que fazer sempre, sou responsável, e me comunico bem.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-30T14:29:00.000Z'::timestamptz),
  ('Raíssa Vitória Silva dos Santos','raissavitoriasilvadossantos49@gmail.com',NULL,'51996296486','2005-09-11',20,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=10Ly0lxjxZ1ICeSWxBDa8zLJLLJBRukvU','Curso Magistério, no Colégio Estadual','Ensino Médio Completo','Cursando magistério ultimo ano','2025-01-11','Sou formado','Trabalhei no Colégio Santa Terezinha, como auxiliar de professor, iniciei no dia 13/03/2023 e sai no dia 10/11/2023, gosto bastante de aprender coisas novas, sou bem interessada e perfeccionista faço tudo quantas vezes forem possíveis para que saia tudo perfeito','Fiz curso de informática, e hoje curso  Magistério',NULL,'Estágio, Marketing',NULL,NULL,'Instagram','Nao','1.000','Não',NULL,'Estágio Financeiro','Sou uma pessoa muito tranquila, gosto de conversar porem um pouco envergonhada mas nada que com o tempo dê convívio eu me solte mais, amo mexer na internet e conhecer coisas novas','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-31T00:20:00.000Z'::timestamptz),
  ('Roberto kichler','kichlerroberto167@gmail.com',NULL,'51999496391','1996-04-20',29,'Solteiro(a)','1','Não','Taquara/rs','https://drive.google.com/uc?export=view&id=1K6ZG5qS2uzGRTGeL-Iym3ftI4nY46MzC','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2026-12-25','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Nenhuma',NULL,NULL,'Administrativa, Estágio, Financeiro, Licenciamentos',NULL,NULL,'Facebook','Não','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-31T01:37:00.000Z'::timestamptz),
  ('Patrícia Machado','paty.noia74@gmail.com',NULL,'995370064','2024-01-27',2,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1xlEpSUj3uvZgRrHzDXJaq-P3R1G4gynR','Administração de empresas','Ensino Médio Completo','Uniasselvi','2024-08-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) via uno 2) auxiliar de contabilidade 3) 20/08/2020 4) 08/08/2023',NULL,NULL,'Comercial','https://drive.google.com/open?id=1wNHsXz__1-NOP1anNGQD9THLjPGF0fOE',NULL,'Agência de Empregos','Nao','Combinaremos co. A empresa','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-31T15:07:00.000Z'::timestamptz),
  ('Daiani lete Oliveira de Souza','daianioliveira890456@gmail.com',NULL,'51998601092','1998-05-27',27,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1NjvDw0NB0T6Pm4kRLFqsvq2Nl0JbgGgB','Pedagogia','Ensino Médio Completo','Escola técnica e Faculdade  jovem profissional','2021-12-23','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','N trabalhei apenas estudei e vou começar a minha faculdade','Admistracao','Não tenho','Estágio',NULL,NULL,'Agência de Empregos','Nao','2.000','Não','Não tenho experiência quero muito trabalhar e aprender','Estágio Financeiro','Meu nome e Daiani tenho 25 anos quero muito uma oportunidade','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-31T15:17:00.000Z'::timestamptz),
  ('Érika dos Santos Almansa','erikadossantos1208@gmail.com',NULL,'51996937826','2004-08-12',21,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Qq3elphVh5AwN5DmnC7c62CYwkAMTpp-','Enfermagem Bacharelado','Ensino Superior Incompleto','Instituto Leonardo da Vinci - Uniasselvi','2026-12-05','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Meu primeiro emprego.','A enfermagem é uma área desejada por mim a muitos anos, sendo um sonho, paixãoe conquista cursar essa área,  desenho apósa conclusão, realizar uma pós-graduação na área de UTI e Emergência. Meu desempenho e programação de estudos é funcional com disponibilidade de horários. Anseio por uma oportunidade.',NULL,'Estágio','https://drive.google.com/open?id=11gqjiN8RdFlnZDPk5u6A1tUR3K6XXOD-',NULL,'Agência de Empregos','Não','1.000 a 1.500','Não',NULL,'Tive acesso a vaga de estágio comercial, mas deixo meu currículo e informações à disposição de qualquer vaga disponível.','Primeiramente muito interessante este campo, se destacaram por quererem realmente nos conhecer. Eu sou uma ótima cozinheira, me dedico em tudo que consigo abraçar. Como falei anteriormente, eu realmente preciso de uma oportunidade, faço faculdade particular e sou casada, apenas preciso dessa chance para demonstrar que posso contribuir e agregar na empresa. 
Obrigada.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-31T17:01:00.000Z'::timestamptz),
  ('Ricardo Rolim da Gama','ricardorolim91@gmail.com',NULL,'51995482718','1998-03-17',27,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1odmZTKn_k3u50jDU1xJ0G9zTauxdjXbg','Administração de empresas','Ensino Superior Incompleto','Universidade Federal do Rio Grande','2026-12-22','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) PREFEITURA MUNICIPAL DE OSORIO
2) Assistente Administrativo
3) jul. 2023 - jan. 2024
4) Conhecer a unidade concedente de estagio;
auxiliar na identificação dos procedimentos
realizados na unidade concedente de estagio;
acompanhar a movimentação de processos;
acompanhar as rotinas administrativas do setor;
auxiliar na elaboração de relatórios, acompanhamento de licenciamentos ambientais e processos.


1) DC Multimaracas
2) Atendente/ Vendedor
3) set. 2021 - jan. 2022
4) Gestão eficiente do ciclo de vendas de veículos,
com foco em negociação, contratos e parcerias
bancárias. Resolução eficaz de questões legais e
cartorárias. Atendimento ao cliente de alta
qualidade. Colaboração estratégica com a
equipe de vendas para atingir metas.


1) BRQ Queijos
2) Auxiliar de producao
3) fev. 2018 - nov. 2018
4) Gerenciamento completo do ciclo de produção
de queijos, incluindo controle de qualidade,
organização de freezers, atividades
multifuncionais, gestão de estoque e
colaboração eficiente com a equipe para
garantir excelência operacional.',NULL,'Cursos e Palestras:  BPF - Boas Práticas de Fabricação (MUSTANGPLURON - set. 2018): Participação em curso que aprimorou meu entendimento sobre Boas Práticas de Fabricação, proporcionando conhecimentos essenciais para garantir a qualidade na produção.  ENGENHARIA DE PRODUÇÃO: DEFINIÇÕES DE SUAS 10 ÁREAS POR ENGENHEIROS(AS) (FURG - out. 2022): Envolvimento em um evento que abordou as diversas áreas da Engenharia de Produção, ampliando minha visão sobre a profissão e suas aplicações práticas.  A construção das identidades dos Petianos e Petianas da FURG (FURG - nov. 2023): Palestra que explorou a construção de identidades no ambiente acadêmico, contribuindo para meu desenvolvimento pessoal e compreensão do papel do estudante na comunidade universitária.  44º Encontro Nacional de Casas de Estudantes (FURG - jan. 2023): Participação ativa em um evento nacional que proporcionou networking, troca de experiências e ampliação de perspectivas sobre questões estudantis.  Planilhas Eletrônicas - Módulo II: Resolução de Exercícios de Engenharia (FURG - dez. 2023): Curso prático que aprofundou meu conhecimento em planilhas eletrônicas, com foco na resolução de exercícios específicos de engenharia, fortalecendo minhas habilidades técnicas.  Planilhas Eletrônicas - Módulo I: Introdução (FURG - dez. 2023): Introdução a planilhas eletrônicas, consolidando conceitos fundamentais para otimização de processos e análise de dados.  EngerTalk (FURG - dez. 2022): Participação em um evento acadêmico que proporcionou debates e palestras sobre temas relevantes na área de Engenharia, contribuindo para minha formação profissional.  Esses cursos e palestras refletem meu comprometimento com o aprendizado contínuo, demonstrando a busca por conhecimentos diversificados e relevantes para a minha formação e atuação profissional. Aprofundar-me nesses eventos ampliou minha visão estratégica e fortaleceu minhas habilidades técnicas, tornando-me um profissional versátil e preparado para desafios multidisciplinares.','Administrativa, Estágio','https://drive.google.com/open?id=1pUwaX6YgGnkj5XxQxWjN5zkB5IifEnsp',NULL,'Indicação','Sim, Giulia Andriotte','1500','Não',NULL,'Estágio Engenharia e/ou Arquitetura','Sou um profissional proativo com habilidades sólidas em comunicação interpessoal. Possuo conhecimentos básicos em Excel, espanhol e inglês, além de ser proficientes em Power Point e Canva. Minha experiência administrativa inclui lidar com processos e licenciamentos. Participo ativamente do projeto de extensão universitária (PET) e tive a oportunidade de apresentar trabalhos na Mostra de Produção Universitária (MPU) da FURG. Destaco minha participação em um encontro nacional na Bahia, promovido pelas casas dos estudantes, durante uma viagem interestadual. Além disso, complemento meu perfil de conhecimento em disciplinas como AutoCad, e produção textual destacando a capacidade de comunicar ideias de forma clara e eficaz. Estou entusiasmado para aplicar minhas habilidades e experiências nesta oportunidade, contribuindo positivamente para a equipe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-31T17:09:00.000Z'::timestamptz),
  ('Rodrigo da Silveira Ribeiro','rribeiro.sap@gmail.com',NULL,'51997173662','1990-10-28',35,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1-ZwZmeAMQYLy8L0Bx9IUEGlWf_Y-jtrk','Direito','Pós-graduação Completa','Centro Universitário Leonardo da Vinci','2027-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Ramos & Silva Soluções Financeiras; 2) Consultor de Negócios; 3) 05/01/2022 a 25/04/2023; 4) Prospecções na modalidade porta a porta, com intuito de oferecer a abertura de contas físicas e jurídicas do Banco Santander, e na adquirência de máquinas da Getnet. Oferecimento de demais produtos do Banco Santander.',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1TkF6l3_TKHVPeCE_lPKA2cpgQ_ZiKJWu',NULL,'Agência de Empregos','Não','3000','Sim','Gilson Pereira, (47) 989148329','Comercial','Fico a disposição para quaisquer esclarecimentos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-31T18:09:00.000Z'::timestamptz),
  ('Maria Cleusa da Silva santos','cleusamariasantos89@gmail.com',NULL,'+5551999646350','1971-11-02',54,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ivzWAyrRF5ibex3lGjdsHgmLMrSfsnKK','Pedagogia','Ensino Superior Incompleto','Unifaher','2024-12-26','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura do Rolante .como axiliar de professora trabalhava na sala de aula axiliando a professora titular,trabalhei 4mes através de um possesso seletivo.onde tinha adoração de 4mes do dia 02/10/2023 a 02/02/2024 está foi a última q eu trabalhei.','Magistério, Educadora assistente,gestão ambiental,informática básica, word, Exel internet','Curso primeiro emprego.curzo técnico a laser,curso de atendente de call centre, certificado de treinamento profissional da lyder.','Estágio','https://drive.google.com/open?id=1z1toCqOTBM-adi4xaEfTlMWZWZi7sPgr',NULL,'Agência de Empregos','Nao','1.600','Sim','Trabalhei como mãe social nas casa das aldeias aqui em santo Antônio da patrulha.onde ajudava a cuida das crianças adotadas dos pais.ajudava na tarefa da casa e na tarefa escolar .temas de aula.trabalhando do  21/02/2022 a 23/08/2022','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-31T18:57:00.000Z'::timestamptz),
  ('Vanessa Morais Coutinho','vavacoutinho21@gmail.com',NULL,'51995069620','1999-10-25',26,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1AbWE6Y0EckpZPlhon8J7ZtFgZb8ONyLd',NULL,'Ensino Superior Incompleto','Faccat',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1- Guimarães Alimentos, Santo Antônio Da Patrulha - RS, Abril de 2022 - Atual
Cargo: Embaladora à Maquina
Atividades: Operar Máquinas, Embalar produtos
2- Sociedade Gaúcha De Participações S.A, Porto Alegre - RS, Janeiro de 2019 -
Outubro de 2020
Cargo: Agente Atendimento - Arrecadação
Atividades: Operar Caixa, arrecadação de pedágio, atendimento ao cliente, retirada de
valores (sangrias) e depósitos
Participei de um curso de brigadista 
3- Concessionária Da rodoviária Osório/POA, Porto Alegre - RS, Dezembro de 2017 -
Março de 2018
Cargo: Arrecadador Temporário
Atividades: Operar caixa, atendimento ao cliente, fazer depósitos','Cursando Psicologia - Faccat
Rotinas Administrativas, Mundo Office, 60 horas, 2018
Informática Essencial, Mundo Office, 60 horas, 2017
Assistente Administrativo, Mundo Office, 8 horas, 2016',NULL,'Comercial, Estágio','https://drive.google.com/open?id=1cphjM7I8CfQIRVoMnKsTaMWxK2S6V9FQ','https://drive.google.com/open?id=1ELqnz4vGQH_gzuxUimYQbL6wxLmDYWV8','Agência de Empregos','Não','R$1.900,00','Sim',NULL,'Estágio comercial','Tenho algumas habilidades com jardinagem, realizei um curso de manicure e aprendi no meu antigo trabalho a falar o alfabeto e algumas palavras do código Q no rádio comunicador.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-31T22:03:00.000Z'::timestamptz),
  ('Victor Bortoluzzi','victorbortodef@hotmail.com',NULL,'55996357112','2002-02-19',24,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=19JfvrZyDhLpezHgbGThrSaBg2UREKtIj',NULL,'Ensino Superior Incompleto','Unopar','2025-08-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Exército Brasileiro(Hospital de Guarnição de Alegrete); 2) Aux/Adj FuSEx e Aux/Adj Setor de Aquisições, Licitações e Contratos; 3) 01/03/2021 - 28/02/2024; 4) Emissão de empenhos, contato com fornecedores/empresas e consultas referente aos mesmos, pesquisa de notas de crédito e “data orc”, execução de Dispensa de Licitação, elaboração de Pregões, montagem e publicão de processos.','• Estágio Setorial de Aquisições, Licitações e Contratos (2023)
• Curso de Inglês para Profissionais de Finanças (2023)
• Curso de Tesouro Direto (2023)
• Curso de Geografia Política (2023)
• Curso de Geografia Urbana (2023)
• Curso de Geografia Econômica (2023)
• Curso de Finanças Pessoais (2023)
• Curso de Planejamento Estratégico (2023)
• Curso de Direito Internacional (2023)
• Curso Complementar de Formação de Pregoeiros – Teoria (2022)
• Curso Complementar de Noções Introdutórias de Licitação e Contratos Administrativos (2022)
• Cursos e palestras no âmbito militar e na área da saúde.
• Curso de Gestão e Fiscalização de Contratos Administrativos (2022).
• Curso de Estatística (2022)
• Curso de Governança de Dados (2022)
• Curso de Fundamentos da Lei Geral de Proteção de Dados(LGPD) (2022)
• Curso de Microeconomia (2022)
• Curso de Equilíbrio Fiscal (2022)
• Curso de Planejamento Governamental (2022)
• Curso de Gênero e Atuação Legislativa (2022)
• Curso de Empresas e Direitos Humanos (2022)
• Curso de Gestão por competências (2022)
• Curso de Aplicação de Penalidades nos Contratos Administrativos (2022)
• Curso de Formação de Pregoeiro (2022)
• Curso de Contabilidade com Foco na Gestão do Patrimônio Público (2022)
• Curso de Siafi Ordens Bancárias (2022)
• Curso de Elaboração de Editais para Aquisições no Setor Público (2022)
• Curso de Matemática Financeira (2022)
• Curso de Orçamento Público (2022)
• Curso de Macroeconomia (2022)
• Curso de Siafi Básico (2022)
• Curso de Análise e Melhoria de Processos (2022)
• Curso de Ética e Serviço Público (2022)
• Curso de Educação em Direitos Humanos (2022)
• Curso de Prevenção e Detecção de Cartéis em Licitações (2022)
• Curso de Políticas Públicas e Governo Local (2022)
• Curso de Aprender a empreender (2021)
• Curso de Atendimento ao Cliente (2021)
• Curso de Como analisar o mercado (2021)
• Curso de Como anunciar em sites de vendas (2021)
• Curso de Como definir preço de venda (2021)
• Curso de Como turbinar suas vendas (2021)
• Curso de Como vender mais e melhor (2021)
• Curso de Comunicação e relacionamento com seus clientes (2021)
• Curso de Contrato de Trabalho (2021)
• Curso de Educação Financeira Empresarial (2021)
• Curso de Estratégias de vendas para comércio eletrônico (2021)
• Curso de Gestão de Pessoas (2021)
• Curso de Gestão empresarial integrada (2021)
• Curso de Gestão Financeira (2021)
• Curso de Identidade empreendedora (2021)
• Curso de Logística para comércio eletrônico (2021)
• Curso de Mapeamento de Fluxo de valor (2021)
• Curso de Negociação (2021)
• Curso de Nota fiscal eletrônica (2021)
• Curso de Venda de Seguros para Bancários (2023)
• Curso de Prospecção e vendas nas redes sociais (2023)
• Curso de Economia (2023)
• Curso de Lingua Inglesa 1 (2023)
• Curso de Lingua Inglesa 2 (2023)
• Curso de Língua Espanhola 1 (2023)
• Curso de Língua Espanhola 2 ( 2023)
• Curso de Análise do Discurso (2023)
• Curso de Teoria da Argumentação Jurídica (2023)
• Curso de Gestão da Comunicação (2023)
• Curso de Gestão e Planejamento de Mídia (2023)
• Curso de Comunicação de Marketing em Meios Digitais (2023)','• Estágio Setorial de Aquisições, Licitações e Contratos (2023) • Curso de Inglês para Profissionais de Finanças (2023) • Curso de Tesouro Direto (2023) • Curso de Geografia Política (2023) • Curso de Geografia Urbana (2023) • Curso de Geografia Econômica (2023) • Curso de Finanças Pessoais (2023) • Curso de Planejamento Estratégico (2023) • Curso de Direito Internacional (2023) • Curso Complementar de Formação de Pregoeiros – Teoria (2022) • Curso Complementar de Noções Introdutórias de Licitação e Contratos Administrativos (2022) • Cursos e palestras no âmbito militar e na área da saúde. • Curso de Gestão e Fiscalização de Contratos Administrativos (2022). • Curso de Estatística (2022) • Curso de Governança de Dados (2022) • Curso de Fundamentos da Lei Geral de Proteção de Dados(LGPD) (2022) • Curso de Microeconomia (2022) • Curso de Equilíbrio Fiscal (2022) • Curso de Planejamento Governamental (2022) • Curso de Gênero e Atuação Legislativa (2022) • Curso de Empresas e Direitos Humanos (2022) • Curso de Gestão por competências (2022) • Curso de Aplicação de Penalidades nos Contratos Administrativos (2022) • Curso de Formação de Pregoeiro (2022) • Curso de Contabilidade com Foco na Gestão do Patrimônio Público (2022) • Curso de Siafi Ordens Bancárias (2022) • Curso de Elaboração de Editais para Aquisições no Setor Público (2022) • Curso de Matemática Financeira (2022) • Curso de Orçamento Público (2022) • Curso de Macroeconomia (2022) • Curso de Siafi Básico (2022) • Curso de Análise e Melhoria de Processos (2022) • Curso de Ética e Serviço Público (2022) • Curso de Educação em Direitos Humanos (2022) • Curso de Prevenção e Detecção de Cartéis em Licitações (2022) • Curso de Políticas Públicas e Governo Local (2022) • Curso de Aprender a empreender (2021) • Curso de Atendimento ao Cliente (2021) • Curso de Como analisar o mercado (2021) • Curso de Como anunciar em sites de vendas (2021) • Curso de Como definir preço de venda (2021) • Curso de Como turbinar suas vendas (2021) • Curso de Como vender mais e melhor (2021) • Curso de Comunicação e relacionamento com seus clientes (2021) • Curso de Contrato de Trabalho (2021) • Curso de Educação Financeira Empresarial (2021) • Curso de Estratégias de vendas para comércio eletrônico (2021) • Curso de Gestão de Pessoas (2021) • Curso de Gestão empresarial integrada (2021) • Curso de Gestão Financeira (2021) • Curso de Identidade empreendedora (2021) • Curso de Logística para comércio eletrônico (2021) • Curso de Mapeamento de Fluxo de valor (2021) • Curso de Negociação (2021) • Curso de Nota fiscal eletrônica (2021) • Curso de Venda de Seguros para Bancários (2023) • Curso de Prospecção e vendas nas redes sociais (2023) • Curso de Economia (2023) • Curso de Lingua Inglesa 1 (2023) • Curso de Lingua Inglesa 2 (2023) • Curso de Língua Espanhola 1 (2023) • Curso de Língua Espanhola 2 ( 2023) • Curso de Análise do Discurso (2023) • Curso de Teoria da Argumentação Jurídica (2023) • Curso de Gestão da Comunicação (2023) • Curso de Gestão e Planejamento de Mídia (2023) • Curso de Comunicação de Marketing em Meios Digitais (2023)','Administrativa, Financeiro, Licenciamentos, Novos Negócios','https://drive.google.com/open?id=1aN9Sc-ug2MMeM1AefqKkNgydu04G4GWZ',NULL,'Redes Sociais E Parentes.','Caroline Volpato','R$2.000,00 - R$3.000,00','Sim','Claudio Henrique de Sousa Bernardes( Ten. Henrique ) - (55) 99943-4971','Quero inscrever-me no banco de talentos da Young!','Estudei durante muito tempo para seguir carreira militar, sou atleta amador e praticar esportes faz parte da minha rotina diária. 
Atualmente estava trabalhando no exército brasileiro mas pedi o afastamento para me mudar para Santo Antônio da Patrulha e acompanhar minha namorada que foi transferida.
Estudo inglês e pretendo no futuro viajar para o exterior e praticar, além de conhecer novas culturas. 
Sou um pouco tímido inicialmente, mas sou dedicado a tudo o que me proponho a fazer. 
Durante o período que estive no EB consegui realizar vários cursos em áreas diversas, para fazer um bom ponto de equilíbrio, além de amar atividade física também amo comer. Um grande fã gastronômico 😂😂','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-01T15:34:00.000Z'::timestamptz),
  ('Natália dos Reis Mendes','nataliadosreismendes@gmail.com',NULL,'51996164753','2001-07-29',24,'Solteiro(a)','0','Sim','Caraá/rs','https://drive.google.com/uc?export=view&id=191LvJDTrMC7p7kvhTyYDiXYD5fiK3XiV','Administração de empresas','Ensino Superior Completo','Uniasselvi','2023-12-11','Sou formado','1) Prefeitura Municipal de Santo Antônio da Patrulha;
2) Estagiaria;
3) 21/11/2021 à 21/11/2023;
4) Elaboração e envio de memorandos, analise  e elaboração de solicitações de renovações contratuais, verificação de documentos, criação de planilhas, realização de pesquisas e gerenciamento de tarefas administrativas.','Sou formada em administração e atualmente estou iniciando minha segunda graduação na área de ciências contábeis.',NULL,'Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=15sNNpSOafpWRl4G6jz-4T66L6mwQTozB',NULL,'Indicação','não','1700','Sim','3662-8567, 3662-8404','Quero inscrever-me no banco de talentos da Young!','Sou formada em Administração pela Uniasselvi e estou cursando atualmente minha segunda graduação, também na Uniasselvi, na área de Ciências Contábeis, durante o período em que estive cursando a minha primeira graduação realizei diversos curso, entre eles informática básico, Word básico, Excel básico e Excel avançado.

Também durante esse período, tive a oportunidade de realizar um estágio na Prefeitura Municipal de Santo Antônio da Patrulha, onde pude exercer atividades nos setores de Licitação e Gestão de Contratos.

Estou sempre buscando aprimorar minhas habilidades e competências profissionais para contribuir com o mercado e atender as necessidades das organizações onde atuo. Sou uma profissional proativa, comprometida e com grande capacidade de aprendizagem.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-01T19:33:00.000Z'::timestamptz),
  ('Camila Espíndola Messaggio','camilaespindola767@gmail.com',NULL,'51980163375','1993-03-05',32,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=17BW64ytlyZa4sQHP0Znt1_r3FWihKNMT','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2026-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atualmente trabalho de atendente na loja Natural light, há 1 ano e 6 meses','Cursos de Informática Básica e Empresas e Negócios ( Senar)','Sim, Curso de Informática Básica e Internet ( Senar/15horas) Negócio Certo Rural, Planejando seu Empreendimento ( Senar/30horas)','Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Agência de Empregos','Não','Há combinar.','Sim','José Augusto: 51999719054','Estágio de Administração','Bom estou a procura de uma oportunidade pra crescer na área da Administração. Tenho como objetivo aprender cada vez mais,sou dedicada, paciente e determinada. Espero uma oportunidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-01T23:35:00.000Z'::timestamptz),
  ('Leandro Rodrigues Soares','leandrosoares95@live.com',NULL,'55984273693','1995-07-04',30,'Solteiro(a)','3','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1KKrGpiXlOxqx1odSS4bOKaHNlMpIIf04','Logística','Ensino Superior Completo','Unifael','2019-10-10','Sou formado','Assistente de Relacionamento | Osirnet
03/2023 - atual
Desempenhar um papel fundamental na satisfação e retenção de clientes, combinando habilidades de atendimento
presencial e remoto, gerenciamento de dados e resolução de problemas. Principaisresponsabilidadesincluem: Atender
o cliente de forma presencial e remota (telefone e chat), atualizar o cadastro de clientes, abrir chamados e solicitações,
agendar visitas técnicas, resolver problemas complexos, gerenciar relacionamento e sucesso do cliente e vivencia
sistemas ERP, CRM e vendas','Tec. Administração, Tec.Qualidade',NULL,'Administrativa, Comercial, Financeiro, Novos Negócios','https://drive.google.com/open?id=1bc2dcMaZHdJIirOLHGHpSEzCSdXBzyA2',NULL,'Facebook','N/a','2500','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-04T20:25:00.000Z'::timestamptz),
  ('Bruna Micaela Pereira Coelho','brunamicaelacoelhopereira2000@gmail.com',NULL,'59894160366','2000-02-29',25,'União estável','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1Bi9l_pmdW2PdTsr0RDh0ZbW5dqfHu7Yp',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Provisão Supermercados (Operador de Caixa/Midias Sociais)',NULL,NULL,'Comercial, Marketing','https://drive.google.com/open?id=1_K03sYZIrnrv0-8jusRPqkOlbjOmrigp',NULL,'Instagram','Não','2500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Idiota fluente em espanhol e português, hoje em dia fazendo cursos sobre, auxiliar administrativo, planejamento de rh, gestão de pessoas,
avaliação e desempenho, departamento pessoal, gestão de rh, avaliação de desempenho por competencia, recrutamento e seleção, pesquisa de mercado, gestão de equipes de trabalho, auxiliar de escritório, assistente administrativo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-05T15:39:00.000Z'::timestamptz),
  ('Claudia Cristiane Dias Ribeiro','claudiacrisz17@gmail.com',NULL,'55984448467','1977-03-17',48,'Casado(a)','1','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1vRtenfBfCNC9v6oHoE1gN21VE190vW78','Gestão Pública','Ensino Superior Incompleto','Unipampa','2025-01-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Staevie Cia Ltda março/21 julho/22 CFC Santanense set/13 dez/20 Lojas Colombo FEV/10 março/13 atendimento ao público, contas a pagar e receber.',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1z63nbxN4nbpcWZe4ObEew157y6Azqxlo',NULL,'Facebook','Não','Combinar','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-06T16:01:00.000Z'::timestamptz),
  ('Maria Maia','maria_maia11@hotmail.com',NULL,'55997311419','2000-05-30',25,'Casado(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1Ar2lho6Qep3EVMrn9jwaxOvgLFbRQXfl','Administração de empresas','Ensino Superior Incompleto','Unipampa','2027-10-05','Não, no momento pausei/parei por um período.','Farmácias São João 
Operador financeiro 
Atividades: abertura e fechamento de caixa atendimento ao cliente venda de remédios.','Sou formada em Técnico em administração.','Atendimento ao cliente e marketing pessoal','Administrativa, Comercial','https://drive.google.com/open?id=1mCpQ6aXRI418doZ3NURL4ZiCjij4297c',NULL,'Facebook','Não','1800','Sim',NULL,'Comercial','Tenho Cnh AB. Sou autêntica gosto de organização e pela minha idade sou muito responsável. Gosto de jogar futebol e estar em família. Amo andar de moto.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-06T17:41:00.000Z'::timestamptz),
  ('TUANI cardoso Pereira','tukacardoso12@hotmail.com',NULL,'55996078715','1992-07-21',33,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1jUZg-eaMoD9cTmmtUTPqvIJ73urerA4V','Economia','Ensino Superior Incompleto','UNIPAMPA','2026-02-06','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei em farmácia,como conhecimento  em geral',NULL,NULL,'Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=1Ks2sc78prcbHCWsBe_cTgQUJUKjgCCir',NULL,'Facebook','Não','De acordo com a atividade a ser exercida.','Sim',NULL,'Estágio Financeiro','Possuo CNH A  no momento estou adicionando a categoria B.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-06T21:31:00.000Z'::timestamptz),
  ('Neusa Dutra Sant''anna','neusadutrasantana@gmail.com',NULL,'9963','1997-07-30',28,'Solteiro(a)','1','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1YruYKaYuvThirvki5RBBT-pH_qtb7a-l','Economia','Ensino Superior Incompleto','Unipampa','2026-02-06','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Fui recepcionista no clube Cruzeiro do Sul',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=16JUOOhf7ekRBOZiofs6ll9LeuJYJYYvJ',NULL,'Agência de Empregos','Não','R$1.200','Sim',NULL,'Comercial','Estou à tempo buscando por uma oportunidade de trabalho, infelizmente só consigo quando é por indicação. Estou no quinto semestre do curso de Economia e procuro estágio na área. Sou muito eficiente e tenho facilidade de aprendizado, sou responsável e comprometida com o trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-07T01:56:00.000Z'::timestamptz),
  ('Carolini Cantos Rivero','carolcantos31@gmail.com',NULL,'51997927897','1999-08-31',26,'Casado(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1hSbXLE9vfZBcKRGQKqKsz1dybYoY6Ftj','Gestão comercial','Ensino Superior Incompleto','UNIP','2024-11-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Loja Bella Moda, atuava na área de vendas. Principais atividades eram atendimento ao público e reposição de produtos. Data de início 06/09/2022 e data de saída 18/09/2023','Concluí alguns cursos técnicos como Gerencia de lojas, operador de caixa e pacote office.',NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1lPP-jcGsuRsBZKSWeXQHw8jqckEP4EFr',NULL,'Facebook','Não','1700','Sim',NULL,'Assiste comercial','Meu nome é Carolini, sou bilíngue em espanhol e português. Minha língua materna é o espanhol, possuo curso B2 em português e também inglês básico. Acredito que conhecimento nunca é demais e pretendo ser fluente em inglês, pois o meu maior sonho é viajar para o exterior e conhecer várias culturas','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-07T13:47:00.000Z'::timestamptz),
  ('Roselaine Santos Pedroso','roselainesperansard@gmail.com',NULL,'51998933630','1988-10-04',37,'Solteiro(a)','3','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1coHV_Qvml4Th0K5XbNcfrF25XE3u4g0w',NULL,'Ensino Médio Completo',NULL,NULL,'Sou formado','Macrobala Dist de alimentícios Ltda, balconista/vendedora, 05/03/12 á 04/12/15
Atividades: atendimento ao cliente ao telefone, emissão de nota fiscal, tirar pedido separar pedido reposição de mercadorias nas prateleiras.

Ajgs-indústria comércio importação e exportação ltda-me, Aux. Administrativo, 09/03/2016 á 07/04/2016
Atividades: emissão de boletos de cobranças atendimento de telefone conferência de datas de boletos , enviar e-mail alertando da data do pagamento do boleto aos clientes tirar nota de pedidos .

Big bag Alliance ltda me, costureira, 10/08/2016 á17/11/2021
Atividades: costura de bergs','Assistente de recursos humanos
Assistente administrativo
Auxiliar administrativo
Escrita fiscal','Escrita fiscal , Assistência Recursos Humanos, Assistente Administrativo','Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1STsd7rsR1RJ7XLlFILhTEqU9jHgnSwNw',NULL,'Facebook','Não','Salário compatível com a função','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-07T20:29:00.000Z'::timestamptz),
  ('Vanessa Fraga da Silveira','vanessasilveira369@gmail.com',NULL,'995815771','2002-05-23',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=18JRqqzzz6SYh8xxgf_S9qj2hiJ6h2RNI','Ciências Contábeis','Ensino Superior Incompleto','Uni Santa Cruz','2026-01-06','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Mauro Moro Atelier- Conferente/costureira 2019-2022
Banco do Estado do RS- Banrisul- estagiária 2022(emprego atual)','Conclui o curso de Rotinas Administrativas na Jovem Profissional/SAP',NULL,'Administrativa, Estágio, Financeiro, Licenciamentos','https://drive.google.com/open?id=1QHdvsMA0TwNfH5aXn3Ym2j-0v_0ucO7U',NULL,'Instagram','Nao','R$3.000,00','Não',NULL,'Assistente Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-08T00:44:00.000Z'::timestamptz),
  ('Yasser Sánchez Torres','yst142122@gmail.com',NULL,'+55981215883','1983-05-25',42,'Casado(a)','3','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1qIjBW4oz8uVgCkXWcxydYQj_jvxI8QDP','Biologia','Ensino Superior Completo','Universidade de Santiago de Cuba','2010-07-30','Sou formado','Mintur Cuba, Supervisor de vendas no ano 2015-2019; Mintur Cuba, Analista e Gestor de Tráfego, no ano 2019 -2022, Minsap Cuba Médico 2010-2023','Microsoft Power BI, Google Analytics, Gestor de Tráfego, Chef de Cozinha e lanchonetes, Médico Clínico Geral.',NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1fmilAvGAQ1E8vciXPQmLAFxXWfd0sIdP',NULL,'Agência de Empregos','Não','A negociação','Sim','Minsap Cuba, Mintur Cuba','Assistente de Vendas','Tenho formação em Power BI, Google Analytics e Gestor de Tráfego, Chef de Lanchonetes, falo Espanhol e Português, falando inglês básico, faço práticas de box e luta.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-08T20:31:00.000Z'::timestamptz),
  ('Yasser Sánchez Torres','yst142122@gmail.com',NULL,'+55981215883','1983-05-25',42,'Casado(a)','3','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1OtADuGU3D4A8Zq9v9NDou4K9601SLFSf','Google Analytics, Microsoft Power Bi, Médico','Pós-graduação Completa','Bradesco Fundação,  Universidade de Ciências Médicas Santiago de Cuba','2010-07-30','Sou formado','Mintur Cuba Supervisor de vendas no ano 2012-2018, Mintur Cuba Analista de negócios e Marketing 2019-2022, Minsap Cuba Médico Clínico Geral 2010-2023','Microsoft Power BI, Google Analytics, Chef de Lanchonetes,  Médico','Sim, Diplomas e Certidão','Administrativa, Comercial, Marketing, Engenharia','https://drive.google.com/open?id=19RiZCQ49TW5o9BGREB08DWTimRGssYn9',NULL,'Agência de Empregos','Não','A negociação','Sim','Minsap Cuba','Assistente de vendas','Habilidade no software Power BI e Google Analytics, Azure e Phitom, Chef Lanchonetes e chapeiro, box e luta.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-08T20:46:00.000Z'::timestamptz),
  ('Patrick Matheus Thoma da Silva','patrickt935@gmail.com',NULL,'55996607889','1994-03-09',31,'União estável','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1Oodx7bPmm2Uq4NQUDMRPE858Nn0a-MB0','Engenharia Civil','Ensino Superior Completo','Universidade do Norte do Paraná','2023-12-15','Sou formado','Ic Supply Engenharia
Supervisor
Março de 2022 - Julho de 2024 (1 ano 3 meses)
Uruguaiana, Rio Grande do Sul, Brasil
Atuar no planejamento das manutenções, de acordo com a programação das 
produções. Delegar as atividades para a equipe, pensando de forma 
estratégica e eficiente. Supervisionar as atividades relacionadas à 
manutenção e garantir que todas ocorram dentro do planejado. Acompanhar o 
fechamento das manutenções e entender se mais alguma ação se faz 
necessária. Análise dos relatórios da área, a fim de auditar o bom andamento 
das tarefas cotidianas e implantar eventuais melhorias nos processos. 
Fornecer suporte técnico à equipe. Garantir que a equipe tenha todo o 
conhecimento necessário para executar as atividades. Em se fazendo 
necessário, fornecer treinamentos ou trazer profissionais que possam fazê-lo. 
Zelar pela segurança de todos os colaboradores por meio do bom uso dos 
EPIs.

Tecnova Energia
 
Assistente Administrativo de Obras - Supervisor de Obras
agosto de 2019 - janeiro de 2022 (2 anos 6 meses)
Atuei nas cidade de Garibaldi; Santa Vitória do Palmar; Bagé; Candiota-RS. Realizando o acompanhamento das atividades da obra, para garantir a correta execução técnica dentro dos procedimentos de qualidade, dentro dos prazos estabelecido nas reuniões de planejamento e seguindo os procedimento de EHS. Gerecimento da equipe de execução. Participação ativa nas reuniões de planejamento, EHS e com cliente. Obras de subestações de 69kV, 230kV e 500kV em parcerias com diversas
empresas entre elas GE (General Eletric), no qual tivemos a oportunidade de 
receber 3 premiações de TOP 3 melhores canteiros da américa latina em EHS.

Zanon pré-moldados
Analista de engenharia
fevereiro de 2019 - julho de 2019 (6 meses)
Caxias do sul, Rio Grande do Sul, Brasil
Empresa situada na serra gaúcha nacidade de Caxias do Sul. Atuei na analise de projetos, identificando o escopo da proposta; Identificar e entender as necessidades do cliente através da análise do material recebido do cliente para possibilitar o planejamento da proposta; Desenhos de estruturas em AutoCad e Sketchup.

Altivus Do Brasil
Técnico de qualidade
fevereiro de 2017 - fevereiro de 2019 (2 anos 1 mês)
Caxias do sul, Rio Grande do Sul, Brasil
Realização de atividades de suporte ao Sistema de Gestão Qualidade,envolvendo a analise de normas, preparação de treinamentos, organização de documentação visando contribuir para o alcance dos objetivos estabelecidos 
pela empresa. Assistência ao processo de desenvolvimento e manutenção do Sistema de Gestão da Qualidade,buscando informações e feedback que possibilitem avaliação dos programas e procedimentos implantados. Assessorar os gerentes e facilitadores da empresa na implantação das atividades do Sistema de Gestão da Qualidade, visando garantir sua execução 
dentro dos padrões estabelecidos. Organizar eventos internos e externos relativos ao Sistema de Gestão Qualidade, visando promover treinamento dos colaboradores.','Liderança e desenvolvimento de equipes
Gestão de metas e indicação de performance
Planejamento estratégico
Compliance e governança corporativa
Comunicação assertiva e negociação
Gestão da comunicação 
Top three canteiro América latina GE',NULL,'Arquitetura, Engenharia','https://drive.google.com/open?id=1K-FiyTtl1kh0rcKmosykLodBD7nSKNwn',NULL,'Instagram','Não','R$4.700,00','Sim','Saulo Silva - +55 55 9909-4545 Técnova engenharia - Engenheiro Senior
Pedro Barros - +55 21 97181-1989 IC Supply - Coordenador de contratos','Auxiliar de Engenharia',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-09T02:29:00.000Z'::timestamptz),
  ('Cassiano Oliveira da Motta','cassianoomotta@gmail.com',NULL,'51999519206','2001-09-14',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1BmVL01TocwghceMYswzJEdXLDs2-oiVX','Administração de empresas','Ensino Superior Incompleto','Universidade Federal do Rio Grande - FURG','2024-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estagiário da Área Comercial (Banco do Estado do Rio Grande do Sul – Banrisul), Maio/2022 - Maio/2024:
Como estagiário de um banco público e comercial sou responsável pelo arquivo e a organização dos documentos da agência, também sou responsável por analisar e conferir o relatório de crédito e assinaturas dos contratos firmados na agência, Atuo também na parte comercial realizando captações de novos clientes, aberturas de contas, vendas de produtos e serviços da instituição.

Auxiliar ADM - UBS Cooperja – SAP, Junho/2021 – Dezembro/2021:
Fui responsável pela logística regional de sementes do Rio Grande do Sul da Cooperja, a maior cooperativa de arroz do Brasil. Em 2021, a região em qual atuei alcançou o maior resultado histórico de safras, com mais que o dobro de faturamento da meta estabelecida. Esse resultado foi impulsionado, em parte, pela adoção da ferramenta de controle qual foi eu quem criou, que facilitou o acompanhamento das entregas e a segurança para realização de novas vendas.

Almoxarife - Loja Agropecuária Cooperja – SAP, Outubro/2019 - Junho/2021
Tive como responsabilidade, o controle de todo o estoque da loja, onde a mesma possuía setores do mercado agrícola como: Ferragens, sementes, fertilizantes, defensivos agrícolas, rações e medicamentos veterinários. Durante minha atuação na Cooperja, realizei a primeira venda internacional de fertilizantes para uma empresa holandesa de reflorestamento. Essa venda foi um marco importante para a cooperativa, pois abriu novos mercados para os produtos da empresa.',NULL,NULL,'Administrativa, Financeiro, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Não','2100','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-09T03:41:00.000Z'::timestamptz),
  ('JJocinei Silveira','jocineisilveira733@gmail.com',NULL,'51998956543','2004-01-11',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Kud_7EOvhl3aERlFs0wcQQbUM7JiIBCx',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','ESTÁGIO/ COOPERJA: trabalhei com atendimento ao público, emissão de notas fiscais, controle de folha ponto entre outras rotinas administrativas.
2 anos.
AUXILIAR ADMINISTRATIVO/ CULTURAL PREFEITURA: TRABALHEI DANDO AULAS DE TEATRO NAS ESCOLAS MUNICIPAIS/ EM EVENTOS E ROTINAS CULTURAIS E ADMINISTRATIVA. 2 anos.
CONSULTOR DE CRÉDITO: ATENDIMENTO DESDE ABORDAGEM ATÉ O FECHAMENTO DE VENDA DOS PRODUTOS FINANCEIROS. 6 meses
VENDEDOR/ MAGAZINE LUIZA: ATENDIMENTO AO CLIENTE. ON-LINE E PRESENCIAL, ABERTURA DE CAIXA, ESTOQUE, ATINGIR METAS, SANAR PROBLEMAS, DOR DE DONO. 1 e 6 meses .','Curso técnico em administração',NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1sowwVvc7QMCdlbpDxXyJSbBfoQfh-2Af',NULL,'Agência de Empregos','Não','3000','Não','CENIRA - COOPERJA - 9988857400
BRUNO BARCELOS - PREFEITURA- 999698899
VANESSA RAMOS- MAGAZINE LUIZA- 997568090','Quero inscrever-me no banco de talentos da Young!','Adoro arte, teatro, música  e dança, trabalho com arte a quatro anos. Também gosto de atender o público e me relacionar com pessoas, tenho boa desenvoltura pessoal e verbal.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-09T20:30:00.000Z'::timestamptz),
  ('Maria Fernanda Dias Pinto','nanda10dias9@gmail.com',NULL,'55996474578','2002-05-17',23,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1vVwzBtjPfm9EywhVr_PN4CJSqKTKsa7I',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei por pouco tempo com comércio e recepção, em empresas diferentes',NULL,NULL,'Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=1FMjsQNCfXiZoQerLEOPvGce2G5nz1O1t',NULL,'Instagram','Não','R$2.500,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa organizada, responsável. Tenho noção de word, powerpoint e estou disposta a aprender.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-10T10:21:00.000Z'::timestamptz),
  ('Marlon Carvalho Ferreira','mcarvalhoferreira@yahoo.com.br',NULL,'051997486471','1983-04-28',42,'Solteiro(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Mb9H4a-kJicv5G9sX3723afegwmd6i6p',NULL,'Ensino Superior Incompleto','ULBRA',NULL,'Não, no momento pausei/parei por um período.','JAPKS LOGISTICA E TRANSPORTES - ASSITENTE FINANCEIRO - 03/11/2008 A 29/10/2012 - FLUXO DE CAIXA; CONTAS A PAGAR; FATURAMENTO; COBRANÇA; EMISSÃO E CONTROLE DE CHEQUES

QUALICOCO LTDA - GESTOR DE LOGÍSTICA - 24/04/2013 A 10/05/2022 - ROTEIRIZAÇÃO DE ENTREGAS; DESENVOLVIMENTO DE NOVOS FORNECEDORES; ANÁLISE DE TABELA DE FRETES; FOCADO EM RESULTADOS, ATUEI COMO LÍDER NA MUDANÇA DOS PROCESSOS DO SETOR DE LOGÍSTICA DA QUALICOCO, MELHORANDO O DESEMPENHO DE PRAZO DE ENTREGA, E ORGANIZAÇÃO OPERACIONAL

DACOLONIA ALIMENTOS LTDA - ASSISTENTE DE LOGÍSTICA - 06/07/2022 A 31/01/2023 - ROTEIRIZAÇÃO DE ENTREGAS; OCORRÊNCIAS; MONITORAMENTO DE ENTREGAS; ATENDIMENTO AO CLIENTE; PARTICIPEI DA IMPLEMENTAÇÃO DO NOVO PROJETO DE LOGÍSTICA DA DACOLONIA 

DSA INDUSTRIA E COMERCIO LTDA - AUXILIAR DE LOGÍSTICA - 24/03/2023 A 25/08/2023 - DESENVOLVI O SETOR DE LOGÍSTICA ATÉ ENTÃO INEXISTENTE NA EMPRESA, MUDANDO O PERFIL ESTRATÉGICO DA PARTE LOGÍSTICA DA MESMA, ATUANDO NA MELHORIA DA COMUNICAÇÃO OPERACIONAL X COMERCIAL X CLIENTE; 

OKE CONSULTORIA - INTALADOR DE TUBULAÇÃO - 15/01/2024 - ATUALMENTE; DEVIDO POUCOS OPORTUNIDADES DE EMPREGO NA ÁREA ADMINISTRATIVA E LIDERANÇA; ACEITEI O DESAFIO DE ATUAR NUMA EMPRESA TERCEIRIZADA QUE PRESTA SERVIÇO PARA CORSAN, PARA ATUAR NO REPARO DE VAZAMENTOS, E CONSERTOS DE REDE DE ÁGUA',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Facebook','NÃO','3.500,00','Sim','THIAGO MENEZES - (51) 99968-5737; ROBSON MARIN - (54) 99775-9036','Assistente Financeiro','SOU UM PROFISSIONAL COM PERFIL FOCADO EM LIDERANÇA, RESULTADO.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-10T15:53:00.000Z'::timestamptz),
  ('Leonardo Urquhart Duarte','leonardo.uduarte@gmail.com',NULL,'55996638629','1992-12-20',33,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1XQfCuqPkLbGR7SI3eqGKN4IZIEdCeLs_','Engenharia Civil','Pós-graduação Completa','Urcamp','2019-12-19','Sou formado','EXPERIÊNCIA PROFISSIONAL
Goetze Lobato Engenharia S/A
Santana do Livramento/RS - Parque Eólico Coxilha Negra (Cliente Eletrosul) Técnico de qualidade
05/2023 – 02/2024
● Responsável pelo acompanhamento, fichas de verificações e controle de qualidade da terraplenagem, pavimentação e drenagem do Parque Eólico Coxilha Negra.
● Acompanhamento das demais atividades de construção como: obras civil e rede de média tensão;

 ● Controle, análise e organização de documentos;
● Elaboração de relatórios técnicos;
● Detecção, análise e tratativas de não conformidades da obra;
UD ENGENHARIA Engenheiro civil 03/2020 – 05/2023
● Acompanhamentos de obras civil;
● Gerenciamento de obras de construção civil;
● Elaboração de projetos;
● Execução de obras de pequeno porte;
● Gerenciamento de mão de obra.
● Resultado de mais de 1000 metros quadrados de projetos arquitetônicos,
estruturais e obras realizadas em 3 anos.
Secretaria de Obras Públicas do Estado do RS Estagiário de Engenharia civil
07/2018 – 12/2019
● Responsável elaboração de projetos para obras de licitações da 19a Coordenadoria Regional de Obras Públicas - RS;
● Elaboração de cronograma físico-financeiro;
● Realizações de medições;
● Elaboração de orçamentos;
● Obtendo o resultado da elaboração da mapoteca digital das escolas das 5
cidades da 19a Coordenadoria Regional Educação.','Gerenciamento de obras de construção civil (concluído em 2023) e engenharia de segurança do trabalho (conclusão em 2024)',NULL,'Engenharia','https://drive.google.com/open?id=1bpdDe0waABmSDPohfKGMZ3kpz5V8VACd',NULL,'Instagram','Não','3000','Sim','* Rangel Teixeira Linhares - (77) 99834-1766 (Goetze Lobato engenharia)
* Antônio Oscar - (55) 98116-5825 (Secretaria de obras públicas - 19 CROP)','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-12T09:56:00.000Z'::timestamptz),
  ('Miguel Angelo Pereira Araujo','migaraujo72@hotmail.com',NULL,'55984144041','1978-09-03',47,'Casado(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1f--fgouK8lwVUBRrgAvAJosa32PM3fOJ','Tecnologo em Agricultura','Ensino Superior Completo','Universidade Federal de Santa Maria','2012-02-05','Sou formado','Sócio Proprietário da Lisboa Doces de Pelotas desde dez 2011, atuando em Santana do Livramento com linha completa de produtos de confeitaria; consultor de vendas externo da Jorge Santos Tratores e Máquinas desde jan 2023 em Santana do Livramento e Quarai; assessor de comunicação da Prefeitura de Santana do Livramento entre jan 2006 a out 2012, atuando nos setores de imprensa, publicação em editorias impressas e on line, além de atualização de mídias sociais; assessor de imprensa da Unimed Região da Fronteira de jun 2011 a dez 2014, promovendo as atividade de comunicação da cooperativa nos municípios de Santana do Livramento, Rosário do Sul e Quarai; repórter do jornal A Plateia entre mai 2001 a mar 2005, comandando a editoria rural, com edição e formatação do diário;  assessor de imprensa do PGQP (programa gaúcho de qualidade e sustentabiildade em Livramento), entre set 2009 a jun 2011, atualizando o feed de notícias da organização.','Administração','Tecnólogo em Agricultura, pela Universidade Federal de Santa Maria','Administrativa, Comercial, Marketing, Engenharia',NULL,'https://drive.google.com/open?id=1UDtjFmY07ef9FR1Ojbx4l5Vll-3NWD5c','Facebook','não','3.000,00','Não','Wainer VIanna Machado - prefeito de Santana do Livramento entre 2005 e 2012 (não tenho o número atual do telefone)
Antonio Badra - diretor do Jornal A Plateia (55 3242.3030, escritorio)
Luis Antonio Costaguta de Arruda - diretor presidente da Unimed Região da Fronteira (55 3242.9800)','Comercial','Possuo dupla nacionalidade com fluência básica em espanhol, faço trabalho voluntário para a Associação Santanense de Proteção aos Animais, além de possuir pro atividade para o setor comercial, onde atuo há pelo menos 12 anos, sempre buscando aprendizado e conhecimento','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-12T17:55:00.000Z'::timestamptz),
  ('Luciane Rodrigues Souza','lucianerodrigues761@gmail.com',NULL,'51995061336','1999-08-24',26,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1yML2vv_yUUV1lVpLByX1Ohv8j9CdIz5i',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Magna Cosma - aprendiz de produção, logo depois aprendiz no setor fiscal, em seguida fui efetivada como terceirizada no setor financeiro/fiscal da empresa. Detinha atividades tais como reposição de materiais nas linhas de produção, entregas de contra-cheques, coletas de assinaturas, após no setor fiscal emitia notas fiscais, entrada e saída de caminhões de carga e demais atividades administrativas. (05/2018 - 09/2019)
Cartório Kirsten, registro civil - Atendente de balcão, detinha atividades tais como registro de nascimento e óbito, encaminhamento de casamento, atendimento no balcão, relatórios e demais atividades administrativas. (08/2020 - 11/2020)
Tabelionato Baierle - Atendente, auxiliar de cartório (01/21 - 01/22).
Loja Dpretto - vendedora e caixa ( 05/22 -11/22)','Rotinas administrativas
Inglês básico
Informática básico
Atualmente cursando inglês na instituição Wizard',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1n7b6MKoJ_8bH-f8E7niCZ279WXaJPZ8B',NULL,'Instagram','Não','2.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Estou tirando minha carteira de carro','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-13T14:57:00.000Z'::timestamptz),
  ('Leandro Souza Dos Santos','leandrosouza509@gmail.com',NULL,'51995646458','1973-03-10',52,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1lW94xumpP2xbqqawTzZMExX4FoERSqg4','Direito','Ensino Superior Completo','Ulbra','2023-03-26','Sou formado','*Vendedor autônomo de produtos coloniais 
De 2019 até agora.
Proditos de várias empresas, inclusive do ramo de rapadura.

*PGM - de Gravataí - área trabalhista 
Estágio de 24/02/2017 a 24/02/2019

*Distribuidora de Aliment. MR Souza.
Cargo- Vendedor externo
Início: 12/2003 a 12/2016','Sou Advogado, Tenho curso de vendas IFRS, estou prestes a iniciar pós graduação em direito imobiliário.',NULL,'Administrativa, Comercial, Licenciamentos','https://drive.google.com/open?id=1HpzVRDSAifyz-mi2ayINjZ-jOHd5bYPx',NULL,'Agência de Empregos','Não','4.000,00','Sim','Isair u7Souza - 999754427 Distr. MR Souza.','Assistente de licenciamento','Como estou prestes a iniciar pós graduação de direito imobiliário, gostaria de estar próximo desse ramo que mostra um grande crescimento nos próximos anos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-14T01:07:00.000Z'::timestamptz),
  ('Marcelo Cardoso de Araujo','marcelo_cardoso2005@hotmail.com',NULL,'51997030246','1988-01-05',38,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1tDmd0O9W3eWf9S7Crbftk6gxXmerwIAs','Ciências Contábeis','Pós-graduação Incompleta','Faccat','2018-12-18','Sou formado','Via curriculo anexo','Pós Graduação em andamento em Controladoria e Finanças.','CRC','Administrativa, Financeiro, Novos Negócios','https://drive.google.com/open?id=10JmyFhzzJimxEn7VGVPxENe14ZUnzuSp',NULL,'Agência de Empregos','Não','4.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Gosto de união entre amigos, compartilhamento de historias, almoços e jantares, um futebol jogado ou assistido. Faço trabalho voluntario na igreja catolica atraves do grupo Semeando a 10 anos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-14T14:35:00.000Z'::timestamptz),
  ('Fernando Sidney da Silva','nandosidney2012@gmail.com',NULL,'96991458245','1984-01-09',42,'União estável','3','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1RY2mcATkWIWlKA2qvTbriMNtHxbjnVTg','Técnico Em Eletrotécnica','Ensino Superior Completo','IETAAM - Instituto de Educação Tecnológica Avançada Da Amazônia – PA','2019-01-10','Não, no momento pausei/parei por um período.','Empresa: JMG Energia/ Projeto Equatorial – Lote 23
LT 500KV SE Vila do Conde / SE Marituba - LT 230KV SE Marituba / SE Castanhal
Seccionamento LT230KV Guamá / Utinga
Data: 19/03/2019 até 17/02/2020.
Cargo: Analista de Planejamento (Fiscalização)  Principais Atividades:
Responsável pelo Setor de Planejamento da obra, Controle de Produção das
atividades, Implementação de projetos, Conferência de medições executadas
por empreiteiros, Elaboração de Cronogramas de Avanço Físico e Financeiro,
Curvas de Avanço Físico, EAP, Histogramas de Mão de Obra/Veículos e
Equipamentos, Composição de Equipes, Relatórios das atividades, Relatórios
Fotográficos, Programação de Atividades, Elaboração e conferência de RDO’s
Análise de Contratos, Leitura e interpretação de projetos civis, eletromecânicos
e sistema de aterramento, Controle de Qualidade.','AutoCAD: Básico; Microsoft Windows: Avançado; Microsoft Excel: Avançado; Microsoft Internet Explorer: Avançado; Microsoft PowerPoint: Avançado; Microsoft Word: Avançado
• Assistente Administrativo, • Licitações e Contratos• Segurança no Trabalho',NULL,'Engenharia','https://drive.google.com/open?id=1gYGlTMPFyBqZSyfR4eHX3HDCroNLOdZT',NULL,'Agência de Empregos','Não','a Combinar','Sim','Empresa: Concremat Engenharia e Tecnologia S.A/ Quantum Projeto Pampa e Chimarrão
Data: 10/03/2021 até 07/03/2024
Cargo: Técnico de Planejamento (Fiscalização) Principais Atividades: Responsável pelo controle de Produção das atividades
de campo , Implementação de projetos, Conferência de medições executadas
por empreiteiros, Elaboração de Cronogramas de Avanço Físico e Financeiro,
Curvas de Avanço Físico, Histogramas de Mão de Obra/Veículos e
Equipamentos, Composição de Equipes, Relatórios das atividades, Relatórios
Fotográficos, Programação de Atividades, Elaboração e conferência de RDO’s,
Análise de Contratos, Leitura e interpretação de projetos civis, eletromecânicos
e sistema de aterramento, Punch List controle de pendências de Campo para
energização, Controle tecnológico de concreto, (Acompanhamento de
rompimento de corpo de prova/rastreamento da concertarem das fundações,
bases e pré-moldados) Elaboração e adequação de databook da obra; Controle
de execução de fundação, montagem e lançamento de cabos. Controle de
recebimento e distribuição de estruturas metálicas, parafusos, cabos e
acessórios','Quero inscrever-me no banco de talentos da Young!','Principais Atividades: Responsável pelo controle de Produção das atividades
de campo , Implementação de projetos, Conferência de medições executadas
por empreiteiros, Elaboração de Cronogramas de Avanço Físico e Financeiro,
Curvas de Avanço Físico, Histogramas de Mão de Obra/Veículos e
Equipamentos, Composição de Equipes, Relatórios das atividades, Relatórios
Fotográficos, Programação de Atividades, Elaboração e conferência de RDO’s,
Análise de Contratos, Leitura e interpretação de projetos civis, eletromecânicos
e sistema de aterramento, Punch List controle de pendências de Campo para
energização, Controle tecnológico de concreto, (Acompanhamento de
rompimento de corpo de prova/rastreamento da concertarem das fundações,
bases e pré-moldados) Elaboração e adequação de databook da obra; Controle
de execução de fundação, montagem e lançamento de cabos. Controle de
recebimento e distribuição de estruturas metálicas, parafusos, cabos e
acessórios ;','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-14T14:54:00.000Z'::timestamptz),
  ('Josué Mateus Silva Peterson','petersonjosue3@gmail.com',NULL,'51995691190','2002-04-25',23,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1eZ7ZCjQMXoK2fig5wKk1rXh28ryO3pgy','Vou começar a cursar bacharelado em administração','Ensino Médio Completo','Unicesumar',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1 RR shoes 2 expedição 3 2019-2020 4 trabalhei na esteira e depois na expedição,ai veio a pandemia e colocaram mais de 500 pessoas pra rua e eu fui um deles
1 pedras multi 2 serviço gerais 3 2020-estou atualmente 4 dirijo empilhadeira,faço entrega quando precisa',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Agência de Empregos','Não','R$ 2.500.','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Estou a procura de novas oportunidades,comecei a minha faculdade agora e procuro atuar na área, posso não ter experiência mais tenho muita vontade e facilidade de aprender,sou bastante comunicativo e principalmente responsável com os meus compromissos','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-14T21:18:00.000Z'::timestamptz),
  ('Isadora Bitencourt da Silva','isadorabitsilva@gmail.com',NULL,'995698988','2002-07-15',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=13iCdmdJI62WYKyOdaH_P5R9yjz_N4IkP','Direito (9º semestre)','Ensino Superior Incompleto','Universidade Luterana do Brasil - Ulbra',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Prefeitura de Santo Antônio da Patrulha - Procuradoria Geral do Município;
2) Estagiária;
3) 04/12/2020 - 18/03/2022;
4) Análise e elaboração de contratos e aditivos administrativos vinculados ao Poder Executivo no que tange a processos licitatórios do referido órgão; 
Protocolo de petições e processos junto ao Poder Judiciário;
Direcionamento de notas de expedientes de citações e intimações, encaminhados aos devidos assessores responsáveis;
Digitalização de processos judiciais;
Atendimento ao público, servidores e autoridades municipais.

2) Fórum de Santo Antônio da Patrulha - Distribuição e Contadoria / Cartório Judicial da 1ª Vara;
2) Estagiária;
3) 28/03/2022 - término em 27/03/2024;
4) Apoio cartorário, conferência e triagem de documentos, bem como movimentações e cumprimentos de petições e ofícios nos sistemas Themis, Eproc e SEEU e SEI!;
Elaboração e análise de despachos judiciais;
Criação e conferência de custas processuais;
Distribuição e redistribuição de processos judiciais;
Destinação de bens/objetos apreendidos;
Emissão de certidões e alvarás de 1º grau;
Atendimento ao público interno e externo.','Graduação em Direito - Em curso (9º semestre)
Previsão de conclusão: 2024/2

Curso: Fiscalização de Contratos Públicos
Escola de Governo do Município de Santo Antônio da Patrulha

Treinamento: Lei nº 14.133/2021 - A Nova Lei de Licitações e sua Aplicabilidade em Âmbito Municipal
Instituto Municipium / Faculdade Monteiro Lobato

Curso: Escuta Qualificada para Vulneráveis ao Tráfico de Pessoas
Escola Nacional de Administração Pública - ENAP',NULL,'Estágio, Licenciamentos','https://drive.google.com/open?id=1DVo5yw0AHjiw-IHcczmXLEuXkhmNfa6A',NULL,'Agência de Empregos','Vitória Ribeiro','Aproximadamente R$ 2.000,00, salário base de estágio do TJRS.','Não',NULL,'Assistente de Licenciamento ou Estágio de Licenciamento','Almejo contribuir com maestria na Young em tarefas jurídicas, visando o desenvolvimento profissional e pessoal.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-15T02:27:00.000Z'::timestamptz),
  ('Eduarda Elisiario','eduardaelisiariot@gmail.com',NULL,'51998590971','2002-02-21',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1DPmXkr_uh2xK8a1pFL8jQXnBnQWh4j8e','Administração de empresas','Ensino Superior Incompleto','FURG',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','EMPRESA: Lojas Americanas S/A
CARGO: Supervisor de Vendas Comercial
FUNÇÕES DESEMPENHADAS: Supervisionar as equipes de vendas, acompanhar os pedidos dos
clientes e identificar suas necessidades, para definir a melhor forma de atendimento.
Acompanha negociação de preços e prazos de entrega e estabelece metas para cumprimento
dos objetivos da área comercial.
PERÍODO: 11/2020 - 03/2023
EMPRESA: AJGS Indústria e Comércio, Importação e Exportação (Kallango)
CARGO: Consultora Comercial
FUNÇÕES DESEMPENHADAS: Entrar em contato com os clientes, elaborar pedidos, fornecer
informações como data de entrega, transporte e valor, além de prestar auxilio de qualidade
para o cliente.
PERÍODO: 03/2023 - 10/2023
CURS','Tenho outros cursos na área de Gestão como Gestão do Tempo e Produtividade pela ENAP e curso técnico Assistente Administrativo pelo SENAI',NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1XII6aMl08u8dtForm3td1FXTiqlJDDJb',NULL,'Indicação','Não','Em média 2.000,00','Não','Kássio Fraga, 51998156209, Gerente de Negócios, Kallango','Quero inscrever-me no banco de talentos da Young!','Me mudei para SAP para realizar o sonho de fazer uma graduação e agora tenho o sonho de trabalhar na área, sou muito comunicativa e extrovertida, porém focada.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-15T13:39:00.000Z'::timestamptz),
  ('JULIANA DOS SANTOS MACHADO SILVEIRA','julianamchados98@yahoo.com.br',NULL,'51996743778','1998-07-25',27,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1LZO6_R_C6M__YiIqf6J_xInS_WKmyPgS','DIREITO','Ensino Superior Incompleto','ULBRA','2024-12-24','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','DELEGACIA DE POLICIA ESTÁGIO. TRIBUNAL DE JUSTIÇA ESTÁGIO.',NULL,NULL,'Financeiro','https://drive.google.com/open?id=1NbTIdlGfi58PKV7vRB4fZKTcT1H5JJLt',NULL,'Agência de Empregos','nao','2000','Não',NULL,'ASSISTENTE FINANCEIRO',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-15T19:48:00.000Z'::timestamptz),
  ('Lidiane Machado','lidiane.machado44@gmail.com',NULL,'51995169536','2001-12-31',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1IabYPs2T7HroD2pL6f8WaE1GUjjBU3g8',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Drebes e Cia Ltda',NULL,NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1Dwyt5R4_kPwyP8HvwZm_nKB7XYdfW35L','https://drive.google.com/open?id=1jNH3r_zsIdJWx6Bc9rxZ7j9e1_vHU0TQ','Agência de Empregos','Não fui','2.000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-15T22:36:00.000Z'::timestamptz),
  ('Filipe Bühler da Silva','filipebds29@gmail.com',NULL,'998316155','2000-09-29',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1a6PJ6MB90a2g7x5tc-3uellyeQez6jCo','Administração','Pós-graduação Incompleta','Universidade Federal do Rio Grande - FURG','2024-01-04','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','RR SHOES COMÉRCIO E FABRICAÇÃO DE CALÇADOS 
ASSISTENTE PCP 
06/2021 - Atual
Cadastro de Pedidos:
•        Inclusão de dados de clientes.
•        Especificações de produtos solicitados.
•        Estabelecimento de prazos de entrega.
Geração de Ordens de Produção:
•        Cadastro de remessas com base nos pedidos recebidos.
•        Considerando capacidade produtiva, recursos e prioridades.
Acompanhamento de Pedidos:
•        Atualização do status em sistema.
•        Alterações de datas e solicitações dos clientes e representantes.
Coordenação e Comunicação:
•        Interação com áreas envolvidas (produção, suprimentos, logística).
•        Garantia do fluxo adequado dos pedidos.
Monitoramento de Estoque:
•        Controle de produtos acabados.
Análise de Demanda e Previsão de Vendas: •
•        Apoio no planejamento de produção.
•        Dimensionamento de recursos necessários.

AGS INDÚSTRIA DE CILINDROS 
ANOTADOR DE PRODUÇÃO 
07/2020 - 04/2021
Registro de Dados de Produção:
•        Anotação de quantidades produzidas, tempos de ciclo, ocorrências e paradas.
Monitoramento de Desempenho da Produção:
•        Acompanhamento da produtividade, eficiência e qualidade.
•        Registro das informações relevantes.
Comunicação e Colaboração:
•        Colaboração com operadores e supervisores.
•        Fornecimento de feedback sobre o progresso da produção.
•        Identificação de possíveis problemas ou necessidades de ajustes.
Verificação da Conformidade de Produtos:
•        Verificação da conformidade com especificações e padrões.
•        Registro de não conformidade e ação nas áreas responsáveis.
Análise de Dados de Produção:
•        Colaboração na análise de indicadores de produção.
•        Apoio na tomada de decisões.
Organização de Registros:
•        Manutenção de registros e documentos de produção.
•        Garantia da integridade e disponibilidade das informações.

RR SHOES COMERCIO E FABRICAÇÃO DE CALÇADOS 
ASSISTENTE ADMINISTRATIVO
02/2016 - 05/2020
Controle na Produção de Calçados:
•        Anotação da produção e registros fiscais.
•        Apoio aos operadores com orientações práticas.
Suporte no RH e Fiscais:
•        Atendimento aos funcionários, esclarecendo dúvidas.
•        Recebimento de documentos e alterações cadastrais.
Rotinas Administrativas e Fiscais:
•        Conferência de folhas de ponto.
•        Organização de documentos e arquivos.
•        Manutenção de quadros de aviso com informações relevantes.
Conferência de Notas Fiscais:
•        Verificação de quantidades, qualidade e especificações dos materiais.
Expedição de Materiais e Produtos:
•        Exame dos materiais.
•        Providenciamento de notas fiscais.
•        Registros para encaminhamento aos setores da empresa','Cursando Pós Graduação em Gestão Financeira','Administrando Banco de Dados, Curso de Pré-cálculo, Empreendedorismo e Inovação, Estratégia de Negócios, Word 2016, Excel 2016, Inovando com CSS, Introdução à Gestão de Projetos, Língua Portuguesa, Redes de Computadores','Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1jNBo0OMftcr7wwRmqG85boTKXdNI6uhv',NULL,'Agência de Empregos','Não','R$2.000,00','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-16T00:18:00.000Z'::timestamptz),
  ('Marilene Dias Machado','chuca.machado@gmail.com',NULL,'55999708408','1972-08-11',53,'Casado(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1EzGmcnB9T66w9fWzb4_34PEYuei4vA_f',NULL,'Ensino Médio Completo','Liberato Salzano vieira da cunha','1994-12-20','Não, no momento pausei/parei por um período.','Não tenho muitas experiências só trabalhei em santa Maria na waisburg empresa de panetones auxiliar de produção,e como  vendedora nos apiários de mel,mas procuro algo mais simples até como auxiliar de serviços gerais',NULL,NULL,'Comercial','https://drive.google.com/open?id=1aJinFiadPNvn9XNV-qgb8uZ21Mav8k1Y',NULL,'Facebook','Não','Comercial','Sim',NULL,'Gostaria de me candidatar a qualquer área que esteja ao meu alcance',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-16T22:28:00.000Z'::timestamptz),
  ('Thuyanne Souza da costa','thuyannecosta@hotmail.com',NULL,'51984491547','1994-08-19',31,'União estável','0','Sim','Osório/RS','https://drive.google.com/uc?export=view&id=1tnBnShp1E6Bn0sFvE45oQ2nvrrsXpviK','Arquitetura','Ensino Superior Completo','Uniritter','2018-02-20','Sou formado','Arqexpress 
Projetista prestação de serviços, desenhista 
2018/2019 
Conteúdo digital + projetos de interiores 
Juliana Judá 
Prestação de Serviços terceirizados 
2018/2024 
Desenhos técnicos, aprovação de casas em condomínios, prefeitura e dmae, plantas elétricas e hidrosanitaria, projetos de interiores e desenvolvimento de 3d 
Projeta imbe 
Projetista terceirizada
2022/2023
Desenvolvuemnto de residencias e desenhos técnicos, aprovação de casas em condomínios, prefeitura e dmae, plantas elétricas e hidrosanitaria, projetos de interiores e desenvolvimento de 3d 
 Autônoma 
Arquiteta e urbanista 
2018/2024
Projeto de residências, interiores, aprovação em prefeitura.','Pós graduação em arquitetura comercial 
Curso de curta duração em interiores 
Curso de PPCI 
Curso de fotografia trabalhei 3 anos na área',NULL,'Arquitetura','https://drive.google.com/open?id=16T4qV4njacyiQy_vD5gHcmbypYUEc9f-','https://drive.google.com/open?id=1FPKYCQ7_MoKs_qxQ-qQVCuV63oO9vW8N, https://drive.google.com/open?id=12CpbpE4sowpWjO4feJJMObY9DMXtswsM, https://drive.google.com/open?id=1DP8wSSqFErAWc0JltcIUkXWskwYv50mn','Instagram','Não','R$ 3.000,00 + auxilios','Sim',NULL,'Vaga para arquiteto','Oi sou a thuyanne, 
Vou falar um pouco dos meus hobbs! No meu currículo já tem todos os cursos e áreas de interesse que eu desenvolvi durante esses 5 anos. 
Eu sou uma arquiteta que ama uma obra projetos de casas é minha paixão! 
Nas horas vagas amo uma partida de tênis além de brincar e passear com a minha doguinha,  amo uma série com pipoca, mas também amo reunir os amigos e fazer aquele churrasco.
Obrigada pela oportunidade de contar sobre mim e minha carreira profissional. Espero qhe um dia possamos conversar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-17T11:28:00.000Z'::timestamptz),
  ('Marcelo Nunez Maciel','marcelonunez43@gmail.com',NULL,'5555984467711','2003-06-02',22,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1TkUzklVSuIjV2Cf98hNncLmPcUY8a7YG',NULL,'Ensino Superior Incompleto','Anhanguera',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Real utilidades 15/08/2023
Vendedor',NULL,NULL,'Administrativa, Financeiro, Marketing, Engenharia',NULL,NULL,'Facebook','Não','2.000','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-18T00:01:00.000Z'::timestamptz),
  ('Helen Kauany Ramos Cardoso','hellencardoso41@gmail.com',NULL,'5555984022388','1999-09-23',26,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1CeQrr5MyMdK0K9enh_HVaiWddqb6xWRP','Gestão Pública','Ensino Médio Completo','Unipampa','2026-03-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa: Pernambucanas, 2023
Operadora de caixa e Atendimento ao público 
Empresa: Carnes São Pedro e Conveniência, 2020 à 2023
Operadora de caixa 
Empresa: Prefeitura Municipal de Sant’Ana do Livramento, atualmente 
Estágio: auxiliar na digitação e elaboração de planilhas e documentos, atendimento ao publico e telefone, e demais atividades da área.',NULL,NULL,'Administrativa, Estágio, Novos Negócios, Engenharia',NULL,NULL,'Facebook','Não','1600','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Busco me dedicar sempre ao trabalho que é me designado, sou uma pessoa responsável, me preocupo em trabalhar em lugar que todos estejam bem e em harmonia.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-19T01:41:00.000Z'::timestamptz),
  ('Maísa Rosa da Rocha','maisarosadarocha123@gmail.com',NULL,'51996708019','2006-02-20',20,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1GaKHM6VVbXCEFrug5FDGoQFBB4_x3MHP','Engenharia de Produção','Ensino Médio Completo','FURG',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalho no salão Berê Godoi, atualmente ocupo o cargo de atendente e maquiadora. Trabalho nesta empresa desde 16/04/2022 e continuo neste cargo.',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1eU5c4xC1Opcmbf02rNqIWvg24j4_pl4U',NULL,'Indicação','Amanda Consul Portal','Um salário mínimo.','Não','Berê Godoi, 51997867533, Salão Berê Godoi','Estágio Engenharia e/ou Arquitetura','Estudei sobre estética e com cursos de maquiagem profissionais me possibilitei de ter meu primeiro trabalho. 
Trabalho em equipe, trabalhando com a empresa e meu crescimento profissional. Tenho noções de computação.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-20T02:02:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Rodrigo Ucha Teixeira','RODRIGOUCHATEIXEIRA@GMAIL.COM',NULL,'55984119565','1987-06-11',38,'Casado(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1ouRd41Woycjb5_XYwOrM0ELIu5y_u-Cx','Administração de empresas','Ensino Superior Completo','Universidade Federal do Pampa','2014-11-17','Sou formado','Meng Engenharia, Encarregado Administrativo.','Técnico de segurança do trabalho',NULL,'Administrativa, Financeiro',NULL,NULL,'Indicação','Nao','4000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-20T18:18:00.000Z'::timestamptz),
  ('Maiara da Silveira Viana','mayaradeltasul@gmail.com',NULL,'51980564402','1994-01-08',32,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1QQHe4pC_xVCUUDRAiQFPGtHsrGufAMwU','Biologia','Pós-graduação Completa','Polo Universitario Leonardo da Vince','2019-10-12','Sou formado','Vendedora, professora, Analista Financeiro','Analista Financeiro - Finalizado 2023 (FURG)
Espanhol Nivel Medio e intermediario- Cursando (Furg)
Pos Graduada em Meio Ambeinte e Sistentabilidade
Pos Graduada em Educação Especial Inclusiva',NULL,'Comercial, Financeiro','https://drive.google.com/open?id=1XVf-fatKsS8mkpmD5p8KibHRB6bViKnG','https://drive.google.com/open?id=100_SjMQCW4G7jUggwfcoDfOuRWnwCPfd','Instagram','Nao','A combinar','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-21T13:54:00.000Z'::timestamptz),
  ('Gabriela Mayer da Silva','gabrielamayer22@gmail.com',NULL,'51980210731','2005-06-01',20,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1rPsUediECUdI9GCQoutCEh3fg-pXo6js','Odontologia','Ensino Médio Completo','Ufrgs',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei no Sacolão do Maurinho como operadora de caixa comecei em maio de 2020 e encerrei meu ciclo de fevereiro de 2023, lá eu atendia o cliente perguntava se estava satisfeito, para mim prestar ajuda e uma atenção especial, além do mais era responsável pelo caixa atendendo e cessando as dúvidas do público e também explicando sobre a qualidade do produto com o objetivo de deixar o cliente muitíssimo satisfeito com o produto e a parte financeira também.','Sou bixo em odontologia na UFRGS ainda não foi feita a matricula é para o segundo semestre de 2024','Tenho dois cursos técnicos de 72 horas, sendo eles Rotinas administrativas e também informática.','Financeiro','https://drive.google.com/open?id=1EMrei_oLea5MjrlcK43az6Q4SXPYVXwq',NULL,'Instagram','Não','A média que os colaboradores da young recebem','Não','Mauro','Quero inscrever-me no banco de talentos da Young!','Acabei o ensino médio recentemente fiz os cursos técnicos antes, gosto de estar sempre bem qualificada antecipadamente, passei na universidade federal do Rio Grande do Sul em odontologia, resultado do meu esforço do cursinho durante 3 anos preserverando mesmo tendo trabalhando durante o período! Gosto de trabalhar com comércio meus pais já tiveram e sinto saudade, ainda mais com vendas recentemente estava vendendo cursos mas por não ter nada absolutamente fixo não deu certo. Trabalhei como operadora de caixa durante 3 anos, o público ele te cativa e te proporciona ensinamentos diversos e fazer parte da young seria uma experiência incrível e uma baita oportunidade. Aguardo o retorno do responsável!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-21T20:44:00.000Z'::timestamptz),
  ('Ana Paula Vieira','dalmolinvieiraanapaula5@gmail.com',NULL,'55996782287','1995-04-27',30,'Solteiro(a)','1','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1eLeCE5s7REYMsApE1fCJUbeEfP_XIAu4',NULL,'Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Figueira Service- março de 2017 até maio de 2020. Trabalhei como secretária. 
Lá Boutique- Kids e teens- outubro de 2021 até março de 2024. Trabalhei com atendimento ao cliente, tanto presencial quanto online.','Curso Administração 2 semestre e estou cursando um técnico de transações imobiliárias.',NULL,'Administrativa, Comercial','https://drive.google.com/open?id=123qffVcFnuZlxvfb1fgI6KlaNYKTRH79',NULL,'Indicação','Não','R$2.000,00','Sim','Catana Marcon- 55 999367885','Comercial','Oi. Sou natural de Concordia-SC. Cursei 7 semestres de Engenharia Agrícola, mas acabei me achando na administração e em vendas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-21T21:17:00.000Z'::timestamptz),
  ('Cristiane Magalhães Rosa','Criismr25@gmail.com',NULL,'55996515308','1997-03-13',28,'Casado(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1l4H0QaCvTG4uh2Ln1A0P5ZGr9IBSK1mh','Engenharia de Produção','Ensino Superior Incompleto','Ucamp','2026-02-21','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','...',NULL,NULL,'Administrativa, Comercial, Financeiro, Engenharia','https://drive.google.com/open?id=1RQlfVCD47kdsUHyS9l_Td6up4bkIWQF_',NULL,'Facebook','Não','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-21T23:07:00.000Z'::timestamptz),
  ('Frantiéle heldt','frantiele.heldt17@gmail.com',NULL,'51989991717','2000-11-05',25,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1dJ18AwXfyFpxr-uN89-SsFZyfJRWs7jy',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1) Padaria Eukifiz 
2)Atendimento ao público 
3) 2015/2018

1)Farmácia Pmp (capão da canoa)
2)Gerente geral de loja
3)2019/2021
4)Atuava na parte administrativa, financeira, RH, gestão de estoque, alinhamento, orientação e plano de ação.

1) Farmácia Santa Rita 
2)Atendente/Manipuladora Quimica 
3)2021/Atualmente
4) Atendimento ao público, controle de notas fiscais de entrada, manipulação e derivados.','Curso básico em administração de empresas
Curso básico em Recursos humanos
Curso avançado em Marketing digital
Curso de inglês intermediário(atualmente)',NULL,'Administrativa, Comercial, Marketing, Novos Negócios','https://drive.google.com/open?id=1gMEKXNLVJ7wPodXcJahsshx1awwg32uG',NULL,'Instagram','Não','2500','Sim','Marcos, 984191588 Farmácia Santa Rita','Quero inscrever-me no banco de talentos da Young!','Atualmente faço inglês intermediário (Wizard)

 Tenho conhecimento amplo em tecnologia e marketing, adoro coisas que relacionem criatividade! 

Experiência com público, além de comprometimento e muita dedicação.

Visando sempre flexibilidade, produtividade e foco em resultados','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-22T00:03:00.000Z'::timestamptz),
  ('Valentina Silva dos Santos','valensantoss@gmail.com',NULL,'51996336396','1996-05-18',29,'União estável','0','Sim','Tramandaí/RS','https://drive.google.com/uc?export=view&id=1Hsh-WZerm_USN_h52PdVoavVQU1i0-0z','Biologia','Pós-graduação Completa','Universidade Estadual do Rio Grande do Sul','2021-03-18','Sou formado','Já trabalhei com vendas ante e durante da minha graduação. E atualmente íntegro a equipe da empresa ANX Engenharia e Arqueologia, a empresa presta serviço para Corsan por meio do Programa Água, Vida e Cidania, dentro do programa, eu executo ações de educação ambiental sobre o uso consciente da água, descarte de lixo e sobre o ambiente onde o programa está inserido. Além desta ações, a parte de gerenciamento dos dados dos usuários atendidos pelo programa ,é feita por mim.','Possuo mestrado na área da geociência, com ênfase em paleontologia. Durante a graduação trabalhei com monitoramento de praia e coleções zoológicas. Fiz cursos e levantamento e monitoramento de fauna, biologia e conservação de cetáceos e também possui curso para utilização do software R.','Sou Bióloga Marinha, com ênfase em Gestão Ambiental Marinha e Costeira e mestra em geociências','Licenciamentos','https://drive.google.com/open?id=1SDqLNK3lY9oNSf0ifJKighRrHJId-x_m','https://drive.google.com/open?id=11GX3TEfBSOBhG4pjY5cPULevqetzilcn, https://drive.google.com/open?id=1wwXfeJxwwPPj7xtpyroAH-T855bCMO0F, https://drive.google.com/open?id=1nCKFL20DaPe82HNV9X80RrKVa3P7EWFg, https://drive.google.com/open?id=1yZ9so80vHILx_IkS00SDvWJAMmYuaWTh, https://drive.google.com/open?id=1MJgsIrvVG4esoFIYHzZw68Nu3O1Z_2Zf','Instagram','Não','Um salário mínimo','Não','ANX Engenharia e Arqueologia, Joseane Pavão, +55 51 9965-8401','Além de me inscrever no banco de talentos, estou interessada na área de licenciamento','Acredito que a parte curricular eu já abrangi bastante. Meu inglês é intermediário. Durante a graduação eu fiz trabalho voluntário com projetos de extensão relacionados ao monitoramento de praia, o que me deu bastante prática pra identificação dos animais e como obter os dados de forma correta, até mesmo do pós campo, trabalhando bastante com planilhas. Durante um período eu trabalhei em pet shop, o que foi muito legal, pois eu sou apaixonada nos pets. E nesse momento o projeto vinculado a Corsan esta terminando, por mais que tenha sido muito prazeroso eu preciso me colocar no mercado novamente. Ah! E eu me considero fitness ahahaha mantenho frequência de treino, tenho nutri, mas hoje mesmo me dei ao luxo de um bolo bem chocolatudo 💙','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-22T22:14:00.000Z'::timestamptz),
  ('Lilian Soares Albeche','gustavoelilian.83@gmail.com',NULL,'55984375388','1983-10-27',42,'Casado(a)','2','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1QDvEkxV-CPL6YByRb8EuEU_xj8s3Ce39','Administração de empresas','Ensino Superior Completo','UNIPAMPA','2014-09-10','Sou formado','2003-2007 – Vendedora e operadora de caixa no O Boticário N/C - Realizando atendimento na área de
vendas, caixa, controle de estoque de mercadorias, pós-vendas, vendas externas para clientes.

2007-2010 – Vendedora e operadora de caixa na Gato e Sapato N/C – Realizando atendimento na área de vendas por 03 meses, demais tempo como operadora de caixa.

2010-2012 – Operadora financeira e balconista na Farmácia São João
N/C –Realizando tarefas como operadora de caixa, atendimento na área de vendas, controle de estoque de mercadorias.

2012-2018 - Consultora de Vendas na Lojas Colombo N/C- Realizando atendimento em
vendas.

2019-2023 - Assistente administrativo na ADM. PROMARK a/C - Realizando serviços
administrativos e financeiros relacionados a condomínios, contas a pagar, contas a receber, conciliação bancária, atendimento de clientes, cobrança de inadimplentes acompanhamento de fornecedores e prestadores de serviços.','Sou formada em Administração, tenho curso de capacitação administrativa, Informática e corretora de Imóveis.',NULL,'Administrativa','https://drive.google.com/open?id=1csRlaRc9oa-NqIu0VHdRuaAgyR1IwDLI',NULL,'Facebook','Não','2400','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Bisco aprender novos desafios, visando crescimento e aprimoramento profissional e pessoal bem como contribuir para o crescimento da empresa na cidade. Sou pró ativa, responsável, determinada e gostaria de uma vaga na área administrativa/comercial.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-22T23:04:00.000Z'::timestamptz),
  ('Maiara Pacheco da Silva','maiara_sap@hotmail.com',NULL,'51998241094','1992-08-24',33,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1w4OYf-VL40PvmItBczszjYZMPlcXZBHu',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1 Prefeitura Municipal de Santo Antônio da Patrulha 2 Auxiliar administrativo 3 01/03/2013- 01/05/2017 4 atendimento ao público, envio de processos administrativos.   1 Irmandade de Santa Casa de Misericórdia de Porto Alegre 2 TEC. Em radiologia  
3 02/05/2017- 24/05/2023 3 realização de exames de imagem','TTI, Técnico em Radiologia',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1b-qttRTnoPfp9jwgf6W3mFOwxjX-bCkc',NULL,'Indicação','Não!','2.000,00','Não',NULL,'Assistente financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-23T22:34:00.000Z'::timestamptz),
  ('CAROLINA ALVES PINTO','arquitetacarolina@hotmail.com',NULL,'55999540510','1977-05-11',48,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1ClrhxxEZe3PK3m_Nk95BlrATGCs3oWE_','Arquitetura','Pós-graduação Completa','Uniritter - Porto Alegre','2005-01-13','Sou formado','Desde 2005 tranalho na área, já trabalhei em serviço público e privado, como empresas e sempre como autônoma no meu próprio escritório. Todoscom registro na carteira. E prestadora de serviços como freelance.','Pós graduação 1 - Auditoria e Perícia de Engenharia  + Pós graduação 2 - Master em Arquitetura e Iluminação','Graduação e Pós-graduação','Arquitetura, Licenciamentos, Engenharia',NULL,NULL,'Instagram','Não','5000','Não','Prefeitura Municipal de Santana do Livramento','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-26T15:15:00.000Z'::timestamptz),
  ('Bruna Gomes Almeida','bg7559458@gmail.com',NULL,'51996479964','2001-06-12',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1q2VMYktIJJFGraeW5PCGPXIf7GHuDk1f','Administração de empresas','Ensino Superior Incompleto','Universidade Federal do Rio Grande - Furg','2026-09-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Kallango - Auxiliar de Produção 
Início e final: 26/03/2021 a 05/06/2023
Principal atividade: Revisora 

Benditta Marcenaria - Auxiliar Administrativa 
Início 01/09/2023 a atualmente 
Principais atividades: Financeiro: organizar as contas do mês, fazer lançamentos, compras, cuidar faturas de cartões, agendar pagamentos. 
RH: Verificar dados das folhas de pagamento, atualizar e acrescentar oque necessário, processos de admissão e demissão, receber as pessoas, fazer cobranças, cuidar faturamento e controle de todos os papéis da empresa.',NULL,NULL,'Administrativa, Estágio',NULL,NULL,'Agência de Empregos','Não','1.950,00','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-28T00:46:00.000Z'::timestamptz),
  ('Francisco Junior Cardoso Torres','frjuniortorres@hotmail.com',NULL,'55999825853','1993-02-16',33,'Solteiro(a)','1','Sim','Dom Pedrito/rs','https://drive.google.com/uc?export=view&id=1_JpvpuChl_GKqsuxFMLMf97_HK8vq_wz','Engenharia Civil','Ensino Superior Completo','Universidade Federal do Pampa','2024-02-23','Sou formado','1) Prefeitura Municipal de Alegrete;
2) Estagiário de Engenharia Civil na Secretária de Infraestrutura - Setor de Topografia;
3) Início 05/2022 - Término 11/2023;
4) Atividades prestadas:
- Execução de projetos topográficos (levantamentos planialtimétricos) destinados à pavimentação de vias urbanas; 
- Projetos de retificações, desmembramentos e remembramentos de imóveis do município;
- Emissão de certidões (localização e confrontação, nome de rua e bairro, numeração e área construída na modalidade Reurb-S);
- Digitalização de mapas físicos em .dwg;
- Atendimento ao público.

1) Laboratório de Estruturas e Materiais de Construção - Unipampa Alegrete;
2) Bolsista de extensão;
3) Início 07/2023 - Término 10/2023;
4) Atividades prestadas:
- Catálogo, armazenamento em câmara úmida, retificação e rompimento de corpos-de-prova de empresas do município de Alegrete, principalmente da Construtora Sotrin, na etapa de construção dos pisos do Stock Center;
- Atividades diárias do laboratório (limpeza e manutenção de equipamentos).

1) Imobiliária Alegrete;
2) Vistoriador de Imóveis;
3) Início 02/2023 - Término 10/2023);
4) Atividades prestadas:
- Vistorias em imóveis residenciais e comerciais destinados a aluguel, por meio de fotografias e descrições técnicas;
- Verificações in loco das contestações.

1) Freelancer;
2) Desenhista digital;
3) Início 06/2022 - Término 12/2023;
4) Atividades prestadas:
- Projetos de regularização, retificações, desmembramentos e usucapião de imóveis, em AutoCAD e Revit.','Meu trabalho de conclusão de curso foi na área de madeiras, possuo curso de controle de infiltração e permeabilidade de solos no campo e laboratório (Unipampa) e Curso de Excel básico (Unipampa).',NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1ebi1m4nhleFpgnO89Evt2p7f26kL2wbn','Indicação','Não','4000','Sim','Clovenir Garcia - 55 9 9709-3396 - Setor de Topografia da Prefeitura Municipal de Alegrete;
Amanda Andrade - 53 9 9136-1070 - Imobiliária Alegrete;
Marcelo Oliveira - 55 9 9909-2985 - Laboratório de Estruturas e Materiais de Construção - Unipampa Alegrete.','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-28T01:22:00.000Z'::timestamptz),
  ('Fábio Suyan da Silva','fs.suyan2001@gmail.com',NULL,'51999827499','2001-04-22',24,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1IPua8fb3jTM7gNnrdiofl4BZ3aINA3tJ',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Bom. Trabalhei na RRSHOES, como Almoxarife por dois anos (2018-2020). Também na Cooperja como operador de máquinas por três anos e sete meses (2020-2023).',NULL,NULL,'Administrativa, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Não','Bom no momento procuro apenas uma oportunidade no ramo imobiliário, sei que é um ramo promissor. Mas para o começo algo em torno de 1800 a 2000, mas o que realmente estou querendo é a oportunidade, para mudar de profissão.','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom. Eu sou uma pessoa comum que gosta de esportes, viajar, sair com amigos, estar em família... E estou procurando formar uma carreira profissional, trabalho a algum tempo em produção e decidi que quero tentar outro ramo, então tenho pesquisado sobre o ramo imobiliário e tenho visto que é um ramo promissor, então estou buscando uma oportunidade no ramo. Também estou disposto a fazer cursos na área!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-28T16:30:00.000Z'::timestamptz),
  ('Marcos Moraes','mamor1965@gmail.com',NULL,'55999643696','1965-03-16',60,'Casado(a)','2','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1O4J8vfgEk24CBvOH7p_-TjYZAl9NGEvz','Marketing','Ensino Superior Completo','Universidade Paulista','1998-12-30','Sou formado','Encol S/A 1992 a 1997 gerenciava carteira de empreendimentos e clientes de imóveis residenciais em construção. realizava o atendimento até o desligamento com o agente financeiro na conclusão da obra e também efetuava vendas via nossos parceiros comerciais.  Promo Point 1998 / 2000 empresa promocional e de eventos PDV onde também fazia vendas no segmento corporativo. Fazenda Rogembarh 2014 /2020 área comercial segmento varejo e atacado. Prospecção de mercado, vendas e fidelização de clientes.  Tenho muita afeição pelo mercado imobiliário e residindo em Santana do livramento desde 2012 poucas foram as oportunidades de me manter no segmento.','cursos relacionados a vendas e fidelização de clientes',NULL,'Comercial','https://drive.google.com/open?id=1Ss-HHPXME1-lv2Eu9M1ny2p7fFIbxRhN',NULL,'Google','não','4.000,00','Sim',NULL,'Comercial','Sou uma pessoa dinâmica gosto de gente e de trocas experiências. Adoro estar em contato com a natureza e todos os benefícios que essa aproximação proporciona. Procuro sempre estar positivo e ter foco e comprometimento nas atividades e metas que o dia a dia nos impõe. Ter amigos encontrá-los é sempre muito gratificante. Depois de muitos anos na área comercial posso afirmar que tenho total identificação com a mesma.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-02-28T18:06:00.000Z'::timestamptz),
  ('Fernando Ribeiro Javarez','fernandorj1903@hotmail.com',NULL,'55999811424','1996-02-26',29,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1MNY5hZMXEmhDJwSafe4GSGLCI1uAptfa','Técnico em Segurança do Trabalho','Ensino Superior Incompleto','Unicorp Faculdades','2024-05-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Sirtec Sistemas Elétricos 2) Assistente de Frota 3) 07/2022 - 01/2023 4) Auxiliava as operações da empresa, manutenção do veículo, contato com fornecedores etc.',NULL,NULL,'Estágio','https://drive.google.com/open?id=12xkQVFW-iBSQGRTk3E5pIIoH96QM8HX0',NULL,'Agência de Empregos','Não','A combinar','Sim',NULL,'Estágio Segurança do Trabalho','Boa tarde, me chamo Fernando e sou aluno do curso Técnico em Segurança do Trabalho, gostaria de pedir uma oportunidade de estágio para adquirir as horas necessárias para concluir minha formação.
Tenho disponibilidade de horários.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-01T19:35:00.000Z'::timestamptz),
  ('Maria Luiza Maycá','malu96mm@hotmail.com',NULL,'55996270703','2001-09-28',24,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=12bOLymVsu_w2Ixhq9HUb_7oJpofsNKI5','Gestão Pública','Ensino Superior Incompleto','Unipampa','2024-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1)•Estética Maira Wunsch- no cargo de secretaria. De dezembro de 2021 até Março de 2022. Responsável pelo atendimento ao cliente (online e presencial), controle de estoque, preparo de planilha de pedidos, vendas e gerenciamento das redes sociais da empresa.
2)Departamento de Água e Esgoto -DAE - no cargo de estagiária na parte administrativa. De Maio de 2022 até Fevereiro de 2024.
Desenvolvendo atividades de atendimento ao usuário (telefônico e presencial), encaminhamento de informações das ordens de serviço e de processos internos, organização dos serviços através de planilhas de controle por meio do programa libre office e abastecimento de informações no programa informatizado da autarquia.','Faço administração mais voltada para o setor público, porém abordamos muito várias áreas da Administração privada, Direito, Economia. Embora seja um curso direcionado para a parte pública, é cheio de conhecimentos gerais de diversos ramos diferentes e atuais.',NULL,'Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=1qw5vb6hpb9FNrXctyXgg1t8XhBo64XXq',NULL,'Indicação','Helen Cardoso','Um salário mínimo','Não',NULL,'Comercial','Tenho 22 anos, sou estudante, tenho curso de inglês nível intermediário cursado no SENAC, consigo entender tanto inglês quanto espanhol. Na faculdade faço parte de um projeto voluntário do campus, onde fortalecemos o vínculo entre discentes e sociedade, explorando áreas como o comércio, marketing, eventos esportivos e culturais, além de prestar serviços solidários. 
Tenho muito interesse na parte jurídica da administração, gosto muito de trabalhar em escritório, seja na parte burocrática ou na parte de atendimento ao público. Sou muito curiosa e estou sempre disposta a aprender coisas novas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-04T22:33:00.000Z'::timestamptz),
  ('Lilian Soares Albeche','gustavoelilian.83@gmail.com',NULL,'55984375388','1983-10-27',42,'Casado(a)','2','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1_DijzLVLYnZV5nBRgMuqv4XQkNMNXIYx','Administração de empresas','Ensino Superior Completo','Unipampa','2014-09-12','Sou formado','2000-2002 – Estágio CIEE, remunerado, na Imobiliária Rumo Novo N/C
– Realizando serviços gerais administrativos, tais como digitadora, atendimento ao público, secretariado.
2003-2007 – Vendedora e operadora de caixa no O Boticário N/C - Realizando atendimento na área de vendas, caixa, controle de estoque de mercadorias, pós-vendas, vendas externas para clientes.
2007-2010 – Vendedora e operadora de caixa na Gato e Sapato N/C –Realizando atendimento na área de vendas por 03 meses, demais tempo como operadora de caixa.
2010-2012 – Operadora financeira e balconista na Farmácia São João
N/C – Realizando tarefas
como operadora de caixa, atendimento na área de vendas, controle de estoque de mercadorias.
2012-2018 - Consultora de Vendas na Lojas Colombo N/C- Realizando atendimento em
vendas de produtos físicos e serviços.
2019-2023 - Assistente administrativo na ADM. PROMARK, Rua 13 de
Maio n° 417/206 Fone(51) 98212-2122. Realizando serviços administrativos e financeiros relacionados a condomínios, contas a pagar, contas a receber, conciliação bancária, atendimento de clientes, cobrança de inadimplentes, acompanhamento e contratação fornecedores e prestadores de serviços.','Sou formada em Administração de empresas, tenho curso de informática e capacitação administrativa, também tenho curso de corretora de imóveis.','Corretora de imóveis com CRECI ativo','Administrativa, Financeiro','https://drive.google.com/open?id=1IohYUtVL_MKAEJ095qIiVsPyIDj9tFjC',NULL,'Facebook','Não','2500','Não',NULL,'Administrativa e financeira','Busco uma oportunidade na área administrativa e financeira com objetivo de crescimento e aprimoramento profissional e pessoal, bem como contribuir para o crescimento da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-04T23:43:00.000Z'::timestamptz),
  ('Rafael Nunez Pereira','nunezpereirarafael@gmail.com',NULL,'55984363622','1991-08-30',34,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1G-OoFEuEQ2H7CXUNVHQiuicyo6SukmHe',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','ASSOCIAÇÃO COMERCIAL E INDUSTRIAL DE LIVRAMENTO
CARGO: GERENTE ADMINISTRATIVO
01/01/2022 - 14/07/2022
Coordenação da reformulação administrativa da Associação, gerência do quadro de funcionários. Atualização dos sistemas de bancos de dados. Acompanhamento das reformas estruturais do edifício da associação. Campanha junto à imobiliária para locação das unidades disponíveis. Nova campanha de afiliação de sócios. Supervisão Financeira de Evento - VII Festival de Enogastronomia.


WMS SUPERMERCADOS DO BRASIL LTDA.
CARGO: SUPERVISOR ADMINISTRATIVO
10/04/2023 - 13/11/2023
Líder de Equipe do Depósito. Coordenação da Equipe de Recebimento, conferência e armazenamento de mercadorias. Líder da Equipe de Loja. Coordenação da equipe de abastecimento, repositores e promotores de marca. 

Trabalho em equipe, liderança, coordenação, metas.

AUTÔNOMO 
CORRETOR DE IMÓVEIS CRECI 62337F 

PROFESSOR DE INGLÊS (fluente)

PRIMEIRO EMPREGO:
COUTO & PEREIRA ENGENHARIA LTDA
Auxiliar de escritório em geral','Formado em curso: Técnico de Transações Imobiliárias; Graduando em Engenharia Civil, Fluente em Espanhol e Inglês.','Técnico em Transações Imobiliárias CRECI 62337F','Administrativa, Comercial, Licenciamentos, Engenharia','https://drive.google.com/open?id=1mxep5x23474NRxOyZ-13VmpCpdDqsAGp',NULL,'Indicação','Não','R$3.500,00','Sim','ACIL (Associação Comercial e Industrial de Livramento)

(55) 3242-3200;
(55) 999214784 - Vânia;

WMS SUPERMERCADOS DO BRASIL LTDA.

(55) 36211109;
(55) 984017627 - Jonathan - RH;

TRADE ASSESSORIA CONTÁBIL E FINANCEIRA.

(55) 999569336 - João Peruchena (Sócio Proprietário);

COUTO & PEREIRA ENGENHARIA LTDA

(55) 991030648 - Miguel Pereira (Sócio Proprietário).','Comercial / Financeiro','Bom dia pessoal, tudo bem?

Bacana essa iniciativa de papo aberto. Vamos a algumas curiosidades então:

Domino bem e com agilidade o básico do pacote office, seja Microsoft, seja LibreOffice.
(me refiro ao básico pra manter a modéstia e não prometer algo que não possa cumprir);

Entendo perfeitamente espanhol e inglês, (sendo ainda mais fluente em inglês - C2 CEFR)

Achei graça e resolvi responder quando li sobre curso de artes marciais (de fato fui atleta gaúcho de Karatê tradicional, até os 19 anos, quando parei, na faixa roxa).

A cerca de 3 anos me mudei para uma chácara, propriedade da família, assim dá pra conciliar uma vida tranquila, com trabalho. E foi uma escolha maravilhosa sair um pouco da bolha da cidade.

Já tive uma empresa de Marketing quando era mais jovem, infelizmente tive dificuldades e não conseguir manter. Mas como tudo na vida, valeu muito a experiência. (Estudei tanto Marketing que me tornei imune).

Como características pessoais, posso dizer que sou muito enérgico, criativo, audacioso, gosto de experimentar, conhecer e aprender coisas novas. Tenho boa disposição e genuíno interesse, olhar clínico, raciocínio rápido e facilidade para entender o ambiente.

Como sou (além de outras coisas) Corretor de Imóveis, achei interessante passar pelo processo e disponibilizar meu currículo para o banco de Dados da Young.

Especialmente considerando o novo investimento da empresa aqui no município de Santana do Livramento.

Um forte abraço, e bom trabalho pessoal!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-05T15:05:00.000Z'::timestamptz),
  ('IGOR SEVERO SOARES','severoigao@gmail.com',NULL,'55984448812','2002-12-12',23,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=13KIpiAihdXbcwj7o_cgGN52WuHgIJHMq','educação física','Ensino Superior Incompleto','UNINTER','2026-10-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','JOVEM APRENDIZ - RIGHI/fev de 2021 - out de 2022/auxiliando aos clientes dentro do atendimento na loja e empacotamento de produtos.

MP FIT/MP FAMILY CLUB - OUTUBRO DE 2023 - MARÇO DE 2024/ instrutor de natação(estágio) - auxilando as crianças a aprender a metodologia mgb do gustavo borges.','parei meu curso de inglês a um tempo, porém tenho inglês pré-intermediário, e sou bem familiarizado com a área de informática, com ótima facilidade para aprendizado',NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1_UmbzA9gBSZcd0fL6yf_fa2aRJSR8Ycz',NULL,'Instagram','não.','850','Sim',NULL,'adoraria ser estagiário mais na área de comercial, para melhorar meu atendimento ao cliente/me auxiliar com a timidez sei que área comercial existe bastante contato com o publico','bom eu sou bem quietinho na minha porém estou tentando mudar e buscar conhecimento mais na área de público, principalmente por estar em uma graduação aonde eu terei muito contato com o público e gostaria de aprender a parte comercial pois é uma área qual eu acho interessante, tentando perder totalmente minha timidez, e adoraria ingressar na empresa pois vi que são bem acolhedores com todos funcionários','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-05T21:32:00.000Z'::timestamptz),
  ('Lara de Assis Rocha','laraassisrocha@gmail.com',NULL,'51995423652','2003-04-02',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=161BdSbbZINy6jh7VhBgtqkLmpI1-gCyA','Engenharia de Produção','Ensino Superior Incompleto','FURG - Universidade Federal de Rio Grande','2027-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Magna Cosma Internacional
Estagiária de compras
06/2022 - atual
Análise de spendt | Controle e gerenciamento de MRO |
Elaboração de contratos | Negociação de preços |
Desenvolvimento de produtividade

Magna Cosma Internacional
Jovem aprendiz
09/2021 - 06/2022
Cotação e aquisição de materiais indiretos | Negociação
de preços | Elaboração de contratos | Rotinas
administrativas

Mundo Office
Estagiária de vendas e marketing
06/2019 - 11/2019
Telemarketing | Gerenciamento de redes sociais |
Atendimento ao público | Suporte de vendas |
Elaboração de postagens | Contato com clientes','Tenho conhecimento nas áreas de pacote office, photoshop, avaliação de investimentos e linguagem python.
Também possuo nível intermediário de fluência em inglês e pretendo aprender uma terceira língua para o ano de 2024.','Sim. Pacote office, photoshop e corel drawn, inglês','Administrativa, Estágio, Financeiro, Engenharia','https://drive.google.com/open?id=1i64HnyDwxsvuyntMvKi9WmyOj1NnIEQw',NULL,'Agência de Empregos','Não','Considerando as demandas necessárias para ocupar a vaga pretendida e a base de mercado, minha pretensão salarial fica entre R$ 1.500,00 a R$ 2.000,00; fico a disposição para negociar estes valores e termos de contratação.','Não',NULL,'Estágio Financeiro','Sou Lara Rocha tenho 21
anos e procuro
oportunidades para
contribuir com o
desenvolvimento de
empresas e aperfeiçoar
minhas habilidades
profissionais. Minhas principais habilidades vem do meu lado proativo e inclinação ao autoditadismo, um exemplo, são meus conhecimentos em língua inglesa que procuro desenvolver por meio de livros e filmes sem legenda. Tenho tentado aprender mais sobre o setor de finanças e investimentos bem como uma noção básica da linguagem python e das novas ferramentas de IA','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-05T23:06:00.000Z'::timestamptz),
  ('Leandro Tetour','leandroct74@gmail.com',NULL,'51997969777','1999-07-28',26,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1eQ-uLI0IERmOl3wHX_fRoE8zYt3czGM7','Ciências Contábeis','Ensino Superior Incompleto','FACCAT',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura Municipal de Santo Antônio da Patrulha, Secretaria Geral de Governo, Planejamento e Gestão.
Estágio
[27/05/2019] – [27/07/2020]
Atividades: Conhecer a unidade concedente de estágio; identificar os principais procedimentos realizados na unidade concedente de estágio, realizar atividades administrativas próprias do departamento onde realiza estágio; levantar dados econômicos financeiros de acordo com as necessidades do departamento; tudo sob orientação de supervisor.

Banrisul, Agência Osório - Osório, RS
Estágio
[03/08/2020] – [02/08/2022]
Atender ao público em geral, executando os serviços solicitados; atender ligações e efetuar os devidos encaminhamentos quando necessário; auxiliar em outras atividades compatíveis com o grau de escolaridade e com o conteúdo ocupacional do estagiário; auxiliar o público nas salas de autoatendimento; comparecer em órgãos da administração pública ou privada para realizar serviços de interesse do banco; contatar e atender os clientes pelos diversos canais de comunicação ; fotocopiar, digitalizar, digitar documentos em geral; organizar e arquivar documentos diários e periódicos, correspondências, normativas e outros papéis recebidos; prestar informações relacionadas.',NULL,NULL,'Financeiro','https://drive.google.com/open?id=1piGGo_sXhusdarBk3Vt9Q4b6gqF-mnWc',NULL,'Indicação','Não','R$1.500,00','Sim','Anderson Morche, 51 99891035, Gerente Adjunto do Banrisul','Quero inscrever-me no banco de talentos da Young!','Fiz curso básico em 2015 de Word, Power Point e Excel, utilizo muito a calculadora hp 12c, falo inglês básico (me comunico com amigos americanos).','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-06T20:52:00.000Z'::timestamptz),
  ('Fabricio Nunes Alves','fabricionunesalves@gmail.com',NULL,'55984690618','1998-11-17',27,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1YyesZpDW267Dxr1LYejrfB-OhKHRj4CJ','Engenharia Civil','Pós-graduação Completa','URCAMP','2020-12-14','Sou formado','-DAE Santana do Livramento, Estágio de Engenharia Civil de 03/2016 até 02/2018, atuando no acompanhamento e gestão de projetos de rede de distribuições;

-Delta Engenharia, Estágio de Engenharia Civil de 11/2019 até 12/2020, atuando no setor de projetos e acompanhamento de obras comerciais e residenciais;

-Delta Engenharia, Engenheiro Civil de 12/2020 até o presente momento, atuando na Gestão e gerenciamento de obras e de pessoal .','Técnico em Eletrotécnica e Engenheiro Civil Pós-Graduado em Engenharia Elétrica',NULL,'Arquitetura, Engenharia','https://drive.google.com/open?id=1vcEbVkxM-9jCxn2LWfSDmJ77uCSLIBfJ','https://drive.google.com/open?id=1b4RuuR6KPvJ9eki8cqXWeDv5NYNbO1Mb','Facebook','Não','A critério da empresa','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-06T22:50:00.000Z'::timestamptz),
  ('Francisco Dai Prá Airoldi','10franciscoairoldi01@gmail.com',NULL,'51999827197','2004-04-02',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1qbo2QgGo12gR7QktaRhOlKZqb80fFxWt',NULL,'Ensino Superior Incompleto','FACCAT - Faculdades Integradas de Taquara',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','AVEST - Ação Voluntária Escolar Santa Teresinha
Voluntário (De 2015 a 2021)

Loja Santa Isabel, Santo Antônio da Patrulha - RS
Office Boy (De 2017 a 2019)

ABC Livraria e Papelaria, Santo Antônio da Patrulha - RS
Assistente de Gráfica (Novembro de 2022 a Fevereiro de 2023)

PP - Partido Progressista
Secretário (2021)','Atualmente estou cursando o primeiro semestre de Psicologia. 
Outros Cursos: Curso Pacote Office, Curso de Língua Estrangeira: Inglês, Curso de Informática Básica, Curso de Gestão Socioemocional.',NULL,'Comercial','https://drive.google.com/open?id=1kByfa_pVy_FoBPZzpiAkXxA93i7ErPzf',NULL,'Indicação','Não','1.500','Não','(51) 99979736 - Michele Barcellos: ABC Livraria e Papelaria','Quero inscrever-me no banco de talentos da Young!','Experiência com sistema Windows(XP, 7, 8.1, 10) e Linux(Ubuntu, Deepin, Linux Mint)
Idioma: Inglês(Avançado)','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-07T03:33:00.000Z'::timestamptz),
  ('Rafael Bortolotto Ilha','rafaelilha.11@gmail.com',NULL,'55999030299','1982-03-09',43,'Solteiro(a)','2','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1Vf4bF6AWoYsJHT1EhdtNC3UeiE8cWVET','Engenheiro Agroindustrial e mestrando em Administração','Pós-graduação Incompleta','FURG e atualmente UNIPAMPA','2021-12-24','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Balconista l Casa de carnes Moacir Porto Alegre 2001 – 2002
Atendimento ao cliente, reposição de mercadorias e câmaras frias, limpeza de setor.
Recepcionista l Verde Plaza Hotel Santana do Livramento 2004 – Maio/2008
Atendimento ao cliente, apoio nas auditorias e coordenação de pessoal, 
abastecimento de caldeira e manobras de automóveis.
Balconista e entregas l Distribuidora de Alimentos Sul Frangos Ltda/ 
Sanatana do Livramento
De outubro a dezembro, trabalhei com atendimento ao público e outras atividades 
necessárias para bom funcionamento das atividades do dia a dia, como: recebimento 
de mercadorias (congelados), reposição de câmaras frias, entregas das encomendas 
nos estabelecimentos/clientes, limpeza de setor e das câmaras, quando saí para a 
graduação.
Analista em Laboratório de Solos - CNPq | Universidade Federal do Rio
Grande - FURG, RS, Brasil
2013 - 2021
Realização de análises físico-químicas de solos de diferentes áreas e localidades;
organização da rotina do laboratório; implantação de normas técnicas de qualidade e
interpretação estatística de resultados analíticos.
Foi possível desenvolver um trabalho de acompanhamento nas propriedades 
produtoras de alimentos de Santo Antônio da Patrulha referentes ao aumento de 
produtividade e máxima eficiência, conservação de recursos, auxílio nos processos 
produtivos dos alimentos processados ou não (rotulagem-embalagens), análises e de
cumprimentos de metas.','mestrando stricto sensu na UNIPAMPA, S. do Livramento.','Em andamento green belt','Administrativa, Comercial, Engenharia',NULL,NULL,'Facebook','não','1.500','Não','Carlos Peixoto 51 98598370 FURG; Carla Maciel 55 984520696 Atacadão','Estágio Engenharia e/ou Arquitetura',' Foco nos resultados; 
 Senso de responsabilidade e organização;
 Pró-ativo; 
 Valorizo trabalho em grupos e equipes; 
 Facilidade de relacionamento com o cliente/público; 
Espírito crítico; 
Resiliência; 
 Vontade de aprender;  Pacote office; 
Espanhol avançado e inglês intermediário; 
Habilidade com ferramentas utilizadas em reparos técnicos; 
 Agilidade e eficiência nas atividades propostas;','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-07T16:40:00.000Z'::timestamptz),
  ('Camila Machado Pereira','camilapereira01@gmail.com',NULL,'51996698783','1990-06-25',35,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1OCEVmJdo2QhhrMnxw37-uf4x_0q3XWGg','Administração de empresas','Ensino Médio Completo','Escoas e Faculdades QI','2012-12-04','Não, no momento pausei/parei por um período.','Empresa: Loja GH Ferragem 
Período: 13/07/2019 até 20/01/2024.
Cargo: Gerente administrativo financeiro 
Funções: Movimentações bancárias, orçamentos e compras de materiais, conferência de mercadorias e controle de estoque, preenchimento de planilhas excel, relatórios financeiros mensais, contas a pagar e receber, negociações de vendas via sistema, abertura e fechamento de caixa, atendimento ao cliente, precificação e organização de mercadorias.

Empresa: Açolog Serviços de Transporte e Logística Ltda 
Período: 01/07/2014 até 18/12/2014       
Cargo: Assistente administrativo 
Funções: Recebimento e envio de malote, relatórios de faturamento mês, emissão de conhecimento de transporte e notas fiscais de bobinas de aço, emissão de cartas frete referente a valores de fretes feitos pelos motoristas, pagamento de pedágio dos motoristas, cadastro de motoristas e caminhões, atendimento e movimentação de planilhas Word e Excel.

Empresa: Estapostes Transportes Rodoviários Ltda 
Período: 02/04/2012 até13/06/2014       
Cargo: Assistente administrativo                              
Funções: Envio de arquivos via sistema interligado, emissão de conhecimento de transporte e notas fiscais de material MDF e MDP, emissão de carta frete referente a fretes, contratação de motoristas, negociação de valores de frete, controle de recebimento e envio de correspondências, organização e manutenção de cadastros dos caminhões e motoristas, faturamento, controle do caixa, controle de contas a pagar e a receber, movimentação de planilhas word e excel, serviços de rua (bancários, supermercado, cartório, correio).

Empresa: Pampanera Logística e Transportes Ltda 
Período: 01/02/2012 até 20/03/2012      
Cargo: Assistente administrativo                              
Funções: Contratação de motoristas e negociação de fretes, atendimento ao público, organização e manutenção de cadastros dos caminhões e motoristas, movimentação de planilhas word e excel, utilização de sistema interligado, emissão de conhecimento de transporte e notas fiscais de material MDF e MDP, emissão de carta frete referente a valores de fretes.

Empresa: Atento Brasil S/A – VIVO 
Período:18/11/2011 até 06/02/2012     
Cargo: Promotora de Vendas
Funções: Preenchimento de contratos de vendas de aparelhos e planos de telefonia e internet, organização e controle de estoque, negociação de vendas de aparelhos celulares e modem de Internet, pacotes promocionais e internet, atendimento ao publico.

Empresa: Farmácia Capilé 
Período: 18/08/2011 até 17/11/2011      
Cargo: Balconista 
Funções: Atendimento ao público, negociação de vendas, retenção de receitas controladas, utilização de sistema interligado para a venda de medicamentos e perfumaria, serviços bancários, controle do caixa, recebimento e conferência de mercadorias, reposição e organização dos produtos, atendimento ao telefone e controle de estoque.

Empresa: Laticínio Longoni 
Período: 01/07/2010 até 14/01/2011      
Cargo: Assistente Administrativo
Funções: Controle de caixa, controle de contas a pagar e receber, cadastro de produtores rurais, movimentação de planilhas word e excel, controle do horário dos funcionários, atendimento ao público, atendimento ao telefone, emissão de nota fiscal eletrônica para transporte de produtos alimentícios, emissão de recibos e pedidos.

Empresa: Prefeitura Municipal de Glorinha 
Período: 16/08/2007 até 15/08/2009      
Cargo: Assistente Administrativo
Funções: Emissão de nota fiscal eletrônica para transporte de animais bovinos, bubalinos e aves, movimentação de fichas eletrônicas de produtores rurais, atendimento ao público, atendimento ao telefone, digitação de documentos, movimentação de planilhas excel, informatização de fichas de produtores rurais e da legislação especifica e arquivamento de documentos.','Curso de assistente de vendas, curso de Informática conhecimento amplo (internet, outlook, windows, word, excel, power point e scanner), curso método de vendas diárias, curso queima de estoque e curso now empreendedor.',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Facebook','NÃO','1.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-08T19:49:00.000Z'::timestamptz),
  ('Diogo Ramos da Silva','dramos1604@gmail.com',NULL,'51996374049','2004-04-16',21,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1lO6Ob0qDhOCcDGJu0FQt1EvoPDqq_Sn0',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Supermercado Gomes
Jovem aprendiz (CIEE)
01/10/2020 - 28/02/2022
Repositor, Empacotador, Limpeza e Montagem de layout nas gôndolas.

Hablich
Estágio (CIEE)
09/06/2022 - 22/08/2022
Repositor, Limpeza e Montagem de layout nas gôndolas.

Monjuá 
Vendedor Master
24/10/2022 - 01/06/2023
Vendedor, Caixa e Consultor de empréstimos.

Viu Internet 
14/09/2023 - Atual
Atendente/Consultor de vendas.','Cursando Licenciatura em Música',NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Agência de Empregos','Não','R$2.000,00','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-11T02:31:00.000Z'::timestamptz),
  ('Alexandre Silveira','alexandresilveiratst08@gmail.com',NULL,'51991720439','1980-03-08',45,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1RbCE03ocZIxNgoFrfu-vCfPhX01Ix38F',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Técnico em Segurança do trabalho na Empresa trigele Alimentos',NULL,'Técnico em Segurança do trabalho de, gestão ambiental, bombeiro civil','Administrativa',NULL,NULL,'Agência de Empregos','Nao','2500','Sim',NULL,'Técnico em Segurança do trabalho',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-11T08:38:00.000Z'::timestamptz),
  ('Ágatha Shyva Ramos Gonzales','agatharamos63@gmail.com',NULL,'51983203119','2000-12-29',25,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1LnH7hCUH-iVKQOQ99FEC2p81zsDa7sbh','Administração de empresas','Ensino Superior Incompleto','Universidade Federal do Rio Grande','2025-01-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','- Polícia Civil do RS, estagiária, de 12/2020 até 03/2024, realizando atividades em computador, atendimento ao público presencial e por telefone, redigindo termos de declaração e desenvolvendo relatórios.','Atualmente estou cursando Administração, termino o curso em janeiro de 2025. Tenho interesse em realizar uma pós graduação. Já realizei cursos de inglês e informática e possuo facilidade nessas áreas também.',NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1Se1jTxM4tZSxWREOrCgghWlZF1UnmTfK',NULL,'Agência de Empregos','Não','1800','Sim','Polícia Civil, Delegado Valdernei Tonete, fone: 36621166','Comercial','Eu tenho muito interesse em crescer e muita vontade de aprender o máximo possível nas experiências que me proponho a realizar. Sempre procuro estar aprendendo algo novo e se tiver a oportunidade, sei que posso dar o melhor de mim para a empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-11T09:02:00.000Z'::timestamptz),
  ('Camila Espíndola Messaggio','camilaespindola767@gmail.com',NULL,'51980163375','1993-03-05',32,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=173KcduDhiy6RZV0AL-7pIW2CVzmJgYpU','Administração de empresas','Pós-graduação Incompleta','Uniasselvi','2027-12-22','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Mercado Gomes( caixa operadora) Mercado Santos Muniz ( caixa operadora) Natural light ( atendente)','Excel Básico, Informática Básica, Empreendedorismo com negócios.','Sim','Administrativa, Estágio, Financeiro',NULL,NULL,'Agência de Empregos','Não','A combinar','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom sou uma pessoa muito dedicada em tudo que realizo. Preciso de uma oportunidade para crescer no ramo. Hoje poucas empresas estão dando oportunidade... Realmente gosto da área da Administração quero muito aprender a desenvolver da melhor forma para mim e para a empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-11T11:51:00.000Z'::timestamptz),
  ('Jaiane Aparecida Otto Tedesco','jaianeotto1997@gmail.com',NULL,'51993422083','1997-03-03',28,'União estável','2','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1_tzMWdXeVoeJvIsp3TcqpYKln4nTiqBK','Cursando administração','Ensino Superior Incompleto','Uninter',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Viu internet - consultora de vendas - 09/22 até 01/24  realizar cadastro, prospecção, pós vendas, alterações de cadastro, venda ativa e receptiva.

Ld embalagem -auxiliar de expedição -08/20 até 08/21 separar materiais, embalar, faturar pedidos, emitir notas fiscais, controlar estoque, atendimento de pre e pós vendas, controlar entradas/saídas de produtos, apresentar relatórios diarios de produtividade, metas do dia, logística reversa, controlar devoluções de pedidos e reembolsos via plataformas de vendas (shopee, mercado livre, site, magalu)  alimentar planilhas diárias com relatórios de vendas, devoluções, reclamações.  (Empresa de Tubarão/ SC, sai de la por precisar voltar embora para RS por questões familiares)
 
Algumas outras experiências relacionadas a atendimento ao cliente/ operações de caixa','Possuo curso em gestão de pessoa (sebrae on line) gestão de tempo e produtividade (conquer)
Gestão do  conhecimento e mapeamento de competencias (Uninter) líder coach liderando para alta performance (sebrae)',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=16jYxd_kzqrt-9yW_lA0WDBQBvlWmKrWD',NULL,'Agência de Empregos','Nao','2000','Não','+55 48 9812-5834 
Chitchaya Ld embalagem. (Ela e tailandesa, caso haja dificuldade na comunicação, podem pedir para Ronaldo Tachini, ou Cristian Dalabona)','Quero inscrever-me no banco de talentos da Young!','Sou mamãe, esposa, estudante, dona de casa, faço de tudo um pouco, e o que não sei fazer estou aprendendo para poder começar.  Super calma mas com a mente a milhão, buscando sempre aperfeiçoar os conhecimentos, aprender mais, evoluir, crescer. Trabalho por gostar e não apenas por precisar, mas minha família vem acima de qualquer gosto ou necessidade, concílio tudo o que me é possível, mas se for de escolher um lado, e sempre o deles.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-11T19:06:00.000Z'::timestamptz),
  ('Esmeralda Jesus dos Santos','esmeraldasantos.189z@gmail.com',NULL,'51995284424','2006-07-22',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=16IGYH7itFVgfPpHDDnUfp4X_H0aZ7FdA',NULL,'Ensino Médio Completo','Gregória de Mendonça','2024-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1. Produtos colonias, 2. Serviços gerais, atendimento ao balcão, faxina, organização diarista. 3. 04/07/23 até 20/02/24.','Estou cursando o 3°grau pela manhã. Tenho experiência em atendimento ao cliente.',NULL,'Administrativa, Arquitetura, Financeiro, Marketing',NULL,NULL,'WhatsApp','Não','1200','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom eu trabalho na padaria. Adoro viajar. Ler e me organizar virtualmente, marketing','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-11T22:37:00.000Z'::timestamptz),
  ('Matheus Vargas Fraga','matheusvfraga1@gmail.com',NULL,'51996085379','2004-08-31',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1M_HXqQh_oQUwEdtDKB2ESGEHnlkLOEQc','Artes Visuais','Ensino Superior Incompleto','Uniasselvi','2026-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Jornal Momento e Gráfica Triluz - Arte-finalista (Fev/2023 - Atualmente)
Diagramação e distribuição dos textos e imagens nas páginas do jornal no Adobe Pagemaker; Design gráfico de peças digitais e impressas para a empresa e para clientes no CorelDraw, Canva e Photoshop; Preparação de arquivos para impressão e operação de impressora digital; Contato, briefing e orçamentos com clientes e fornecedores.

Prefeitura Municipal de Santo Antônio da Patrulha - Estagiário (Dez/2021 - Dez/2022)
Controle de contas a pagar, Registros das contas no Excel, Elaboração de empenhos e ordens de pagamento, Transporte de arquivos entre setores, Pesquisa e busca de arquivos.','Treinee Coaching I (Informática) - Mundo Office (Pacote Office, Gmail, blog, Google Drive, Trabalho em equipe)

Trainee Coaching II (Design Gráfico) - Mundo Office (CorelDraw, Adobe Photoshop)

Ensino Médio - E.E.E.M. Patrulhense',NULL,'Arquitetura, Financeiro, Marketing, Engenharia','https://drive.google.com/open?id=15X1EnxySqd2zBV7bIMV9c7-YXcAT5j_J','https://drive.google.com/open?id=16WNj6bMVgNag2nOy0cVUyRKJ__vLAeke50-DJ5WABqQ','Agência de Empregos','Não.','A partir de R$1.600,00 e com oportunidade de crescimento.','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou autodidata, com interesse em especial pelas artes visuais (quadrinhos, desenho, design, ilustração, etc), gosto muito de cultura pop (quadrinhos, livros, séries, filmes...) e de animais (tenho um cachorro e uma cadela). Além do meu emprego formal também faço freelas de ilustração (como pode ver em meu portfólio) e sou artista de HQs com outras equipes. Estou bem acostumado com planilhas, previsões e simulações orçamentárias pessoais e envolvendo esses projetos de HQs. Falo inglês intermediário, um básico de espanhol e estou começando a aprender francês. Sempre que posso participo das feiras de adoção da ONG Sítio 4 Patas e das caravanas de doação de sangue do grupo Rotaract. Acredito que nada se faz sozinho, pra tudo é o essencial um trabalho em equipe sem preconceito para novas ideias.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-11T22:46:00.000Z'::timestamptz),
  ('Lívia Bonera Bühler','boneralivia@gmail.com',NULL,'998807275','2005-06-20',20,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1yQynYQHd2cQZbJ7kTU6MjtbCxkuiV3wS',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1) Innvare Sorrisos
2) secretária
3) Durante o mês de fevereiro de 2023
4) Substituí a secretária nas suas férias 
Estou me candidatando ao meu primeiro emprego.',NULL,'2022- inglês| Hey Peppers,','Administrativa, Arquitetura, Marketing','https://drive.google.com/open?id=1fF9ghnOzlJ_s2GrjGXKlKkGZxZpZNNV4',NULL,'Agência de Empregos','Não fui.','De início 1 salário mínimo e meio','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sei um pouco de inglês básico, de gramática da língua portuguesa, gosto de ler e aprender.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-12T02:14:00.000Z'::timestamptz),
  ('Diego Pinheiro Pedroso','diegopedrosooo12@gmail.com',NULL,'55996845006','1997-07-31',28,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1JNHQCgzDE932ZIn7dWVguhZaH-_-r62h',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Exercito brasileiro, cabo enganjado,01/03/2016 a 29/02/2024',NULL,NULL,'Administrativa, Comercial, Novos Negócios, Engenharia','https://drive.google.com/open?id=1QX77vOybPdtbDt6lKOaTEyfVpkQXngPU',NULL,'Google','Não','2500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-12T13:11:00.000Z'::timestamptz),
  ('Mateus dos Santos Silva','mateussantossilva01112004@gmail.com',NULL,'997310162','2004-01-11',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1yhcehgqVGQZ4ukRnL6sYrmYBmlxuDu-1','Marketing Digital','Ensino Superior Incompleto','Uninter','2026-03-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Via uno: preparador de calçados
Data de início: 20/01/2022
Data final: 15/ 03/2024','Olá! Estudo marketing digital, procuro uma oportunidade para desenvolver meus conhecimentos e ajudar a empresa se destacar no meio digital.',NULL,'Marketing',NULL,NULL,'Indicação','Não','2.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-12T23:07:00.000Z'::timestamptz),
  ('Samara Milcharek Davila','milcharek.samara@gmail.com',NULL,'51999883944','1998-07-03',27,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1olq6GmyrTnhqfWN6QdUwyVD7Er3Ndv-q','Arquitetura','Ensino Superior Incompleto','Uniritter','2025-07-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Aviwa - Home Office	2023 - Atualmente 
Auxiliar arquiteto 
Atualmente estagiária na Aviwa, startup incubada na Tecnosinos. Auxílio no desenvolvimento 3D de ambientes internos, sua renderização, cadastro de produtos e criação de conteúdo para mídias digitais. 
Habilidades:
Desenvolvimento 3D; 
Desenvolvimento de ambientes internos e externos; 
Render de ambientes internos e externos; 
Cadastro de produtos em site; 
Desenvolvimento de mídias sociais; 
Contato com clientes; 
Pesquisas técnicas. 

Freelance - Eduarda Leuck Arquitetura - Home Office	2022 - Atualmente 
Renderizadora 3D 
Renderizo ambientes internos e externos 3D, criando imagens detalhadas e realistas de espaços tanto dentro quanto fora de edifícios, utilizando ferramentas de modelagem tridimensional para visualização e apresentação. 
Habilidades:
Renderização de ambientes internos e externos. 

Eduarda Leuck Arquitetura - Home Office	2021 - 2022 
Auxiliar arquiteto 
No escritório de arquitetura residencial e comercial, especializada em projetos para a rede Sorrifácil, desempenhei um papel crucial no desenvolvimento 3D de ambientes internos e externos. Minhas responsabilidades abrangiam desde a setorização até o detalhamento dos projetos, culminando na etapa final de renderização. Atualmente, continuo colaborando com a empresa em regime de freelance. 
Habilidades:
Desenvolvimento 3D; 
Setorização de ambientes; 
Render de ambientes internos e externos; 
Detalhamentos de fachadas; 
Propostas de fachadas Sorrifácil; 
Detalhamento de mobiliário; 
Auxiliar no desenvolvimento de projetos internos. 

21° CROP - Santo Antônio da Patrulha	2020 - 2021 
Auxiliar arquiteto 
Minha experiência na Secretaria de Obras do Estado marcou meu primeiro contato prático com a arquitetura. Nesse ambiente, desempenhei um papel fundamental ao auxiliar na revitalização de projetos existentes, realizando levantamentos técnicos, medições em obras e detalhamentos específicos em conformidade com as normas vigentes. 
Habilidades:
Levantamentos técnicos; 
Levantamento e medições de obras; 
Desenvolvimento de relatórios técnicos; 
Adequação à NBR; 
Desenvolvimento de desenhos em CAD. 

Mercado Davila - Santo Antônio da Patrulha	2013/ - 2020 
Assistente geral 
Minha trajetória começou ajudando meus pais no negócio familiar, onde desenvolvi habilidades essenciais de atendimento ao cliente e reposição de mercadorias. Além disso, participei ativamente da organização do estabelecimento e auxiliei em tarefas administrativas. 
Habilidades:
Atendimento ao cliente; 
Repositor; 
Assistente administrativo.','Ja fui monitora de Expressão Gráfica para arquitetos durante meus estudos na Unisinos e tenho uma habilidade natural para aprender, junto com uma forte vontade de desenvolver habilidades, o que me beneficia tanto no âmbito profissional quanto pessoal.',NULL,'Arquitetura, Estágio, Engenharia','https://drive.google.com/open?id=1SmEV9TQljjDH7Dq3c6TVnybH3B2fEmNa','https://drive.google.com/open?id=1vZGOeQj0VQfRewLO_dOUSOPQwXUECQ9C','Instagram','Não','1200','Sim',NULL,'Estágio Engenharia e/ou Arquitetura','Possuo habilidades em manutenção e montagem de computadores, além de ser baterista e mestre de RPG de mesa. Tenho interesse em board games e aproveito meu tempo livre para desfrutar desses hobbys, além de frequentar academia.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-13T04:00:00.000Z'::timestamptz),
  ('Cristoph Prade da Luz','cris.lalah@gmail.com',NULL,'55984541142','1991-07-08',34,'Casado(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1F3S52aEKttbliDhoT8Roax81BlLxMJf-','Administração de empresas','Ensino Superior Completo','URCAMP','2020-11-25','Sou formado','1) Renova Casa & Jardim
2) Gerente de Vendas
3) 09/06/2021 a atua.
4) Gerenciamento de loja, vendas, controle de estoque, controle financeiro, antendimento e resolução de problemas.

1) Sindicato dos Trabalhadores Rurais de Santana do Livramento
2) Auxiliar de Escritório
3) 02/03/2015 a 30/11/2020.
4) Atendimento ao público e Cadastramento de clientes.

1) Escritório Vieira 
2) Despachante Documental de Trânsito.
3) 2009 a 2015 (autônomo)
4) Montagem e Gerenciamento de processos.',NULL,NULL,'Administrativa','https://drive.google.com/open?id=1duhJDQ0wGIEfz3sPExRrkkpWNtg0vOnY',NULL,'Facebook','Não','R$2.500,00','Sim','Renova Casa & Jardim - Cláudia (55) 984421092
Escritório Vieira - Vieira (55) 32422835','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-13T14:14:00.000Z'::timestamptz),
  ('Cristoph Prade da Luz','cris.lalah@gmail.com',NULL,'55984541142','1991-07-08',34,'Casado(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1fFqBdBJ--i93_bWFjuq8kzL2aMy26y0n','Administração de empresas','Ensino Superior Completo','URCAMP','2020-11-26','Sou formado','1) Renova Casa & Jardim
2) Gerente de Vendas
3) 09/06/2021 a atual
4) Gerenciamento de loja, vendas, controle de estoque, controle financeiro, atendimento e resolução de problemas.

1) Sindicato dos Trabalhadores Rurais de Santana do Livramento
2) Auxiliar de Escritório
3) 02/03/2015 a 30/11/2020
4) Atendimento ao público e cadastramento de clientes


1) Escritório Vieira
2) Despachante Documental de Trânsito
3) 2009 a 2015 (autônomo)
4) Montagem e Gerenciamento de processos',NULL,NULL,'Administrativa','https://drive.google.com/open?id=1tpH_P6dYs1fkUZsttufs52Y1WVBfsGEZ',NULL,'Facebook','Não','R$2.500,00','Sim','Renova Casa & Jardim - Cláudia (55) 984421092
Escritório Vieira - Vieira (55) 32422835','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-13T14:30:00.000Z'::timestamptz),
  ('Rafaela Braz','rafaelabraz24@gmail.com',NULL,'55984254435','1997-02-24',29,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1iCXo3v9ZJg05j9UoTaFetWPmvs-UjyI0','Administração de empresas','Ensino Superior Incompleto','Universidade federal do pampa - Unipampa','2024-08-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Unipampa; Bolsista de iniciação científica- CNPQ; 2023-2024; projeto de pesquisa sobre a cultura fronteiriça como potencializador de carreiras na fronteira da paz. 
Integrante do grupo de estudos sobre trabalho, organizações e pessoas - GESTA da Unipampa. 
Voluntária do projeto: Inclusão digital para pessoas da fronteira com mais de 60 anos que estejam fora do mercado de trabalho. 


2) Laboratório Dr Pio; estagiária da qualidade; 2021-2022; auxiliava o setor da qualidade, monitorando os indicadores, realizando treinamentos para a equipe, controle de documentos e tarefas administrativas. 

3) Fraga RH; estagiária; 2020-2021; auxiliava no recrutamento e seleção, gerenciamento das redes sociais e práticas administrativas.','Cursos na área da qualidade, vendas, comunicação, marketing, rotinas administrativas, idiomas, entre outros. 
Atualmente bolsista de iniciação científica - CNPq','Formação de AUDITOR DICQ','Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Instagram','Não','1800','Sim','Ariane - gerente do laboratório Dr Pio (55)999579985
Adriana  - diretora do laboratório Dr Pio 
E-mail: drpio@drpio.com.br','Quero inscrever-me no banco de talentos da Young!','Olá! Estou cursando o último semente da faculdade de administração e estou buscando emprego numa empresa com oportunidades de crescimento como a Young empreendimentos.  
 Sou proativa, responsável e comprometida com os resultados da empresa. 
Gosto de trabalhar com metas e desafios.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-15T17:57:00.000Z'::timestamptz),
  ('Brendon Lucas Rodrigues Trujillo','Brendontrujillo44@gmail.com',NULL,'54996102845','1995-11-28',30,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1psVy1zjJ8KXUMPvXh4ikmHs7D_dgWosW',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Soprano eletrometalurgica eireli
Assistente de recebimento e faturamento 23/01/2017 a 04/02/2021 recebimento de pedidos contato com transportadores e clientes e faturamento dos.mesmo lançamento de notas de entrada e saída de materiais',NULL,NULL,'Administrativa, Comercial, Novos Negócios','https://drive.google.com/open?id=1UetfFjLu9JfKhbUvod8G5HgMU4dsLjTd',NULL,'Facebook','Nao','25000','Sim','Roseli squena coordenadora de expedição soprano 
54991880596','Quero inscrever-me no banco de talentos da Young!','Sou muito pro ativo,sou uma pessoa que gosto de desafios e sempre tento tornar meu ambiente de trabalho o mais fácil e ágil possível,sempre me destaquei pela sinceridade, serenidade e comprometimento,não tenho problema com horário para mim a jornada termina quando terminamos nossas tarefas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-15T22:59:00.000Z'::timestamptz),
  ('Roberty Michell Soares Pereira','robertypereira97@gmail.com',NULL,'55984264150','1997-01-10',29,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1onONZONikhNY0e3mMbJTPW5vv82emcMi','Economia','Ensino Superior Completo','Universidade Federal do Pampa - Unipampa','2023-09-01','Sou formado','Empresa : Righi Comércio de Gêneros Alimentícios Ltda
Cargo de Auxiliar  do Contas a pagar e receber - Financeiro 
admissão em 01/09/2016 (Trabalho atual)
Funções: controle de cobranças bancárias, pagamentos de fornecedores, relatório de movimentação diária , controle de inadimplência de fornecedores na emissão de notas de devoluções entre outras funções','Estou cursando técnico em contabilidade pelo Instituto Federal do Rio Grande do Sul (IFSUL)',NULL,'Financeiro',NULL,NULL,'Instagram','Não fui indicado','3700','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa que nas horas vagas gosto de estar com meus familiares e amigos','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-16T15:30:00.000Z'::timestamptz),
  ('Maria Isadora Evaldt','mariaigarsaba@gmail.com',NULL,'55996609337','2000-11-24',25,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1741FFfInO22_KHiE_QXtz-ULjFVg8qWJ',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','WMS Supermercados do Brasil LTDA
Almoxarife
01/04/2023 a 01/12/2023 
Compra de materiais, distribuição de materiais para os colaboradores, controle de estoque.',NULL,NULL,'Administrativa','https://drive.google.com/open?id=100GXtYo6sUqQys0TJbfH56qvk_6ErAZq',NULL,'Facebook','Não','1.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-16T18:45:00.000Z'::timestamptz),
  ('Yamile Lemes Munis','yamilemunis@gmail.com',NULL,'55984661719','1996-05-07',29,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1TtrtmeYoWW6_3f_5Fug6tqjjOleBYmrH','Administração de empresas','Ensino Superior Completo','Anhanguera','2023-06-30','Sou formado','Casas Bahia, caixa  de 10/23 a 03/24;
Lojas Obino, caixa 01/22 a 05/23
Honda motospeed, estoquista 05/19 a 07/20','Técnico em Administração',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não','1700','Não',NULL,'Assistente administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-17T01:34:00.000Z'::timestamptz),
  ('Gabriela cruz Viana','gumercindo2gabi@gmail.com',NULL,'55984564725','1988-03-02',37,'Casado(a)','2','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1awQrdj0LE3vL_316VSXEu4JHQR0XDqfM',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Atualmente trabalho como técnica em enfermagem no hospital Santa casa de livramento, no setor do pronto socorro desde de 2021.','Técnico em segurança do trabalho e técnico em enfermagem',NULL,'Administrativa, Financeiro, Engenharia',NULL,NULL,'Facebook','Nao','3.000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-17T03:25:00.000Z'::timestamptz),
  ('Bianca Leites de Vargas','Biancavargas342@gmail.com',NULL,'55999940771','2001-11-18',24,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1bKHWWDvNCqYZf_XsVN47em7xovCvUWVY','Serviço Social','Ensino Superior Incompleto','Unicesumar','2028-03-08','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Alea Eletrônicos- Consultora de Negócios 20/05/2021 até 31/10/2021 Deltasul Vendedora 22/11/2021 até 18/02/2022 Reconfran- Aux. Faturamento, Caixa e vendas 22/06/2022 até 09/03/2024','Técnico Recursos Humanos/Cursando',NULL,'Administrativa','https://drive.google.com/open?id=1MNOsbvj7Ukz6HvzD-DViaZPQd8SJf3SK',NULL,'Instagram','Não','2200','Sim',NULL,'Auxiliar Administrativo','Espanhol Nível Avançado, 17 meses de trabalho voluntário na ACM LIVRAMENTO, trabalhando com o atendimento e cadastro de novos clientes e trabalho voluntário em asilos e creches pela mesma empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-17T22:47:00.000Z'::timestamptz),
  ('Kelly Sabrina Vargas Lopes','sabrinakellylopes@gmail.com',NULL,'55984389149','1991-10-13',34,'Casado(a)','3','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1crrGUbBmoIn0e-S8hp2bDcDKTVLGgJ_D','Administração de empresas','Ensino Superior Completo','Universidade Federal do Pampa','2017-09-11','Sou formado','CASA GURI-Balconista, atendimento ao publico e vendas;
Período: Dezembro/2009 à Janeiro/2010.

SECRETARIA DO PLANEJAMENTO DA CIDADE- Secretária Executiva do Conselho de
Planejamento da Cidade
Período: Novembro/2011 até Abril/2012

COMERCIAL DE COMBUSTÍVEIS ROSUL LTDA – Caixa operadora, atendimento ao público.
Período: Maio/2012 até Janeiro/2013

SECRETARIA MUNICIPAL DE ASSISTÊNCIA E INCLUSÃO SOCIAL – Assessor supervisor demandante do Pronatec, secretária do CREAS e funções administrativas.
Período: Março/2013 até Agosto/2013.

PREFEITURA MUNICIPAL DE PINTO BANDEIRA – Assessora da Procuradoria Municipal da Prefeitura de Pinto Bandeira/RS.
Período: Setembro/2013 até Março/2014.

SINERIZ FREE SHOPP – Caixa operadora, atendimento ao público.
Período: Junho/2014 até Fevereiro/2015.

ESCOLA MUNICIPAL DE ENSINO FUNDAMENTAL PACHECO PRATES – Monitora de crianças de com necessidades especiais.
Período: Julho/2015 até Novembro/2015.

ESPAÇO MÓVEIS E DECORAÇÕES – Projetista, designer de móveis sob medida, medições de áreas em construção, vendedora e funções administrativas.
Período: Novembro/2016 até Dezembro/2019.

ANSUS SERVIÇOS LTDA – auxiliar administrativa, funções de RH, gestão de pessoal, registros financeiros, relatórios de segurança do trabalho, registros de manutenção, e compras.
Período: Agosto/2023 até o presente momento.','Possuo curso de informática básica e secretariado.','Curso Superior em Administração','Administrativa, Financeiro, Licenciamentos','https://drive.google.com/open?id=1FiYhjLq-Rv2dZEWEx_0SPa5F-zqBLGmh',NULL,'Facebook','Não','Entre R$2mil a R$3mil','Sim',NULL,'Auxiliar administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-18T13:31:00.000Z'::timestamptz),
  ('Rafael Lorenzi de Araujo','rafael.lorenzia@gmail.com',NULL,'51996519552','1992-08-21',33,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1CAzGweVzqlWBW-u9zJF30SIuqj9WyPGY','Engenharia Civil','Ensino Superior Completo','PUC RS','2020-01-24','Sou formado','EXPERIÊNCIA MAIS SIGNIFICATIVA A VAGA:

Elio Winter Incorporações
Téc. de edificações e supervisor de obras
12/2019 a 06/2022

Empresa executora de loteamentos e condomínios residenciais Padrão MCMV no Rio
Grande do Sul e Paraná.
- Gestor do loteamento Winter Park;
- Gerenciamento do serviço de assistência técnica nos empreendimentos Winter Park
(POA) e Centro Novo (Eldorado do Sul);
- Entrega de 500un. residenciais prontas ao cliente final.

DEMAIS EXPERIÊNCIAS EM ORDEM CRONOLÓGICA

Ruck Engenharia
Engenheiro civil
11/2023 a atual
Empresa especializada em reformas residenciais e prestação de serviços diversos.
Atualmente sou sócio da empresa em parceria com mais uma pessoa.
Entrega de reformas de apartamentos diretamente ao cliente.



JR Construções
Engenheiro Civil
03/2023 a 09/2023 - Contrato por empreitada
Empresa especializada em obras rodoviárias, pavimentação e drenagem. Prestadora
de serviço para concessionárias de rodovias.
- Execução de obra rodoviária – PGF do km 417 da BR-101 (Balança de pesagem
veicular - CCR). Sendo responsável pelo processo de qualidade e aprovações da obra
e auxílio na gestão do empreendimento, acompanhando serviços de terraplanagem,
drenagem e pavimentação;
- Responsável pela montagem de orçamentos e participação de concorrências junto
as concessionárias CCR e SASYR.

LBF Engenharia e Serviços
Engenheiro Civil
06/2022 a 11/2022
Empresa atuante em serviços de obra civis, com atuação em obras residenciais e
comerciais. Em minha passagem atuamos em contratos de manutenção de prédios
públicos junto a Prefeitura de Porto Alegre.
- Controle de executivo de obras civis;
- Planejamento e execução de obras de reforma e manutenções;
- Gestão de mão de obra própria e de terceiros.

Rocris Empreendimentos
Téc. de edificações
12/2016 a 10/2019
Construtora com atuação em obras residenciais, com obras no padrão MCMV em
Porto Alegre/RS e Praia Grande/SP.
- Entrega do Residencial Recanto das Laranjeiras (100un) – 2017;
- Execução até a fase de finalização dos Residenciais Recanto das Pitangueiras e Goiabeiras
(400un);
- Supervisor de qualidade da obra em Porto Alegre e Praia Grande/SP.
- Acompanhamento executivo da obra, em todas as etapas e serviços, interpretação de
projetos e gestão de equipes.','Curso gestão de obras - Fabricio Rossi
Curso Cálculo Estrutural - Canal da Engenharia',NULL,'Engenharia','https://drive.google.com/open?id=17lG7DUUwUkCdkCE82FhkIEXEG_MGa0Si',NULL,'Indicação','não','Piso da categoria','Sim',NULL,'Engenheiro Civil','Sou uma pessoa muito focada em realização de objetivos, sejam eles pessoais ou profissionais.
Atualmente moro em Porto Alegre, mas já morei em Arroio do Silva/SC a trabalho.
Gosto de estudar sobre engenharia e tenho estudado bastante sobre gestão de obras e sobre projetos estruturais.
Tenho uma namorada, tenho alguns animais de estimação que ficam na casa de minha mãe devido a minha rotina de trabalho atual.
Podem me contatar para possíveis entrevistas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-18T16:04:00.000Z'::timestamptz),
  ('Erik Ricardo Teixeira Nunes','Ertnunes@gmail.com',NULL,'55991431545','1978-05-03',47,'União estável','2','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1OPL1eXqu7oHVfu4hJItdExZFmf-QCyn9','Desenho Industrial','Ensino Superior Incompleto','ULBRA',NULL,'Não, no momento pausei/parei por um período.','Complexo Turístico Termal Amsterland
Período: 07/2022 – 12/2022
Cargo: Gerente Operacional
Funções desenvolvidas: Gerenciamento de equipe operacional e alimentação, 
supervisão e implantação de processos e procedimentos. Atendimento aos sócios e 
clientes. Compras e negociação com fornecedores e prestadores de serviços. Elaboração,
acompanhamento e execução de projetos relacionados a turismo, lazer e esportes em 
parceria privada e publica. Analise curricular, avaliação, seleção, contratação, 
desenvolvimento e treinamento de colaboradores. Controles administrativo, estoque e 
financeiro. 
Benedetti & Righi Empreendimentos Imobiliários LTDA 
Período: 05/2021 – 10/2021
Cargo: Assistente Administrativo 
Funções desenvolvidas: Organização de documentação, arquivo, cadastro de 
empreendimentos, fornecedores, clientes, implantação de sistema de gestão; 
Controle de contas a pagar, contas a receber, conciliação bancaria, emissão de boletos;
Criação, desenvolvimento e otimização dos processos internos, entradas e saídas no 
sistema (Compras, vendas, serviços, devoluções, cancelamentos); 
Criação de plano de metas e motivacional, desenvolvimento e aplicação de plano de 
negócios para futuras expansões, alinhamento e suporte aos processos contábeis, 
orçamento de matéria prima, produtos, equipamentos e fornecedores. 
J. D. Peças e Serviços 
Período: 09/2020 – 02/2021. 
Cargo: Assistente Administrativo
Funções desenvolvidas: Criação, desenvolvimento e otimização dos processos internos 
de setores como administrativo, estoque, financeiro e comercial, entradas e saídas no 
sistema (Compras, vendas, serviços, devoluções, cancelamentos), cadastro de produtos, 
clientes e fornecedores; 
Financeiro, controle de pagamentos, controle de vencimentos, agendamento, relatórios, 
conciliação bancaria, emissão de boletos, notas e pedidos, criação e registro de controles 
de custos, despesas, devedores e clientes, organização das notas e boletos, envio para 
contabilidade de documentos pertinentes, cobrança;
Adiantamento, folha de pagamento, registro ponto, uniformes, epi; organização de 
arquivos, atendimento a clientes e fornecedores, fluxo de produtos e organização;
Compras de matérias, máquinas e equipamentos, criação de peças de publicidade,  
divulgação, redes sociais e mídias em geral.
J.G. Parques e Aventuras LTDA (Amsterland) 
Período: 04/2017 a 09/2020. 
Cargo: Gerente Administrativo/Geral 
Funções desenvolvidas: Organização e controle de escritório, arquivo de 
documentação, recepção, atendimento ao cliente interno e externo, atualizações e 
cadastro; 
Financeiro, contas a pagar, receber, fluxo de caixa, pagamento de fornecedores e 
prestadores de serviço, emissão de boletos, contratos, cobrança de dívidas, controle de 
quitações, conciliação bancaria, previsão financeira, serviços externos; 
Seleção, documentação, registros, controle de EPI e uniformes, controle e registro do 
ponto e horas extras, escala de trabalho, folgas, pagamento da folha de pagamento, 
férias, afastamentos, INSS, demissões; 
Contratação de serviços, orçamentos de materiais, serviços e equipamentos, compras 
escritório, parque e obra, negociações com fornecedores, prestadores de serviço e 
clientes, prospecção de parceiros de trabalho, grandes fornecedores de materiais e de 
fabricantes para atender demandas de construção, acabamento, tecnologia e demais 
áreas; 
Planejamento estratégico, gerenciamento e motivação dos setores, atribuir, supervisionar, 
orientar e corrigir atividades dos setores, elaboração e aplicação de processos e 
procedimentos, análise de indicadores, interpretação e apresentação de dados e 
cenários, acompanhamento e suporte ao jurídico, negociação extrajudicial com credores, 
negociações com fornecedores, tomada de decisões e gerenciamento de crises. 
Clube Campestre Livramento 
Período: 10/2016 a 02/2017. 
Cargo: Gerente Administrativo 
Funções desenvolvidas: Gerenciamento de pessoal, atribuir e orientar atividades 
diárias, controle e registro de horas extras, folgas, pagamento da folha salarial, 
atendimento ao cliente interno e externo;
Fluxo de caixa, pagamento de fornecedores e prestadores de serviço, emissão de 
boletos, cobrança de dívidas, negociação, controle de quitações, conciliação bancaria, 
prestação de contas, serviços externos; 
Orçamentos, compras, folha de pagamento, escala de trabalho, organização e arquivo de SESC Comunidade 
Período: 03/2014 a 03/2015. 
Cargo: Assistente Administrativo
Funções desenvolvidas: Organização do estoque, conferência e recebimento de 
produtos doados, controlar validade e armazenamento dos produtos, separação de 
quantidades a serem doadas para cada entidade de acordo com a capacidade de 
absorção, atendimento telefônico, acompanhar coletas e entregas de doações, contato e 
agendamento com transportadoras e doadores, previsão e roteirizarão mensal de coletas 
e entregas das Entidades do Programa Mesa Brasil;
Dirigir veículo para assistentes sociais, manutenção preventiva da UO, acompanhamento 
e atualização dos documentos Da UO: alvará, licença dos veículos, quadro de 
documentos), solicitação e controle de manutenção preventiva e emergencial dos 
veículos, controle dos contratos ativos de fornecedores, arquivo de documentos;
Solicitação e entrega de Epi para os colaboradores, Coleta das assinaturas do espelho 
ponto, relação de vale-transporte, vale-refeição e demais documentos para o 
Departamento Pessoal, arquivamento de documentos na pasta do colaborador, 
recebimento de atestados e lançamento na folha ponto, seleção de currículos e 
candidatos de acordo com a Necessidade da UO, entrevistas com candidatos, solicitação 
de uniformes e materiais de escritório, organização e controle de uniformes, compra de 
vale-transporte, envio de documentação para a Regional;
Recebimento e distribuição de malotes, pesquisa e controle do orçamento da UO por 
projeto, avaliar os serviços prestados por fornecedores críticos (serviço de portaria e 
controle de pragas), conferir e publicar estatística da UO(Metas, Economicidade e 
Atendimentos), Orientar clientes sobre inscrições de oficinas pela internet;
Abertura e fechamento do caixa diariamente, requisição de materiais, prestação de 
contas, solicitação de materiais, Fazer as anotações no sistema das despesas 
identificando as principais causas e justificativas, fazer anotações de fornecedores da UO,
consumo de luz e água, controlar a frequência dos porteiros e manter contato com a 
empresa para solicitar reposição quando necessário; 
Fazer transferência de valores para as Uos de origem, Solicitar transporte de empresa 
contatada para enviar doações para o Mesa Brasil de unidades do interior do estado, 
Aceitar transferências do DR indicando o projeto para alocar as despesas e solicitar 
aprovação da gerência. 
CEP SENAI DE MODA E DESIGN 
Período: 10/2011 a 08/2013. 
Cargo: Assistente Técnico I 
Funções desenvolvidas: Atender e orientar clientes internos e externos, realizar 
cadastro, matricula e rematrícula para os cursos, controle de frequência, arquivar e 
organizar a documentação de acordo com os procedimentos, classificar, distribuir, receber e enviar malotes, documentos, correspondências, materiais e outros; levantamento e 
manutenção de dados e informações da Unidade; 
Participar da elaboração, execução, controle e atualização dos processos, controle de 
estoque de materiais didáticos e de escritório, recebimento, conferência, organização, 
orçamentos, compras, separação de materiais (tecidos, bobinas, linhas, agulhas e demais
materiais) por turma, coletas e entregas; 
Atendimento a empresas, formular propostas de serviços e consultorias técnicas e 
tecnológicas, encaminhar e solicitar demandas ao SEBRAE; 
Recebimento de valores, emissão de bloqueios, recibos, ordem de pagamento, 
conciliação bancaria, fluxo e fechamento de caixa; 
Atendimento, controle, cadastro e organização do acervo literário (Biblioteca), suporte a 
informática da Unidade, atualização e manutenção de sistemas, atividades e serviços, 
organização de eventos (Palestras, reuniões, apresentações, aulas, etc.), montagem e 
operação de som, luz e imagem, zelo pela imagem e patrimônio da Unidade; 
Manutenção e conservação do veículo; 
Seleção de currículos e entrevistas de candidatos a oportunidades da unidade.',NULL,'Editor de Projeto Visual(160 h) – IFSUL(2021)- Pelotas/RS. Desenhista de Produtos Graficos WEB(160 h)– IFSUL(2021)- Pelotas/RS. Programador de Sistemas(200h)– IFSUL(2021)- Pelotas/RS. Desenhista de Animação(200h)– IFSUL(2022)- Pelotas/RS. Curso de Word e Excel - Cursos 24horas (2015) - Porto Alegre/RS.  Curso Auxiliar Administrativo – Cursos 24horas (2015) - Porto Alegre/RS.  Sistemas SIS, SISTEC e SCOP- FIERGS (11/2012) - Porto Alegre/RS.  TRANSPORTES- FIERGS (10/2012) - Porto Alegre/RS.  PGQP/ Interpretação de Critérios- FIERGS (10/2012) - Porto Alegre/RS. PIC/ Programa Integrado de Comunicação do Cliente- FIERGS (05/2012) - Porto  Alegre/RS.  SEBRAETEC (Sistemas) - FIERGS (04/2012) - Porto Alegre/RS.  Legislação da APRENDIZAGEM-FIERGS (03/2012) - Porto Alegre/RS.  PRONATEC (Sistemas) - FIERGS (03/2012) - Porto Alegre/RS  Negociação e Vendas – TIM Celular S.A. (04/2006) - Brasília/DF.  Técnicas de Vendas e Negociação – FIERGS (08/2006) - Porto Alegre/RS.  Internet – O Boticário (11/1999) - Porto Alegre/RS.  Técnicas de Venda - O Boticário (11/1998) - Porto Alegre/RS.  Pacote Office/ Internet – DATACONTROL (1997) - Porto Alegre/RS.','Administrativa, Comercial, Financeiro, Engenharia','https://drive.google.com/open?id=1ATOxoFbIFuIo0AXXGVjy04E7Tq6Wo36_',NULL,'Facebook','Não fui.','2.500,00','Sim',NULL,'Assistente Administrativo','Tenho experiência no pacote Office, sistemas gerências, ERP e edição de imagens. 
Sou muito organizado, próativo, dedicado e de excepcional interação interpessoal.
Gosto muito de ler e aprender sobre o funcionamento das coisas.
Busco uma nova oportunidade para retomar os estudos em uma área de afinidade com gestão. 
Obrigado pela atenção.
Cordialmente,
Erik Nunes','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-18T19:30:00.000Z'::timestamptz),
  ('Carlos Eduardo dos Santos Bonafé','bonafecarlos@yahoo.com.br',NULL,'55991998051','1981-04-21',44,'União estável','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=15PRjZ4sXWfp0Nt0gzDr_4PLjibMWavea',NULL,'Ensino Médio Completo','C.E. Alceu Wamosy','2005-06-30','Não, no momento pausei/parei por um período.','1 E.M. Elétrica e Hidráulica Ltda. 2 Almoxarife/Aux. Administrativo/Adm temporário 3 04/05/2023 (trabalhando) 4 Recebimento e conferencia de materias, ferramentas e produtos em geral, auxilio e realização de tarefas administrativas

1 Tibbor Mobilidade Urbana 2 Motorista 3 1°/06/2022 até 03/05/2023 4 Transporte de passageiros

1 Verde Plaza Hotéis de Turismo Ltda. 2 Recepcionista 3 de 02/04/2022 até 30/06/2022 4 Atendimento e cadastro de clientes

1 Kreta Com. de Produtos Alimenticios Ltda.
2 Recepcionista 3 1°/07/2021 até 03/03/2022
4 Atendimento e cadastro de clientes',NULL,NULL,'Administrativa, Novos Negócios, Engenharia',NULL,NULL,'Facebook','Não','R$2.600,00','Sim',NULL,'Auxiliar Administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-18T22:18:00.000Z'::timestamptz),
  ('Alvarim Alves de Almeida','pampeano.contato@outlook.com',NULL,'55999681844','1994-11-15',31,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1Ku8BISNMtVIzSUHBRewQuOaTa6aSnLGu',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Exército  , açougueiro , agente funerário  , auxiliar de pedreiro.',NULL,NULL,'Comercial',NULL,NULL,'Indicação','Caroline cantos rivero','1600','Sim','Angeles oeste 32423220','Quero inscrever-me no banco de talentos da Young!','Tenho experiência com público,  com estoque contagem , dirigir viajar  , operar sistema da empresa fazer cadastro ..','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-19T01:12:00.000Z'::timestamptz),
  ('Luis Henrique Rossi Cassol','luisrcassol@gmail.com',NULL,'5199600551','1995-12-26',30,'Solteiro(a)','0','Sim','São Leopoldo/rs','https://drive.google.com/uc?export=view&id=1ubVrxvbzOKT5wBVfUZss4GGtGrrSzFLH','Engenharia Civil','Ensino Superior Incompleto','Universidade o Vale dos Sinos - UNISINOS','2024-06-28','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Minha jornada na engenharia civil teve início no SEMAE - Serviço Municipal de Água e Esgoto de São Leopoldo, onde atuei como estagiário de março de 2017 a março de 2019. Durante esse período, minhas principais responsabilidades incluíam atividades administrativas, elaboração de orçamentos, termos de referência e contratos para licitações de serviços e/ou aquisições de materiais, além de realizar vistorias e fiscalizações diárias em obras de manutenção de redes de esgoto.
Na Terraplanagem Vargas, fui estagiário de setembro de 2020 a dezembro de 2020 e depois atuei como Auxiliar de Engenharia de dezembro de 2020 a dezembro de 2021. Durante esse período, conduzi a drenagem e terraplanagem da ampliação da SAP Labs Latin America, localizada dentro do campus da UNISINOS, além de realizar terraplanagem para uma Rede de Mercado Macromix.
Posteriormente, na Baliza Construtora, fui estagiário de dezembro de 2021 a novembro de 2022, onde executei a infraestrutura do condomínio Anita Garibaldi, pelo programa Casa Verde Amarela, coordenando a rede de água e esgoto e a rede elétrica. Em novembro de 2022, fui promovido a Auxiliar de Engenharia e permaneci até setembro de 2023, quando fui realocado para outra obra da construtora, o Residencial Ravena, para realizar a infraestrutura do condomínio, incluindo rede de esgoto bombeada, rede de água e pavimentação.
Atualmente, desempenho o cargo de Assistente de Engenharia no consórcio da BR116 desde setembro de 2023, trabalhando no segmento de infraestrutura de transporte em obras federais do DNIT. Especificamente, estou envolvido em obras de Obras de Arte Especiais (OAE), em um contrato que abrange 21 obras de melhorias na BR-116. Minhas principais responsabilidades incluem a execução de terra armada nos viadutos, drenagem e concretagem das Barreiras New Jersey.','Tenho experiência com AutoCAD e domínio nos softwares Sienge e Greendocs',NULL,'Engenharia','https://drive.google.com/open?id=1p4bTPXDpE6TiAyFrVxphSK-fe5gbUjmp',NULL,'Instagram','Não','R$6.500,00','Sim','SEMAE - Ronan - 51 98050-0611
Terraplanagem Vargas - Diego - 51 99837-1187
Baliza Construtora- Anderson - 54 99201-38
Consórcio BR116 Norte - Laura - 51 99967-1012','Assitente de Engenharia Civil, Analista de Engenharia Civil ou Engenheiro','Sou uma pessoa tranquila, que se adapta facilmente aos diferentes ambientes por onde passo. Sou determinado, proativo, leal, entusiasta e de mente aberta também gosto bastante de trabalhar em equipe. Além disso, sou apaixonado por basquete e por passar tempo com amigos, colocando o papo em dia acompanhado de uma cerveja gelada. Também dediquei meu tempo a trabalhos voluntários na Casa Aberta e na Cruz Vermelha.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-19T21:10:00.000Z'::timestamptz),
  ('Denise Flores da Silva','niseflores@yahoo.com.br',NULL,'55999005374','1982-08-15',43,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1G75jYs09RXjRh5UWxYKpvBSJ4her1xiC',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Sulfrangos Função: fiscal de caixa Data de inicio 23/09/2021 (emprego atual)
Irigaray comércio de produtos naturais Função :operadora de caixa e estoquista , data inicio 01/10/2020 final 22/06/2021
Comercial de combustiveis tamandaré Função : atendente de loja de conveniência e operadora de caixa data de inicio 26/06/2017 final 01/05/2020.
Recofran Função fiscal de caixa data de inicio 22/12/015 final 01/07/2017.
Alfe comercio eletrodoméstico Função :auxiliar de escritório e estoquista data de inicio 21/05/2012 final 31/07/-2014','Técnico em informática ,Técnico meio ambiente em andamento (IFSUL)',NULL,'Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=1AnUWAbsb_HYDCHRWp6g3eVjCiFUf58Lj',NULL,'Instagram','não','R$3.000.00','Sim','Almir , contato (55)99983-2355','Quero inscrever-me no banco de talentos da Young!','Gosto de fazer exercícios , caminhada ,jogar futebol com as amigas , sair com minha filha e curtir a vida e ser feliz.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-20T00:56:00.000Z'::timestamptz),
  ('Lenize Dornelles Gomes','lenize-dg@hotmail.com',NULL,'55981073983','1986-07-18',39,'Solteiro(a)','2','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1kszOcay0LgCHf2nVFI4TvB4KCNKkfy-I','Engenheira Agrônoma','Ensino Superior Completo','Uergs','2023-08-12','Sou formado','Magazine Luiza, vendedora (venda e pós venda de produtos físicos e seguros) lojas Pompéia caixa, crédito e cobrança (serviço de auxiliar administrativo e abertura de novos cadastros e cobrança dos mesmos',NULL,NULL,'Administrativa','https://drive.google.com/open?id=1pEUmcm0wzun1qJOnx0I-m26hCNrrVhiB',NULL,'Instagram','Não','2.000','Sim',NULL,'Auxiliar administrativo','Tenho conhecimento sobre obras , custos e realização de obras .','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-20T15:13:00.000Z'::timestamptz),
  ('Fabrine Saravia Dummer','fabrinesdummer@gmail.com',NULL,'+5553999726619','1999-09-16',26,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1gdu26e26Wg7iTrqn2JB4I6g-hF8uqt2w','Relações Internacionais','Ensino Superior Completo','UNIPAMPA','2023-05-05','Sou formado','Buen Paso Media. Ocupei o cargo de Especialista em divulgação, trabalhei durante os mess de agosto e setembro de 2023. Dentre minhas funções, a principal era entrar em contato por e-mail com clientes alvo da América do Sul, América do Norte e América Central para firmar parceria paga de marketing. Com habilidades na elaboração de e-mails persuasivos com comunicação acurada para convencer e encontrar oportunidades para os clientes que
beneficiem ambos os lados.','Sou graduada em Relações Internacionais pela Universidade Federal do Pampa, com ênfase em estudos políticos, econômicos e sociais globais. Minha formação proporcionou uma base sólida em teorias das relações internacionais, diplomacia, resolução de conflitos e análise política.
Além da graduação, estou constantemente buscando me aprimorar e expandir meus conhecimentos por meio de cursos adicionais. Atualmente, estou cursando disciplinas de aprimoramento em Power BI, Negócios Internacionais, Geopolítica e Governança, Negócios Internacionais e Introdução ao Mercado. Estes cursos de curta e média duração me permitem explorar novas áreas de interesse e manter-me atualizada sobre as últimas tendências e desenvolvimentos em minha área de estudo e sobre os interesses dos contratantes da minha área.
Minha busca por conhecimento também se estende além das fronteiras acadêmicas. Durante minha experiência profissional como especialista em divulgação em uma empresa britânica de marketing digital (BPM), adquiri habilidades práticas em comunicação internacional e estratégias de marketing global, complementando minha formação acadêmica.
Esses cursos e experiências acadêmicas e profissionais destacam meu compromisso contínuo com a aprendizagem e o desenvolvimento profissional, além de reforçar minha capacidade de contribuir de forma significativa para projetos e iniciativas no âmbito cívico, público e internacional.','Atualmente, não possuo certificações profissionais específicas. No entanto, estou em constante busca por oportunidades que possam complementar minha formação acadêmica e experiência profissional. Estou aberta a investir em certificações relevantes que agreguem valor à minha carreira e me permitam aprimorar minhas habilidades e conhecimentos. Meu compromisso é buscar constantemente oportunidades de desenvolvimento profissional que me tornem uma profissional mais qualificada e preparada para enfrentar os desafios do mercado de trabalho.','Administrativa, Financeiro, Marketing, Novos Negócios','https://drive.google.com/open?id=1u9yi84hI2UXiqlyQDUeR_Qg2c2q6M5f1','https://drive.google.com/open?id=1IhwjhogMTg2HeGbGvPxmHhz1qekWRDZr, https://drive.google.com/open?id=12WkiktxgNch1TBmKtp1HlO7oc2DIAG1K, https://drive.google.com/open?id=1YFbSqP_TAIga25H5hw7wGjCIO9M8w_Ht','Facebook','Não','3000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Além das informações já compartilhadas, gostaria de destacar algumas outras habilidades e interesses que possuo:
1. Idiomas: Possuo fluência em inglês e espanhol, além do português, minha língua materna. Estou constantemente buscando oportunidades para aprimorar meu domínio desses idiomas, pois acredito na importância da comunicação eficaz em contextos internacionais.
2. Conhecimentos em Software: Tenho habilidades avançadas no pacote Microsoft Office, incluindo Word, Excel e PowerPoint. Além disso, estou atualmente me aprimorando em Power BI, buscando desenvolver habilidades analíticas e de visualização de dados. Ainda tenho bastante conhecimento e domínio no Canva.
3. Trabalho Voluntário: Durante minha graduação, participei ativamente de projetos voluntários e comunitários, demonstrando meu comprometimento com causas sociais e meu desejo de contribuir positivamente para a comunidade.
4. Interesses Diversificados: Além de minha paixão por Relações Internacionais, tenho interesse em diferentes áreas, como arte, cultura, culinária e esportes. No meu tempo livre, gosto de praticar crossfit e explorar novas receitas na cozinha. Também sou apaixonada por viagens, animais e por aprender sobre novas culturas e tradições.
Essas são apenas algumas informações adicionais sobre mim, mostrando minha versatilidade, interesses e compromisso com o aprendizado contínuo e o desenvolvimento pessoal e profissional. Estou sempre aberta a novas oportunidades e desafios.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-20T22:39:00.000Z'::timestamptz),
  ('Ariane Oliveira Nunes','ariane.nunes@yahoo.com.br',NULL,'55992042081','1991-05-13',34,'União estável','1','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1xe82MFxlMO5bBQtGIcNLRSD6WHyuoorB','Administração de empresas','Ensino Superior Completo','Universidade Norte do Parana- UNOPAR','2011-12-23','Sou formado','.Experiências
-Loja Benoit
(Jovem Aprendiz – Auxiliar Administrativo, vendas, estoque) 02/03/2009 a 16/12/2009
-E.M.E.B Waldemar Borges (Estágio - Auxiliar Administrativo) 04/02/2008 a 30/07/2010
-BelleVitta
(Auxiliar Administrativo, vendas, estoque, secretária.) 01/08/2010 a 18/05/2014
-Instituto de Clínicas (Secretária)
24/11/2014 a 25/03/2018
-Hospital Regional de Santa Maria

Instituto de Cardiologia de Porto Alegre (Auxiliar Administrativo)
06/07/2018 a 11/07/2019
-Dr. Vergílio da Cás (Santa Maria) (Secretária)
11/11/2019 a 26/06/2020.
-Loja Flor de Liz (Alegrete) (Gerente de Vendas temporário) 23/08/2020 a 02/12/2020.
-Loja Vivo (Alegrete) (Vendedora)
28/06/2021 a 24/01/2024.','Curso de Vendas e Vitrinismo (Interneith 11/09/06-27/09/06) 40hs;
 Curso de Recolocação Profissional, marketing pessoal (Interneith 02/10/06-06/10/06) 20hs;
 Curso de Informática (Atual 04/12/06-14/05/2007) 44hs;
 Curso de Departamento Pessoal (Atual 28/05/2007-20/06/2007) 12hs;
 Operador de Caixa (Sine Alegrete 06/01/2009-06/02/2009) 100hs;
 Auxiliar Administrativo, Jovem Aprendiz (Senac- 2009);
 5o Workshop Jovens Empreendedores de Alegrete (Centro Empresarial
de Alegrete 09/11/2010-10/11/2010) 6hs;
 Curso Técnicas de Vendas (Sebrae 21/11/2011-02/12/2011) 15hs;
 Curso Desenvolvimento de Equipes (Sebrae 24/11/2011-28/11/2011)
15hs;

 6o Workshop Jovens Empreendedores de Alegrete (Centro Empresarial de Alegrete 09/11/2011-10/11/2011) 6hs;
 Curso Sustentabilidade no dia a dia (FGV 30/11/2011-30/11/2011) 5hs;
 Curso Secretaria Executiva (Catho10/04/2013-15/04/2013) 16hs;
 Curso Gestão de Pessoas (Catho 23/04/2013-29/04/2013) 16hs;
 Curso Excelência no atendimento (Catho 29/04/2013-02/05/2013)
16hs;
 Gestão de Equipes (Catho 03/05/2013-08/05/2013) 16hs.
 Rede de Atenção Básica – Primária (UNA SUS 13/05/2019-15/05/2019)
30hs.
 Curso de Administração (Endime 24/06/2022 á 24/07/2022) 60hs.
 Curso de Administração Estratégica (Endime 24/06/2022 á 24/07/2022)
60hs.
 Curso de Contabilidade Financeira e Gerencial (Endime 24/06/2022 á
24/07/2022) 60hs.',NULL,'Administrativa, Comercial, Financeiro, Engenharia','https://drive.google.com/open?id=1V-uRieXt0QHG4ePt5Zt_STLHG_ocgM4U',NULL,'Instagram','Não','2.000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom dia; me chamo Ariane Oliveira Nunes, tenho 32 anos, formada em Administração.
Busco uma vaga de trabalho na empresa young.
Tenho vários curso na área de RH, administração, vendas, marketing e informática ; também tenho plena experiência em diversas áreas no administrativo, financeiro, em contas a pagar, receber, cobrança, recrutamento, atas...
Sou uma pessoa responsável, dinâmica, pontual, fácil adaptação, proativa, curiosa... 
Eu estou a procura da vaga, onde eu possa crescer profissionalmente e adquirir mais conhecimentos.
Gostaria muito de ter a oportunidade de uma entrevista presencial para a empresa me conhecer melhor.

Desde já agradeço e fico a disposição.

Att: Ariane Oliveira Nunes','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-22T13:15:00.000Z'::timestamptz),
  ('Mateus de Sousa Dias','mdesousadias@hotmail.com',NULL,'51982552953','1995-11-28',30,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1XWnfJF_8FwE6BOxciUgwZRavnq73LXln','Engenharia Civil','Pós-graduação Completa','Centro Universitário Ritter dos Reis','2020-06-01','Sou formado','Resida Incorporações e Construções LTDA
Auxiliar de Engenharia
12/2015 a 12/2019
Nesta empresa passei por diversas áreas técnicas, iniciando como Estagiário e finalizando como Auxiliar de Engenharia, passando inclusive pelo setor de compras. Participei ativamente de etapas de projeto, aquisição e controle de materiais, além das atividades em campo, realizando controle de atividades de terceiros e entregas finais de unidades habitacionais 

CCR S.A.
Supervisor de Engenharia
06/2020 a …
Comecei na empresa desempenhando atividades de controle de produção e de qualidade em campo, durante a execução de obras de Infraestrutura rodoviária. Hoje atuo na gestão e controle dos contratos de Duplicação de uma das Rodovias do Grupo.','Sou Técnico em Edificações e também Pós Graduado em Infraestrutura de Transportes.',NULL,'Engenharia','https://drive.google.com/open?id=1IiFpfSi_gzZlHy3zlRZXMU01QvlB3qb4',NULL,'Agência de Empregos','Flávia Braun','13.000,00','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-03-26T01:05:00.000Z'::timestamptz),
  ('Stefany Giuliani','stefanygiuliani@hotmail.com',NULL,'55999575889','1991-10-19',34,'Solteiro(a)','0','Sim','Rosário Do Sul/rs','https://drive.google.com/uc?export=view&id=1sE3aSjuPwix6SVtunYREPU3Md-IgEb3P','Engenharia Civil','Pós-graduação Incompleta','Universidade Federal do Pampa- UNIPAMPA','2022-05-12','Sou formado','12/12/2019 - 16/12/2021: Prefeitura Municipal de Alegrete, naSecretaria de Infraestrutura.
Área de atuação: setor de Topografia.No desenvolvimento de
levantamentos topográficos, memoriais,laudos, certidões e
atendimentos ao público.
20/12/2021 - 04/02/2022 :Prefeitura Municipal de Alegrete, naSecretaria de Infraestrutura no setor de Departamento Técnico.Desenvolvimento de projetos PPCI, Hidro sanitários e Elétricos,no setor de engenharia na Secretária de Infraestrutura


02/02/2022 - 21/02/2022 :Prefeitura Municipal de Alegrete,nosetor de engenharia na Secretária da Educação-SECEL.Desenvolvimento e acompanhamento de projetos dereformas e melhorias nas escolas e quadras de esportes,desenvolvimento de cronogramas, orçamentos,licitações eacompanhamento de obras de infraestruturas e dePavimentação Asfáltica.

Gestora do projeto LÃ- Valorização Cultural e geração derenda- CMPC no ano de 2023','Prefeitura Municipal de Alegrete, naSecretaria de Infraestrutura.
Área de atuação: setor de Topografia.No desenvolvimento de
levantamentos topográficos, memoriais,laudos, certidões e
atendimentos ao público,naSecretaria de Infraestrutura no setor de Departamento Técnico.Desenvolvimento de projetos PPCI, Hidro sanitários e Elétricos,no setor de engenharia na Secretária de Infraestrutura e no setor de engenharia na Secretária da Educação-SECEL.Desenvolvimento e acompanhamento de projetos dereformas e melhorias nas escolas e quadras de esportes,desenvolvimento de cronogramas, orçamentos,licitações eacompanhamento de obras de infraestruturas e dePavimentação Asfáltica.Atuaemnte faço Pós Graduação em Patologia das contruções e recuperações pelo IPOG e atuo como autonoma na parte de regularização de imóveis na minha cidade.

Experiência em Informática – Programas como MicrosoftWord, Microsoft PowerPoint, Excel, Digitação e Internet;
Ministrante do Projeto Mais Informática na Educação – NUDE(Núcleo de Desenvolvimento Educacional) Alegrete/RS;
Experiência em projetos nos softwares: AutoCAD, Revit, Excele TQS.
Gestora do projeto LÃ- Valorização Cultural e geração derenda- CMPC',NULL,'Comercial, Estágio, Engenharia','https://drive.google.com/open?id=14nHbmxCVqvFjflbm8oDrxOq38NtK6fpv',NULL,'Facebook','não','2500','Sim','Prefeitura Municipala de Alegrete- Setor de Topografia.Falar com Clovenir 55997093396

Associação Artesanato Pampa Caverá- Falar com Mauren 55984536408','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-04-01T19:38:00.000Z'::timestamptz),
  ('Matheus Machado Costa','matheusmachadoec@gmail.com',NULL,'55996941777','1997-06-16',28,'Solteiro(a)','0','Sim','Rosário Do Sul/rs','https://drive.google.com/uc?export=view&id=1-l0_U9j7l3BAWbeCIPcB5uNHF23taYar','Engenharia Civil','Pós-graduação Completa','Universidade Federal do Pampa','2021-07-02','Sou formado','Estagiei na prefeitura municipal de alegrete, fiz acompanhamento de obras, projetos e orçamentos.','Mestre em engenharia com ênfase em materiais e estruturas',NULL,'Arquitetura, Engenharia','https://drive.google.com/open?id=1SiX5uzfuuklUHRLFlokt0s-h2XBmtbnT',NULL,'Instagram','Não','3000','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-04-02T02:10:00.000Z'::timestamptz),
  ('Géssica Eleandra Floriano Pereira','gessicafloriano.gf@gmail.com',NULL,'55996694085','1990-12-18',35,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1p9fYPWapRvp0WcOj1tTBImlnnzcD_Kqr','Bacharelado em Serviço Social','Pós-graduação Incompleta','Universidade Federal do Pampa','2020-03-21','Sou formado','Roberta Flores de Oliveira; Assistente Administrativo; Julho 2021 - Agosto 2021;
Atendimento ao público, Negociação, Emissão denotas, Sistematização e controle de pagamentos.

Karine Lopes ME; Auxiliar Administrativa; Novembro 2021 - Abril 2022; Vendas e negociação
Atendimento ao público, Emissão de notas,  Sistematização e controle de estoque.

AGROFEL AGROCOMERCIAL S.A./CREDITÁ S.A;  Abril 2022- Até o momento;  Promotora de Vendas; Prospecção de clientes e fechamento de negócios, Suporte e auxilio na criação de contas de pagamento, Execução de Crédito, financiamento e investimento Creditá S.A, Promoção e emissão de cartão de crédito.',NULL,NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1Q3Md_8-mbWntFK66FgRWEZkTsnmXirP-',NULL,'Google','Não','2.000.00','Não','Julio de Deus Silveira- 55 55 9928-5255-  AGROFEL AGROCOMERCIAL S.A.','Quero inscrever-me no banco de talentos da Young!','Olá sou a Géssica Eleandra Floriano Pereira, amo ter como instrumento de trabalho pessoas, dedicar tempo, direcionar, cultivar relações. Tenho habilidade com os sistemas CRM e Cobranças, Power B.I e Microsoft Excel. Cultivo hobbies como musculação, ciclismo e leitura de livros e artigos. Tenho afeição por tudo que é metido ao lúdico e envolva pessoas e projetos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-04-02T19:24:00.000Z'::timestamptz),
  ('Luiz Antonio Maia Junior','vontilee@gmail.com',NULL,'51998614468','1980-09-06',45,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=141vpdFDovv-RBUY6KcNjF0u7Hbu2JrnY','Administração de empresas','Ensino Superior Completo','Ulbra','2019-03-30','Sou formado','1) Deltasul utilidades Ltda; de 13/08/2018 à 07/08/2023. Cargos: vendedor, coordenador de vendas. Principais funções: vendas de produtos e serviços, gestão de equipe de vendas, inventário de loja, entrada e saída de NF das cargas e substituição do gerente quando ele não estava presente. Ex: tirar férias.

2) Drebes Cia Ltda ( Lojas Lebes) de 10/012017 à 07/05/2018. Cargo: consultor de vendas. Principais funções: vendas de produtos e serviços',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Indicação','Giulia','R$4.000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa sempre em crescimento tanto no lado pessoal, profissional e espiritual, gosto muito de surfar e de conhecer lugares novos, esse ano fui para  Santa Catarina e aproveitei bastante as ondas de lá, em novembro eu e minha esposa fomos a um show no Rio e também foi maravilhoso, ainda não falou outra língua, mas está no meus planos o inglês, gosto muito de viver e quero muito trabalhar com pessoas que desfrutem dessa vontade para que todo dia seja leve e não um fardo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-04-03T15:35:00.000Z'::timestamptz),
  ('Renata de Borba Souza','borbar85@gmail.com',NULL,'51996661152','2006-04-16',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1hbnsjZq4UPul6hMNvmfqyjWUFWnFUrNt',NULL,'Ensino Médio Completo','Estacio',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1-Prefeitura de Santo Antônio da Patrulha 
2- Estagiária
3- 02/2023 à 12/2023.',NULL,NULL,'Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=1aP1NvQGlCK4oORz5TCKr0qE8hUqJ68Yu',NULL,'Instagram','Não','1200','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-04-03T21:58:00.000Z'::timestamptz),
  ('Estefani Schwalm da Costa','estefaneschwalm450@gmail.com',NULL,'51993982706','2000-06-30',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1oCcpibw4HLw1jr3tK8JPo4K7ToTTNEf_','Pericia Criminal e investigação forense','Ensino Médio Completo','Uniasselvi','2026-10-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1 :Macotinha material de construção 
2: atendimento ao cliente
3: 2019 a 2021
4: auxiliava nas vendas, pós, tirava dúvida de clientes em relação aos materiais de construções

1: Redemac Moro Fraga
2: Atendimento ao cliente
3: 2022 a 2023','Curso de administração 2013 a 2015',NULL,'Administrativa, Financeiro, Engenharia','https://drive.google.com/open?id=1m4IL--8quBTC5MZLEJEHdB11blM2XtRl',NULL,'Instagram','Não','1.700,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-04-07T17:01:00.000Z'::timestamptz),
  ('Samantha Rodrigues','samantharodrigues096@gmail.com',NULL,'53991607444','2003-02-06',23,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1Av08TnPbgdag6kzCZ8YzLEqLtW--F8ZF','Gestão de recursos humanos','Ensino Médio Completo','Unicesumar','2026-04-04','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Chens presentes(05/2023)-(01/2024)
Ocupação:vendedora 
Principais atividades: atendimento ao público,vendedora e estoquista','Curso Básico de informática',NULL,'Comercial, Estágio, Financeiro, Marketing','https://drive.google.com/open?id=16kHYlDOuA6_CKfaKVqRZ4HOhZhfOx6NJ',NULL,'Agência de Empregos','Não','$1,7000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-04-08T03:37:00.000Z'::timestamptz),
  ('Gabriel Rodriguez','gabriel.rodriguez1608@gmail.com',NULL,'55984284698','1999-08-16',26,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1-Xu6dDdAnAO_WG-WTK2Od4T-9MaLDvxD','Engenharia Civil','Ensino Superior Completo','Centro Universitário da Região da Campanha - URCAMP','2024-03-30','Sou formado','SECRETÁRIA MUNICIPAL DE EDUCAÇÃO - BAGÉ-RS
Estagiário de Engenharia Civil
Maio de 2021 - Junho de 2022
Elaborar estudos e projetos; fazer relação de materiais necessários; realizar elaboração de projetos; realizar levantamentos quantitativos de serviços; elaborar levantamento cadastral.

HENDLER CONSTRUTORA E INCORPORADORA - BAGÉ- RS
Estagiário de Engenharia Civil
Agosto de 2023 - Dezembro de 2023
Estágio Supervisionado obrigatório para conclusão de curso, acompanhamento das obras da construção do condomínio residencial J. Lemos.

Buscando meu primeiro emprego.','Possuo diversos cursos de gerenciamento de projetos  visando, qualidade, orçamentos, projetos pequenos, gestão de riscos, etc. Curso de excel, e domínio do pacote office e MS Projetc, cursos de desenvolvimentos de ppci''s, sketchup e alguns outros. 
Além de experiência em estágio utilizando AutoCAD diariamente.',NULL,'Engenharia','https://drive.google.com/open?id=19f_xTW-3skgNO_CTROdxVQlTOPinApmk','https://drive.google.com/open?id=1EttxlLCwPRtjVYrEI6CCUC3m_Xw45GBL','Instagram','Não','2100','Sim','Adalberto Schafer, Coordenador de Engenharia Civil da URCAMP. (53) 99957-0717','Auxiliar de Engenharia','Meu nome é Gabriel Rodriguez, tenho 24 anos e sou natural de Sant''Ana do Livramento, fiz minha faculdade inteira na URCAMP no campus de Bagé-RS. 
  Sou fluente em espanhol e tenho conhecimento básico de inglês, nos softwares eu domino AutoCAD, todo pacote office e MS Project, Sketchup, tenho conhecimento de Revit mas não considero saber utilizar o software por inteiro, tenho boa base.
  No período de faculdade fiz mais de um ano de estágio na Secretária de Educação de Bagé, desenvolvendo várias tarefas, mas principalmente o levantamento cadastral de escolas e posteriormente desenhando no AutoCAD. No estágio supervisionado acompanhei algumas etapas da construção de um prédio residencial da construtora Hendler em Bagé.
  Sou uma pessoa de fácil convivência, com muita vontade de aprender e colaborar com o que for preciso, sempre priorizando o trabalho em equipe.
  Agradeço a oportunidade de me apresentar e me coloco a disposição para o que for preciso.
  Gabriel Rodriguez. 
gabriel.rodriguez1608@gmail.com  
(55)98428-4698','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-04-11T03:01:00.000Z'::timestamptz),
  ('Stephany Luiza Schemmer','tefischemmer@hotmail.com',NULL,'55999351591','1999-07-09',26,'Solteiro(a)','0','Sim','Santo Ângelo/rs','https://drive.google.com/uc?export=view&id=1tA-OJ4q-oaXnIIzL2CAZ1ej2cASM15ZH','Engenharia Civil','Pós-graduação Completa','URI SANTO ÂNGELO','2022-01-14','Sou formado','Construtora Cantarelli LTDA; Aprendiz Legal; 06/09/2018 a 04/09/2020; Atividades relacionadas ao administrativo da empresa.
Construtora Cantarelli LTDA; Estagiária; 09/09/2020 a 14/01/2022; Acompanhamento da obra.
Construtora Cantarelli LTDA; Engenheira Civil PJ; 15/01/2022 a atualmente; Gerenciamento e gestão da obra.','Pós em Engenharia de Segurança do Trabalho e MBA em Gestão de Obra da Construção Civil',NULL,'Engenharia','https://drive.google.com/open?id=11NVPCrP1MYiS7e-GIaudHurTBRSCInHk',NULL,'Instagram','Não','R$10.000','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-04-12T17:18:00.000Z'::timestamptz),
  ('Leandro Meneses','contato.leandromeneses@gmail.com',NULL,'51998034265','1989-09-12',36,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1Bby5JE62zS-Vg1SGVcW5U7IaAx4RVa62','Ciências Contábeis','Ensino Superior Incompleto','Fael','2024-04-30','Não, no momento pausei/parei por um período.','.',NULL,NULL,'Comercial','https://drive.google.com/open?id=1X_xh9IfASBPURiPCxb_LbLTlC27ge_id',NULL,'Facebook','Não','2500','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-04-15T10:22:00.000Z'::timestamptz),
  ('Alessandra Carissimi Pereira','alessandracarissimi89@gmail.com',NULL,'51996279541','1989-06-26',36,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1cMaqM0vCAh812oZowEclDECfk5SEkCni',NULL,'Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei por quase 14 anos na área de custos, em Indústria de plástico, calçadista e automotiva.',NULL,NULL,'Administrativa, Comercial, Financeiro, Licenciamentos','https://drive.google.com/open?id=1_hge7rzb2SIkuOmHLIsG-jx9IGppeMgi','https://drive.google.com/open?id=17zarq3k8zVPQjvwNVdsNLWdnZYyYYPMN','Instagram','Não','7000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Acredito que contribuir para o crescimento da empresa, bem como agregar conhecimento aos currículo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-04-17T00:51:00.000Z'::timestamptz),
  ('Vitória Conceição Soares','vitoriasoares1909@gmail.com',NULL,'51997934345','2003-12-04',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1qNG2XYxbZie8Snrca9MJU3n9kaBZvJnb',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1) Mega Brick 2)Serviços Gerais 3)02/08/2021  02/11/2021 4) Fazia Vendas dos produtos da loja e serviços gerais de limpeza

2)Lojas Americanas 2)Supervisora de loja
3) 03/02/2022   19/12/2023 4) Entrei na vaga como programadora de aplicativo, onde ajudava clientes a fazerem compras online, após um tempo passei para fiscal, onde fazia atendimentos, vendas e cuidava de caixa, fazia a abertura dos caixas e o fechamento, fazia fechamento de loja, após um tempo comecei a fazer abertura de loja e virei supervisora, onde supervisionava os demais, cuidava de departamentos, fazia fechamento das vendas durante a semana e depósitos. Ficava à frente da loja como responsável sempre que necessário. Trabalhava com metas diárias e mensais.',NULL,NULL,'Administrativa, Arquitetura, Marketing, Novos Negócios','https://drive.google.com/open?id=1hDdpi5YAhvpz7sC6meUdyPeihLPe_Bl0',NULL,'Instagram','Não','1500 até 2500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Me considero uma pessoal simpática e objetiva, tenho capacidade em aprender coisas novas com facilidade. Na empresa onde trabalhei por quase dois anos desenvolvi muitos aprendizados , tanto tecnológico com criações de planilha , organização financeira da loja, até mesmo a vendas, onde tínhamos além dos produtos vendermos seguros também, fui destaque por vendas de seguros até que fiquei responsável por cuidar das vendas e sempre fazer a frente e a ensinar novas pessoas que entravam na loja. Sou um pouco envergonhada mas sei me colocar no local de trabalho com ética e postura. Como tive meu primeiro contato com a área da finança nesse mesmo trabalho, comecei a estudar ciências contábeis, para me capacitar mais na área, porém com alguns em previsto que tive , tive que deixar de lado. Tenho em mim a vontade de começar algo novo e expandir o meu conhecimento, me colocando a frente de novas oportunidades que possam surgir e com elas adquiri mais aprendizado e conhecimento. Venho me candidatar a vaga por esse motivo, por poder tentar algo novo, e por minhas experiências em prática e poder agregar no meu conhecimento com novos objetivos. Gosto de sair um pouco da zona de conforto e por ideias em prática, tentar algo novo sempre que possível','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-04-23T11:02:00.000Z'::timestamptz),
  ('Thiago Benites','engbenites@gmail.com',NULL,'51984205441','1984-05-05',41,'Casado(a)','1','Sim','Alvorada/rs','https://drive.google.com/uc?export=view&id=1KVI3NM2P3FFHqRLpE75str4a51ncHD-i','Engenharia Civil','Pós-graduação Completa','Ftec','2018-10-05','Sou formado','Engenheiro Civil Autonomo de 2018 a 2024,  atuei em diversos clientes mas sempre como PJ, clientes como Pavibeton, Banrisul, Axis Engenharia, Guarida Imovéis, gerenciava e fiscalizava obras,  contratação de mão de obra, terceiros, gerenciamento de maquinario e insumos, projetos, medições.','Pós graduação em Gerenciamento de projetos, usina voltaica e segurança do trabalho',NULL,'Engenharia','https://drive.google.com/open?id=1h1y-wFgNoPQh6Ym7jPQJq_ssRsPAPQfR',NULL,'Agência de Empregos','não','12.000,00','Sim',NULL,'Engenheiro Civil','Sou bem ativo, por isso gosto de praticar esportes como corrida de rua e musculação, também gosto muito de viajar em familia.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-04-24T18:27:00.000Z'::timestamptz),
  ('Ezequiel dos Santos Júnior','ezequielsantosjunior@gmail.com',NULL,'55999067637','1994-04-12',31,'Solteiro(a)','0','Sim','Santa Maria/rs - Sem Problemas Em Mudar De Cidade','https://drive.google.com/uc?export=view&id=1o3g0gkLyEdPIBAB09EwyCiOl2D98tihA','Engenharia Civil','Pós-graduação Completa','UFSM','2022-09-02','Sou formado','Estou me candidatando ao meu primeiro emprego, durante a graduação tive a oportunidade de vivenciar diversas áreas da engenharia, segue abaixo uma rápida descrição das atividades que realizei.

Estagiário na Ábakos Engenharia & Consultoria - Abril/2022 - Agosto/2022
Colaborei no dimensionamento, detalhamento e compatibilização de projetos
estruturais de concreto armado e de instalações para residências de alto padrão e
edificações comerciais, além de acompanhamento da execução dos projetos em obra.

Estagiário na Prefeitura de Santa Maria/RS - Outubro/2021 - Abril/2022
Vistorias em edificações, acompanhamento de obras, análise, elaboração e
orçamentação de projetos arquitetônicos e complementares.

Voluntário do Grupo de Estudos em Gestão e Planejamento de Obras - (GEGPLAN/UFSM) - Julho/2020 - Julho/2021
Desenvolvimento de atividades com o objetivo de fortalecer a área de gestão e
planejamento de obras do curso de Engenharia Civil.

Voluntário do Grupo de Estudos e Pesquisas em Estruturas de Concreto - (GEPECON/UFSM)
- Agosto/2019 - Agosto/2020
Auxílio em pesquisas com concreto com o objetivo de estudar o comportamento do
mesmo e seus efeitos na mitigação dos gases do efeito estufa.

Diretor de Administrativo Financeiro - Renove Júnior Soluções Ambientais - Janeiro/2019 -
Junho/2019
Atuação na elaboração e execução de projetos na área ambiental. Na área de gestão
tive a oportunidade de ser responsável pelo financeiro e administrativo da empresa.','Sou formado em Engenharia Civil pela UFSM, com pós-graduação em Engenharia de Estruturas e Fundações pela Faculdade Anhanguera.',NULL,'Administrativa, Novos Negócios, Engenharia','https://drive.google.com/open?id=199Y3jGtI7zVahKb3NNAfuan36BD9RIkT',NULL,'Agência de Empregos','Não fui indicado.','R$3500-R$4000','Sim',NULL,'Engenheiro Civil','No momento estou realizado um curso de TQS para me aprimorar no software. Possuo inglês avançado e estou tentando aprender espanhol de forma autodidata. Como passatempo gosto ler e de assistir qualquer esporte, em especial futebol.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-04-25T00:06:00.000Z'::timestamptz),
  ('Gabriel Silveira da Cunha','eng.gabrielcunha@gmail.com',NULL,'51993774615','1988-04-15',37,'Casado(a)','1','Sim','Torres/RS','https://drive.google.com/uc?export=view&id=1boA7hka9Pcrw7Dna0nTh9qS7UkwoSR0N','Engenharia Civil','Pós-graduação Completa','UNESC','2010-02-10','Sou formado','1) Pré-Vale Pré-moldados
2) Engenheiro residente
3) De abril/10 a out/10
4) Execução de obras pré-moldadas em SC e RS. Execução de fundação rasa e profunda e montagem de pré-moldado.

1) Construtora Serra da Prata
2) Engenheiro residente
3) De out/10 a jan/14
4) Execução direta de Obras de Artes Especiais (OAEs) para Duplicação da BR 101/SC, viaduto contorno com 1700m de pista dupla, Ponte do Rio Araranguá, Viaduto Sombrio, Viaduto R-03. Viaduto I-02, Viaduto Operária e execução de 03 Passarelas sobre a rodovia BR 101.

1) Estaleiros EBR - Estaleiros do Brasil SA
2) Engenheiro de Construção Senior
3) De jan/14 a jan/16
4) Execução e gerenciamento de empreiteiras para implantação do Estaleiros de São José do Norte/RS, execução de obras de implantação de 30 prédios, retro área, cais, dragagem, drenagem, terraplanagem, pavimentação e underground em geral. Investimento de 500 milhões em 02 anos.

1) DeZ Urbaniza - Torres/RS
2) Engenheiros de obras sênior
3) De fev/16 a mar/19
4) Execução direta de loteamentos e bairros planejados em Passo de Torres/SC e Três Cachoeiras/RS. Loteamento Bosque das Figueiras, São Cristóvão e início do Jardim América. Montagem de equipe própria e gestão de contrato de empresas terceiras (terraplanagem, drenagem, esgoto e pavimentação).

1) CCR ViaSul - Concessionária de Rodovias
2) Coordenador de Engenharia
3) De mar/19, atualmente.
4) Implantação da Concessionária ViaSul com a execução de praças de pedágio, implantação da Concessionária ViaCosteira com a execução de praças de pedágio, execução de obras em geral (Alargamentos de OAEs, implantação de balanças de pesagem, implantação de interconexões na BR 101/RS e BR 386/RS, implantação de passarelas de pedestres e duplicação da BR 386/RS de Fontoura Xavier a Soledade - em obras).','MBA em Gestão de Projetos','MBA em Gestão de Projetos','Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=1v6YcBujfm6kE4cdgzxHcjcWDtddRg8CZ','https://drive.google.com/open?id=19zDxRFXer247fy0GZMEIk1NlVEJg4tYN','Agência de Empregos','Sim, Flávia.','20.000,00','Sim','Eng. Jerônimo Zuanazzi (DeZ Urbaniza - 51 98024-7174)','Quero inscrever-me no banco de talentos da Young!','Tenho bastante experiencia em obras de infraestrutura em geral, gosto de trabalhos desafiadores, tenho facilidade em comunicação e gestão de equipe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-04-25T16:22:00.000Z'::timestamptz),
  ('Lucas Costa da Silveira','lucas.costars@hotmail.com',NULL,'51999430740','1996-05-08',29,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1L5E1d9JUTHldkRJT6_McvKzWZdboTrOt','Engenharia Civil','Pós-graduação Completa','Ulbra','2020-12-12','Sou formado','1) Pavtech 2) Engenheiro Civil 3) 08/05/2022 atualmente (Temporário) 4 ) Responsável técnico da empresa e pela equipe de terraplanagem e pavimentação . Faço a gestão do contrato de 2 obras de médio a grande porte. Responsável pela fiscalização, acompanhamento e orçamento das obras, controle de material e parte técnica.','MBA em Gestão de Projetos e Metodologias Ágeis','MBA em Gestão de Projetos','Engenharia','https://drive.google.com/open?id=1i23UABQ1OOE0TCpah4f8NRpoz-dJyo5F',NULL,'Google','Não','R$12.500,00','Sim','51997250584 CEO Julio Pavtech','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-04-26T00:26:00.000Z'::timestamptz),
  ('Marçal Silva Carvalho','marcalscarvalho@gmail.com',NULL,'55981125530','1979-07-12',46,'Casado(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1Cu8boC3c34V3ZC8Wwpc96Cdzkz6Yku2p',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','1) PETRY IMÓVEIS - PELOTAS  2)Corretor de Imóveis  3) 2019 até 2021  4) realizava agenciamento, apresentação e venda de imóveis avulso e na planta, atendimento a clientes, redigia contratos, encaminhamento de documentação em cartórios, encaminhamento a financiamentos imobiliários. 

1) ENFOQUE IMÓVEIS - PELOTAS  2)Corretor de Imóveis  3) 2021 até 2022  4) venda de imóveis avulso e na planta, atendimento a clientes, redigia contratos, encaminhamento de documentação em cartórios, encaminhamento a financiamentos imobiliários.

1)RAK ENGENHARIA - SÃO BORJA  2) Consultor de Vendas  3) 2022 até 2023  4)atendimento a clientes, apresentação dos empreendimentos,  redigia contratos, encaminhamento de documentação em cartórios, encaminhamento a financiamentos imobiliários, entre outros.',NULL,NULL,'Comercial','https://drive.google.com/open?id=1GzRcfS_t52t-f8fiAjjmirJ4XWifXYte','https://drive.google.com/open?id=1HBknUHf_TDikDnuyY_hZKOTJp1V7TI_x','Google','Não','R$5.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-04-26T20:05:00.000Z'::timestamptz),
  ('João Carlos Henrichs junior','joaohenrichs@gmail.com',NULL,'61983041437','1989-01-29',37,'Solteiro(a)','0','Sim','Brasília/df','https://drive.google.com/uc?export=view&id=1aPumncyhAQ8gEybSNtEDhrgviT4jyhK1','Engenharia Civil','Ensino Superior Completo','IESB','2019-12-12','Sou formado','Sou engenheiro civil (Crea n° 29835/DF). Obra mais recente foi feita uma cozinha gourmet, sauna e um estúdio de música em Arniqueiras, antes disso dei continuidade a uma reforma da área comum de entrada de um edifício em Taguatinga, (todos com referências),elaboração de laudos de inspeção predial. Atuei ainda na área de saneamento básico prestando serviço para a Companhia de Saneamento Ambiental do Distrito Federal (CAESB). 
 
Como profissional tenho a habilidade de aceitar responsabilidade, definindo e cumprindo prazos e isso me permitiu migrar para outras áreas dentro da empresa sempre em busca de conhecimento e contribuir com a área da melhor maneira possível. Sou autodidata e tenho bom em relacionamento com clientes e equipe.  
              
Experiências 
Companhia de Saneamento Ambiental do Distrito Federal Brasília/DF 
21/01/2019. A 16/11/2020 
•        Apoio a supervisão em manutenção de redes coletoras de esgotos; 
•        Visita em campo para acompanhamento de serviços corretivos; 
•        Criação e edição de croquis diversos usando ferramenta PDF e arcgis 
•        Apoio a coordenação de equipes para a realização do trabalho em campo 
•        Gerenciamento contínuo e diário da planilha de painéis, para verificar quanto a obstruções, falta d’água, e vazamentos em redes de esgoto e água e levantamentos de dados para fins de preventivas e corretivas 
•        Apoio na coordenação das esquipes da CAESB apontando as prioridades dos serviços a serem realizados de acordo com a gravidade','curso de revit básico',NULL,'Engenharia','https://drive.google.com/open?id=1fS121FbCYx9bKgVdD3OhrlM5XieEXdhi',NULL,'Um Amigo De Minha Irmã Que Mora Em São Borja Comentou','não','isso vai depender de alguns fatores, como: expectativa de crescimento na empresa, sempre digo que funcionário satisfeito trabalha até de graça, isso depende muito da negociação. aberto a propostas','Sim',NULL,'Engenheiro Civil','tenho a habilidade em trabalhar em equipe e boa convivência com os colegas; inglês intermediário com boa comunicação; pretendo fazer cursos de revit mais avançados acredito muito na tecnologia BIM; fui criado boa parte da infância no Rio Grande e sinto falta da cultura, sou fã do legendarium de Tolkien, e gosto de ficar em casa vendo algum filme ou série, gosto muito de animais e astronomia.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-04-30T15:47:00.000Z'::timestamptz),
  ('Bernardo Lyoh Sugawara Misaka','lyoh.misaka@hotmail.com',NULL,'31991000010','1998-02-02',28,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=17LfXjXYWlJNuvbNnVaQ09Of_vmL0pAUj','Engenharia Civil','Pós-graduação Incompleta','Unipampa','2021-10-09','Sou formado','1) Prefeitura Municipal de Alegrete
2) Estagiário
3) 09/03/2021 a 01/05/2021
4) Participação em projetos de Escolas desenvolvendo projetos arquitetônicos para ampliações e reformas, projetos de Quadras Poliesportivas, quantitativo dos itens, orçamentos utilizando o SINAPI, cronogramas físico-financeiro, documentações no sistema FNDE, memoriais descritivos e acompanhamento em obras.

Estou me candidatando para o primeiro emprego.','No presente momento estou terminando o programa de mestrado em Engenharia na Unipampa, com previsão para término em outubro de 2024.',NULL,'Administrativa, Financeiro, Engenharia','https://drive.google.com/open?id=1bFP2QA8glc-7nxRaxfKB0nlAwa4IhU3F','https://drive.google.com/open?id=1C905XTipUVzK7ER5P1aLe3uh8bwVYPku','Indicação','Não','Condizente com o trabalho que me for designado.','Sim','Érica Gonçalves de Vargas - Supervisora de estágio (na época)
Contato: http://linkedin.com/in/érica-gonçalves-de-vargas-b6b230197','Engenheiro Civil','Grande interesse em desenvolver e executar projetos ecologicamente sustentáveis, desde a execução de novas edificações a até realizar adaptações e/ou reformas em edificações já existentes. 
Grande interesse em aprender a gerenciar e planejar obras.

Conhecimento de softwares BIM (AutoCAD e Revit), editor de texto (Word) e de planilha eletrônica (Excel);
Conhecimento para elaboração do quantitativo e orçamento de itens utilizando o SINAPI, cronogramas físico-financeiro, memoriais descritivos e acompanhamento em obras.
Idiomas: Inglês: Intermediário; Japonês: Básico;

Disponibilidade imediata de horário integral e presencial, necessitando apenas de retornos periódicos para Alegrete afim de terminar o mestrado.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-02T20:07:00.000Z'::timestamptz),
  ('Patrícia Floriana Rocha Lopes','tissiarocha@outlook.com',NULL,'53991339551','1979-03-22',46,'Solteiro(a)','2','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1StIlkB8Ecs_nCnKPVyriqQyW6LIlhRpa',NULL,'Ensino Superior Incompleto','Unifatecie',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Lojas Colombo,Sesc , Banco Agibank(atual) Sempre no setor de vendas.',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Não.','Compatível com a função.','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-06T01:55:00.000Z'::timestamptz),
  ('Geisiani Santos de Jesus','geeehsanntoss@gmail.com',NULL,'51996074616','1997-11-30',28,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1QOVPMwACyEJnsd2HC-5fVNLxC7VaaEcA',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1. Calçados Bugor do Brasil ltda
Função: etiquetadora
Período: 2014 a 2020 (6 anos)

2. RR shoes
Função: etiquetadora 
Período: aproximadamente 1 ano

3. Espaço Recreativo Chico Bento 
Função: cuidadora
Período: aproximadamente 1 ano

4. Atualmente trabalho na Rabelo empreendimentos (RR shoes)',NULL,NULL,'Administrativa, Marketing, Engenharia',NULL,NULL,'Indicação','Adriano Santos','1800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Quando pequena participei de projetos da cidade (projeto pé quente), fiz vários cursos básicos de Word. E participei também do bombeiro Mirim! 
Me considero uma pessoa organizada, e estou disposta a aprender coisas novas sempre. Acredito que tenho um bom potencial e aprendo rápido as coisas!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-06T13:32:00.000Z'::timestamptz),
  ('Ana Nilson','a.marcia.caldeira@gmail.com',NULL,'55996956189','1987-04-02',38,'Casado(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1zICPJDo8iVMbEzJMVE1Nwmk67vrXQUDi','jornalismo, história, contabilidade','Pós-graduação Completa','unipampa','2012-03-03','Sou formado','atendimento, financeiro, contabilidade, comunicação','mestrado em comunicação',NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1xMICBd9j7mpA6T8-HhmUehyFcrq-bsro','https://drive.google.com/open?id=1ecBiv1YRMMJhiIScP1mC9SbkvsjJtYze','Agência de Empregos','não fui','3.500,00 a combinar','Sim','prefeitura de sao borja- contabilidade Tamaki','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-07T13:00:00.000Z'::timestamptz),
  ('HUMBERTO GONÇALVES','humbertofrancisgoncalves@gmail.com',NULL,'55999418073','1991-09-15',34,'Casado(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1b1LennBPZnwG6bU_J6Jvz1DnAmuzgeET','Engenharia Civil','Pós-graduação Incompleta','UNIFRAN','2019-03-03','Sou formado','COORDENADOR DE OBRAS, PROJETOS EM TODAS AS FASES, GESTÃO DE OBRAS, GESTÃO DE PESSOAS E MATERIAIS ETC',NULL,NULL,'Financeiro, Licenciamentos, Engenharia','https://drive.google.com/open?id=1IUNKpK6jJwx57ZOpcQMvQZnAh1LWw937',NULL,'Agência de Empregos','NAO FUI','NEGOCIÁVEL','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-07T13:04:00.000Z'::timestamptz),
  ('João Dal Magro Neto','joao.dalmagro@gmail.com',NULL,'51995934557','1995-05-23',30,'União estável','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1zDUbUXA9KmEcQ3q9rGFhdxm6vDc-4GjU','Engenharia Civil','Ensino Superior Completo','ULBRA CANOAS','2019-12-12','Sou formado','EXPERIÊNCIA PROFISSIONAL 
WINDWERK – SERVIÇOS EM ENERGIAS RENOVÁVEIS 
Fiscal Balance of Plant (BoP) Acessos/RMT/Civil – Parque Eólico Coxilha 
Negra - Eletrobras
Fevereiro/24 – Atual 
 Fiscalização para empresa contratante (ELETROBRAS) de obras civis, com 
prática de leitura de instrumentos para obras civis. 
 Fiscalização do planejamento das obras civis elaborado pela empresa executora; 
 Fiscalização da qualidade dos serviços de obras civis, com base no projeto 
executivo e Normas aplicáveis; 
 Fiscalização do cumprimento do cronograma físico; 
 Analise de boletins de medição emitidos pela empresa executora; 
 Emissão de relatórios de acompanhamento da evolução da obra; 
 Acessos, Base dos AEGs, Edificações e Fábrica de Aduelas, RMT. 
RITT EMPREENDIMENTOS IMOBILIÁRIOS LTDA 
Supervisor de Obras 
Janeiro/22 – Setembro/23 
 Supervisão e execução dos serviços em obra; 
 Levantamento orçamentário; 
 Planejamento e cronograma dos serviços das obras; 
 Gerenciamento equipes, materiais e equipamentos. 
GERDAU AÇOS LONGOS 
Analista de Projetos 
Dezembro/20 – Janeiro/22 
 Liberação de pedidos de corte e dobra de aços; 
 Análise e interpretação de projetos estruturais de aço; 
 Planilhamento e conferência de posições no software para produção do corte e 
dobra. 
CROSS E FREITAS LTDA 
Estagiário de Engenharia Civil 
Fevereiro/19 – Junho/19 
 Orçamentos e propostas à clientes; 
 Análise de viabilização e concorrências em licitações; 
 Montagem de documentação para participação em licitações; 
 Compatibilização de projetos (mecânico, elétrico e hidrossanitário); 
 Fiscalização de obras, logística de materiais para atender as frentes de trabalho. 
ESTILO CASARÃO CONSTRUÇÕES LTDA 
Auxiliar Fiscal de Obra 
Março/2018 – Julho/2018 
 Fiscalização das etapas construtivas de casas residenciais; 
 Compatibilização de projetos (estrutural, elétrico e hidrossanitário); 
 Elaboração de quantitativos; 
 Gerenciamento de logística de materiais para atender as frentes de trabalho; 
 Cadastro de terrenos de clientes. 
RISSI FACHADAS E ESQUADRIAS LTDA 
Estagiário em Engenharia Civil 
Fevereiro/2017 – Novembro/2017 
 Medições in loco para produção de esquadrias; 
 Elaboração de planilhas; 
 Gerenciamento de logística de materiais; 
 Gerenciamento de medição financeira; 
 Elaboração de diários de obra. 
MAIOJAMA EMPREENDIMENTOS IMOBILIÁRIOS 
Estagiário em Engenharia Civil 
Junho/2015 – Janeiro/2017 
 Inspeção e acompanhamento dos serviços de acordo com projeto e cronograma; 
 Compatibilização, em obra, dos projetos; 
 Realização de planejamento semanal dos serviços; 
 Levantamento de quantitativos de materiais, medições, conferências de serviços; 
 Ajustes finais e entregas de unidades para clientes. 
KAEFE Engenharia e Empreendimentos Imobiliários Ltda 
Estagiário em Engenharia Civil – Setor Qualidade 
Outubro/2014 – Maio/2015 
Sistema Construtivo: Paredes de Concreto 
 Verificar a qualidade dos serviços contratados e executados na obra; 
 Acompanhamento dos resultados de qualidade dos materiais; 
 Elaboração e gerenciamento de procedimentos de qualidade; 
 Realização de auditorias; 
 Controle dos padrões produtivos tais como inspeção da especificação, fluxo e 
movimentação de materiais; 
 Preenchimento de planilhas e documentação técnica; 
 Gerar e atualizar os indicadores de qualidade; Monitoramento do andamento das 
ações corretivas e preventivas.
MRV Engenharia e Participações SA 
Estagiário em Engenharia Civil 
Março/2014 – Outubro/2014 
Sistema Construtivo: Alvenaria Estrutural; 
 Controle de entrada e saída de NF, materiais e organização do canteiro; 
 Conferência de elevações de alvenaria, pontos de graute, esquadro de peças, 
inspeção e verificação de serviços; 
 Fechamento de medição de mão de obra própria e empreiteiros; 
 Acompanhamento de produção de lajes pré-moldadas em obra, e içamentos das 
mesmas nas torres.',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1AJlzRYpE4MlaA7gSITlNL_-MARL4obZj','https://drive.google.com/open?id=1GfuFqLkkIlcG7_bcRuRlXGFOA3ua0N91','Instagram','Não','R$9.000,00','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-07T14:10:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Jossiele Gasque De Freitas','jogasquedefreitas@gmail.com',NULL,'53992000990','1990-08-10',35,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=177aAYuR2PGEBXJTqVQqNCiBE61ff52ec',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Magazine Luiza 
Período: 02/2024 até 05/2024 
Função: Analista de crédito, empréstimos, antecipação de FGTS, parcelamentos, etc. 
Possuo certificação pela ASSBAN de Analista de crédito. 
O desligamento foi devido a redução de quadro de funcionários. 

Renner
Período : 04/2021 até 02/2022 
Função : Caixa e oferta de serviços financeiros, como oferta de cartão, empréstimo e seguros. 

Franco Giorgi
Período: 08/2018 até 09/2020
Função: vendas, atendimento no caixa e oferta do crediário da loja.','Atualmente curso técnico em administração EAD pelo IFSUL. Cursava Agronomia mas tranquei o curso e estou tentando uma nova bolsa. 

Possuo o curso de analista de crédito da ASSBAN.','Analista de crédito - ASSBAN','Administrativa, Comercial, Financeiro, Novos Negócios','https://drive.google.com/open?id=1nyHu6n2Y7RMjbM1JrVv5nKupRNwlorqN',NULL,'Instagram','Não','1.600, Porém iria me dedicar para crescer profissionalmente junto da empresa e ganhar mais.','Sim',NULL,'Aceito qualquer oportunidade que a empresa tenha disponível. Me ponho a disposição!','Me chamo Jossiele, sou natural de Pinheiro Machado, moro sozinha em Bagé a seis anos. 
Aqui comecei minha trajetória profissional, sempre na área do comércio, gosto muito desse contato com público, de vender, de ser reconhecida pelo bom atendimento aos meus clientes. Já trabalhei também em outras áreas como administrativa, recepção e agente de monitoramento de segurança.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-07T20:54:00.000Z'::timestamptz),
  ('Rafael Sabatini Amaral','eng.sabatiniamaral@hotmail.com',NULL,'55991689619','1988-04-18',37,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1ii4n6WAU8eVlkch3WK6dyARBl4Z4IFhN','Engenharia Civil','Pós-graduação Completa','Universidade da Região da Campanha','2018-08-11','Sou formado','1)Prefeitura de Sant’Ana do Livramento – Secretária Municipal do Planejamento e Meio Ambiente. 2)Estagiário no setor de Plano Diretor/Topografia. 3)06/10/2011 – 06/10/2012. 4)Auxiliar nas atividades de medições de áreas e perímetros, localização e alinhamento de lotes e vistorias em obras.

1)Escritório de Arquitetura Incerti e Incerti Ltda. 2)Estagiário de Arquitetura. 3) 07/10/2012 – 31/08/2013. 15/06/2015 – 01/07/2018. 4) Auxiliar na elaboração de projetos, realizar orçamentos e compras de materiais, acompanhamento no canteiro de obras, desenhar e apresentar projetos em Autocad e Google SketchUp.

1)Magna Engenharia LTDA. (Consórcio Magna/Enecon UL - Sant’Ana do Livramento/RS). 2)Assistente administrativo. 3)01/09/2013 – 02/06/2015. 4)Fiscalizar obras nas rodovias pertencentes ao DNIT – UL Sant’Ana do Livramento, auxiliar engenheiros na revisão de contratos e elaboração de relatórios, realizar projetos em Autocad e auxiliar equipe de topografia.

1)Escritório de Engenharia Civil Rafael Sabatini Amaral. 2)Engenheiro Civil. 3)07/08/2018 – 30/11/2022. 4)Elaboração de projetos de engenharia, gestão, planejamento, fiscalização e execução de projetos de construção.

1)Sabatini & Schmatz Engenharia e Topografia Ltda. 2)Engenheiro Civil. 3)01/12/2022 – Atualmente.. 4)Elaboração de projetos de engenharia, gestão, planejamento, fiscalização e execução de projetos de construção.

1)Prefeitura de Sant’Ana do Livramento – Secretária Municipal de Obras. 2)Engenheiro Civil. 3)02/10/2023 – Atualmente. 4)Elaboração de projetos de engenharia, gestão de contratos e fiscalização de obras públicas.','Pós-graduação em Engenharia Ambiental e Saneamento Básico',NULL,'Licenciamentos, Engenharia','https://drive.google.com/open?id=1c-x_QPvb-N-qoW1Z4YBuSjeg-bGD6HM_',NULL,'Instagram','Não.','R$7.500,00','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-09T20:22:00.000Z'::timestamptz),
  ('Mateus Libarino Silva','mateuslibarinos@gmail.com',NULL,'77998140975','1995-05-16',30,'União estável','0','Sim','Osório/RS','https://drive.google.com/uc?export=view&id=10_HyEyp4PvoaBNKGhoTQbioc5Ix_PTI0','Engenharia Ambiental','Pós-graduação Completa','Instituto Federal de Educação da Bahia','2019-10-31','Sou formado','PAAS – POÇOS ARTESIANOS E ÁGUAS SUBTERRÂNEAS – Osório/RS - Atual  
Cargo: Engenheiro Ambiental 
Responsabilidades: Elaborar relatórios em processos de outorga superficial e subterrânea;  Elaborar mapas e plantas para relatórios diversos; Elaborar relatórios de monitoramento ambiental de poços artesianos; Gerir equipes de perfuração de poços artesianos; Elaborar projetos de irrigação automática para jardins residenciais; Acompanhar equipes na execução de projetos de irrigação automática para jardins; 
.  
TECNIWER SERVICE MANUTENÇÃO ELÉTRICA - Rio Grande do Sul – 04/2021 a 
12/2021 
Cargo: Analista Ambiental  
Responsabilidades:  Acompanhamento e execução de programas ambientais de projetos e serviços de instalações civis e montagens eletromecânicas de baixa, média e alta tensão em subestações de energia, para atendimento da legislação ambiental e o sistema de gestão integrado (ISO 14001, ISO 9001 e 45001); 

INSTITUTO DO MEIO AMBIENTE E RECURSOS HÍDRICOS (INEMA) – Autarquia - 
Bahia - 04/2019 a 10/2019 
Cargo: Estagiário de Engenharia Ambiental 
Responsabilidades: Acompanhamento em escritório e campo da aplicação de penalidades previstas em lei, constatadas infrações ambientais, e do tramite legal para concessão de licenças ambientais; 

EMPRESA JÚNIOR DE ENGENHARIA AMBIENTAL – Empresa Júnior · Vitória da 
Conquista/Ba · 10/2016 a 05/2019 
Cargo: Vice-Diretor de Projetos 
Responsabilidades: Responsável pela admissibilidade e suporte de projetos internos; Responsável pelo Projeto Campanha, via de qualificação de novos membros da empresa; Participar, quando convocado por edital, com contribuição técnica em projetos;
 
COLETA DE MATERIAIS E LIMPEZA URBANA - Empresa de coleta e tratamento 
térmico de resíduos do serviço de saúde - 08/2016 a 09/2017 
Cargo: Estagiário de Engenharia Ambiental 
Responsabilidades: Aplicar e aperfeiçoar o programa de monitoramento ambiental da empresa; Elaborar e analisar o relatório de monitoramento ambiental em conjunto com o supervisor; Estudar e propor medidas de uso racional dos recursos naturais; Orientar os colaboradores quanto ao correto uso dos equipamentos de proteção individual; 

PREFEITURA MUNICIPAL DE ANAGÉ – Sec. de Assistência Social - 05/2013 a 05/2014 
Cargo: Auxiliar Administrativo 
Responsabilidades: Atendimento ao público; Elaboração de ofícios e assemelhados;','Pós em Engenharia de Segurança do Trabalho',NULL,'Licenciamentos','https://drive.google.com/open?id=1DszV8xyM90-zYt0vsYFkPdN5QBzmW_PU',NULL,'Agência de Empregos','Não','R$8.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-11T23:21:00.000Z'::timestamptz),
  ('Fabio Rodrigo Gonçalves Tria','eng.fabiotria@gmail.com',NULL,'055984526852','1982-07-16',43,'Casado(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1Cr7elI7wvG1yUrEX0xvZU5hehToB2uCu','Engenharia Civil','Pós-graduação Completa','Urcamp - universidade da região da campanha','2021-03-06','Sou formado','Trabalho como engenheiro autônomo','Cursando Arquitetura e Urbanismo para engenheiros civis',NULL,'Engenharia','https://drive.google.com/open?id=1dbSlymwn9kny2dc1f9bcTrKvYLVYk3Pp',NULL,'Facebook','Não','A negociar com a empresa','Sim',NULL,'Engenheiro Civil','Pós-graduado em estruturas e fundações','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-13T02:05:00.000Z'::timestamptz),
  ('Luiz Henrique C Trindade','trindadelhenrique@gmail.com',NULL,'55999141947','2001-07-24',24,'Solteiro(a)','0','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1DZJLSNOJuBW9mx8LXeDwMJrJcGFhhVlP',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Ritt Empreendimentos Imobiliários, em 21/05/2021 comecei minha vida profissional como servente de pedreiro. Ali desenvolvi atividades relacionadas ao cargo como auxiliar pedreiros, carpinteiros e até mesmo pintores. Depois de um tempo passei ao cargo de almoxarife, acredito que pela minha forma de trabalho e organização, realizei entrega de todo tipo de material empregado em uma obra, também realizei conferência de notas e matérias adquiridos para fins de cumprimento de serviço, logo após passei ao cargo de assistente de compras o mais recente, onde pude observar de perto como funciona um escritório, tive contato com o sistema utilizado no setor bem como o contato direto com clientes e fornecedores, nessa função também pude acompanhar de perto como se dá o desenvolvimento e andamento de um escritório bem como a rotina nele empregado.',NULL,NULL,'Administrativa, Engenharia','https://drive.google.com/open?id=151DmFDHGILW1u1g_lfLGhOBfhzJYFvVz',NULL,'Instagram','Não','No momento busco oportunidade, salario seria uma recompensa pelo serviço prestado a empresa','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho muita facilidade em trabalhar em equipe ou grupo, destaco aqui minha lealdade naquilo em que acredito, seja empresas ou pessoas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-16T23:14:00.000Z'::timestamptz),
  ('Gabriel Killes Ramos','gabrielkilles@gmail.com',NULL,'51999909468','1982-07-18',43,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ChT5zcoQLzShhn-tCO_oC3WmUcydB1HY',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Atualmente trabalho na gestão comercial da Parque Elite, onde venho trabalhando juntamente a imobiliárias locais (Osório) o empreendimento "Boulevard Osório". 
 Tenho aproximadamente 20 anos de experiência, na área comercial e de gestão. 

• Destaco a capacidade de negociação, fortemente desenvolvida ao longo do exercício de minhas funções, B2B e no varejo.
• Expertise no conhecimento do processo de expansão em varejo.
• Ótimo relacionamento de equipes multidisciplinar.
• Fortes habilidades em liderança de equipes em ambientes competitivos e de mudança.
• Ampla atuação na execução do processo e elaboração das estratégias de uma equipe de vendas interna e parceiros, garantindo excelência na gestão e sucesso no alcance dos objetivos.
• Co-Fouder: Oficina da Multa e SimPay.','Transações Imobiliárias',NULL,'Comercial',NULL,NULL,'Agência de Empregos','não','fixo +comissionamento','Não','Maurilio Oliveira - 51.99987-1997 Ex Sócio, SimPay','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-16T18:33:00.000Z'::timestamptz),
  ('Isabelle Almeida Pereia','isabellealmeida@outlook.com',NULL,'55999198040','1989-12-27',36,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=15okFEm50vwPPBU0SBjW4svaYEB7GJzVR','Engenharia Civil','Pós-graduação Completa','URCAMP','2019-12-18','Sou formado','Prefeitura Municipal de Sant''Ana do Livramento - Cadastro Imobiliário (6 anos) e Engenheira Civil (1 ano)','Sou Engenheira Civil formada a 5 anos, trabalho na área desde antes de me formar, tenho diversos cursos com temas variados direcionados a Engenharia Civil e duas pós graduações concluídas.','Graduação e pósgraduação','Financeiro, Licenciamentos, Engenharia','https://drive.google.com/open?id=1DL4tZRNoIJyHmeIFyrony54L-jhtHsfx',NULL,'Instagram','não','5000','Sim','Prefeitura Municipal de Sant''Ana do Livramento','Engenheiro Civil','Sou formada em Curso Normal (magistério) e Técnico em Informática','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-17T13:44:00.000Z'::timestamptz),
  ('Rafaela Olivar Torres','rafa.olivar@hotmail.com',NULL,'55996581201','1996-02-03',30,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1KZ4MuroMV0lrBY6WHc4s7q9nDnCy8tZm','Administração de empresas','Ensino Superior Incompleto','Estácio','2025-06-16','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','10ª CRS
Estagiária 
Fevereiro 2022 / janeiro 2024
Registro e análise de dados públicos de saude, incluindo os sistemas de dados administrativos do Sistema Único de Saúde (SUS);
Processamento de dados utilizando programas específicos para análise e organização dos registros de saúde;
Colaboração na geração de relatórios e análises para repasse de verbas para os municípios abrangidos pela 10ª CRS;
Auxílio na gestão financeira dos gastos do SUS, garantindo o repasse adequado de recursos para hospitais e clínicas que prestam serviços ao SUS.',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1NkC_Sg64xpqId1ObdgbmqVDlW6p7ME8M',NULL,'Instagram','Não.','De acordo com a categoria.','Sim','Heili Temp
(55) 99974-8912
Delegada de saúde da 10ª CRS.','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-19T19:54:00.000Z'::timestamptz),
  ('Marilu Rosa dos Santos Souza','marilu.rss@hotmail.com',NULL,'51999560242','1991-10-27',34,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1EmqIRwHtQoPFRZBoHlv4KG089HTXmpWU','Eng Ambiental','Pós-graduação Completa','Nova Santa Rita','2024-07-01','Sou formado','1) Fibraplac Painéis de Madeira Ltda 
2) Supervisora Sócio Ambiental
3) Abril de 2012 a fevereiro de 2024
4) Responsável pelo licenciamento e atendimento de condicionamentos. 
Planejamento custos, Capex e apoio na área de projetos.
Responsável técnica Ambiental junto aos órgãos legais: Ibama, Fepam, Polícia Federal, DRH, Sema, Prefeitura e vigilância Sanitária… pelos processos de compostagem, ETA e ETE. Supervisão e gestão dos setores de Meio Ambiente e conservação Patrimonial.','Eng. De Segurança do Trabalho - FSG
Mestrado em Sistemas e Processos Agroindústrias - Furg',NULL,'Licenciamentos, Engenharia',NULL,NULL,'Agência de Empregos','Não','A combinar','Sim','Márcio Zamora - Diretor da empresa Fibraplac 
+55 (51) 99512-3049','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-21T00:22:00.000Z'::timestamptz),
  ('Jefferson Aurélio de melo','jeffersonaurelio.eng@gmail.com',NULL,'84998726258','1988-12-26',37,'Casado(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1QbJw43XO8TDTQQfzkrarOeIawOmUsQEV','Engenharia Civil','Pós-graduação Completa','Universidade Potiguar','2018-12-10','Sou formado','AeC Construções e Serviços LTDA, Engenheiro civil, 10/06/2020 a 10/04/2024, Atuação em canteiros de obras, supervisionando a etapa de fundação de prédios residenciais e comerciais e galpões industriais, com foco na qualidade dos primeiros passos da construção.
Participação no planejamento de obras e na elaboração de projetos de construção civil, oferecendo cálculos e projeções de alta qualidade, trabalhando para obter os documentos e pareceres técnicos necessários para dar início às atividades.
Controle da mão de obra nas construções, assegurando a aplicação das medidas de segurança do trabalho e liderando a equipe, de forma a estimular a entrega das etapas no prazo devido.
Elaboração e entrega de documentos de prestação de contas das obras, incluindo relatórios fotográficos, feedback diário das atividades e planejamento dos próximos passos, além do preenchimento de registros internos.
Acompanhamento de trabalhos terceirizados, realizando contato direto com clientes, fornecedores e equipes prestadoras de serviço a fim de solicitar a compra de materiais e administrar o cronograma.
Seleção de profissionais para mão de obra, realizando entrevistas e análises de perfil a fim de definir as equipes, avaliando os serviços executados ao longo do tempo e elaborando relatórios de produtividade.
Coordenação das tarefas administrativas e operacionais do canteiro de obras, garantindo o acompanhamento diário das atividades e o preenchimento de planilhas com informações atualizadas.

Melo e Andrade Engenharia, Engenheiro Civil, 10/01/2018 a 01/06/2020, Gerenciamento de projetos, contratação/demissão de mão de obra e supervisão de equipes.
Atuação em canteiros de obras, supervisionando a etapa de fundação de prédios residenciais e comerciais e galpões industriais, com foco na qualidade dos primeiros passos da construção.
Controle da mão de obra nas construções, assegurando a aplicação das medidas de segurança do trabalho e liderando a equipe, de forma a estimular a entrega das etapas no prazo devido.
Levantamento do material a ser utilizado na obra, incluindo a realização de medições de metragem linear e cúbica, necessárias para estipular quantidades, buscando evitar ao máximo o desperdício de recursos.
Acompanhamento de todas as etapas da obra com proximidade, identificando possíveis problemas e oferecendo suporte ao engenheiro principal.
Seleção de profissionais para mão de obra, realizando entrevistas e análises de perfil a fim de definir as equipes, avaliando os serviços executados ao longo do tempo e elaborando relatórios de produtividade.

M&K comercio e construções, Técnico em Edificações, 01/01/2017 a 10/03/2018, Construção do presídio estadual de Ceará Mirim e Recuperação das praças do centro histórico (bairro da cidade) de Natal.
Registrar através de planilhas de medições os quantitativos dos serviços realizados, acompanhamento e fiscalização dos serviços executados, levantamento quantitativo de materiais, acompanhamento da compra e controle do estoque e coordenação de equipes.

Lotil Engenharia Ltda, Auxiliar de engenharia, 01/01/2016 a 01/01/2017, Construção de edifício sede do TRE, Natal/RN, R.egistrar através de planilhas de medições os quantitativos dos serviços realizados, elaboração de orçamento, acompanhamento e fiscalização dos serviços executados, levantamento quantitativo dos acabamentos, acompanhamento da compra e controle do estoque, elaboração de relatório diário de obra – RDO, elaboração de memoriais de cálculo semanais de produção.

Vértice construções Civis, Técnico em edificações, 10/11/2014 a 10/11/2015, Registrar através de planilhas de medições os quantitativos dos serviços realizados, elaboração de orçamento, acompanhamento e fiscalização dos serviços executados, levantamento quantitativo de materiais, acompanhamento da compra e controle do estoque, acompanhamento de processos de financiamento e licenciamento das obras.

Massai Construções e Incorporações Ltda, Técnico em edificações, 10/03/2013 a 10/03/2014, Elaboração de relatório diário de obra – RDO, elaboração de memoriais de cálculo semanais de produção, medição dos serviços executados, controle de produção diária dos funcionários, fiscalização dos serviços executados em campo, controle de qualidade nas concretagens, moldagem, envio e rompimento dos corpos de prova, preenchimento de ficha de verificação de serviço (FVS) de serviços Fiscalizados e alimentação no sistema SIENGI do sistema de qualidade ISSO 9001

Capital Negócios Imobiliários, técnico em edificações, 10/10/2011 a 10/03/2013, Construção de um condomínio em blocos estruturais.
Elaboração de relatório diário de obra – RDO, medições dos serviços executados, controle de produção diária dos funcionários e fiscalização dos serviços executados em campo.','Sou pós graduado em gerenciamento de obras com mais de 13 anos de experiência na construção civil.',NULL,'Engenharia','https://drive.google.com/open?id=15fnv5VuQWb0to4_82uBSBA9iTaF7himB',NULL,'Instagram','Não','15.000,00','Sim','Eng. Joaquim Junior, Cordenador da empresa AeC Construções, (84) 99629-9837','Engenheiro Civil','Possuo certificação nos idiomas inglês e alemão, Software Eberick, Autocad, pacote office e MS project.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-22T23:52:00.000Z'::timestamptz),
  ('Taylane Oliveira de Araújo','taylaneoliveira@hotmail.com',NULL,'51996529056','1989-05-07',36,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1n71LLUR2-E0re63TzFdvmQkCAiikC3uW','Gestão de Recursos Humanos','Ensino Superior Completo','Unisinos','2021-06-15','Sou formado','Facta, consultora de vendas, 18/09/23 a 15/05/2024, vendas de empréstimos e atendimento ao público',NULL,NULL,'Administrativa, Marketing','https://drive.google.com/open?id=1UFU4qp5KIfkrmbP4A7Hv80TQeIKpSrj4','https://drive.google.com/open?id=1ZCbDFvEYsTQwwDx8M76yFIxWERMJTxAg','Instagram','Não','3000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-23T12:44:00.000Z'::timestamptz),
  ('Rosana Magni Bernardo','rosana.magni@hotmail.com',NULL,'51996123619','1993-01-25',33,'Solteiro(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Q017dRGtJAPAWVzrn6k2biE9bvYq62lK','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2026-06-30','Não, no momento pausei/parei por um período.','CTQ COMÉRCIO DE IMPORTAÇÃO E EXPORTAÇÃO / CALLTORQUE
04/2022 a 01/2024
Assistente administrativo
Atuação na área administrativa e financeira
Emissão e lançamento de nota fiscal eletrônica, nota de serviços, e fatura de locação através do sistema Sobber.
Conferência e conciliação dos extratos bancários diariamente, bem como o fluxo de caixa.
Lançamento e execução do contas a pagar, contas a receber, e cobrança de inadimplentes.
Relatórios financeiros diários para a consultoria.
Conferência e envio de documentos mensais para contabilidade.
Solicitação de transportadora para coleta e acompanhamento da entrega.
Negociação com cliente.
Auxílio no setor comercial para envio de cotação e negociação.
Atendimento a clientes e representantes.
 
RR SHOES COMÉRCIO E FABRICAÇÃO DE CALÇADOS/ VIA UNO
03/2018 a 06/2021
Analista Fiscal
Atuação na área Fiscal, Contábil e Controladoria
Responsável pela emissão e lançamento de nota fiscal eletrônica de produtos e serviços através do sistema Gmax, bem como a realização de conferência e apuração dos impostos sobre as notas.
Conferência diária dos lançamentos fiscais por operação, parametrização de CFOP e tributação.
Apuração e emissão de guias de ICMS, ISSQN, PIS, e COFINS.
Atuação no controle de impostos retidos na fonte e despesas fixas.
Elaboração e controle de processos de SPED fiscal e SPED contribuições.
Realização de conciliação entre registro de entradas e razão de contas.
Conferência de relatórios de viagens, identificando as despesas conforme política de viagem da empresa.
Participação do processo de recuperação judicial, mediante organização de documentos fiscais e auxílio à contabilidade na organização do plano de contas.
Assistência no desenvolvimento do plano orçamentário, sendo responsável pelo setor administrativo, fazendo análise e negociação de metas do plano, e enviando semanalmente o razão de contas para os responsáveis de cada setor.
Forte atuação na interface entre os setores PCP e compras, auxiliando no cadastro de materiais e emitindo relatórios de materiais do estoque.
Suporte ao setor de custos no mapeamento da produção do calçado no sistema, auditando etapas e materiais usados nos processos.
Assistência ao setor financeiro sanando divergências entre relatórios contábeis e financeiros.',NULL,NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1wWBE0h26-bwuKei9B-99WYXUL3-NsBMc',NULL,'Instagram','Não','Meu ultimo salario era R$ 3.000,00','Não','Tania - 51 98177-7039 - Consultoria da empresa Calltorque','Quero inscrever-me no banco de talentos da Young!','Tenho ampla experiência no setor administrativo, sou uma profissional disposta e pró-ativa. Fico à disposição para uma entrevista e novas oportunidades.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-23T14:18:00.000Z'::timestamptz),
  ('Fabiana Pederiva','arquitetafabianap@gmail.com',NULL,'55992122238','1990-06-17',35,'Casado(a)','1','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1iq3RCj83deNwGgvgpirNGkXGKyh2OEoh','Arquitetura','Pós-graduação Completa','Universalidade Franciscana','2017-01-06','Sou formado','HISTÓRICO PROFISSIONAL
Maio 2023 - Atual
Jaqueline Carvalho me - Arquiteta e urbanista, Brasília , DF
Janeiro 2023 - Atual
FP Arquitetura - Arquiteta e urbanista, São Borja , RS
• Responsável técnica pelos projetos arquitetônicos.
Gerente de projetos, responsável pelo treinamento de novos profissionais
empregados na empresa. Organização e planejamento das ações relacionadas a
projeto e execução dos serviços, delegando funções.
•
• Análise de projetos.
• Cargo exercido de modo remoto, com reuniões diárias.


Janeiro 2023 - Atual
FP Arquitetura - Arquiteta e urbanista, São Borja , RS

• Sócia Proprietária
Atendimento ao cliente, apresentando sugestões e esclarecendo dúvidas sobre os
produtos e serviços oferecidos.
•
Recebimento de pagamentos de clientes, garantindo o processamento correto dos
valores.
•
Resolução de problemas dos clientes, mantendo a gentileza e a calma em
momentos de estresse.
•
Prestação de um atendimento humanizado ao cliente, garantindo a satisfação com
o serviço.
•
Planejamento e execução de atividades conforme os prazos estabelecidos,
contribuindo para o bom andamento das operações.
•
Elaboração de laudos de aviação de imóveis, laudos estruturais, laudos de
regularização de imóveis. Projeto de regularização de imóveis, desmembramento remembramento.
• Projetos técnicos

• Projetos complementares

• Estudo de viabilidade financeira
• Consultoria online e presencial

Janeiro 2019 - Fevereiro 2023
Murano arquitetura e pre-moldados - Arquiteta e urbanista, Santa Maria , RS

Participação em dinâmicas de grupo e demais iniciativas da empresa para os
funcionários, buscando fortalecer o espírito de equipe.
•
Gestão da equipe de funcionários, atuando no recrutamento, treinamento e
liderança diária.
•
Auxílio na gestão do estoque, solicitando a compra de produtos conforme as
demandas da unidade.
•
Análise de documentos e notas fiscais, providenciando a correção em caso de
discrepâncias.
•
Recebimento de pagamentos de clientes, garantindo o processamento correto dos
valores.
•
Negociação com clientes a fim de determinar os melhores preços, condições de
pagamento e prazos de entrega dos produtos.
•
Prestação de serviço remoto, valorizando a comunicação e a transparência a fim
de entregar um serviço de excelência.
•
Maio 2015 - Dezembro 2018
Estúdio 763 - Arquiteta e Urbanista, Santa Maria, Rs
• Sócia proprietária
Atendimento ao cliente, apresentando sugestões e esclarecendo dúvidas sobre os
produtos e serviços oferecidos.
•
Apoio à equipe na realização de tarefas diversas conforme a demanda, garantindo
a agilidade e eficiência.
•
Gestão da equipe de funcionários, atuando no recrutamento, treinamento e
liderança diária.
•
• Desenvolvimento de planejamento estratégico.
• Desenvolvimento de projetos arquitetos
• Responsável por laudos e avaliações de estruturas de engenharia.','Arquitetura hospitalar e clínica médica. Pós em auditoria avaliação e perícia em engenharia. Experiência em obra, projetos arquitetônicos, loteamentos e paisagismo',NULL,'Arquitetura, Engenharia',NULL,NULL,'Instagram','Fernando','4nil','Não','Rafael, 55 992340856','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-23T22:24:00.000Z'::timestamptz),
  ('Patricia Borba','patiiiborba@gmail.com',NULL,'51999333753','1991-09-05',34,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1zLmaLZbCoEap4LgJrnkrZQcpbLjTUwsC',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Rabelo Comercio de Calçados Bolsas e acessórios Ltda
Auxiliar Financeiro 
· Realização de cobranças e pagamentos de clientes, parceiros e fornecedores, verificando casos de
inadimplência e atuando de forma a receber os valores sem desgastar as relações.
· Conciliação de fechamento mensal dos bancos.
· Antecipações de recebíveis com FIDCS.
· Análise de pedidos de clientes e liberação dos mesmos.
· Atualização de documentos e planilhas financeiras, realizando alterações em dados quando
necessário, mantendo uma comunicação eficiente entre os departamentos da empresa para
colaborar com as rotinas administrativas.
· Comunicação on-line com clientes para esclarecimento de dúvidas e reclamações, aumentando a
satisfação com o serviço.


DaColônia Alimentos Naturais 
Auxiliar fiscal 
· Organização do trabalho diário, buscando otimizar o tempo e evitar imprevistos.
· Controle de contas a pagar, lançamentos financeiros, lançamento de notas fiscais de entrada, com
ordem de compra, devolução, frete.
· Execução das tarefas designadas pela equipe, com atenção aos detalhes para evitar erros.

Clínica Luz - Mauro Luz 
• Cadastro de pacientes no sistema, inserindo todas as informações necessárias para a
prestação de um bom atendimento.
• Recebimento de valores de consultas e exames particulares, realizando os registros
financeiros para controles administrativos.
• Atendimento presencial e telefônico de pacientes antes das consultas, garantindo a
simpatia e cordialidade de forma a manter a boa imagem da clínica.
• Orientação a pacientes para a realização de exames, descrevendo os cuidados necessários
para garantir a precisão e integridade dos resultados.',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não','Com base na minha pesquisa sobre o mercado e considerando minha experiência e habilidades, acredito que uma faixa salarial entre R$ 2.400,00 e R$ 2.700,00 é adequada para esta posição. No entanto, estou aberto a discutir isso e entender mais sobre os benefícios adicionais que a empresa oferece.','Não',NULL,'Auxiliar financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-24T03:31:00.000Z'::timestamptz),
  ('Lavínia Luz Ramos','lavinia-luz-ramos@hotmail.com',NULL,'51980350123','2000-03-14',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1oUJQ7viLx5YRqsXXYe9VvTHYgetEtB9o',NULL,'Ensino Médio Completo','Unicnec - Osório','2024-08-23','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Já fiz diversos estágios em órgãos públicos e também já trabalhei no cartório de registro. Como atendente.','Curso direito, estou no último semestre. Já fiz cursos de informática (world/excel)',NULL,'Administrativa, Financeiro, Licenciamentos',NULL,NULL,'Instagram','Não','2.500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-24T20:18:00.000Z'::timestamptz),
  ('Augusto Messagi','augusto.messagi@gmail.com',NULL,'51997618223','1993-01-18',33,'Casado(a)','1','Sim','Osório/RS','https://drive.google.com/uc?export=view&id=17XkptfrJ0u6-7v8B3Jik_tbQPW1UUdbf','Engenharia Civil','Ensino Superior Completo','UNISINOS','2019-08-10','Sou formado','Prefeitura Municipal de Osório | 2013 - 2018 | Dirigente de Equipe de Gestão Territorial | Gestão do uso e ocupação do solo (Plano Diretor).',NULL,NULL,'Arquitetura, Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=13QhK8duMnKwM6hp8NsiWoIquY48w5eUO',NULL,'Instagram','Não.','12.000','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-25T23:46:00.000Z'::timestamptz),
  ('Rodrigo Pacheco Pereira Neto','rodriguis89@hotmail.com',NULL,'51996757387','1990-04-05',35,'Solteiro(a)','0','Sim','Osório/RS','https://drive.google.com/uc?export=view&id=1xp54kneyZWf0BaPOL6gAwlXgcflgYHK8','Geologia','Pós-graduação Completa','FACULDADE IGUAÇU','2023-05-12','Sou formado','a)	 ( 01/09/2021) à ( 17/05/2024) – Responsável Técnico (Sênior) pela Elaboração e Execução de Licenciamento de Poços Artesianos (Outorgas de Uso de Águas Subterrâneas e Artificial), junto ao Departamento de Recursos Hídricos / DRH, Relatórios de Monitoramentos e Laudos Geológicos. Empresa PAAS – Poços Artesianos e Águas Subterrânea. Proprietário Chert Bobsin. Rua Sete de Setembro, nº 385, Sala 403 – Centro / Osório/RS. Telefone: 9.9524-4244.

Responsabilidades:

           • Emitir Solicitação de Processos Via SIOUT/SEMA (Outorgas);
• Realizar Vistoria e Assessoria junto com a Empresa Contratante;
• Emitir cadastros, Licenças Prévia e Outorgas;
• Elaboração de Relatórios de Monitoramento de Poços e Piezômetros;
• Elaboração de Projetos de Tamponamento de Poços;
• Medições de Piezômetros Mensalmente;
• Coleta de Amostra de Afluentes e Efluentes;
• Elaboração e Execução de Laudos Geológicos;
• Elaboração de Laudo de Descaracterização Ambiental;
•Responsável por Liderar a Equipe de Campo na Execução de Tamponamentos e Adequação dos Poços;
•Responsável pela Contratação de Execução de Maquinas e Compra de Material para as Adequações e Tamponamentos de Poços;  
• Realizar viagens pelo RS e SC para expeção e licenciamento dos poços;
•Elaboração e Emissão de Anotação de Responsabilidade Técnica – ART.

Principais Resultados:

⸰ Satisfação com os trabalhos elaborados e executados. Destaque para alguns trabalhos realizados junto aos Batalhões e Regimentos de Engenharia de Combate. Bem como, empresas privadas, tais como CPFL – Linha de Transmissão de Energia Elétrica, CORSAN – Companhia Riograndense de Saneamento, Osório e Viamão e Grupo CCR Via Sul – Estradas e Pedágios. Responsável por fazer parte da administração e liderar equipe de campo. Bom relacionamento interpessoal e cuidado e responsabilidade com o material de trabalho.

⸰ Estudo técnico para elaboração e execução de ensaios de sondagem SPT ou Percussão. 


b)	 ( 10/01/2016) à ( 10/02/2021 ) - Consultor Técnico (Sênior) na empresa SOLO – Soluções Empresariais e Ambientais – Execuções e Elaborações de Laudos, Planos e Projetos Ambientais e Florestais, junto aos Órgãos Ambientais Competentes. Proprietária Leda Famer. Rua Manoel Marques da Rosa, nº 176, Osório/RS. Telefone: 9.9807-5161.


Responsabilidades:

           • Emitir Solicitação de Processos Administrativos (licenças ambientais);
• Realizar Assessoria junto com a Empresa Contratante;
• Abrir Notas Fiscais e Enviar para as Empresas Contratantes;
• Emitir cadastros, alterações de endereços de empreendimento ou atividade;
• Levantamento de Espécies de Flora. E auxilio no Levantamento de Espécies Faunísticas;
• Monitoramento de Plantio de Mudas Exigidas Pelo Órgão Competente.
• Monitoramento de Supressão e Transplante de Árvores Exigidas Pelo Órgão Competente.
• Elaboração de Protocolo Simplificado Junto ao Sisbom/Bombeiros;
• Realizar juntadas de documentação em processos administrativos;
•Auxiliar Projeto de Recuperação de Áreas Degradadas – PRADS;
•Responsável técnico pelo monitoramento de E.T.E - Estação de Tratamento de Esgoto da Associação Beneficente Hospital de Osório /RS;
•Elaboração e Emissão de Anotação de Responsabilidade Técnica – ART;
•Acompanhamento Técnico em Conjunto com os Técnicos Multidisciplinares Contratados Terceirizados. Biologia, Engenharia, Topografia, entre outros.

Principal Resultado:

⸰ Aumento na contratação de prestação de serviços realizados por terceiros e proteção do meio ambiente. Responsável por liderar a equipe de campo.


c)	( 05/03/2018) à ( Até o momento ) – Sócio – Proprietário (Sênior) na empresa, Neto & Nunes – Consultoria e Assessoria Ambiental e Florestal – Execuções e Elaborações de Laudos, Planos e Projetos Ambientais e Florestais, junto aos Órgãos Ambientais Competentes. (Empresa virtual).


Responsabilidades:

          • Emitir Solicitação de Processos Administrativos (licenças ambientais);
• Realizar Assessoria junto com a Empresa Contratante;
• Abrir Notas Fiscais e Enviar para as Empresas Contratantes;
• Emitir cadastros, alterações de endereços de empreendimento ou atividade;
• Levantamento de Espécies de Flora. E auxilio no Levantamento de Espécies Faunísticas;
• Monitoramento de Plantio de Mudas Exigidas Pelo Órgão Competente.
• Monitoramento de Supressão e Transplante de Árvores Exigidas Pelo Órgão Competente.
• Elaboração de Protocolo Simplificado Junto ao Sisbom/Bombeiros;
• Realizar juntadas de documentação em processos administrativos;
•Elaboração e Emissão de Anotação de Responsabilidade Técnica – ART;
•Acompanhamento Técnico em Conjunto com os Técnicos Multidisciplinares Contratados Terceirizados. Biologia, Engenharia, Topografia, entre outros.

Principal Resultado:

⸰ Aumento na contratação de prestação de serviços realizados por terceiros e proteção ao meio ambiente. Bom relacionamento interpessoal.



d)	( 01/03/2014) à ( 24/12/2015 ) – Estagiário na Secretaria Municipal de Meio Ambiente e Gestão Territorial – Auxiliar no atendimento ao público, ligações telefônicas, responsável pelas juntadas de documentação em processos administrativos. Prefeitura Municipal de Osório/RS. Telefone: 3663 – 1947. Responsável: Edilson Nunes Pires. Sec. Substituto.

Responsabilidades:

           • Emitir Boletos para Abertura de Processos Administrativos;
• Acompanhamento com os técnicos nas saídas de campo;
• Abrir Notas Fiscais e Enviar para as Empresas Contratantes;
• Controlar saída e entrada de Mudas e Equipamentos para execução dos Projetos;
• Emitir cadastros, alterações de endereços de empreendimento ou atividade;
• Realizar juntadas de documentação em processos administrativos.

Principal Resultado:

⸰ Conhecimento técnico e respeito, retorno ao atendimento ao público. Bom relacionamento interpessoal.','•	Escola Estadual de Ensino Médio Ildefonso Simões Lopes.
•	Conclusão de Curso TÉCNICO EM MEIO AMBIENTE (Rural). Osório\\RS.
•	Turno: noite. 2 Anos.                  Portaria nº 00075 de março de 20000-D.

•	Centro Universitário Leonardo da Vinci. Capão da Canoa/Rs.
•	Conclusão de Curso SUPERIOR DE TECNÓLOGO EM GESTÃO AMBIENTAL. (UNIASSELVI). 2.500 Horas/Aula.
•	Turno: noite / EAD.                   Portaria Ministerial nº 236 de 02/04/2018.
•	Faculdade Iguaçu. EducaMinas. Capanema/PR. 720 Horas/Aula.','•	Conclusão de Curso: CAR – Cadastro Ambiental Rural, 16 horas (SENAR). Registro CBO nº 6210–05.     Santo Antônio da Patrulha\\RS.   •	Conclusão de Curso: O PODER DA ORATÓRIA, na edição 23. Promovido pelo Instituto Brasileiro de Neurolinguística e Coaching. 16 Horas/Aula.  •	Porto Alegre, 17 de fevereiro de 2022. Presidente Marcio Martins.   •	Conclusão de Curso: PLANO DO COMITE DE BACIAS LITORAL MÉDIO.  •	Presidente Leda Famer. 10 Horas. Palmares, Mostardas, Tavares, Bojuru e São José do Norte.   •	Conclusão de Curso: PLANO DE GERENCIAMENTO DE RESÍDUOS SÓLIDOS DE SERVIÇO DE SAÚDE. H&M Consultoria de Alimentos e Bebidas. 2 Horas.   •     Osório, 05 de dezembro de 2029. Eng. Agro. Hemilim Barbosa de Fraga.','Administrativa, Licenciamentos, Engenharia','https://drive.google.com/open?id=1Z1wxsrLesGlkiGCbHVQ9BTWpKCtORuDM','https://drive.google.com/open?id=1uXLUd490Eba7kmLFWY-kmrWWBZ18YEzs','Indicação','Não','À combinar.','Sim','Biólog Leda Famer: 51 99515-6349 / Geólogo Chert Bobsin: 51 9.9524-4244.','Licenciamento Ambiental.','Nas minhas férias passei uns dias em Mostardas/RS, minha cidade de naturalidade. Passei um tempo com a família. Pois resido a mais de 9 anos na cidade de Osório/RS. Vim para cursar novas especializações e encontrar novas oportunidades de emprego.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-27T20:39:00.000Z'::timestamptz),
  ('Juan Patric dos Santos Dias.','juandiaspatric@gmail.com',NULL,'51981466420','1997-02-21',29,'Solteiro(a)','0','Sim','Osório/RS','https://drive.google.com/uc?export=view&id=15QefeUVqKoXLdzHUZaW_1AGibXd6WBDo',NULL,'Ensino Superior Incompleto','Uniasselvi - Centro Universitário Leonardo Da Vinci',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) PAAS - Poços Artesianos e Irrigação Automatizada; 2) Suporte de Atendimento/Responsável Logístico Operacional; 3) 18/12/2023 à 18/05/2024; 4) Atendimento aos clientes para agendamentos, pós vendas, organização e otimização de estoque e almoxarifado, coordenação operacional e equipes, captação de novos clientes através de links e pesquisa de satisfação, criação de planilhas para organização do setor administrativo, organização de leads e clientes através da plataforma CRM, Google Agenda e Pacote Office.','Curso Bacharel em Educação Física, sou Professor de Judô e Jiu-Jitsu.','Programa de Desenvolvimento Interno - Calçados Beira Rio S.A.','Administrativa, Comercial','https://drive.google.com/open?id=1vM7pu-h0Mv4J-fGmyutcWS5-u1jPz6r2','https://drive.google.com/open?id=1FED7l8DzCC2oO-XyfDoEHgU_tetvYGEo, https://drive.google.com/open?id=1MSuj14igcMxPgYTLwKexPcN4YWdmfHDB, https://drive.google.com/open?id=12Mii9H4EgZKpO9z3ATAoqkYb7QgwuYbI, https://drive.google.com/open?id=18vkL8RxDu4atkqNeOOoiGT70-SR_Kpwg, https://drive.google.com/open?id=1AyG0CecGk9JSjosJexubTEXB6CNs0o6t','Indicação','Ninguém.','2500 mínimo.','Sim','Belchior Saraiva (RH - PAAS): 51993534749','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-27T20:57:00.000Z'::timestamptz),
  ('Jakeline carvalho Pires','jakecarvalho3025@gmail.com',NULL,'53991830202','1999-02-24',27,'Solteiro(a)','1','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1hQez2TaI_bTF9HHVj_6yv6y-6TXNu1bP','Psicopedagogia','Pós-graduação Completa','URCAMP','2024-05-29','Sou formado','Trabalhei em escolas como professora/estágio  durante o período da faculdade 2016/2020
2021/2024 entrei para prefeitura onde circulei no RH, com recrutamento e seleção e captação de recursos','Sou pedagoga com pós graduação em psicopedagogia e gestão de pessoas.','Pós graduação e graduação','Administrativa, Marketing','https://drive.google.com/open?id=12pa_pwfCGMA8ZQ1Du4owJ3b2xgVQYm76',NULL,'Instagram','Não','2500','Sim','Prefeitura Municipal de Bagé 
Câmara de vereadores de Bagé 
Colégio Franciscano espírito santo','Quero inscrever-me no banco de talentos da Young!','Olá, sou psicopedagoga, uma mulher resoluta e proativa, natural de Bagé, 25 anos, mãe do Inácio. Pela minha formação várias pessoas acham que a atuação é exclusivamente em escolas e isso não é verdade, atuamos diretamente no RH da empresa ou qualquer outro setor, adoro lidar com pessoas, possuo uma ótima relação interpessoal, boa eloquência e conversação. Com fortes perspectivas de crescimento na empresa e agregar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-05-29T22:03:00.000Z'::timestamptz),
  ('Paula Barcela Gomes','paula_barcella@icloud.com',NULL,'51989213134','1988-01-14',38,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1sT6dl5N4I_8emENVgw-aLZp9i8QATx9Q',NULL,'Ensino Superior Incompleto','FURG','2027-03-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Sicoob Credisulca - Agente de Atendimento - 01/04/2024 até o momento. Prospecção de clientes, atualização cadastral, vendas de produtos financeiros e atividades pertinentes a tesouraria. 

Cooperativa Agroindustrial Cooperja - Assistente Administrativo - 11/06/2022 a 28/03/2024 - Gestão da parte administrativa, efetuando lançamento de notas para pagamento, emissão de notas fiscais de venda de sementes de arroz e soja. Atendimentos direto aos associados para programação de entrega de sementes de arroz e soja, montagens de carga para entrega por região. 

Cooperativa Agroindustrial Cooperja - Vendedora - 11/01/2021 a 10/06/2022 - Atendimentos ao cliente diretamente no balcão da loja, efetuando vendas de produtos, insumos e defensivos agrícolas.','Tenho curso Técnico Ambiental, concluído em 2010.',NULL,'Administrativa, Estágio, Financeiro, Engenharia',NULL,NULL,'Instagram','Não','R$2.500,00','Não','Sônia - RH Cooperja (51) 999313589','Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-02T15:46:00.000Z'::timestamptz),
  ('Paulo Ozéias da Silva','ozeiasdasilvapaulo@gmail.com',NULL,'55984781093','1973-11-01',52,'Casado(a)','1','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1AJyRf6ohHbFvHupi_KRSV1yuE7PbBA5P',NULL,'Ensino Médio Completo','Castelo branco','1978-12-20','Não, no momento pausei/parei por um período.','Projeta construções cargo exercido auxiliar de serviços gerais desempenhados com êxito  entrada janeiro de 2023 e saiu em dezembro de 2023 e A Ferreira construções cargo exercido auxiliar de serviços gerais desempenhados com êxito entrada em  janeiro de 2917 saida janeiro de 2019','NR35 E NR36',NULL,'Engenharia','https://drive.google.com/open?id=1MGN5xaXe1VdUcudnXYL4e5n9IkV_oPm0',NULL,'Google','Sim Rui consultor de vendas','1800 por mês','Não',NULL,'Auxiliar de serviços gerais',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-05T16:59:00.000Z'::timestamptz),
  ('Eduardo de Oliveira Lameiro','eduardolameiro54321@hotmail.com',NULL,'51995713361','2002-04-23',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=11KsWnaMtovggk3ENR2_LQ5uiVdlxQbRV','Analise e Desenvolvimento de Sistemas','Ensino Superior Incompleto','UNIRITTER',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1- Almoxarifado
Empresa: Vero S.A.
Período: 23/03/2020 à 09/05/2022
Controle de materiais, atendimentos aos técnicos,
configuração de roteadores e equipamentos MikroTik.

2- Auxiliar Técnico 
Empresa: CYMI DO BRASIL - PROJETOS E SERVIÇOS LTDA
Período: 11/05/2022 à 19/10/2022
Trabalhava no setor de engenhara fazendo planilha de acompanhamentos, relatórios de controles, relatórios de atividades de campo e relatórios de produção. Além de recebimento de notas e outros programas, como AutoCAD e Google Earth para plotagem de projetos. Fazia acompanhamento de obras em campo

3- Auxiliar de Compras III
Empresa: CYMI DO BRASIL - PROJETOS E SERVIÇOS LTDA
Período: 15/05/2023 à 07/03/2024
Utilização do programa Navision fazendo pedidos e
entrada de notas no sistema. Romaneios de saída de
material, negociação e cotações com fornecedores,
ordem de compras, comparativos de preços.
 
4- Assistente Administrativo(comprador)
Empresa: BC2 Infraestrutura LTDA
Período: 11/04/2024 à 25/05/2024
Cotações de materiais, comparativos de preços,
negociação, abertura e fechamento de ordens de
compras, contato com fornecedores .','Estudo programação, curto muito a área e meu ensino superior é focado nessa área. Tenho outros cursos mais curtos como de "Excel Avançado" com duração de 40h e Manutenção e "Montagem de computadores - Hardware" com duração de 60h.',NULL,'Administrativa, Engenharia','https://drive.google.com/open?id=1prD3CCeb7KLuZI8jrxcHCn5EHooI1MfW',NULL,'Indicação','Não','Por volta de uns R$ 2.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou bastante proativo e gosto muito de um ambiente alegra, pois isso me motiva a trabalhar. Tenho muita facilidade para lidar com software e sistemas em geral, e já trabalhei com alguns sistemas de controle e produção, tais como TOTVS, MKSolutions, SAP e Microsoft Navision. Tenho como hobby, alguns esportes como vôlei e academia. Esses hobbies fazem muito bem para mim e para meu desenvolvimento, me ajudam a organizar melhor minhas cabeça com relação a estudos e trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-06T02:23:00.000Z'::timestamptz),
  ('Dyovana Brião Pinto','dydybriao17@gmail.com',NULL,'53999256244','2004-05-24',21,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1QY_E2rscxgt7Azpp2Br8P3a1LBFEarK4','Cursando administração','Ensino Médio Completo','Unicesumar','2028-12-12','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Já trabalhei em várias empresas, todas com atendimento ao público, adquiri bastante experiência e estou buscando uma nova experiência.','Tenho curso de gestão comercial, estou cursando administração e vou começar a fazer um técnico em transações imobiliárias',NULL,'Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=1etfo40s8j7vmKwnTY3VUSR0sdqjqDMaG',NULL,'Agência de Empregos','Não fui.','Salário que a empresa possa dar.','Sim',NULL,'Estou a procura de uma vaga onde posso adquirir experiência na área que estou estudando','Bom, me chamo Dyovana tenho 20 anos e eu estou cursando administração, quero crescer junto com a empresa, sempre entregando meu melhor e fazendo as atividades propostas, sou comunicativa, tenho conhecimentos básicos em informática.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-06T18:54:00.000Z'::timestamptz),
  ('Grazielly dos Santos soares','graziellydossantossoares@gmail.com',NULL,'51995840728','2005-01-20',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1YTJL5CsfdiaJDx2cPzpw56mwfVimZRDb','Administração de empresas','Ensino Médio Completo','uniasselvi','2027-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1)Xis do leco 
2) garçonete e copeira 
3)10/05/2023 até 30/10/2023
1)RR shoes 
2) fábrica de calçado serviço gerais 
3)05/10/2022 até 20/04/2023','Faço graduação bacharelado  em administração e estou cursando trainee coaching (informática)',NULL,'Administrativa, Estágio, Financeiro, Marketing','https://drive.google.com/open?id=1_LIgJclhzNpsolGGN0mn6MiULnQytJc-',NULL,'Instagram','Não','Minha expectativa salário não me importaria agora com o valor estou a procura agora mas de experiência profissional','Sim',NULL,'Estágio Financeiro','Então sobre mim estou a procura de um trabalho na área que estou fazendo faculdade , sou uma pessoa esforçada quero está sempre aprendendo coisa nova  , prendendo  fazer minha CNH B quero muito fazer meu curso de inglês esse ano','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-07T15:32:00.000Z'::timestamptz),
  ('Thomaz Karam de Oliveira Magalhães','thomazkaram@hotmail.com',NULL,'53984177900','1989-04-26',36,'União estável','1','Sim','Pelotas/rs','https://drive.google.com/uc?export=view&id=1KziRACJ4aLcUSVlIbPMw8waxhekS4tSQ','Engenharia Civil','Pós-graduação Incompleta','Anhanguera Educacional','2021-07-26','Sou formado','Full Tec Engenharia, empresa de Niterói/RJ com obra em Porto Alegre, especializada em Teatros e obras cênicas, contratado para eng. Residente da obra de reforma do Teatro Dante Barone em Porto Alegre, por 4 meses mobilizando o início da obra, pude passar por todas as obras da empresa, dentre elas o hotel do Sesc em Manacapuru/AM, teatro municipal de Campinas, infelizmente devido as enchente de Porto Alegre, a obra acabou n tendo data pra começar e o contrato foi finalizado ssem data pra retornar. 
ACL Manutenções, empresa de Curitiba/PR, obra temporária dentro da abastecedora Ipiranga em Canoas, obra de 3 meses de adequação Mecânica, Civil, Elétrica e Manutenção nos braços de carregamento de combustíveis do Terminal IPP em Canoas. Contrato finalizado e obra entregue antes do prazo. 
EK Construtuora, empresa de bras de grande porte, terraplanagem e maquinário pesado, atuei como gestor dos contratos do cidade alta Pelotas, bairro Planejado, atualizando medições gerindo planejamento e negociações com o cliente, orçando novas obras e negociando com novos clientes os novos contratos, contrato finalizado para entrar na ACL Manutençoes devido a uma melhor oportunidade Financeira e de trabalho.','Cursando Pós Grad em engenharia de Seg do Trabalho, formação em Dezembro de 2024','Gestão Agil, Planejamento e Controle','Engenharia','https://drive.google.com/open?id=1WUzONlBymksDK--jNjnRB7cd6C9miX6G',NULL,'Indicação','Coordenador da Dalle, Eng. Charles','9.500','Sim','Olívio - Coordenador de Planejamento  Full Tec - 011 91915-0181, Giovana Boeta, responsável RH Full Tec - 021 96821-3509','Engenheiro Civil','Sou um profissional dedicado, sempre disposto a ajudar a empresa a atingir seus objetivos, com ótima visão de planejamento e controle de obras  de diversos seguimentos, desde obras pesadas a obras de altíssimo acabamento, de comerciais a industriais, se procuram um Engenheiro que veste a camisa e que procura crescimento profissional, eu sou o Engenheiro que vocês procuram. Será um prazer poder trabalhar com vocês.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-11T14:06:00.000Z'::timestamptz),
  ('Maria Eduarda avila','eduardaavila728@gmail.com',NULL,'53999357756','2000-04-27',25,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1Z131iF1fzDh7cJ1ZPv85PfUTHMm2aRa3','ensino médio completo','Ensino Médio Completo','luiz Maria Ferraz CIEP','2018-12-17','Não, no momento pausei/parei por um período.','1 (Obino) 2 (caixa) 3( 2 anos e pouco )',NULL,NULL,'Comercial','https://drive.google.com/open?id=1NiXZk8JaIItgBvAU3ZY_0FD8LoaGQ_4P',NULL,'Indicação','corretora Marian','1.500','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-11T14:38:00.000Z'::timestamptz),
  ('Pierre Lima Levien','pierrelevien@gmail.com',NULL,'53981011739','1989-07-14',36,'Casado(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=15Q_7v1mbpcBqvI4pumdivBV7TTu-x5hO','Engenharia Civil','Ensino Superior Completo','Faculdade Anhanguera de Pelotas','2019-11-19','Sou formado','Grupo Zaffari - março/2022 - Fev/2024 -Engenheiro Civil -  Execução de Bourbon Shopping com duas torres comerciais, Ampliação e execução de novos empreendimentos do grupo Zaffari, paredes diafragma com tirantes, gerenciamento de obras, fiscalização de obras, planejamento e gerenciamento de equipes, montagem de cronograma de obras e planejamento, análise de escopos e orçamentos, execução de alargamentos viários e fundações, gerenciamento e coordenação da ampliação do Moinhos Shopping conduzindo a execução da obra, montagem de editais de contratações de obras, análise de escopos e medições de obras. - •	2021-2022 – Todeschini S.A Industria e Comércio - Engenheiro Civil - Fiscalização da ampliação da fábrica em mais de 100.000m², controle de medições, terraplanagem, execução de projetos hidrossanitários, execução de detonações em rochas, execução de gabião, montagem de pavilhões pré-moldados, execuções de fundações, padronização de projetos e acabamentos, pisos elevados, pisos industriais em fibra, montagem de cronogramas, data book, gestão da qualidade e segurança de terceiros, cronograma físico financeiro, controle tecnológico. •	2021-2021 – BRF S.A - Engenheiro Civil - Execução da obra parada Peru Europa sendo trocada e repaginada toda linha de produção para adequação ao padrão de produção Europa, execução de linhas de produção mecânicas, pavilhões pré-moldados, forros em iso-painel, projetos de ergonomia, pisos industriais, Execução da parada de fábrica da linha de produção do Frango, para troca de diversos equipamentos, montagens de linhas de produção e padronização à produção da Europa. Ardizzone Eng. Com. Ltda - 2016 - 2018 - Tec. Edificações Responsável no setor de orçamentos, quantificar projetos, orçamento de projetos completos, execução de obras residências e comerciais, execução de detalhamentos de projetos, compras de materiais, entregas de materiais em obra, análises de projetos, detalhamentos de projetos em Sketchup e Autocad, concretagens em obras, cronogramas de obras, pavimentações, tramites de projetos junto a Prefeitura e ao Sanep, obras de pré-moldados. •	2019-2021 – Ardizzone Eng. Com. Ltda
Cargo: Engenheiro Civil
Principais Atividades: Tramites de projetos em órgãos públicos, montagem de cronogramas, coordenação de equipes de obras, coordenação de execução de obras, execução de residências em médio e alto padrão, obras comerciais, torres comerciais em pré-moldado, orçamentos de obras, detalhamentos de projetos.','Formado em Téc. em Edificações',NULL,'Engenharia','https://drive.google.com/open?id=1u6pF8FATjGGB1WBxb7nUPDiflUNGK4uN','https://drive.google.com/open?id=14JDVHNkWcXBoj6fZ3AHyMhxE7dAeBDAG','Indicação','Não','Negociável de acordo com o modelo de contratação.','Sim','53 - 981212934 - Charles Schineider.','Engenheiro Civil','Engenheiro civil, com larga experiência em gestão e execução de obras, com experiência em alguns software como por ex. MS Project e etc.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-11T14:38:00.000Z'::timestamptz),
  ('Mariangela Silveira Migliavacca','marimiglia77@gmail.com',NULL,'51997310718','1973-01-19',53,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1TEnN2hg9u7QYgbuSyb2uFu8tYECuOs99','Arquitetura','Ensino Superior Completo','UNISINOS','1999-01-15','Sou formado','Topmaker - 2023-2024 conferência e elaboração de projetos, detalhamento de marcenaria 
51999906111
Florense – 2013-2022 conferência de projetos, detalhamento de marcenaria
5133784200
Sergio Sclovsky Arquitetura e Planejamento Urbano 
2009-2012 Elaboração em colaboração e desenvolvimento de projetos, entre outros: Chácara das 
Nascentes Porto Alegre, Altos Pinheiros Canela, Villa Bella e Via Antonella Caxias do Sul, Praia da Lagoa 
Cortada Balneário Gaivota SC.
Projetos realizados
Onda “Por um Brasil com mais Cor”
Fortaleza CE 2004-2008____
Centro de Estudos do Trabalho e de Assessoria do Trabalhador 
2008 Readequação layout sede Fortaleza e Itapipoca CE – projeto e execução
2008 Projeto Bioarquitetônico Centro de Cultura e Convivência Itapipoca CE – 1ªfase de projeto
Vila Benvinda na Onda
2008 Escola de Equitação – 1ª fase projeto e execução
Fundação Konrad Adenauer
2005 Projeto institucional “Agricultura Familiar, Agroecologia e Mercado”
Onda Refloresta
2004 Colaboração com Arq. Marcio Holanda em Projeto de Bioarquitetura da Sede da Associação para o 
desenvolvimento da Agropecuária Orgânica
MW3 Arquitetura Hospitalar
– colaboração e desenvolvimento de projetos 
– detalhamento de marcenaria
2004-2005 Hospital Regional Itapipoca CE
2005-2008 Centro Pediátrico do Câncer – Associação Peter Pan
Pirenópolis GO 2002-2004_____
Instituto de Permacultura e Ecovilas do Cerrado
2002 Ecoversidade Um novo conceito em educação superior. Design e Manutenção de Sistemas 
Sustentáveis, Manejo de Resíduos e Efluentes, Geração de Energia Renovável, Design de Ecovilas
Contextualização Social e Econômica da Sustentabilidade.
2002-2004 Bioarquitetura Arquitetura de impacto ambiental positivo – aprimoramento aplicado na prática 
na vida e no trabalho no IPEC
2003 – Coordenadoria de infra-estrutura do centro de referência do Ecocentro. 
2003-2004 – Projetos: Vila Ecoversitária, Cozinha Comunitária, Biblioteca, Museu do Solo, Concha 
Acústica, residência Ali Sharif na Ecovila, sanitários compostáveis, sistemas de bioremediação, 
reservatórios com filtro para captação e armazenagem da água executados com argamassa armada
Porto Alegre RS 1999-2002_____
Elaboração em colaboração e desenvolvimento de projetos, assessoria e execução de obra com:
Sergio Sclovsky Arquitetura e Planejamento Urbano 2001-2002
ARCOO
2001 Bioarquitetura – Elaboração em colaboração e desenvolvimento de projetos e execução de obra
Carlos Peixoto 2000-2001 Arquitetura Comercial
Sibemberg 2000 Arquitetura Comercial (Interiores), Programação Visual 
Sonia Veeck Nunes 1998-1999 Arquitetura Residencial e Comercial','especialização em ecovilas no ecocentro ipec - Goiás 
inglês intermediário','certificados de conclusão de curso','Arquitetura, Novos Negócios, Engenharia',NULL,NULL,'Indicação','não','R$2.500 a R$5.000','Sim','Topmaker 51999906111
Florense Porto Alegre 5133784200','Arquitetura e Urbanismo e desenvolvimento de projetos','gosto de trabalhar em equipe desenvolvendo projetos 
trabalhar em empreendimentos como Altos Pinheiros em Canela, Villa Bella em Caxias e também nas ecovilas foram experiências maravilhosas em minha vida 
trabalho com autocad e promob','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-11T14:50:00.000Z'::timestamptz),
  ('Pedro Henrique Machado da Luz João','pedromjoao@hotmail.com',NULL,'53999115943','1997-02-12',29,'União estável','0','Sim','Pelotas/rs','https://drive.google.com/uc?export=view&id=1pGi0NZsPKJf_kYWuCCuBjz0ezVTEo3gP','Engenharia Civil','Ensino Superior Completo','Ucpel','2019-08-23','Sou formado','V3empar - 2016-2018 - Estagiário de obra - Acompanhamento de serviços, controle de qualidade, medições de terceiros, pedidos de material, acompanhamento de obra em alvenaria estrutural (desde a parte de estrutura de concreto até finalização da obra) e outra obra em alvenaria convencional onde acompanhei a fase de acabamento.
Intercâmbio estudantil - 2018 - Estudei um semestre em Portugal, no Instituto Politécnico de Bragança
Zuchelo - 2019 - Estagiário de obra - Acompanhamento de serviços, pedidos de material, controle de qualidade de serviços e medições. Reforma de um consultório de odontologia e acompanhei a execução do empreendimento mirador, na fase de alvenaria de vedação.
Porto5 Empreendimentos - 2019 - Atualmente - Ingressei como assistente de engenharia na obra do Smart Park, empreendimento com 2 torres e um total de 160 aptos. Acompanhei a execução das concretagens dos aptos com fôrmas metálicas. 6 meses após entrar na obra, assumi ela como analista responsável, sendo responsável por toda a obra, desde finalizar a parte de estruturas até a entrega do empreendimento e hoje auxilio o setor de pós obra quando necessário.
Atualmente, sou responsável pela obra do Acqua Family Club, empreeendimento de 10 torres com 240 aptos. Ingressei nas etapas de vigas de fundação, executei as concretagens de todos aptos e hoje estamos na etapa de revestimentos interno.','No momento estou fazendo um MBA em qualidade, gestão e engenharia de processos na PUC',NULL,'Engenharia','https://drive.google.com/open?id=1CSQVbPSxv6FGcSXSFkI5UHoLwNHXvpYL',NULL,'Indicação','não','8000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-11T14:59:00.000Z'::timestamptz),
  ('Endrigo Silveira Pinto','endrigosilveira@outlook.com',NULL,'5399097028','1985-11-27',40,'União estável','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1SZQXFcrJSyb46bM1VfIivbAWeMBBwOPt','Engenharia Civil','Pós-graduação Completa','Universidade da Região da Campanha - URCamp-Bagé','2017-07-31','Sou formado','Engenheiro Civil – Prefeitura Municipal de Bagé – Secretaria Municipal de Gestão, Planejamento e Captação
de Recursos (GEPLAN)
Período:
26 de abril de 2021 – atual
Principais atividades:
Gerenciamento de Obra de Infraestrutura (Barragem de Abastecimento)
Elaboração de Projetos Técnicos – ênfase em Projetos de Prevenção e Proteção Contra Incêndios (PrPCIs)
Fiscalização de Obras Públicas
Elaboração de Laudos Técnicos

Engenheiro Civil – Prefeitura Municipal de Bagé – Secretaria Municipal de Saúde e Atenção à Pessoa com Deficiência
Período:
21 de fevereiro de 2020 – 23 de abril de 2021
Principais atividades:
Elaboração de projetos técnicos
Responsável Técnico Secretaria Municipal
Execução de obras e manutenção predial de Unidades Básicas de Saúde
Assistente de Licitações – Prefeitura Municipal de Bagé
Período:
06 de março de 2018 – 20 de fevereiro de 2020
Principais atividades:
Elaboração de editais de licitação

Engenheiro Civil – Escritório de Engenharia
Período:
09 de dezembro de 2017 – atual
Principais atividades:
Elaboração de Projetos Arquitetônico, Estrutural, Elétrico, Hidrossanitário, PPCI, etc.
Acompanhamento e fiscalização de obras
Regularização de imóveis junto à Prefeitura

Engenheiro Civil – Construtora Paulo Orsini Scardoelli Vianna - Eireli -ME
Período:
09 de novembro de 2017 – 15 de janeiro de 2022
Principais atividades:
Profissional técnico responsável
Execução de Obras Públicas e Privadas

Coordenador Operacional de Usina de Concreto - Dallé Concretos – Bagé, RS
Período:
09 de março de 2017 – 09 de junho de 2017
Principais atividades:
Coordenação operacional de produção
Controle tecnológico e gestão de qualidade de concreto usinado
Atendimento comercial, consultoria e visitas técnicas em obras

Estagiário – Departamento de Engenharia Civil do IFSul – Campus Bagé, RS
Período:
15 de julho de 2015 – 15 janeiro de 2017
Principais atividades:
Elaboração de projetos arquitetônicos, elétricos e hidrossanitários
Fiscalização e acompanhamento de obras e serviços de engenharia

Oficial Exército Brasileiro – 12º Regimento de Cavalaria Mecanizado (12º RCMec) Jaguarão, RS
Período:
02 de fevereiro de 2004 – 22 de junho de 2012
Principais atividades:
Presidente da Comissão Permanente de Licitações
Chefe da Seção de Aquisições, Licitações e Contratos','Pós-graduação em Projeto, Execução e Desempenho de Estruturas e Fundações, pelo IPOG Porto Alegre/RS.
Pós-graduação em Segurança de Barragens - Aspectos Técnicos e Legais, pela Universidade Federal da Bahia/BA.',NULL,'Administrativa, Engenharia','https://drive.google.com/open?id=1ppiMymh4iIGsJOBbrNhlW3K8GrCYehH8',NULL,'Agência de Empregos','Flávia - Recursos Humanos YOUNG Empreendimentos','Compatível com área de atuação profissional','Sim','Dallé Construtora - 53 3242-9426 - José Dallé
Prefeitura Municipal de Bagé - 53 3240 4315 - Alexandre Vedooto
IFSUL - 53 99947-7902 - Eng. Célio Ziotti
Exército Brasileiro - 53 3261-1888 - Setor de Pessoal 1ª Seção','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-11T15:29:00.000Z'::timestamptz),
  ('Matheus Macluf Torres','matheus_torres99@hotmail.com',NULL,'53981460988','1999-12-14',26,'Solteiro(a)','0','Sim','Pelotas/rs','https://drive.google.com/uc?export=view&id=1lE8MW-VusMBYD_iR3zQDk1dfiYEbqxl6','Engenharia Civil','Pós-graduação Completa','Universidade Federal de Pelotas (UFPEL)','2022-08-12','Sou formado','Minha primeira experiência foi na Porto5 Empreendimentos, onde atuei como estagiário entre fevereiro de 2019 e março de 2020. Minhas atividades consistiam em realizar o acompanhamento e a conferência dos serviços executados, preencher documentos do setor da qualidade e redigir o diário de obra. Posteriormente fui estagiário na Olavo Rocha Construtora entre o período de fevereiro de 2021 a janeiro de 2022. Nessa função, realizava o acompanhamento e conferência dos serviços, auxiliava no planejamento e execução da obra, na medição dos serviços e elaboração de relatórios de qualidade. Após me formar, iniciei uma empresa  com mais dois sócios em agosto de 2022 onde permaneci até setembro de 2023. Na empresa era responsável pelo setor administrativo, realizava projetos complementares e gerenciei uma obra residencial em estrutura metálica. Atualmente trabalho como assistente de qualidade na ACPO Empreendimentos desde janeiro de 2024. Na empresa minhas responsabilidades incluem a gestão de equipes na obra, auxilio na medição dos serviços executados, elaboração planilhas e relatórios de controle e sou responsável pelo setor de qualidade da obra.','Já realizei uma pós em engenharia de segurança do trabalho e atualmente estou cursando uma pós graduação em engenharia de custos e orçamentos.',NULL,'Novos Negócios, Engenharia','https://drive.google.com/open?id=18Ceh_ieNU2GYbfnm7oEV5jYfAMmR14g_',NULL,'Indicação','Não','Na faixa de 6.000,00 a 7.000,00 reais','Sim',NULL,'Engenheiro Civil','Tenho conhecimento nos softwares do pacote office, Revit e AutoCad. Possuo um nível de inglês avançado. Já no meu tempo livre gosto de praticar esportes, ler livros e assistir jogos de futebol.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-11T22:56:00.000Z'::timestamptz),
  ('Marcelo Gonçalves Madureira','marcelogmadureira@gmail.com',NULL,'53992415376','1997-02-20',29,'Solteiro(a)','0','Sim','Pelotas/rs','https://drive.google.com/uc?export=view&id=11RROP5BGX78PcROMb6m-FvM4d_yULsYo','Engenharia Civil','Ensino Superior Completo','Universidade Federal de Pelotas','2024-05-17','Sou formado','- Trabalho há 11 anos na empresa da minha família no ramo de restaurante e eventos, ocupo cargo administrativo,  iniciei no ano de 2013.
- É minha primeira candidatura como engenheiro formado.
Experiências como Estagiário:
- Porto5 Empreendimentos, novembro de 2019 - março de 2020, acompanhamento de obras, setor de qualidade, entrega de chaves, acompanhamento de pós obras.
- TGF Engenharia, novembro de 2020 - março de 2021, acompanhamento de obra, orçamentos, medições e compra de materiais;
- T2 Engenharia e Construção, novembro de 2023 - março de 2024, acompanhamento de obras e setor de qualidade.',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1fZ8zwuEE1AqeDsP91sm9kolbeRkdhxB0',NULL,'Indicação','Não','3.000,00 - 4.000,00','Sim','André Faria, 53991284428 , engenheiro Porto 5 
Vinicius Gomes, 53984613736 , engenheiro TGF
Rodrigo Tavares, 53981160654 , engenheiro T2','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-12T02:09:00.000Z'::timestamptz),
  ('Andressa Da Silveira Lisboa','lisboaandressa315@gmail.com',NULL,'53991744788','1998-03-02',27,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1CWVaOhCD439PdR5XcP3CA-cBjkLs1lXa','Administração de empresas','Ensino Médio Completo','Unicesumar','2027-10-06','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Minha última experiência e atual, está sendo no grupo Casas Bahia, como auxiliar administrativo.',NULL,'Certificado de conclusão do curso de administração de empresas','Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1KrnJ7Oczi2cY0pPTHKFRNp4rS-xpNKAc',NULL,'Agência de Empregos','Não fui indelicada','2.200,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou técnica em administração, venho há alguns anos trabalhando nessa área, tentando sempre evoluir no mesmo! Procuro uma empresa, competente onde as pessoas e os serviços são valorosos. Na questão financeira e empática.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-21T15:32:00.000Z'::timestamptz),
  ('Manuela Silveira Adam','manuadam959@gmail.com',NULL,'51995500784','2006-11-06',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=12Rof0agTg81XezYDwuLxlfHo3DBhDAYf',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Não possuo.',NULL,NULL,'Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=18izNT1qagIx79Nq0LU7BmI5B-iT9cNwD',NULL,'Instagram','Não','800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho um grande interesse em iniciar minha carreira nesta área e acredito que minha dedicação e habilidades podem agregar valor à equipe da empresa.

Possuo conhecimentos básicos no Pacote Office, incluindo Word, Excel e PowerPoint, sei utilizar a plataforma Canva para criar materiais visuais e tenho inglês intermediário focado em leitura.

Sou uma pessoa comunicativa, o que me permite integrar facilmente equipes de trabalho e lidar de forma eficiente com clientes e colegas. Estou ansiosa para aprender mais sobre o setor e acredito que a Young é o ambiente ideal para meu desenvolvimento profissional e pessoal.

Estou à disposição para fornecer mais informações e participar de uma entrevista. Agradeço pela atenção.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-22T15:22:00.000Z'::timestamptz),
  ('Andressa Tonin Durlo','eng.andressadurlo@gmail.com',NULL,'55991502721','1995-01-12',31,'Solteiro(a)','0','Sim','Manoel Viana/rs','https://drive.google.com/uc?export=view&id=1HsMDJBBzazXkoxxK0vDswx7ABc8Ha4Y2','Engenharia Civil','Ensino Superior Completo','UNIPAMPA Campus Alegrete','2023-08-25','Sou formado','1) Construtora Sotrin (Alegrete)
2) Estagiária
3) Setembro 2022 - dezembro 2022
4) Auxiliar em projetos complementares e na elaboração de quantitativos; acompanhamento de obras; experiência em alvenaria estrutural

1) MJ Empreendimentos e Serviços
2) Engenheira civil residente
3) 4 de dezembro de 2023 - 28 de junho de 2024
4) Liderança de equipe no canteiro de obra; planejamento, controle e fiscalização de obra; acompanhamento e execução de obra; experiência em estruturas de concreto
armado.

Atualmente estou saindo, por decisão própria, de uma obra em Ivoti - RS. Execução de obra pública na qual acompanhei e realizei a execução, desde fundações até a laje. Embora não tenha experiência na área de infraestruturas, tenho interesse e vontade de aprender.',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1FA35muNslt9UgBiztjqGUbqVX8kdFE6j',NULL,'Instagram','Não.','R$5.500,00','Sim',NULL,'Engenheiro Civil','Conhecimento em Pacote Office, AutoCAD, Revit, TQS, Ftool. Aprendi inglês sozinha, com ótima capacidade de compreender na escuta e leitura, um pouco inexperiente na fala. Sou dedicada, organizada e proativa. Disponibilidade para início imediato na cidade de Alegrete.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-26T21:14:00.000Z'::timestamptz),
  ('Jonas Figueiró','figueiro.jonas@gmail.com',NULL,'51999573367','1991-12-03',34,'Casado(a)','1','Sim','Charqueadas/rs','https://drive.google.com/uc?export=view&id=1xzSgOZbr8jph3LwPvnQ9WsRCvecTUHqb','Engenharia Civil','Pós-graduação Completa','UNISINOS - Universidade do Vale do Rio dos Sinos','2017-12-01','Sou formado','1) EPG
2) Engenheiro Civil
3) 12/2017 - 10/2023
4) Elaboração de projetos geométricos para implantação de loteamento e condomínios, rede de abastecimento de água potável e esgotamento cloacal (CORSAN), rede de drenagem pluvial, terraplanagem, lidar com aprovação de projetos junto aos municípios e ao órgão metropolitano, viabilidade econômica, orçamentos, controle de qualidade de recebimento de materiais e execução de obras.

Atualmente tenho meus clientes, projetos basicamente em gleba de 5HA com entorno de 90 lotes.','Engenheiro Civil, focado em projetos de implantacao e complementares de loteamentos e Condomínios. Entusiasta da metodologia BIM.','CIVIL 3D, Infraworks, Navisworks, pacote office.','Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=12jrYJuTfdRHXuZxXQFuTpdP_mc7K-Vna','https://drive.google.com/open?id=1n6TAKhBSTAAxlyuNlkwZoRC9TFRm_Gma, https://drive.google.com/open?id=1iB6zfMjCtoppCzCGJb_7Ay0jC7sNnLLE, https://drive.google.com/open?id=1aVk56xf3SIFvyYcl-_2oJ5d1ZCwzXoN2, https://drive.google.com/open?id=1AsMz01yoonQCZsAUFyEPOhbLTYgKo_IQ','Agência de Empregos','Fui encontrado pelo linkedin pela Flavia.','PJ - R$ 13.000,00 a R$ 16.000,00','Sim','Aldo Pinheiro - (51) 99997-3363 - Proprietário da PL Incorporações
Eduardo Trizzoto Maia - (51) 99964-4585 - Proprietário da EPG','Engenheiro Civil','Serei pai em poucos dias! Maior motivação que essa não há.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-27T18:11:00.000Z'::timestamptz),
  ('Jaiane Aparecida Otto Tedesco','jaianeotto1997@gmail.com',NULL,'51993422083','1997-03-03',28,'União estável','2','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1NTMTIy6sv056T1ZLI0uLHglBeRXAEUuJ',NULL,'Ensino Superior Incompleto','Uninter','2027-06-28','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Mpi informática - vendedora - 29.01.2024 a 07/06/2024 fazia contato com clientes, efetuava vendas, follow-up, pós vendas, propostas, atualizações e projetos etc.. 
Viu internet - vendedora - vendas internas e externas, contratos, pós vendas, follow up, alterações de cadastro, contratos, prospecção..
Ld embalagem - auxiliar de expedição - comecei como empacotadora de pedidos, passei a controlar estoque, reuniões com equipe, relatórios, faturamento e emissão de pedidos, controle sobre os canais de vendas on-line, atendimento aos clientes, reclamações, logística reversa, entre outras funções da área de expedição e administrativa.','Tenho cursos on line da fundação Bradesco, sebrae, escola do governo, conquer e outros. Na área de gestão de pessoas, liderança, vendas, gestao de tempo e produtividade, mapeamento das competências.. atualmente cursando graduação em administração,  e estudando um pouco sobre investimentos.',NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1kDi_CrM9OuWlubQH-dZtEVlRraxhXqJ4',NULL,'Instagram','Nao','2000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-28T16:05:00.000Z'::timestamptz),
  ('Marjana Cardoso trassante','marjanatrassante2@gmail.com',NULL,'53999052774','1994-06-07',31,'Solteiro(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1pILiksNuTIzFZ7y9Lh99ggrZ_00mVOgX','Administração de empresas','Ensino Superior Completo','Urcamp-sede bage','2020-03-20','Sou formado','Help financeira- consultor de vendas, unicv- consultor de vendas','Cursando 2 licenciatura em ciências contábeis e pós em Rh','Informática completo','Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=18YKnlh-cGHtRxKOeUMQLxYvlv2ndvyvB',NULL,'Instagram','Não','Partir do salário mínimo','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-28T17:11:00.000Z'::timestamptz),
  ('Paulo Sérgio Dorneles Almeida','paulosergio.d.almeida@gmail.com',NULL,'55996321436','1993-05-12',32,'Casado(a)','0','Sim','Panambi/rs','https://drive.google.com/uc?export=view&id=1jSHPkk9bUxXJhU6p6l2umFv_TGvwns_2','Engenharia Civil','Pós-graduação Incompleta','Universidade Federal do Pampa - UNIPAMPA','2018-02-03','Sou formado','Prefeitura Municipal de Panambi, Cargo de Engenheiro Civil, Início 16/04/20 a 16/07/23, Elaboração e fiscalização de Projetos civis e de infraestrutura urbana, iluminação pública','Cursando Pós-graduação em Liderança e Gestão de Equipes',NULL,'Engenharia','https://drive.google.com/open?id=1dp_evWTn2ZqAftnu0gXbGyiUAuzPCg2u',NULL,'Instagram','Não','R$10.000,00','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-06-29T02:18:00.000Z'::timestamptz),
  ('Felipe Velho Machado','felipevelho@live.com',NULL,'51998549796','1992-05-28',33,'Casado(a)','1','Sim','Osório/RS','https://drive.google.com/uc?export=view&id=1BzApPw3crBJRcCA4rEEiW7HJzDjosakx','Engenharia Civil','Pós-graduação Completa','Uniderp','2020-08-25','Sou formado','•	HOBUS TOPOGRAFIA
01 de novembro de 2010 a 15 de julho de 2013 
Cargo: Topógrafo
Função: Levantamentos planialtimétricos, implantação e execução de linhas de transmissão, execução de loteamentos, terraplanagem e georrefereciamento.

•	CONSTRUTORA TRIUNFO
22 de julho de 2013 a 03 de julho de 2017 
Cargo: Topógrafo
Função: Demarcações de pavimentação e obras de arte, levantamentos planialtimétricos das rodovias: Duplicação PR-445, duplicação BR-262, implantação PR-459 e duplicação SC-486.

•	INSTITUTO RIO GRANDENSE DO ARROZ - IRGA
12 julho de 2017 a 07 de maio de 2021 
Cargo: Técnico Orizícola
Função: Extencionista rural e responsável pelo setor de engenharia do instituto.

•	CONSTRUTORA TRIUNFO
10 de maio de 2021 até 30 de maio de 2023
 Cargo: Engenheiro de Planejamento
Função: Validação de medição junto ao órgão, atuação com projetos, relatórios executivos e controle de qualidade, analise e levantamento de quantitativos de projetos, planejamento e liderança de equipe: Implantação da rodovia        PR–160, Imbaú/Reserva e PR-364 e Irati/São Mateus do Sul.

•	CAVA ENGENHARIA
05 de junho de 2023 até o momento
 Cargo: Engenheiro Residente
Função: Validação de medição junto ao cliente, relatórios executivos e controle de qualidade, controle de produção, analise e levantamento de dados de projeto, planejamento, dimensionamento de equipes: Klabin Puma II e Ampliação Aeroporto Foz do Iguaçu – IGU.','Pós-Graduação em MBA em Gestão de Projetos pela UNIUB e Pós-Graduação em Engenharia de Pavimentação Asfáltica pela faculdade Dom Alberto.','CREA-RS: 251702','Engenharia','https://drive.google.com/open?id=1do5aJ0BbTH_BjEwIh0ZgRU6n07PaesZR',NULL,'Agência de Empregos','Sim, Flavia','R$15.000,00','Sim',NULL,'Engenheiro Civil','Autocad Civil 3D;
Topograph;
Posição; 
Ms Project;
Pacote Oficce;
Estação Total;
GNSS - RTK;','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-01T16:34:00.000Z'::timestamptz),
  ('Lorenzo Pazzetti da cunha','lorenzopazzetti@gmail.com',NULL,'51996765611','2003-07-18',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1xf5gU2AQt0qVAonTWm8ba7FoOa5hp6DX',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','empresa: cervejaria a patrulhense 
cargo: filtrador de cerveja
data: 01/04/22 até 01/04/23
principais atividades : produção das cervejas, controle de qualidade, controle de estoque e entregas

empresa: cooperja
cargo: operador de máquinas 
data:03/04/23 / atual
principais atividades : operador de máquinas e controle de qualidade',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'WhatsApp','Everton Das Virgens','R$:2600','Sim','Everton Das Virgens 
51 998126075','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-01T18:25:00.000Z'::timestamptz),
  ('Eduardo de Oliveira Lameiro','eduardolameiro54321@hotmail.com',NULL,'51995713361','2002-04-23',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1iacL2v99nKTBC05LvSq1tXK-SKQDmGKV','Analise e Desenvolvimento de Sistemas','Ensino Superior Incompleto','UniRitter - Polo Osório','2026-08-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1. Almoxarifado
Vero S.A.
Período: Março de 2020 à Maio de 2022
- Controle de materiais, atendimentos aos técnicos,
configuração de roteadores e equipamentos MikroTik.

2. Auxiliar Técnico II
CYMI DO BRASIL - PROJETOS E SERVIÇOS LTDA
Período: Maio de 2022 à Outubro de 2022
- Planilha de acompanhamentos, relatórios de controles.
Analise de projetos e manipulação de projetos em
programas como: AutoCAD e SketchUp. Fazia
acompanhamento de obras em campo e tinha ótima
comunicação com chefes de obra.

3. Auxiliar de Compras III
CYMI DO BRASIL - PROJETOS E SERVIÇOS LTDA
Período: Maio de 2023 à Março de 2024
- Utilização do programa Navision fazendo pedidos e
entrada de notas no sistema. Romaneios de saída de
material, negociação e cotações com fornecedores,
ordem de compras, comparativos de preços.

4. Assistente Administrativo(comprador)
BC2 Infraestrutura LTDA
Período: Abril de 2024 - Maio de 2024
- Cotações de materiais, comparativos de preços,
negociação, abertura e fechamento de ordens de
compras, contato com fornecedores .','Certificado em Informática Avançada – Hardware.
Escola Técnica & Faculdade Jovem Profissional
Período: 2018

Certificado em Excel - Avançado.
Instituição: Curso em Video.
Período: 2020',NULL,'Administrativa, Comercial, Financeiro, Engenharia','https://drive.google.com/open?id=1VCb9b-eYdN5Q0Rko57PFBS8NScB6c5HK',NULL,'Instagram','Não','R$2.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Nos meus momentos livre, gosto de estudar um pouco e depois jogar. Faço faculdade na área de programação, e quando não estou fazendo as aulas da faculdade, eu estou estudando ou novas linguagens ou eu fico pesquisando coisas relacionadas, e até mesmo olhando vídeos de dicas de outros programadores. Tenho muita facilidade com softwares em geral, consigo aprender muito rápido pois me adapto bem, tenho conhecimento avançando em Excel, pois onde eu trabalhava usávamos muito e com o passar do tempo fui aprendendo com o Engenheiro, pois trabalhava direto com ele. Além de utilizar brevemente AutoCAD e SketchUp.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-03T11:46:00.000Z'::timestamptz),
  ('Fernanda Lais Saravia Figueira','fernandalsaravia@hotmail.com',NULL,'53991770962','1987-05-11',38,'Casado(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1NlxOdPMScbYuCNTyP8i9i0AzIpV9fneH','Tecnico em contabilidade','Ensino Superior Incompleto','Geteco','2022-12-20','Não, no momento pausei/parei por um período.','Oftalmopampa, recepcionista, 12-2020 a 12-2023
Mosaico joias, caixa e vendas, 10-2018 a 01-2021
Farmácia Sao João, auxiliar administrativo, 01-2015 a 02-2017
Lojas Becker, vendas, 07-2013 a 12-2014','Cursos em vendas, informatica.','Tecnico em contabilidade','Administrativa, Comercial, Financeiro, Novos Negócios','https://drive.google.com/open?id=1IhnFOIR2uDaL6c3gliiXlpocYtZOHvP0',NULL,'Instagram','Não','R$: 2000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Profissional formada em técnico em contabilidade, com experiência acumulada desde os dezessete anos. Possuo um histórico diversificado de atualização em vendas, setores administrativos, caixa e clínica oftalmológica. Além de ser fluente em espanhol, tenho habilidades em gestão financeira e atendimento ao cliente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-04T23:48:00.000Z'::timestamptz),
  ('Andressa Rosa Rodrigues Rocha','andressarosarodriguesr@gmail.com',NULL,'53991824927','1999-08-21',26,'Casado(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1U_-OzHu4izS-MIK4cMpf1I46ump_wgwQ',NULL,'Ensino Superior Incompleto','URCAMP','2026-07-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','•Casa das garças, auxiliar geral,2020/2021, limpeza, organização, atendimento ao público, diversos.

•Floristeria da praça,vendedora,2022/2023,vendas,limpeza, organização, auxiliar administrativo, diversos.


•Imobilar, auxiliar administrativo,2023/2024, auxiliar geral interna e externa nas locações.

Fora outros 3 locais que trabalhei por curto período,com atendimento ao público e área administrativa.','Curso administração,tenho um curso de rotinas administrativas.','Rotinas administrativas, Excel básico','Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Instagram','Não','R$2.500,00','Sim','Casa das garças: Sandra,(53) 3242-9244
Floristeria da praça: Heraldo,(53) 99906-0608','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-05T00:27:00.000Z'::timestamptz),
  ('Tainan Ramos Pugens','tainanpugens7@gmail.com',NULL,'51996169759','2002-01-10',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1VGudxbwdV4jXjzCgbP3Yrt-reUDxMXrb',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Experiência 1 | INB / Vero Internet;  MIS Analyst; Ingresso no dia 12/03/2020 até dia 16/06/2023; Passei por vários cargos, começando como Atendente de Suporte Técnico atendendo a ligações de clientes, até chegar no meu último cargo que foi Analista de MIS, onde realizava análise dos dados de atendimento, criação e apresentação de projetos de contenção de danos ou melhorias para gerentes e diretores, criações de PPT, planilhas no Excel, relacionamento com equipes de todo o Brasil.

Experiência 2 | Realiza Negócios Imobiliários; Corretor de Imóveis; Ingressei no dia 13/09/23 até o atual momento; Realizo tarefas como transações imobiliárias, gestão e posicionamento de redes sociais, participo de lançamentos ou qualquer evento relacionado ao mercado imobiliário, atendimento e relacionamento com o cliente.','Formado em TTI pelo IBREP','CRECI: 80.283','Administrativa, Comercial, Novos Negócios, Engenharia',NULL,NULL,'Indicação','Antônio Alves','R$ 2.500 + Comissão','Sim','Wagner Dias - (51) 99657-8734 | Vero Internet','Comercial','Me considero uma pessoa muito alegre, pra cima, me relaciono e crio vínculo com pessoas com muita facilidade e trabalho muito bem em grupo.
Estou sempre disposto a me desafiar e encarar novas empreitadas, assim, me desenvolvendo, adquirindo novas habilidades e também ganhando experiência.
Meu hobby favorito é dançar no CTG, sou um grande admirador e cultuador das tradições do nosso povo gaúcho, mas também gosto de jogar um futebol as vezes.
Sou formado em TTI pela instituição de ensino IBREP e foi no mercado imobiliário onde encontrei uma paixão, não só pela parte de vendas, por fazer novas conexões a todo momento, ser bem recompensado financeiramente, mas também por realizar o sonho das pessoas em adquirir seu imóvel, é a área em me encontrei e que pretendo seguir carreira.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-05T15:35:00.000Z'::timestamptz),
  ('Crislaine Lopes Pereira','crislainepe29@gmail.com',NULL,'54996866104','1989-04-30',36,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1jyvW1QYI_fLdZkypnPDzDgFBfMcl7XO5',NULL,'Ensino Superior Incompleto','Unip','2024-12-26','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Mecbrun industrial',NULL,NULL,'Administrativa, Comercial, Estágio','https://drive.google.com/open?id=1VS9S_jzygV57dgXeif5hImz9eUW__2NY',NULL,'Instagram','Não','1.500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Fiz um trabalho voluntário com um time de futebol feminino no qual eu era a responsável pelo time e me sentia bem no que fazia','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-06T23:14:00.000Z'::timestamptz),
  ('Savana Bergmam','savanabergmam285@gmail.com',NULL,'53999359574','1991-03-14',34,'Casado(a)','2','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1nH51atsFyC81CYbJPBqdbu01JSy9yPsb','Ciências Contábeis','Ensino Superior Incompleto','UniAmerica ( descomplica) EAD','2025-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Nicolini 11/06/ 2010 à 02/01/2012
Operadora de forno','Pacote Office completo
Power BI 
Gestão empresarial 
Auditoria interna e externa (cursando)','Pacote Office completo, power BI, gestão empresarial integrada.','Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=1W0ENO2Rg_NBGC91mDZeRyGiqd0CIHiMw',NULL,'Instagram','Não','1300','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-07T16:13:00.000Z'::timestamptz),
  ('Juliana Oliveira','juliana.representation@gmail.com',NULL,'51981370029','1974-11-08',51,'União estável','2','Sim','Tramandaí/RS','https://drive.google.com/uc?export=view&id=1Z6GQdL3RR8cvIVhQHRLA2LBOSuBGyg9D','Marketing','Ensino Superior Completo','Uninter','2010-03-10','Sou formado','Porto Seguro Cia de Seguros Gerais : administrativo -  supervisora de Processos Eletrônicos - analista de crédito P física e jurídica Fiança Locatícia 
Uni - Representante Comercial
Plié - Representante Comercial 
Recco Lingerie - Representante Comercial',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Indicação','Não','R$ 3.500,00 a R$ 4.000,00 + comissão','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-08T00:24:00.000Z'::timestamptz),
  ('LEANDRO MENESES','contato.leandromeneses@gmail.com',NULL,'51998034265','1989-09-12',36,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=12ehy7v69WwEt5k7OAlIU8w-JKAM3aifY','Ciências Contábeis','Ensino Superior Incompleto','Fael ead','2024-07-31','Não, no momento pausei/parei por um período.','.',NULL,'.','Comercial','https://drive.google.com/open?id=1luUk7_gtSRnbqoTKNCA22xaHICpC9wIn',NULL,'Instagram','.','3000','Sim','.','Comercial','.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-09T19:10:00.000Z'::timestamptz),
  ('Felipe Duarte Pintos','felipeduartepintos704@gmail.com',NULL,'53997063126','2003-03-20',22,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1gEfDEQmfUiU3IlbFr6oCZks9ijUceLLX','Recursos Humanos','Ensino Médio Completo','Anhanguera','2025-07-16','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1)Bazar Elaine 2)Estágio 3)28/12 - 21/02 4)Atendimento na papelaria
1)Peruzzo 2)Agente de prevenção e perdas 3)21/06 e estou atualmente 4)Conferência de produtos, combate para reduzir as perdas, quebras de produtos, troca de etiquetas, etc.','Técnico em informática - Windows 7 - PowerPoint - Word 2010',NULL,'Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=1s4oxSYBFLpu5iCkBj07ne-1ErTO3knRt',NULL,'Facebook','Não','1.500,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Busco uma oportunidade para obter crescimento e desenvolvimento profissional junto a empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-14T01:08:00.000Z'::timestamptz),
  ('Luciane da silva halabi','lucianehalabi56@gmail.com',NULL,'53991037080','2005-04-09',20,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1Y5t8r__rZD_F0VeFL_1EqrE9nmjSkN62','Técnico em administração','Ensino Médio Completo','EMEP DR ANTENOR GONCALVES PEREIRA',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','PGL DISTRIBUIÇÃO DE ALIMENTOS. FIZ ESTAGIO NA PARTE ADMINISTRATIVA. E TRABALHEI DURANTE 1 ANO E 2 MESES COMO TÉCNICO ADMINISTRATIVO FINANCEIRO NA MESMA EMPRESA, TRABALHEI FAZENDO AJUSTES DE PONTO, FECHAMENTO DE CAIXAS, REQUISIÇÕES, ETC',NULL,NULL,'Administrativa, Estágio, Marketing','https://drive.google.com/open?id=1HjMy26EK3_fDntIDySmhFR5aqmH4pil0',NULL,'Indicação','Nao fui indicado','1.600,00 a cima.','Não',NULL,'Estagio administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-14T17:18:00.000Z'::timestamptz),
  ('Liandre Gumisson de Miranda','liandregumissonm@gmail.com',NULL,'55997255107','2001-04-06',24,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=15tfFiqGG_W_PMpQj1xvAqPllXPCreH8D','Engenharia Química','Ensino Superior Incompleto','Universidade Federal do Pampa','2025-08-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Sem experiência profissional comprovada','Participação em Empresa Junior, Diretório Acadêmico e desenvolvimento de pesquisa na área de monitoramento de poluição atmosférica.',NULL,'Estágio, Licenciamentos','https://drive.google.com/open?id=1nIddGBTCbkh1r_bKGkXdCChe470Twdwb',NULL,'Instagram','Não','R$1.200,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Já realizei trabalho voluntário na Liga Jovem de Combate ao Câncer de São Borja, além de ter participado 10 anos do meio tradicionalista gaúcho. Durante a pandemia confeccionei máscaras para vender. Na graduação participei de diversas atividades extracurriculares como, diretório acadêmico, empresa junior, iniciação científica e representação discente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-16T18:40:00.000Z'::timestamptz),
  ('Karol Pacheco Venske','karolvenske89@gmail.com',NULL,'53999273454','1989-02-13',37,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1xeN3VSjLZFTvdQP49tj9U2QkipBnb7IP','Engenharia Civil','Ensino Superior Completo','URCAMP','2020-12-14','Sou formado','OAB Bage',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram','Não','5000','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-17T01:11:00.000Z'::timestamptz),
  ('Jefferson Aurélio de Melo','jeffersonaurelio.eng@gmail.com',NULL,'84998726258','1988-12-26',37,'Casado(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=15TEVyrlZrOPZfFyjY_GcEldl5fh9thkh','Engenharia Civil','Pós-graduação Completa','Universidade Potiguar - UNP','2018-12-10','Sou formado','AeC Construções e Serviços LTDA
Engenheiro Civil - 06/2020 a 10/04/2024
Atuação em canteiros de obras, supervisionando a etapa de fundação de prédios
residenciais e comerciais e galpões industriais, com foco na qualidade dos primeiros
passos da construção.
Participação no planejamento de obras e na elaboração de projetos de construção civil,
oferecendo cálculos e projeções de alta qualidade, trabalhando para obter os documentos e pareceres técnicos necessários para dar início às atividades.
Controle da mão de obra nas construções, assegurando a aplicação das medidas de segurança do trabalho e liderando a equipe, de forma a estimular a entrega das etapas
no prazo devido.
Elaboração e entrega de documentos de prestação de contas das obras, incluindo
relatórios fotográficos, feedback diário das atividades e planejamento dos próximos
passos, além do preenchimento de registros internos.
Acompanhamento de trabalhos terceirizados, realizando contato direto com clientes,
fornecedores e equipes prestadoras de serviço a fim de solicitar a compra de materiais
e administrar o cronograma.
Seleção de profissionais para mão de obra, realizando entrevistas e análises de perfil a
fim de definir as equipes, avaliando os serviços executados ao longo do tempo e
elaborando relatórios de produtividade.
Coordenação das tarefas administrativas e operacionais do canteiro de obras,
garantindo o acompanhamento diário das atividades e o preenchimento de planilhas
com informações atualizadas.

Melo e Andrade Engenharia e consultoria
Engenheiro Civil - 01/2018 a 06/2020
Melo e Andrade Engenharia – Natal, RN
Gerenciamento de projetos, contratação/demissão de mão de obra e supervisão de
equipes.
Atuação em canteiros de obras, supervisionando a etapa de fundação de prédios
residenciais e comerciais e galpões industriais, com foco na qualidade dos primeiros
passos da construção.
Controle da mão de obra nas construções, assegurando a aplicação das medidas de
segurança do trabalho e liderando a equipe, de forma a estimular a entrega das etapas
no prazo devido.
Levantamento do material a ser utilizado na obra, incluindo a realização de medições
de metragem linear e cúbica, necessárias para estipular quantidades, buscando evitar
ao máximo o desperdício de recursos.
Acompanhamento de todas as etapas da obra com proximidade, identificando
possíveis problemas e oferecendo suporte ao engenheiro principal.
Seleção de profissionais para mão de obra, realizando entrevistas e análises de perfil a
fim de definir as equipes, avaliando os serviços executados ao longo do tempo e
elaborando relatórios de produtividade.

M&K comercio e construções
Técnico em Edificações - 01/2017 a 03/2018
Construção do presídio estadual de Ceará Mirim e Recuperação das praças do centro
histórico de Natal.
Registrar através de planilhas de medições os quantitativos dos serviços realizados,
acompanhamento e fiscalização dos serviços executados, levantamento quantitativo de
materiais, acompanhamento da compra e controle do estoque e coordenação de
equipes.

Lotil Engenharia Ltda
Auxiliar de engenharia - 01/2016 a 01/2017
Construção de edifícios sede do TRE, Natal/RN, Registrar através de planilhas de
medições os quantitativos dos serviços realizados, elaboração de orçamento,
acompanhamento e fiscalização dos serviços executados, levantamento quantitativo
dos acabamentos, acompanhamento da compra e controle do estoque, elaboração de
relatório diário de obra – RDO, elaboração de memoriais de cálculo semanais de
produção.

Vértice construções Civis
Técnico em Edificações - 11/2014 a 11/2015
Registrar através de planilhas de medições os quantitativos dos serviços realizados,
elaboração de orçamento, acompanhamento e fiscalização dos serviços executados,
levantamento quantitativo de materiais, acompanhamento da compra e controle do
estoque, acompanhamento de processos de financiamento e licenciamento das obras.

Massai Construções e Incorporações Ltda
Técnico em Edificações - 03/2013 a 03/2014
Elaboração de relatório diário de obra – RDO, elaboração de memoriais de cálculo
semanais de produção, medição dos serviços executados, controle de produção diária
dos funcionários, fiscalização dos serviços executados em campo, controle de
qualidade nas concretagens, moldagem, envio e rompimento dos corpos de prova,
preenchimento de ficha de verificação de serviço (FVS) de serviços Fiscalizados e
alimentação no sistema SIENGI do sistema de qualidade ISSO 9001.

Capital Negócios Imobiliários
Técnico em Edificações - 10/2011 a 03/2013
Construção de um condomínio em blocos estruturais, Mossoró/RN.
Elaboração de relatório diário de obra – RDO, medições dos serviços executados,
controle de produção diária dos funcionários e fiscalização dos serviços executados em
campo.','Sou engenheiro civil, pós graduado em gerenciamento de obras com habilidades em execução de obras.','Software Eberick – JTC Projetos Estruturais','Engenharia','https://drive.google.com/open?id=1T7ee_kSCn2pAQSRB7d0CVOJzXybMCwm9',NULL,'Facebook','Não','12000','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-17T13:42:00.000Z'::timestamptz),
  ('Laura Leal Dias','lauralealdias@gmail.com',NULL,'53997028167','2004-06-29',21,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1DRCQnOijNUXaYPRxTohDEl8_MFlKCiIE','Administração de empresas','Ensino Médio Completo','UNIFAEL',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Nunca trabalhei',NULL,NULL,'Administrativa, Marketing','https://drive.google.com/open?id=1s2c321eSytZQUFWgQQsHGIyPtXnrUYv8',NULL,'Facebook','Não','$900','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Me chamo Laura, sou comunicativa, extrovertida, sei trabalhar em grupo e tenho facilidade com redes sociais. Já participei de vários trabalhos voluntários e tenho experiencia com canva e word.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-20T18:03:00.000Z'::timestamptz),
  ('Marcos Felipe Milesi','marcos.milesi@universo.univates.br',NULL,'54996879618','1999-03-24',26,'Solteiro(a)','0','Sim','Lajeado/rs','https://drive.google.com/uc?export=view&id=1DUcCCed78_Yp1C4vba-q2mKUG6_Z3QpJ','Engenharia Civil','Ensino Superior Completo','Universidade do vale do Taquari','2023-07-21','Sou formado','Experiência profissional

Deberg Construtora 
Cargo: Controlador de Qualidade

Período 2022 – Até o momento

Gestor de obras, utilizando o método do PBQP-H (Programa Brasileiro da Qualidade e Produtividade do Habitat).
Acompanhamento de construção de edifícios multifamiliares e residenciais.
Coordenação do fornecimento de materiais e negociação de orçamentos
Responsável pelo treinamento de todos os novos funcionários do setor de construção.
Responsável pela identificação e resolução de problemas relacionados ao pós-vendas.

MetalMarc 
Cargo: Projetista de máquinas

Período 2021 – 2022

Projetista de maquinário frigorífico visando melhores soluções de qualidade e economia para a empresa.
Responsável por projetos de aplicações (plantas da localização de equipamentos).

Estrela Metais
Cargo: Projetista de Aplicações

Período 2019 – 2021

Projetista de layout como fator para otimização do processo produtivo organizacional e projetista de maquinário.','Curso Profissionalizante

2024 - presente

Dominando a Patologia das Construções',NULL,'Arquitetura, Engenharia','https://drive.google.com/open?id=1huMNscbfIbPW1lNXznwd_uUZipn-z3px',NULL,'Instagram','Não','4500','Sim',NULL,'Engenheiro Civil','Engenheiro Civil de formação, com experiência de atuação na área de construção civil há 2 anos. Uma pessoa calma e com facilidade na comunicação assim como ser comunicado. 
Tenho experiência em trabalhar com pacote office, AutoCAD e Inventor. 
Busco uma oportunidade que me cative a sempre melhorar e melhorar as pessoas ao meu redor.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-22T22:31:00.000Z'::timestamptz),
  ('Lucas Pacheco Machado','lpm2807@gmail.com',NULL,'53997007222','2001-07-28',24,'Solteiro(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1W-Jylre9P62io-8ShaxaXjSwA7G5fxrS','Engenharia de Produção','Ensino Superior Incompleto','UNICESUMAR',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Pampeano Alimentos S/A
2) Operador de máquinas industriais 
3) 09/10/2021 - atualmente 
4) Gerenciamento eficiente da documentação e relatórios: Realizo o preenchimento preciso e tempestivo de documentos e relatórios, garantindo a mensuração precisa de produtividade e otimizando o processo de requisições de materiais para uso diário.
Operação especializada de máquinas industriais: Assumo a responsabilidade pela operação de máquinas industriais em todo o processo de produção de extrato de carne, desde a etapa de decantação até a embalagem final do produto.','Certificados: Informática (Básico ao avançado); Pacote Office ( Power point, Excel, Word); Comunicação e atendimento ao clientes; Princípios básicos do marketing; Gestão empresarial integrada; Gestão de pessoas; Assistente Administrativo',NULL,'Administrativa, Estágio, Financeiro, Marketing','https://drive.google.com/open?id=150chusRIyEjQzR_J91Nx4wCeGnmsmiL4',NULL,'Indicação','Não','R$2.000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu sou atleta, sou apaixonado por diversos esportes, pratiquei praticamente todos, atualmente pratico muay thai e musculação com foco. Tenho uma rotina inteira planejada detalhadamente, pois, meus horários são extremamente valiosos, eu atualmente trabalho no segundo turno (não por opção, porque a empresa não pode me trocar de turno) e me viro com horários que tenho, das 15h da tarde até as 3h da madrugada, acordo às 7 para começar os treinos e ter tempo de chegar em casa e estudar (engenharia de produção) e logo em seguida faço minha leitura diária, e depois estudo novamente, porém, para certificação CPA-10/20, quando eu entendi que a disciplina e o estudo são a chave para o sucesso e nos conseguir nos levar onde jamais imaginamos, não reclamo de nada, agradeço a Deus pelas oportunidades que tenho hoje, e sei que estou no caminho certo, bastar manter a disciplina constante.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-23T17:16:00.000Z'::timestamptz),
  ('Luana de Castro Soares Caldeira Ferreira','luanacscferreira2@gmail.com',NULL,'53999385570','2000-04-05',25,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1pBjKqZIb5yIGoZYZcM7NSh-NPuWivGta','Jornalismo','Pós-graduação Incompleta','Centro Universitário da Região da Campanha (URCAMP)','2023-03-04','Sou formado','Meu primeiro estágio foi na Sétima Coordenadoria de Saúde em Bagé, no qual atuei como assessora, produzindo releases, cobrindo eventos, cuidando da clipagem e auxiliando em diversos setores. No segundo, participei do setor de marketing da Unimed, lá eu fazia as publicações das redes sociais, organizava eventos e estava sempre em contato com os cooperados e prestadores. Agora no meu terceiro estágio, fui efetivada 4 meses após, no qual sou auxiliar administrativa, entre minhas funções está organização de documentos, produção de planilhas, atualização de agendas, compras para o escritório e auxílio aos demais colaboradores da empresa.','No momento estou terminando a pós-graduação em marketing e mídias digitais.',NULL,'Administrativa, Marketing','https://drive.google.com/open?id=13fvFQ5TvyKh2Zq_SxoFzWVGNGgy1gGB9',NULL,'Instagram','Não fui','R$2.900,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Vou deixar aqui meu portfólio acadêmico, no qual expõe as atividades exercidas por mim: https://luanasoaresf.blogspot.com/','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-23T19:23:00.000Z'::timestamptz),
  ('Priciele Corrêa Brasil','pricielecorrea@gmail.com',NULL,'53999561515','1997-05-19',28,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=13ATB7njybgf-RCy4ZE8sIrDDjtaeeB7k','Administração de empresas','Pós-graduação Incompleta','Faculdade IDEAU Bagé RS','2019-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Frigurífico Marfrig Bagé RS
2) Jovem Aprendiz 
3) 06/03/2014 até 14/01/2015
4) Responsável por separar e organizar documentos, contato com o público e preenchimento de planilhas.

1) Empresa Degraus Modas Bagé
2) Estagiária 
3) 01/06/2015 até 06/01/2017
4) Responsável por vender, levar mercadorias até as clientes, atualizar a página nas redes sociais, pagar contas e boletos, atender ao telefone, cobrar pagamentos, entre outros.

1) PGL Distribuição de Alimentos:
2) Auxiliar fiscal/ Assistente Contábil 
3) 01/03/2017 até 04/05/2021
4) Função Fiscal: Responsável por receber e organizar documentos enviados das lojas, protocolar e entregar documentos entres outros setores, preencher planilhas de controle de processos do fiscal e emissão, conferência de notas, lançamentos de notas de várias naturezas (transferências, consertos, imobilizados, bonificações, entre outras) e faturas de energia e comunicações pelo sistema SAP, cobranças (telefônicas e por e-mail) e também responsável pelo fechamento mensal de ultragaz, getnet e rancho e pela emissão de guias e composições de ISS em todas as filiais (Bagé, Dom Pedrito, Candiota, Pelotas, São Gabriel, Cachoeirinha, Caçapava, Alegrete, Santa Maria) e também pela aceitação do ''Ranfs'' (Serviços prestados por empresas de outras cidades), tendo contato por telefone e site com a Prefeitura.
Função Contábil: Responsável por receber e organizar documentos enviados das lojas, protocolar e entregar documentos entre outros setores, preencher planilhas de controle de processos contábeis, conferência do fechamento do caixa de todas filiais, lançar e protocolar relatório de RPA, patrocínios, contribuição sindical e notas com ISS e INSS, cobrança da entrega de documentos e correção dos lançamentos de notas de despesas feitas pelas filiais, mensalmente dar um feedback aos gerentes por e-mail em relação as ocorrências dos caixas, também organizar e arquivar os documentos que já foram conferidos no mês anterior, pelo controle e transferência imediato do imobilizado de todas filiais e atualmente responsável pelos lançamentos de notas fiscais mensais dos setores de marketing, tecnologia da informação, logística, manutenção, recursos humanos, imobilizados, consumo e obra, através do sistema SAP, criando o processo completo (pedido, pré validador, migo e miro).

1) Intercement Brasil
2) Analista Administrativo Júnior 
3)10/05/2021 até 03/02/2022
4) Responsável pela gestão de fundo fixo de caixa, desde a criação do processo, até a prestação de contas ao financeiro, pela compra e o controle estoque materiais de escritório, pelo recebimento e envio de malotes e documentos ao correio, suporte no comitê administrativo, composição de livros de entradas de notas fiscais, bem como emitir notas de saída de materiais entre as filiais ou para fornecedores, pelo lançamento e fechamento mensal do compliance de notas fiscais de material, apoio no lançamento de notas fiscais de serviços, pelo lançamento diário e fechamento mensal de insumos, pelo lançamento de faturas de telefonia, assim como lançar ou manifestar CTE e também pela organização de documentos, entre outras atribuições administrativas.','Graduada em Administração de Empresas - Faculdade IDEAU Bagé RS e Pós Graduanda em Gestão Estratégica de Negócios - UNICESUMAR Bagé RS',NULL,'Administrativa, Estágio, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Não','1600','Sim',NULL,'Estágio Administrativo Bagé RS',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-28T00:05:00.000Z'::timestamptz),
  ('Maria Fernanda Simões Lopes Da Costa','mfernandaslc04@gmail.com',NULL,'53999034588','2004-01-17',22,'Casado(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1XOI_xTWNDr3YGjgnbHruLvyuk2RciRFx',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1- Santa Casa de Caridade de Bagé 
2- assistente administrativo 
3- sou responsável por organizar, solicitar medicações, finalizar prontuários médicos, cuidando da parte burocrática do hospital em geral. 

1-Orbenk Administração LTDA
2- Recepcionista em geral
3- desempenhei função de recepcionista da Caixa econômica federal, adquirido experiências bancárias, como arquivar, organizar e etiquetar contas PJ e PF. 

1- Tiele Supermercados 
2- operadora de caixa
3- desempenhei a função de operadora de caixa em alta temporada de praia.','Faço faculdade de administração, já fiz curso de excelência em atendimento ao público, pacote Office completo, matemática fração e porcentagem, postura e imagem profissional.',NULL,'Administrativa, Financeiro, Marketing, Novos Negócios','https://drive.google.com/open?id=1tQzV7NINGZzScS5v4QQ4k2YMtzbz_Vlg',NULL,'Facebook','Não','1.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Meu nome é Maria Fernanda, tenho 20 anos e estudo Administração há 1 ano. Ao longo dos últimos anos, acumulei experiência profissional diversificada em diferentes setores, incluindo hospital, banco e mercado. Essas experiências me proporcionaram uma visão ampla e prática sobre gestão, atendimento ao cliente e operações administrativas.

Principais Realizações Profissionais:
Durante meu tempo no hospital, desenvolvi habilidades essenciais em lidar com situações emergenciais e manter um ambiente organizado e eficiente. No banco, fui reconhecida por minha capacidade de resolver problemas rapidamente e proporcionar um serviço ao cliente excepcional. No mercado, adquiri experiência em caixa operacional, garantindo a disponibilidade de produtos e a satisfação dos clientes.

Habilidades e Competências:
Sou reconhecida pela minha inteligência, agilidade e proatividade, características que me permitem enfrentar desafios de forma eficaz e encontrar soluções inovadoras. Minha habilidade de comunicação é forte, o que facilita a interação com colegas, clientes e superiores, promovendo um ambiente colaborativo e produtivo. Além disso, estou constantemente buscando aprender e crescer profissionalmente, o que me torna uma candidata comprometida e motivada.

Já fiz curso de libras no qual me apaixonei! É uma linguagem linda porém pouco estudada.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-30T01:01:00.000Z'::timestamptz),
  ('Andressa do Amaral Simoes','andressasimoes311@gmail.com',NULL,'53991248549','1994-07-06',31,'Casado(a)','1','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1dDvEC7qIr1RrH4T_459r4RCxDvRRTZkd','Técnico em Contabilidade','Ensino Médio Completo','Escola Antenor Gonçalves Pereira','2026-03-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Hipermercado Big- 01/08/2012 à 15/11/2015
Perecíveis- abastecimento e atendimento ao cliente 
Auxiliar administrativo

Cinema cine7 Bagé - 12/07/2021 à 15/11/2023
Atendimento ao público, fechamento de caixas do setor, auxiliando no treinamento de novos colaboradores 
Auxiliar de limpeza 

Padaria Paniel- 03/01/2024 à 22/07/2024
Estágio na contabilidade',NULL,NULL,'Administrativa, Comercial, Financeiro, Engenharia','https://drive.google.com/open?id=197KdiouoxDZI-jZIDp1Ddqy80tFK9h_Z',NULL,'Instagram','Não','1.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-30T18:37:00.000Z'::timestamptz),
  ('Marcos Felipe Milesi','marcos.milesi@universo.univates.br',NULL,'54996879618','1999-03-24',26,'Solteiro(a)','0','Sim','Lajeado/rs','https://drive.google.com/uc?export=view&id=1ZrrdnyLjcdm2r3kl8pCoK6oc3JTW0BmN','Engenharia Civil','Ensino Superior Completo','Universidade do Vale do Taquari','2023-07-10','Sou formado','Experiência profissional

Deberg Construtora 
Cargo: Controlador de Qualidade

Período 2022 – Até o momento

Gestor de obras, utilizando o método do PBQP-H (Programa Brasileiro da Qualidade e Produtividade do Habitat).
Acompanhamento de construção de edifícios multifamiliares e residenciais.
Coordenação do fornecimento de materiais e negociação de orçamentos
Responsável pelo treinamento de todos os novos funcionários do setor de construção.
Responsável pela identificação e resolução de problemas relacionados ao pós-vendas.



MetalMarc 
Cargo: Projetista de máquinas

Período 2021 – 2022

Projetista de maquinário frigorífico visando melhores soluções de qualidade e economia para a empresa.
Responsável por projetos de aplicações (plantas da localização de equipamentos).

Estrela Metais
Cargo: Projetista de Aplicações

Período 2019 – 2021

Projetista de layout como fator para otimização do processo produtivo organizacional e projetista de maquinário.',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1lTes889O5i5sVxgVVONTWR71kfXl7tlj',NULL,'Instagram','não','4.000,00','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-30T20:11:00.000Z'::timestamptz),
  ('Diórdan Lima Munhóz','limadiordan@gmail.com',NULL,'53999333972','2001-04-03',24,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1IvH2mdB2qUdTWGIwwck_lwdEqzoEmsGY',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1) Prefeitura Municipal de Bagé 2) Estágio Auxiliar Administrativo 
3) 04/04/2021 até 04/10/2021 4) realizava cadastros no Cad-Único.

1) Loja Claro Bagé 2) Consultor de vendas 3) atualmente aqui 4) Vendedor, auxiliar Administrativo ( caixa, contratos)',NULL,NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1AwwOygbFiHsuc3-vsHcsHQH1ohnl6xZc','https://drive.google.com/open?id=1Vk0aMkz86sYDkQVSmu8AhTBm56iQrvi2','Facebook','Não','1500','Sim',NULL,'Estágio Financeiro','CNH B, Informática, Excel.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-31T13:35:00.000Z'::timestamptz),
  ('Kelen Soria','soriamorani@gmail.com',NULL,'991431792','1979-11-17',46,'Casado(a)','2','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1Dd80r6JLNUnP4dr2f4HsO8c0LjpreBrd','Técnico Em Contabilidade','Ensino Médio Completo','Geteco Técnico','2025-07-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa:Wms supermercados brasileiros ltda
Função: operadora de caixa 
Período: 11/2023 a 05/2024
Atendimento ao público em geral.','Sou formada em Transações Imobiliárias, estou cursando técnico em contabilidade. 
Geteco-Técnico.',NULL,'Estágio','https://drive.google.com/open?id=1fABHqw_gkbU0MASjS_grPtdHZVPf6A3k',NULL,'Instagram','Não','A combinar','Sim',NULL,'Estagio administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-31T13:39:00.000Z'::timestamptz),
  ('Graciélen colares severo','graci.colares28@gmail.com',NULL,'53999065217','2001-04-20',24,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1EgUqxUFsSONBGk49QwGf6Ezs8xMbuBLB','Administração de empresas','Ensino Superior Incompleto','Unicesumar','2026-03-02','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Minha última experiência foi no Pillon indústria e comércio de arroz Ltda, sendo estagiária do período de 07/06/2022 até 07/07/2024 como secretária, responsável pelo caixa e atendimento ao público e demais rotinas administrativas.','Tenho ensino médio completo e sou formada no técnico em administração de empresas.',NULL,'Administrativa','https://drive.google.com/open?id=1OGTRWYqqw_9mZdImrPTxFy34NMz_sFEr','https://drive.google.com/open?id=1g51ot1-80HFku51Dr6dmuAsS0Ek16O4Q','Agência de Empregos','Não','Um salário mínimo.','Sim',NULL,'Estágio ou efetivo','Eu me considero participava, comunicativa e muito pontual com todas as minhas tarefas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-31T13:50:00.000Z'::timestamptz),
  ('João Pedro Lemos dos Santos','jlemos7@gmail.com',NULL,'48999803330','1996-08-31',29,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1la0YXDkFbzNPXswXiA5RFiMah5KLd8sv','Administração de empresas','Ensino Superior Incompleto','Estácio de Sá','2027-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Grupo Big: 1 ano e 10 dias 

Data de início e fim: 10/11/2019 a 20/11/2020','Auxiliar administrativo, informática, espanhol',NULL,'Administrativa','https://drive.google.com/open?id=1koLkUXvdqfOShhDtwmQg0av-9F0pENsw',NULL,'Agência de Empregos','Não','1.500','Sim',NULL,'Estágio de administração','Idiomas:
Espanhol: intermediario 
Inglês: básico 
Informática: avançada','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-31T20:43:00.000Z'::timestamptz),
  ('Rafael Cardoso','rafaelcardoso.ceng@gmail.com',NULL,'53999005535','1982-12-11',43,'Solteiro(a)','0','Sim','Dom Pedrito/rs','https://drive.google.com/uc?export=view&id=1p4RN-utVB7f-0dhtYZSD8Fj7VHGyfIVn','Engenharia Civil','Ensino Superior Incompleto','Anhanguera','2026-02-12','Não, no momento pausei/parei por um período.','Marcelo Moreira Arquitetura
5 anos e 7 meses
Pelotas, Rio Grande do Sul Pelotas, Rio Grande do Sul
Técnico em Edificações 
Tempo integral
Cotações e compras através do software; Quantitativo de materiais; Controle de diários de obras; Planejamento e controle de insumos; Medições de serviços prestados; Interpretação e execução de projetos complementares.',NULL,NULL,'Administrativa, Arquitetura, Engenharia','https://drive.google.com/open?id=1kXRcIGkHvxETN8cvdqfqHRdeJH291Kty','https://drive.google.com/open?id=1TtCdKM-EecFcIQEDfz-JZqB5ZWQ78NXn','Indicação','Não','A combinar','Sim',NULL,'Técnico em Edificações',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-07-31T23:31:00.000Z'::timestamptz),
  ('FELIPE CORREA DA ROSA LEITE','eng.felipeleite@hotmail.com',NULL,'53984659065','1994-12-24',31,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1WDlq401ortdG0Ex9HXGH_h9taOOtB0Fu','Engenharia Civil','Pós-graduação Completa','Centro Universitário da Região da Campanha - Urcamp','2018-03-17','Sou formado','Atualmente trabalho na Prefeitura Municipal de Bagé, atuando no cargo de Engenheiro Civil desde 20/04/2018, desempenhando atividades em projetos de infraestrutura urbana: projetos geométricos, de sinalização viária, terraplenagem, drenagem, esgoto sanitário, acessibilidade, além de projetos estruturais e elaboração de memoriais descritivos.
Possuo um acervo técnico de mais de 200.000m² em projetos de infraestrutura.','Formado em Engenharia Civil, tenho Pós-Graduação em Docência do Ensino Superior, Mestrado Acadêmico em Ensino e atualmente cursando Pós-Graduações de Engenharia de Segurança do Trabalho e Engenharia Rodoviária.',NULL,'Arquitetura, Engenharia','https://drive.google.com/open?id=1Qdn7OfuxHJtprfeDSmsVQ4cD_sSYt_v6','https://drive.google.com/open?id=1uU0B3S81nHJFjbY-qN-NWjRhpa03u8tW','Instagram','Não','Ao menos o piso salarial de Engenheiro Civil, referente à carga horária.','Não','Prefeitura Municipal de Bagé - (53) 3240-4300','Engenheiro Civil','Um dos pontos diferenciais que considero em meus conhecimentos é a utilização do Software Autodesk CIvil 3D, que contribui para o melhor desempenho e agilidade em projetos de infraestrutura urbana. Creio que seja um software ainda pouco conhecido, pois em conversas com colegas profissionais, os mesmos ainda utilizam do Autocad para desempenhar projetos dessa tipologia, sendo realizados de forma mais manual e muitas vezes não tão precisa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-01T14:06:00.000Z'::timestamptz),
  ('Filipe Bühler da Silva','filipebds29@gmail.com',NULL,'51998316155','2000-09-29',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Cn39LhtHCFIQvLgoUZD-uaMNUTksHUV6','Administração','Pós-graduação Incompleta','Universidade Federal do Rio Grande','2024-04-06','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Experiência Profissional

Assistente Administrativo
Benditta Marcenaria, Santo Antônio da Patrulha/RS
03/2024 - Atual

    Gestão de Pagamentos: Registro e pagamento de faturas de fornecedores, aluguel e serviços públicos, garantindo a pontualidade e evitando multas.
    Cadastro de Fornecedores: Atualização de informações de fornecedores, incluindo contato, endereço e histórico de transações, facilitando a comunicação e a negociação.
    Análise de Fluxo de Caixa: Monitoramento contínuo das entradas e saídas de dinheiro, projeção de fluxo de caixa futuro com base em receitas e despesas para suporte na tomada de decisões financeiras.
    Gestão Orçamentária: Desenvolvimento e monitoramento de orçamentos, controle rigoroso de custos e identificação de áreas para eficiência e melhoria.
    Contabilidade e Relatórios Financeiros: Manutenção precisa dos registros contábeis, preparação de balanços, demonstrações de resultados e relatórios de fluxo de caixa.
    Planejamento Tributário: Análise e planejamento de estratégias fiscais para minimizar a carga tributária e garantir o cumprimento das leis fiscais.

Assistente PCP
RR Shoes, Santo Antônio da Patrulha/RS
06/2021 - 03/2024

    Cadastro e Gestão de Pedidos: Inclusão de dados detalhados de clientes e especificações de produtos, com estabelecimento de prazos de entrega realistas.
    Geração de Ordens de Produção: Criação e acompanhamento de ordens de produção, alinhando a capacidade produtiva e recursos disponíveis com as prioridades estabelecidas.
    Acompanhamento de Pedidos: Atualização constante do status dos pedidos em sistema, gestão de alterações de datas e atendimento às solicitações de clientes e representantes.
    Coordenação de Áreas: Interação eficaz com produção, suprimentos e logística para assegurar o fluxo adequado dos pedidos e cumprimento de prazos.
    Monitoramento de Estoque: Controle e análise de estoque de produtos acabados, apoio no planejamento de produção com base na demanda e previsão de vendas.

Anotador de Produção
AGS Indústria de Cilindros, Santo Antônio da Patrulha/RS
07/2020 - 04/2021

    Registro e Análise de Dados: Anotação precisa de quantidades produzidas, tempos de ciclo e ocorrências, além de monitoramento da produtividade e eficiência da produção.
    Comunicação e Colaboração: Colaboração com operadores e supervisores, fornecendo feedback e ajustando processos conforme necessário.
    Verificação de Conformidade: Garantia de conformidade com especificações e padrões de qualidade, registro de não conformidades e coordenação com áreas responsáveis.
    Organização de Registros: Manutenção de registros detalhados e documentos de produção para assegurar a integridade e disponibilidade das informações.

Auxiliar Administrativo
RR Shoes, Santo Antônio da Patrulha/RS
02/2016 - 05/2020

    Controle de Produção: Anotação de produção e registros fiscais relacionados, oferecendo suporte administrativo e orientações práticas aos operadores.
    Suporte ao RH e Fiscal: Atendimento a funcionários, esclarecimento de dúvidas, recebimento e processamento de documentos e alterações cadastrais.
    Rotinas Administrativas e Fiscais: Conferência de folhas de ponto, organização de documentos e arquivos, manutenção de quadros de aviso com informações importantes.
    Conferência e Expedição de Materiais: Verificação de notas fiscais, exame de materiais e emissão de notas fiscais para expedição de produtos e encaminhamento aos setores apropriados.','Cursando Bacharelado em Ciências Contábeis e Pós Graduação em Economia e Finanças','Certificados: Administrando Banco de Dados, Curso de Pré-cálculo, Empreendedorismo e Inovação, Estratégia de Negócios, Word 2016 - Intermediário, Excel 2016 - Intermediário, Inovando com CSS, Introdução à Gestão de Projetos, Língua Portuguesa, Redes de Computadores.','Administrativa, Comercial, Financeiro, Engenharia','https://drive.google.com/open?id=1U_lw7kR5hEqeEdz1OE29HLNjy2QYOqqa',NULL,'Google','Não','R$3.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Gostaria de compartilhar um pouco mais sobre mim e o que tenho feito além das minhas atividades profissionais!!
Conhecimentos e Habilidades:
•	Softwares: Sou proficiente em Excel e Word (intermediário), e tenho conhecimentos em CSS e redes de computadores. Essas habilidades me ajudaram em diversos projetos e análises, tornando-me mais eficiente em meu trabalho.
•	Idiomas: Falo inglês em nível intermediário e espanhol básico. Isso tem me expandir minhas oportunidades profissionais.
Experiência Adicional:
•	Cursos e Certificações: Já concluí cursos como Administração de Banco de Dados, Pré-cálculo, Empreendedorismo e Inovação, e Gestão de Projetos. Esses cursos complementaram minha formação acadêmica e aprimoraram minhas habilidades práticas.
Interesses Pessoais:
•	Hobbies: Nas minhas horas vagas, gosto de maratonar series, praticar esportes, ou aprender novas habilidades.
Objetivo e Valores:
Estou sempre em busca de novas experiências e oportunidades para aprender e crescer, tanto no âmbito profissional quanto pessoal. Valorizo o aprendizado contínuo e a colaboração, e estou aberto a novas ideias e desafios.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-01T17:41:00.000Z'::timestamptz),
  ('Giancarlo Ferreira Pereira','giancarlo.fp@hotmail.com',NULL,'53999550207','1983-03-11',42,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1VPi3JSLi-BSVXIhZO7zRq_WNd7TX5VnX','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2025-07-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','2020 - 2024  – Pref. Municipal de São José do Norte / RS.
Principais atividades: Assessor de frotas; Motorista B.
2019 - 2020 – Sargento Exército brasileiro. 
Principais Atividades: Liderar, supervisionar e coordenar equipes ; Chefe de seção; Auxiliar de SAME (Serviço de Arquivo Médico e Estatística).; Atividades Radiológicas; Eletrocardiograma.
2017 - 2019 – Hospital Municipal de São José do Norte / RS.
Principais Atividades: Supervisor  das Aplicações das Técnicas Radiológicas; Rotinas radiológicas.
2012 - 2015 – EBCO Systems – Operador Pleno / RIA.
Principais Atividades: RIA (Responsável por Instalações Abertas); Rx em containers.','Téc. Radiologia médica.','Certificado de Sargento Exercito Brasileiro / Certificado de Téc. em Radiologia. Certificado especialização de Proteção Radiológica, 300h, CETB-RJ.','Administrativa, Arquitetura, Licenciamentos, Novos Negócios','https://drive.google.com/open?id=1JgjeQUhK_Dek5s0BiYSv-6BpGoHtek-w',NULL,'Indicação','Não.','Inicial da função a ser desempenhada.','Sim','Leonardo ( Assessor de Frotas) 53 999313399. Prefeitura São José do Norte / RS.

Carlos ( Supervisor  das Aplicações das Técnicas Radiológicas ) 53 984376667. Hospital de Guarnição de Bagé.','Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa adaptável, trabalhadora e que gosta de desafios. Tenho paixão por estudar e, nas horas livres, gosto de correr. Estou sempre em busca de aprender algo novo e melhorar minhas habilidades.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-01T18:44:00.000Z'::timestamptz),
  ('Camila Nunes Centena Alves','milacentena@hotmail.com',NULL,'53999465470','1988-01-30',38,'União estável','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1EejBuG-U0lFNYwHPMQ3YwcicrRFgQ_I-','Arquitetura','Pós-graduação Completa','Universidade da Região da Campanha','2018-03-17','Sou formado','Já prestei serviços para a construtoras e engenheiros e arquitetos autônomos enquanto ainda estava na graduação. Logo após graduar em Arquitetura passei a gerenciar os projetos da construtora Aliança em Bagé e a fazer projetos de forma autônoma. Depois de finalizar o curso de transações imobiliárias, comecei também na imobiliária Novolar em Bagé a trabalhar como corretora autônoma e dessa forma levei as duas profissões durante algum tempo até que me mudei para cidade de Pelotas onde trabalhei na construtora ACPO e também de forma autônoma como corretora. Hoje trabalho na Prefeitura Municipal de Bagé, na parte de projetos de obras públicas e penso que além do conhecimento técnico profissional como arquiteta, tenho muito conhecimento e experiência na área comercial para poder desenvolver as vendas do empreendimento da forma que puder melhor agregar para empresa.','Sou formada em Arquitetura e Urbanismo pela Universidade da Região da Campanha em Bagé, possuo pós graduação em Docência do Ensino Superior concluída, pós graduação em Gestão Pública em andamento e curso Técnico em Transações Imobiliárias concluído em 2019 com CRECI ativo.',NULL,'Arquitetura, Comercial, Novos Negócios, Engenharia',NULL,NULL,'Instagram','não','R$2.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-01T23:09:00.000Z'::timestamptz),
  ('Moisés Brum','moisesbrum00@gmail.com',NULL,'55984020342','1992-01-12',34,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1jMggvDRHtztCqScp1WWyrKqhno7KQkyu','Administração de empresas','Pós-graduação Incompleta','Urcamp','2020-12-14','Sou formado','Exército Brasileiro
Cabo
2011 a 2019
Áreas Administrativas e Operacionais 

HS Consórcios
Vendedor
2020 a 2022

Autônomo 
2022 a 2024','Cursos Técnicos Informática, Hardware, Sofware, Pós graduação em andamento de gestão de negócios.','Vendas, Gerenciamentos, entre outros','Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Não','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-05T15:28:00.000Z'::timestamptz),
  ('Leandra latorre barrios','leandraprimeiro@gmail.com',NULL,'55996997598','1983-07-15',42,'Casado(a)','2','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1bwAOMPRdhS729PX0ijqm-7vlL4HUBOlk','Administração de empresas','Ensino Superior Incompleto','Unip',NULL,'Não, no momento pausei/parei por um período.','Posto primeiro, auxiliar Administrativo, abertura e fechamento de caixa, lançamentos de notas fiscais, ponto dos funcionários, depósito bancário, pagamentos,admissão e demissão de funcionário, exames periódicos, epis.',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1fglyQ2r9XtHY6mFLCtt7JTEW4KqJBkoO',NULL,'Facebook','Não','1700','Não','Posto garra, gerente administrativo Administrativo, abertura e fechamento de caixa, lançamentos de notas fiscais, ponto dos funcionários, depósito bancário, pagamentos,admissão e demissão de funcionário, exames periódicos, epis.','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-05T19:24:00.000Z'::timestamptz),
  ('Flávia teste','flavia@youngempreendimentos.com.br',NULL,'51996583880','2001-02-07',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=17Y-oIaViV9LiCDwnHm26gzCChEeiK8Dj','Administração de empresas','Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Nenhuma',NULL,NULL,'Comercial',NULL,NULL,'Agência de Empregos','Não','10000','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-05T19:46:00.000Z'::timestamptz),
  ('Valéria Dornelles Rosa','vdornelles29@gmail.com',NULL,'55991009834','2005-04-04',20,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=18Gev-G3Z583AQCQ9exURia9nMm75Sb2O',NULL,'Ensino Superior Incompleto','Federal do pampa',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Auxiliar de professora- prefeitura 
22/4/2022 até 01/08/2023',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Instagram','Não','Partir de 750','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-05T23:56:00.000Z'::timestamptz),
  ('Cezar Henrique Vieira Alencar','cezarhenrique214@gmail.com',NULL,'55984445034','2003-08-18',22,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1KVtIVHL6MCi1qEP95r6yQZqcC6-hl5NV',NULL,'Ensino Superior Incompleto','Uniasselvi','2027-03-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Eu já trabalhei em partes administrativa mas não era algo exatamente formal. A área que atuei foi fazendo uma escala de nomes e separando quais o dias cada um iria trabalhar, controlando suas atividades.',NULL,NULL,'Administrativa',NULL,NULL,'Facebook','Não','Espero receber pelo menos mais que o salário mínimo.','Sim','É meu primeiro emprego nessa área, estou fazendo faculdade. Seria meu primeiro estágio.','Estágio administrativo','Bom, sou técnico em informática! Tenho computador em casa e tenho conhecimento sobre Excel, planilhas e tudo sobre o básico e o principal da informática. Sei também algumas estratégias de marketing,como divulgar um produto e por onde começar. Tenho bastante familiaridade em administrar.
Como mencionei em uma das caixas de perguntas anteriores, já trabalhei em uma área onde tinha que fazer uma escala de pessoas, dias , tarefas e controlar suas atividades.Sou alguém de fácil comunicação, me adapto facilmente ao ambiente que estou inserido. Sei lidar com pessoas e tenho disponibilidade de horário.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-06T15:35:00.000Z'::timestamptz),
  ('Mariana Suarez','suarezgarciam29@gmail.com',NULL,'55997170511','2002-07-29',23,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1pl1LFKiJis0awN56BHDQu1_q4kB3zCXK','Direito','Ensino Superior Incompleto','Universidade da Região da Campanha','2026-08-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','—',NULL,NULL,'Administrativa, Estágio','https://drive.google.com/open?id=14fquRMPlCnam08XCgaNHRhYqtsbb1cP4',NULL,'Instagram','Não','R$1.250,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-07T02:03:00.000Z'::timestamptz),
  ('Braiam Willi Caratti Barboza','braiambarboza.aluno@unipampa.edu.br',NULL,'55981289764','1994-07-28',31,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1IUw4q1otccs8l7a19J18pKaNqQZpXkh5','Administração de empresas','Ensino Superior Incompleto','Unipampa',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','DAE, estagiando na função de aulixiar administrativo',NULL,NULL,'Administrativa','https://drive.google.com/open?id=1G9foNhFh0wU7_9v7pNszeivFAbLOX_N-',NULL,'Facebook','Não','2000','Sim','Eder, chefe do Protocolo','Quero inscrever-me no banco de talentos da Young!','Sempre quis trabalhar em escritório, mas a vida me levou para outros caminhos. Sem encontrar algo com o qual me identificava, comecei "por baixo" trabalhando como servente de pedreiro. O salário era bom, mãe não me identificava. Com o tempo comprei uma moto, tirei carteira AB e passei a trabalhar como motoboy/delivey por mais alguns anos. Consegui, depois de anos estudando, entrar na faculdade e larguei tudo para arriscar em um lugar o qual sempre sonhei: estagiando nos escritórios do DAE (fazendo as mesmas funções que um auxiliar administrativo). Ganhando bem menos, mas feliz por ter realizado um sonho. Agora procuro estabilidade e continuar crescendo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-07T15:02:00.000Z'::timestamptz),
  ('Yan Teixeira','yantxr@hotmail.com.br',NULL,'51999951447','1996-05-23',29,'União estável','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1oFCS8eL_cmzdy1dGL_8-0FUnJogC1xcY','Administração de empresas','Ensino Superior Incompleto','Unipampa',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Auxiliar Administrativo em Martigran Mármores e Granitos de 09/2017 até 08/2019. Atende momento e suporte à venda: Atendimento e suporte à venda, recebimento de pedidos, conferência de mercadorias, emissão de nota fiscal, recepção de clientes, atendimento telefônico e correio eletrônico.',NULL,NULL,'Administrativa, Estágio','https://drive.google.com/open?id=1EdZohA0jtv914lE5zEfoSWxgl5ogNPIm',NULL,'Facebook','não','1500','Não','Roberto Etchepare, (51) 9662-1411, Maître e Coordenador dos Garçons em Hotel Fazenda Figueiras','Estágio Administrativo','Fiz Curso de Massoterapia, Curso de Garçom onde o professor Roberto Etchepare me convidou para trabalhar com ele durante a temporada de veraneio no Hotel Fazenda Figueiras, tenho CNH tipo AB e também tenho conhecimento e familiaridade com Informática.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-08T02:05:00.000Z'::timestamptz),
  ('Marcus Leite da Silva','msmarcus22@gmail.com',NULL,'55999205173','1998-01-05',28,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=19A5PR1Q96ok1rYJ7bb-t3a8yl86wNCuZ','Ciências Contábeis','Ensino Superior Incompleto','Universidade Federal do Pampa - UNIPAMPA','2027-03-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estágio - IIcila 
Frentista - Espigão
Repositor - Aviário Nicolini',NULL,NULL,'Administrativa, Estágio, Engenharia','https://drive.google.com/open?id=1xT7IzEaRfJVdJUAC-m-j18S1C8MYXX61',NULL,'Instagram','Não','1.200','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-11T01:02:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Eduardo da Silva Albuquerque','eduardoalbuquerque.aluno@unipampa.edu.br',NULL,'55981148233','2002-03-19',23,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1U9UCCTxu6aHxGo2wTlHR-W6g9h4Kh7z1','Administração de empresas','Ensino Médio Completo','Universidade federal do pampa de Santana do Livramento','2025-03-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1- Dr.Pio
2- Trabalho na parte Administrativa do laboratório, as vezes ocorre de auxiliar outros setores.
3- Comecei dia 04/09/2023
4- Minha responsabilidade é o controle dos itens dos funcionários, como mascaras e luvas pois como se trata de um laboratório de analises clinicas, tem que manter tudo bem organizado como as data dos EPI de cada item. Esse controle é feito por fichas aonde é colocado os dados dos itens e os EPIs com as datas de validade com as assinaturas de cada funcionário. Também ajudo no estoque e com as notas que logo quando chegam no laboratório tem que ser integrado do sistema. Como as empresas tem veículos, são minhas responsabilidade também cuidar da parte administrativa de cada um, até mesmo a manutenção de cada um. Por ultimo, sempre vou nas outras filiais buscar os matérias para deixar na matriz em horários fixos todos os dias.','Pacote Office.',NULL,'Administrativa, Estágio, Financeiro, Engenharia','https://drive.google.com/open?id=1GL_OMYR3lYOA-DWMMoX-JLuhQGARLrMb',NULL,'Facebook','Não','R$2.000,00','Sim','Laboratório Dr.pio 
5584026105','Quero inscrever-me no banco de talentos da Young!','Tenho muita facilidade em computadores, tenho bastante experiência e convívio.

Gosto também de conversar com as pessoas, tenho uma facilidade em sempre me adaptar ao ambiente e as pessoas, sempre tive bons relacionamentos onde passei.  

Sempre particípio de trabalhos voluntários na faculdade, ainda mais nesse período das enchentes que ocorreu no Rio Grande do Sul.  

Nas férias passo a maior parte com a família, gosto de ficar em casa com a família e gosto de cozinhar também, aprendi desde cedo em cozinhar e é uma coisa que gosto de fazer quando estou em casa, além do mais vem de família de muitos anos. 

Mas algo que eu gosto tanto quanto ficar em casa, é de carros, sempre estou mexendo e andando de carro e se tivesse mais oportunidades aqui na cidade quando entrei na faculdade teria feito engenharia mecânica. No entanto até o momento esse sonho deixei de lado para focar em outras coisas. 

Sobre o idioma eu tenho familiaridade com o espanhol porque tenho parentes e amigos uruguaios, então se tornou algo comum para mim, mas não tenho a prática de falar em espanhol, apenas entendo, mas não consigo me comunicar muito bem.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-12T00:31:00.000Z'::timestamptz),
  ('Evandro Agradem da Silva','evandro_211@hotmail.com',NULL,'55984463204','2000-01-21',26,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1ORuNY7nZdnIxo7lpledm75y66D2JHVn0','Economia','Ensino Superior Incompleto','Unipampa','2027-03-15','Não, no momento pausei/parei por um período.','.','Ensino médio completo (obviamente),
Curso de informática e de designer gráfico profissional','.','Administrativa, Estágio, Marketing',NULL,NULL,'Indicação','Nao','.','Não','.','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-12T23:19:00.000Z'::timestamptz),
  ('Camila de Oliveira de Mello','camilaoliveiram.24@gmail.com',NULL,'92357974','2003-08-08',22,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1XLwLn3i6qCIBioyen20dWfJO-863ofxu',NULL,'Ensino Superior Completo','Universidade Federal do Pampa',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Já trabalhei na parte de energia renovável, sou técnica, me formei no IF Sul, e atualmente estou trabalhando numa empresa de Finança. Já fiz estágio em empresa de gráfica, clínicas.','Fiz curso de inglês e espanhol',NULL,'Administrativa',NULL,NULL,'Facebook','Não fui','Minha expectativa salarial seria mais de R$ 1.600,00, consigo ajudar a minha família tranquila.','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu sou o tipo de pessoa que ama aprender, ajudar e sempre está crescendo. Quero crescer mais na área que estou cursando. E gosto de coisas novas, sempre estou tentando ficar atualizada nos assuntos do mundo. Sempre estou estudando, porque gosto de fazer concursos, já fiz vários.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-13T15:15:00.000Z'::timestamptz),
  ('Milena Torres da silva cordeiro','milenatsc477@gmail.com',NULL,'55996695573','2005-04-06',20,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1TQrWvbRohiloYUXvRSV_e6202hpo-ty2','Medicina veterinaria','Ensino Superior Incompleto','Urcamp livramento','2027-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei no hospital veterinario da arca de noé mas ao certo não lembro a data que sai, trabalhei no posto feluma de jovem aprendiz adm, estou atualmente la','Tenho curso de informatica, auxiliar veterinario, banho e tosa, agricultura familiar, e recepcionista','Cursos, informatica , banho e tosa, auxiliar veterinario, agricultura familiar, e recepcionista','Administrativa, Estágio, Financeiro, Novos Negócios','https://drive.google.com/open?id=1a6e5sa0Gy3rDbbhQuVcFmgnogPyYGOxO',NULL,'Instagram','Não','1.200','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu sou estudante de medicina veterinária, amo a minha área, mas sempre busco novos conhecimentos! No meu tempo livre, gosto de andar a cavalo, estar com a família. 
Tenho habilidades com trabalhos no computador, trabalho facilmente em grupo, e tenho facilidade em resoluções de conflitos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-14T12:31:00.000Z'::timestamptz),
  ('Carolina Alves Pinto','arquitetacarolina@hotmail.com',NULL,'55999540510','1977-05-11',48,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1q0VlEW-6PfFqldKZt0mGkowv5fdiRh5h','Arquitetura','Pós-graduação Completa','UniRitter','2005-01-13','Sou formado','Prefeitura Municipal de Santana do Livramento, Arquiteto,2009-2013 e atualmente,','Auditoria e Perícia de Engenharia e Master em Arquitetura e Urbanismo',NULL,'Arquitetura, Licenciamentos, Engenharia',NULL,NULL,'Google','Nao','4000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-14T17:22:00.000Z'::timestamptz),
  ('Bruno Severo dos Santos','brunosevero047@gmail.com',NULL,'55984295103','2006-05-05',19,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=15obyze-znWG-Q5WH7aeBah1YzAuMATzb',NULL,'Ensino Médio Completo','Unipampa',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estou me candidatando ao meu primeiro emprego, entretanto, já tive a experiência de fazer estágio pelo Polo UAB na área das mídias sociais e atendimento.','Estou cursando no momento Administração na Unipampa, com a pretensão de me especializar em marketing após o fim do curso. Ja tenho concluído cursos de informática e excel no Senac,  e agora estou realizando Design Gráfico pelo Instituto Mix.',NULL,'Estágio, Marketing',NULL,NULL,'Indicação','Não','1000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Estou sempre na busca de melhorar em algo, e pra isso pretendo focar em cursos para me especializar na área do marketing. Gosto de desenhar no tempo livre, isso desde criança, pois é onde consigo me expressar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-17T23:55:00.000Z'::timestamptz),
  ('Washington dos Santos Peres','peres.wds@gmail.com',NULL,'55997057492','2000-07-01',25,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1gdiZYSQxtRqe1TRjb1Q-bXrJpxJ7zTpC','Ciências econômicas','Ensino Superior Incompleto','Unipampa','2026-03-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Dois estágios ambos na prefeitura, o primeiro no procon onde atendia o consumidor e tentava conciliar o mesmo com as empresas, atendia e organizava a recepção e lidava com o marketing pios não época fazia curso de técnico em administração no Senac. Com tudo, estagiei um ano e 5 meses. No segundo estágio no ICMS, atendia o balcão e lançava blocos no sistema, participava da organização de fichas, onde estagiei 6 meses.','O curso de Economia analisa como indivíduos e sociedades fazem uso de seus recursos, incluindo a produção e a distribuição de bens e serviços. Este programa abrange uma ampla gama de disciplinas vinculadas à economia, tais como: Organização econômica, Análise econômica, Finanças, Mercados, Economia internacional, Política fiscal, Macroeconomia, Desenvolvimento econômico, Fundamentos de administração, Raciocínio lógico e analítico. Além disso, o curso explora o comportamento do mercado em diferentes cenários, incorporando conhecimentos de ciências políticas, humanas e exatas.','Sou formado em técnico em administração pelo instituição Senac','Estágio','https://drive.google.com/open?id=1X2U3zF2ijiQzn9Q5DvlSFsgHUertYAZO',NULL,'Indicação','Não','1000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Já voluntariei em um período de 3 anos, onde fui 2 estagiário na associação de moradores do meu bairro (Wilson). Associação sem fins lucrativos que visa ajudar as pessoas carentes da comunidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-20T19:40:00.000Z'::timestamptz),
  ('Dariane Elizabeth Coelho Oliveira','dariane1oliveira@gmail.com',NULL,'55984418612','1999-11-16',26,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1gHWOYcfsALO7yP0mai3MUnI5RElxj_b8','Administração de empresas','Ensino Superior Incompleto','Universidade Federal do Pampa','2025-12-18','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Clínica Brasil Dentistas - Secretária 13/05/2021 a 12/05/2022
Atendimento e Suporte ao Cliente, Conferência de Materiais, Caixa. 
DAE - Departamento de Águas e Esgotos - Auxiliar Administrativo 
16/01/2023 atualmente 
Auxílio em Compras, Elaboração de Memorandos, Atendimento ao Cliente, Realizações de Cobranças.','Auxiliar Administrativo, Auxiliar de Recursos Humanos, Atendente de Saúde.','Auxiliar Saúde Bucal, Auxiliar Administrativo, Auxiliar em Recursos Humanos, Gestão de Equipes','Administrativa, Estágio','https://drive.google.com/open?id=1tW0ZdJGrCwnGRbW98aJ5I2whA_GFciuF',NULL,'Indicação','Não','R$1.000,00','Sim','Luiz Fernando Chefe Setor Esgoto DAE - 55984618971','Quero inscrever-me no banco de talentos da Young!','Escorpiana, 24 anos, uma pessoa divertida, alegre, comunicativa, muito ativa para solucionar problemas e ajudar ao próximo. E que ama aprender coisas novas, conhecer pessoas.

Da odontologia a Administração Pública. 
Apaixonada por Gestão de Pessoas e área de comunicação. 

Mamãe da Ísis, uma pequena princesa sapeca e muito risonha… rsrs 
Realizo trabalhos voluntários na faculdade, e com um projeto novo de Práticas de Extensão onde realizamos palestras, cursos, aulas para a população adquirir conhecimento em diversas áreas, tais como: financeiro, marketing, logística, estratégias de vendas e saúde mental no ambiente de trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-21T15:53:00.000Z'::timestamptz),
  ('Thais Pereira Braz','thaispbraz12@gmail.com',NULL,'55991473043','1994-04-30',31,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1zAgG98iagjCyMYR7slD7sdMSJS0XDhHr','Direito','Ensino Superior Completo','Urcamp','2020-01-31','Sou formado','▪ Estágio no Setor de Arrecadação da Secretaria Municipal da Fazenda 2015/2016; (atendimento ao público)

▪ Estágio no Juizado Especial Cível da Justiça Estadual 2016/2018; (atendimento ao público, análise de processos judiciais, elaboração de minutas)

▪ Estágio no Escritório de Contabilidade Espaço Contábil 2018; (ajudante administrativa, secretária)

▪ Estágio no Gabinete da Vara Criminal da Justiça Estadual 2018/2020; (elaboraçao de despachos)

▪ Caixa na Empresa Lotérica Sanz 2021/2022, 2024. 
(atendimento ao público)',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Facebook','Não','1.900','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Realizei o segundo grau com especialização no magistério e também sou bacharel em teologia. Realizo trabalhos voluntários há anos, Também cordeno um grupo de teatro, no qual nos apresentamos nas escolas levando uma mensagem positiva e de esperança as crianças. 
Estou estudando para a segunda fase do exame da Ordem dos Advogados  do Brasil (OAB)
Fiz faculdade de administração por dois semestres e após troquei para o curso de Direito, porque embora gostasse do curso que estava realizando, entendia que o curso de Direito poderia me abrir mais opções profissionais.
Sou muito pró ativa, disposta, gosto de aprender e me desafiar, gosto das ciências exatas como a matemática  e também gosto de lidar com pessoas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-24T19:14:00.000Z'::timestamptz),
  ('Hellen Emanoele Figueiredo Carvalho','hellenfig03@gmail.com',NULL,'55999236109','2001-04-03',24,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1HmJhH1GvZoZeTXoAb7hnNVcwbKOctoiD',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Lojas Pernambucanas - Operador de caixa.
Além de operar o caixa, auxiliava nos atendimentos ao público. Início em 12/12/2023 término em 10/09/2024.

Câmara de Vereadores - Estágio em Marketing. 
Além de realizar postagens e cuidar das redes sociais, auxílio nas demandas internas do gabinete. Atualmente, período da manhã.

TVA Finanças - Estágio Auxiliar Financeiro.
Auxílio nas demandas financeiras, bem como realizar sangria, criar planilhas financeiras.','Além de cursar Administração na Unipampa, campus Sant’Ana do Livramento, estudo contabilidade comercial na Anhanguera. Possuo nível básico de inglês (Ifsul) e cursos profissionalizantes, como Operador de Caixa, Pacote Office e informática básica. Ademais, faço parte do projeto de extensão UNICult da Unipampa, que tem como foco democratizar e viabilizar a cultura na faculdade e sociedade.',NULL,'Administrativa, Estágio, Financeiro, Marketing','https://drive.google.com/open?id=1O3Y38Lysl58OVsbz4Pc_dv86dt8so3PJ',NULL,'Instagram','Não.','1.600','Não',NULL,'Apresento interesse tanto no Estágio Financeiro quanto  Auxiliar Administrativo.','Em primeiro plano, estudo Administração para ter uma estabilidade financeira e profissional boa no futuro, pois me preocupo bastante com isso. Pretendo fazer Pós e Mestrado, porque gosto de estudar e aprender, sempre que dá estou fazendo cursinhos online (recentemente conclui o curso de inglês do IFSUL) e no futuro pretendo estudar fora, acredito muito que o estudo vá me dar muitas recompensas. Além disso, sou uma pessoa comunicativa, educada e um pouco introvertida.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-24T20:31:00.000Z'::timestamptz),
  ('Milena torres da silva cordeiro','milenatsc477@gmail.com',NULL,'55996695573','2005-04-06',20,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=15bNwVQcpapwnRcRv58TboUYR1Uz6xnNB','Medicina veterinária, e técnico em administração','Ensino Superior Incompleto','Urcamp/ Anhanguera','2027-11-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei como monitora na escola Pacheco Prates, trabalhe de auxiliar veterinária no hospital vet da arca de Noé , e trabalhei como jovem aprendiz administrativo, no posto espigão feluma.','Faço técnico em administração na Anhanguera, tenho curso de informática, auxiliar administrativo, recepcionista, entre outros na área da veterinária também , como auxiliar veterinário, agricultura familiar, banho e tosa.','Sim possuo, de todos cursos que já citei','Administrativa, Estágio','https://drive.google.com/open?id=1EvcrOLhi_hNfUBvAS0RwTCr1eb9clR8f',NULL,'Instagram','Não','1300','Não','Entrar em contato com a escola Pacheco Prates (55) 3968-1046','Quero inscrever-me no banco de talentos da Young!','Oi! Deixa eu me apresentar: meu nome é Milena Torres da Silva Cordeiro. Eu estou cursando faculdade de medicina veterinária e também faço um curso técnico em administração. Sou uma pessoa muito criativa e aprendo as coisas com facilidade. Adoro trabalhar em grupo e lido bem com o público, além de ter uma habilidade especial para resolver conflitos e problemas.

Gosto de pensar em formas de gerar impacto positivo , Estou sempre buscando novas oportunidades e adoro desafios que me façam crescer tanto pessoal quanto profissionalmente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-26T01:30:00.000Z'::timestamptz),
  ('Erik Matheus de Almeida Cardoso','erikcardoso777@gmail.con',NULL,'51992820080','2002-03-18',23,'Solteiro(a)','0','Sim','Caraá/rs','https://drive.google.com/uc?export=view&id=1zeElhckGwNUrek3fDg_ZOk2HnMDDllNN','Administração de empresas','Ensino Superior Incompleto','Estácio','2026-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Banrisul 2) Estagiário 3) 03/2022 a 03/2024 4) Atendimento ao público, vendas, arquivo',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1uP1jQZ262cAaSFMFPSKIqZlX9WjMmNvn',NULL,'Instagram','Não','1.660','Sim','Angelo Festinalli','Estágio','Profissional dinâmico e dedicado com experiência diversificada em atendimento ao cliente e instrutoria. Atuei por 2 anos como atendente em um banco, onde desenvolvi habilidades sólidas em comunicação, resolução de problemas e atendimento personalizado.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-29T00:04:00.000Z'::timestamptz),
  ('Julia Pinheiro Machado','petrim068@gmail.com',NULL,'55984568220','2005-08-28',20,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1Cz6oyBc6nkm-i6W8j7o4GpeMNJm47AcC',NULL,'Ensino Superior Incompleto','Unipampa','2028-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','barbearia autoestima, atendimento, 01/01/23 a 03/07/2023, atendia, fazia agendamento online e presencial, fazia post para instagram e cobrava','estou cursando superior em administração e fiz 1 semestre de técnico em adm, em geral é uma área que eu gosto e tenho facilidade para lidar. oque eu não souber fazer, aprendo rápido','tenho curso online em marketing digital','Administrativa, Estágio, Marketing','https://drive.google.com/open?id=1BMyOuqmnNMnJCWRmxNXJC_lEtPi20DOZ',NULL,'Indicação','não','1500','Não','na empresa startup','Quero inscrever-me no banco de talentos da Young!','ola, me chamo julia, tenho 19 anos 
tenho facilidade em aprender e vontade também, entendo o básico de espanhol gosto de trabalhar na área administrativa, sei lidar com word, planilhas e etc…','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-29T03:28:00.000Z'::timestamptz),
  ('Juan Manuel Maciel dos Santos','juandossantos1199@gmail.com',NULL,'55984462226','1999-10-01',26,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1zEN8kOXMFL4eHAzWc7k_GVK86JwXWItl','Administração de empresas','Ensino Superior Incompleto','UNIPAMPA','2027-06-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','02/2018 - 02/2019 - Laboratório Dr. Bolivar
Auxiliar Administrativo, Santana do Livramento
●Registro de fluxo de caixa
●Atualizações de tabelas Excel de convênios médicos e valores

12/2021 - 09/2022 - Sociedade Santanense de Hotéis (Hotel Portal)
Recepcionista, Santana do Livramento
●Fechamento de Caixa
●Administração de Turno
●Reservas e atendimento ao público

02/01/2023 - 30/04/2024 - VIA S.A Casas Bahia
Assessor de vendas, Santana do Livramento
●Vendas e atendimento ao público','Autodidata em pacote Office',NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1nFnH3hfzkQBU90liVYouJ_dDqCvIpwyz',NULL,'Instagram','Não','R$2.000,00','Sim','Mariana Villar, +55 55 9961-6224, Laboratório Dr Bolivar','Auxiliar Administrativo','Meu nome é Juan Manuel Maciel dos Santos, tenho 24 anos e sou graduando em Administração pela UNIPAMPA. Ao longo da minha trajetória profissional, desenvolvi uma sólida base em funções administrativas e de vendas, sempre focado em contribuir para o sucesso das empresas em que atuei.

Minha experiência começou no Laboratório Dr. Bolivar como Auxiliar Administrativo, onde fui responsável pelo registro de fluxo de caixa e pela atualização de tabelas Excel, adquirindo habilidades em controle financeiro e gestão de dados. Essa função foi essencial para o desenvolvimento do meu senso de organização e atenção aos detalhes.

Depois, trabalhei como Recepcionista na Sociedade Santanense de Hotéis, onde liderei o fechamento de caixa, administração de turnos, reservas e atendimento ao público. Essa experiência me permitiu aprimorar minhas habilidades em atendimento ao cliente, gestão de equipe e resolução de problemas, garantindo uma operação eficiente e de qualidade.

Mais recentemente, atuei como Assessor de Vendas na VIA S.A. Casas Bahia, onde me dediquei ao atendimento ao público e à realização de vendas. Aprimorei minha capacidade de identificar as necessidades dos clientes e oferecer soluções personalizadas, sempre com o objetivo de contribuir para o crescimento das vendas e a satisfação dos clientes.

Com minha fluência em espanhol, nível intermediário em inglês, conhecimentos avançados em informática, incluindo Photoshop, Excel e PowerPoint, estou preparado para agregar valor à equipe e enfrentar os desafios propostos pela vaga, contribuindo para o sucesso contínuo da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-29T10:58:00.000Z'::timestamptz),
  ('Kamila Silva de Souza','kamila321s@icloud.com',NULL,'51998438253','2004-10-05',21,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1EdCrWglrz2XOTdoRzKoAxB63jIL29v8w',NULL,'Ensino Médio Completo','Escola Patrulhense','2022-12-12','Não, no momento pausei/parei por um período.','1) Claudir Automóveis 
2) Cargo: auxiliar administrativo 
3) Data de início: 22/01/2023 
Data final: 15/12/2023
4) Atividades: Organizar as contas, site, subir automóveis pro sistema, cadastro de clientes e automóveis, organizar o perfil das redes, tirar e editar as fotos dos carros, fazer/preencher a documentação para transferências/vendas/compras de veículos, consultar placas, ir ao cartório/tabelionato com clientes pra assinatura.','Curso de Administração com 90h 
(Gestão financeira, vendas e marketing, secretariado, departamento pessoal, contabilidade)',NULL,'Administrativa, Arquitetura',NULL,NULL,'Instagram','Não','Acredito que seja algo a ser conversado e moldado de início.','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-29T14:45:00.000Z'::timestamptz),
  ('Maria Helena Martins Dill','santosmartinsmariahelenados@gmail.com',NULL,'55997148720','1998-04-18',27,'Casado(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=12vdEn-ew1ip6xaV5_agzZNJYjvx2mn-L',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Minuano alimentos',NULL,NULL,'Administrativa','https://drive.google.com/open?id=1Rz-aTSkmGoghVm4_--XpG00KtU8JzEmG',NULL,'Facebook','Não','1.600','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-30T00:44:00.000Z'::timestamptz),
  ('Giovan Carvalho Madruga','giiovancm@gmail.com',NULL,'53999067394','1995-06-14',30,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1nve1jWlLGMrYI5231t5I_bbtVuJ_4BY2','Engenharia Civil','Pós-graduação Incompleta','Urcamp','2023-07-15','Sou formado','A mais de 10 anos de experiência na construção civil, na ramo da construção residencial. CEO da Madruga Fundações e Vigamentos. Atualmente atuando como fiscal de atividades e obras no aeroporto internacional de Bagé.','Pós graduando em Estruturas e Fundações',NULL,'Administrativa, Arquitetura, Engenharia','https://drive.google.com/open?id=1De1n1kMGHyXGtteHM1bZ64cHWzGhID1u',NULL,'Entraram Em Ctt Comigo','Flávia Braun','Depende da atuação e forma de contratação. Valores a partir de 7.500,00.','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-08-31T13:09:00.000Z'::timestamptz),
  ('Fábio Burgo da Silva','fabioburgo21@gmail.com',NULL,'53981191765','1980-07-21',45,'Solteiro(a)','1','Sim','Ijuí/rs','https://drive.google.com/uc?export=view&id=1h4BURMZ376jWdC8t3vnZO0fMTwUJTsav','Engenheiro civil e Engenheiro de Segurança do trabalho','Pós-graduação Completa','Universidade Católica de Pelotas','2015-08-15','Sou formado','Trabalhando como engenheiro civil desde 2015 em obras particulares, com diversos projetos de engenharia.
Engenheiro civil na prefeitura de Bagé por 5 anos, trabalhando como fiscal de contratos, gestor de convênios, fiscal de obras públicas e trabalhos de engenharia diversos.
Atualmente trabalho na prefeitura de Ijuí como engenheiro civil.','Pós graduação em Estruturas de Concreto e Fundações e Engenheiro de Segurança do Trabalho.
Conselheiro da câmara especializada de engenharia civil - CREA RS.
Diversos cursos na área da engenharia l, todos comprovandos com certificados.','Especialização em estruturas de concreto e fundações e engenheiro de segurança do trabalho.','Administrativa, Licenciamentos, Engenharia','https://drive.google.com/open?id=11HT7x2eynzDX98xQHYAq4QMVIcO1GI8L','https://drive.google.com/open?id=1szj4XXqr2hx_DEexnkWd42ZWALUbPhzz','Agência de Empregos','Não','R$7.500,00','Sim','Secretário - Prefeitura municipal de Bagé 
Alexandre Vedooto - 53 99283487','Engenheiro Civil','Na minha área de atuação profissional trabalho com softwares como autocad, eberick, orçaFasio entre outros.
No meu tempo livre procura ficar com meus familiares, andar de bicicleta, fazer uma leitura e desenvolver alguma atividades na cozinha.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-02T13:12:00.000Z'::timestamptz),
  ('Fabi Alessandra Oliveira','alessandrafabi54@gmail.con',NULL,'51995029445','2001-08-06',24,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1PYiASG0Xj-PzP9KtZJKkcVhYxEAJRwre','Auxiliar administrativo','Ensino Médio Completo','Unicesumar','2024-06-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Nostra pipoca 
Atendente balcão e caixa 
Setembro 2023 a julho de 2024

Marcio lanches 
Atendente',NULL,NULL,'Administrativa, Marketing','https://drive.google.com/open?id=1KFlmKEdbiqek9VzWNMybnWHdoxvxnmts',NULL,'Indicação','Não','De 1.500 a 1.800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-03T19:21:00.000Z'::timestamptz),
  ('Gabriel Martins dos Santos','gabrielmengenharia@yahoo.com',NULL,'53999557932','1997-03-23',28,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1gjXGgusuGf6oOiRvO-k5kCB3vnzz0Y9v','Engenharia Civil','Pós-graduação Incompleta','URCAMP','2019-03-23','Sou formado','1)        MTK Construção Civil
2)        Engenheiro Residente
3)        03/2021 a 09/2024
4)        Engenheiro responsável pelo acompanhamento da obra, analise e interpretação de projetos, conferência de serviços no canteiro de obras, analise de planilhas/composições, gestão dos funcionários (empresa e terceiros), registro fotográfico do andamento, bem como respectivo diário de obras, preenchimento de medição de serviços, controle e gestão do consumo e emprego de insumos, AS Built, comunicação direta entre contratante(UNIPAMPA) e contratada (MTK – Representante), solução de problemas/falhas de projeto encontradas no decorrer dos serviços, dentre outras atividades do dia-a-dia.

1)        I9 Engenharia Eirelli
2)        Engenheiro Residente
3)        02/2020 a 02/2021
4)        Trabalho desenvolvido extremamente semelhante ao na empresa MTK, somado a algumas exigências especificas do Tribunal de Justiça, tais como relatórios completo de serviços para medição, relatório de higiene e controle em função do COVID19, comunicação direta com os responsáveis pelo foro, para melhor desenvolvimento das atividades.','Estou concluindo 2 pós-graduações: MBA em Gestão de obras na construção civil e Engenharia de segurança do trabalho.','Pós graduações em conclusão. Curso de avaliações de imóveis por inferência estatística completo.','Engenharia','https://drive.google.com/open?id=1cpChv7kmmIeKZ3FwSrXbBliIKOFTbvdA','https://drive.google.com/open?id=1FbJFgho5f6Q-5mBaYE7bao-Zdq34DtFR, https://drive.google.com/open?id=1jNDPWwp2BfLJOl5O7DRjxrEoB2Z0yZ1Z, https://drive.google.com/open?id=1OeuTrgwTcr1TOBsAheGGQxmlmwSavfzJ, https://drive.google.com/open?id=1FzBLKDozIbzWLuoj_u8z-wHfoH1meBxV','Agência de Empregos','Não','Valores ajustáveis conforme necessidade e carga horaria necessária.','Sim','Paulo Sergio Spanholo – Diretor MTK Construções – 051 984290866
Isaac Teixeira Ramos – Diretor i9 Engenharia – 051 984369705','Engenheiro Civil','No fim da graduação fiz curso de inglês, concluindo mas não dando continuidade no uso do idioma, algo super necessário pra manter a pratica e vocabulário! Faço parte de um movimento na igreja católica, voltado para evangelização de jovens, o Emaús, dedico sempre que possível meu tempo as nossas reuniões, encontros do nosso grupo e de toda a comunidade do movimento, é algo super importante pra mim!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-05T20:18:00.000Z'::timestamptz),
  ('Ícaro Sutil Martins','icaro.martins77@gmail.com',NULL,'55999540118','1991-10-10',34,'Solteiro(a)','0','Sim','Santa Maria/rs','https://drive.google.com/uc?export=view&id=12INXORMRWSfrfF25O8X7JROAdTT0rc4c','Engenharia Civil','Ensino Superior Completo','Universidade Federal do Pampa','2016-03-18','Sou formado','Consórcio Expansão - formados pela Beck de Souza e pela Magna Engenharia. Atuei como engenheiro civil na fiscalização de obras de saneamento básico na cidade de São Borja e Osório (RS). Iniciei em maio de 2021 e terminei meu contrato em julho de 2024. 

Atuei em loteamentos na cidade de São Borja, onde realizei a execução da rede de abastecimento de água do Loteamento Janot 2. 

Trabalhei como Engenheiro da secretaria de obras públicas do estado do Rio Grande do Sul (SOP-RS), na cidade de Santiago-RS. Início em outubro de 2022 e término em dezembro de 2023.

Trabalhei na empresa PBfort Engenharia, na cidade de São Borja, executando obras de drenagem urbana e pavimentação. Início em maio de 2023 e término em dezembro de 2023','Estou cursando pós gradução em saneamento básico e drenagem urbana pela Universidade de Santa Cruz do Sul.',NULL,'Engenharia','https://drive.google.com/open?id=1HGjBh9JdffkyFbQY7BO6dWGPZeP_dSGq',NULL,'Google','Não','10000','Sim','Frederico Janot - 55 99108-2888 Loteamento Janot 2 
Wayne Fernandes - 83 99175-0763 Encarregado PB Fort
Wilson Leipnitz - 51 98551-4541 Gestor do Consórcio Expansão Beck de Souza/Magna
55 99989-7997 - Tatiana Cezimbra Diretora do Departamento de Obras da Corsan na Fronteira Oeste','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-05T20:42:00.000Z'::timestamptz),
  ('Mikael da Silva Santos','mikaelsilvasantos2005@gmail.com',NULL,'51998596449','2005-12-20',20,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1rBSPa1dAkOi5JaGsu8272zZFiJTPqf1s',NULL,'Ensino Médio Completo','ieesa','2023-12-20','Não, no momento pausei/parei por um período.','doces do bosque, trabalhei 1 ano e 3 meses como auxiliar de taxador fazendo rapaduras',NULL,NULL,'Marketing',NULL,NULL,'Instagram','não','acima de 1.500','Sim','Marcia Fadini, 51','marketing','gosto bastante de trabalhar com marketing, desde pequeno sempre fui de conversar e sem muita timidez e sempre busco estudar sobre criação de conteudos','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-09T20:34:00.000Z'::timestamptz),
  ('Fábio Suyan da Silva','fs.suyan2001@gmail.com',NULL,'51999827499','2001-04-22',24,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1czJ8KIqC28NUSJ2YdADiB781aFuFVfiP','Gestao ambiental','Ensino Médio Completo','Uninter','2026-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Cooperja- Operador de Máquina','Curso de idioma (Inglês)',NULL,'Licenciamentos, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Não','2.500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-09T22:16:00.000Z'::timestamptz),
  ('Aline Aparecida Reis Vianna','alinevianna4183@gmail.com',NULL,'51998852475','2024-11-24',1,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1A6j2wYLkvqyRwbOoHDBjgFQtHIzkpyYd','Recursos Humanos','Ensino Superior Incompleto','UNIASSELVI','2026-04-24','Não, no momento pausei/parei por um período.','02.03.2015 - 07.06.2019
*Trabalhei na Empresa Domingues e Filho na área Administrativa e na área das vendas.
07.07.2020 -27.09.2021 
*Trabalhei na empresa 
Distribuidora Super Real, Gestor Administrativo.
06.09.2022 - 15.03.2023
Trabalhei na Empresa Geodados Geoprocessamento Serviços Aéreos Especializados LTDA.
* Administrativo e Atendimento Telemarketing Ativo e Receptivo.
03.07.2023 -18.03.2024
Trabalhei na Empresa CGB Energia LTDA 
* Auxiliar de Escritório em Geral.
04.04.2024 
Escritório de Advocacia…
Administrativa.
Em busca de oportunidade com de forma a contribuir com o crescimento da empresa, gosto muito de trabalhar nessa área, fico a disposição!
E aberta a novas oportunidades e Aventuras!','O Poder do Foco  pela Legacy Coach
Palestrante e Treinamento  em  Atendimento 
Especializado ao cliente .
Trabalho em equipe ( Vargas Ltda)','O Poder do Foco  pela Legacy Coach Palestrante e Treinamento  em  Atendimento  Especializado ao cliente .','Administrativa, Comercial',NULL,NULL,'Indicação','Caroline','Compatível com a função.','Não','João Domingues +55 51 99586-9998','Administrativo','Excelente capacidade de comunicação,
relacionamento interpessoal.
Comunicativa  e Ágil. 
Comprometida, ética com informações confidenciais. 
Habilidades com Marketing Digital .
Já fiz trabalho voluntários, Trabalhei na central do COVID 19.
Amor em tudo que faço.
Essa sou eu!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-09T23:48:00.000Z'::timestamptz),
  ('Gabriele Iriso Castro','gabrielecastro227@gmail.com',NULL,'55999124639','1999-06-16',26,'Casado(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1v3C0WueweZq7E2kYKj-givC9kW_zI08C',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Atuo como secretária na Barbearia Guilherme Carvalho situado em São Borja.
Cuido da gestão e administração da empresa acompanhando o desenvolvimento e crescimento da empresa.
Atendimento personalizado ao cliente, tanto presencial quanto on-line para melhor atende los.',NULL,NULL,'Administrativa, Comercial, Marketing','https://drive.google.com/open?id=1NaHzg4faDp1H1kgyxoV2Q0-ReVqnx_BF',NULL,'Instagram','Não','Entre 1.600,00 a 2.000,00','Sim','Barbearia Guilherme Carvalho 
Telefone: 55999865346','Quero inscrever-me no banco de talentos da Young!','Me chamo Gabriele Castro, tenho 25 anos.
Moro em São Borja a 4 anos. Desde que cheguei atuo como secretária na barbearia do meu esposo.
Quero novas oportunidades de crescimento, estou em busca de novas experiências. Encontrei a Young através de um anúncio do Instagram e adorei as estratégias abordadas, o marketing e tudo mais. 
Adoraria fazer parte.
Complementares; sou casada, possuo habilitação categoria B, gosto de viajar, me aventurar, cozinhar e principalmente ser feliz.
Tenho uma rápida aprendizagem, sou responsável e comprometida e com certeza empatia e humildade são as minhas bases de uma boa relação com todos ao meu redor.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-10T17:44:00.000Z'::timestamptz),
  ('Ana Carolina Kioko Kamimura Engelke','carolengelke2310@gmail.com',NULL,'51995114755','2003-10-02',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1t-jU4IlmRGrQ3Ft2CHvrM6h8yomYtgrZ',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura Municipal de Santo Antônio da Patrulha - Estagiário: trabalho no setor de Cadastro Imobiliário/IPTU, onde faço atendimento ao público, guias de ITBI, parcelamentos e cobrança de dívidas, análise de projetos imobiliários e também lido com processos jurídicos.

Cacau Show - atendente de loja: Trabalhei na temporada de Natal (2023) e Páscoa (2024), atendendo os clientes, auxiliando com os produtos e também operando caixa. 

Escola de natação e hidroginástica Super Esporte - secretária: Trabalho alguns turnos, por ser a empresa dos meus pais eu consigo conciliar com o estágio na Prefeitura. Faço cobrança de mensalidade, manuseio máquina de cartão, cadastro de alunos e atendimento ao público de todas as idades, desde crianças a idosos.','Estou atualmente cursando Administração na UniRitter.',NULL,'Administrativa, Estágio, Financeiro, Licenciamentos','https://drive.google.com/open?id=1YibaYUsxR3opN5qM1F--qBkCmxx-hOkV',NULL,'Instagram','Não','R$1.600,00','Sim','Alexandre Paes de Souza - 51 995524410: Agente fiscal na Prefeitura Municipal de Santo Antônio da Patrulha, meu chefe/superior atual.','Estágio Financeiro','Sou fluente em inglês, autodidata e com experiência de 4 meses morando em Nova York. Tenho domínio da língua na escrita, audição e fala. 
Possuo conhecimento intermediário do pacote Office. 
Tenho muito interesse e dedicação, aprendo rápido e respeito hierarquia, bem como todos os colegas de trabalho. Espero muito que me deem uma chance de contribuir para a empresa!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-10T22:03:00.000Z'::timestamptz),
  ('Felipe Ruggiero Dutra','feliperug.dut@gmail.com',NULL,'33988766333','2003-03-03',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1MfjBHQ3i8-werPBb3YirJho1wR7V2JdB','Engenharia de Produção','Ensino Superior Incompleto','Universidade Federal do Rio Grande- FURG','2026-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Não possuo experiência anteriores, faço parte apenas da Empresa Júnior de engenharia de produção no setor financeiro, auxiliando nas finanças da empresa e parte de cálculo de custos de produtos de clientes.',NULL,NULL,'Estágio, Financeiro','https://drive.google.com/open?id=1v5yC96tDgZktaPcM__NqTY2gShGdBwry',NULL,'Instagram','Não','R$1.700,00','Sim',NULL,'Estágio Financeiro','Sou uma pessoa fácil de lidar, gosto muito de buscar cada vez mais por conhecimentos, buscando aumentar minha capacitação.
Tenho um conhecimento intermediário a avançado sobre pacote Office, gosto da parte financeira e tenho um conhecimento intermediário a avançado em inglês.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-10T22:05:00.000Z'::timestamptz),
  ('Fabricio Gabriel Heldt','fabricio.heldt@gmail.com',NULL,'996224608','1995-03-25',30,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1M496NWTbuKuGLeUH6PF5Ema3AeAEmLw1','Administração de empresas','Ensino Superior Completo','Faccat Faculdades integradas de taquara','2024-03-09','Sou formado','Trabalhei 4 anos na masal na produção, corte e dobra.  
Trabalhei 2 anos no posto Marco zero no caixa e ajudante em algumas atividades administrativas .
E a trabalhei mais 2 anos na clip onde era do setor almoxarifado ,recebendo mercadorias conferindo e enviando para as lojas clip de Santo Antônio da patrulha e também cadastrando produtos e colocando preço.','Fiz 1 ano de curso rotinas administrativas além de ser formado em administração',NULL,'Administrativa, Estágio, Financeiro, Marketing','https://drive.google.com/open?id=1FY2vjHNS5yIACRcmuuo8Z2Hcii2m7UZb',NULL,'Instagram','Nao','1700 a 2000','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-10T23:33:00.000Z'::timestamptz),
  ('Laís Eduarda Strassburger','strassburgerlais15@gmail.com',NULL,'51995770803','2003-03-05',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1EzzPW2cvIbrcwVSuEpy795DASkpktkCI',NULL,'Ensino Superior Incompleto','Centro Universitário Leonardo da Vinci - Uniasselvi','2026-01-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1- Infocell, assistência técnica de celulares 
Atendente de loja/vendedora
01/03/2022 - 10/03/2024
Atendimento direto ao cliente com vendas e orçamentos de celulares/notebook, emissão de notas fiscais, compra de peças e celulares, auxílio em pagamento de contas, organização da loja, fechamento de caixa e responsável por resoluções de problemas em loja.

2- New Point Celular (Agente Autorizado Claro)
Consultora de vendas 
11/03/2024 - Atual trabalho
Atendimento ao cliente presencial e remoto, com vendas de planos móveis e residenciais, resolução de problemas e auxílio em necessidades do cliente com a operadora, venda de celulares, seguros móveis e acessórios.','Sou acadêmica de Processos Gerenciais, uma área bem ampla e com possibilidade de atuação em várias partes do administrativo abordando gestão e administração de empresas. Meu tecnólogo dura em média dois anos para a formação e atualmente estou no segundo semestre de estudos.
Possuo também, cursos de curta duração pelo Instituto Federal do Rio Grande do Sul (IF), sendo eles, Auxiliar administrativo (40h), Marketing Digital (30h) e Informática básica (30h).',NULL,'Administrativa, Estágio, Financeiro',NULL,NULL,'Instagram','Não.','Valor estipulado no perfil da empresa me interessa.','Não',NULL,'Estágio Financeiro','Sou uma pessoa com muita vontade de aprender e que tem rápida aprendizagem, adoro trabalhar com pessoas e tenho um grande comprometimento com meu trabalho. Sempre trabalhei em meio a tecnologia o que se tornou algo relevante para um novo emprego, pois possuo uma facilidade em aprender sistemas e solucionar problemas por ele. Uma grande qualidade é a boa comunicação, (felizmente, ou infelizmente… não tenho problema nenhum em passar horas conversando) o que acredito ser de grande importância para um trabalho em que é necessário conversas com clientes e bom relacionamento com os mesmos.
Me identifico com o propósito da empresa em  entregar qualidade de vida e inovação para nossa cidade e imagino que posso agregar positivamente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-10T23:44:00.000Z'::timestamptz),
  ('Mel Rodrigues de Faria','melrodriguesdefaria@gmail.com',NULL,'12982245417','2002-05-03',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1l9q_2WcF2B-nviFcQxepHS46CIKK2cYH','Engenharia Agroindustrial','Ensino Superior Completo','Universidade Federal do Rio Grande','2028-09-11','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Lojas Renner (11/2022 - 05/2023) | Assistente de Loja
Na Lojas Renner, fui responsável por diversas funções. Cuidava do recebimento de valores, abertura e fechamento de caixa, além de oferecer serviços financeiros, como cartões e parcelamentos. Também lidava com processos de troca e rotinas diárias de reposição e organização do setor. Ajudava a colocar etiquetas de preços e códigos nos produtos no estoque, e atendia os clientes nos provadores, sempre buscando proporcionar a melhor experiência de compra. Além disso, organizava a área de vendas e vitrines de acordo com os padrões do merchandising e incentivava os clientes a deixarem sua opinião no Encantômetro ao sair da loja.

Cinemark (09/2022 - 12/2023) | Atendente
No Cinemark, atendia os clientes no Snack Bar, ajudando-os a escolher os combos que melhor atendem suas necessidades e focando em produtos que trazem melhores resultados no fechamento do dia. Também preparava os alimentos e bebidas, reabastecendo os insumos e fazendo a limpeza diária dos equipamentos. A organização e limpeza do ambiente também faziam parte das minhas atividades.

Honey Donuts (02/2020 - 09/2021) | Empreendedora e cozinheira 
Na Honey Donuts, fui responsável por todo o processo de produção, desde o preparo da massa até a cobertura e recheios dos donuts. Gerenciei o perfil no iFood, cuidando dos pedidos e entregas, além de administrar o Instagram da marca, criando posts e respondendo aos clientes. Também criei a identidade visual da marca, incluindo nome, logotipo e cores, e desenvolvi o cardápio virtual para vendas no iFood.

Mercadinhos São Luiz (05/2018 - 09/2018) | Atendente de Padaria e Repositora
No Mercadinhos São Luiz, cuidava da reposição de produtos, garantindo que estivessem organizados e bem posicionados, contribuindo com ideias para melhorar a visibilidade e acessibilidade dos itens. Acompanhava os clientes em suas compras, especialmente os idosos ou com dificuldades, ajudando-os a encontrar os produtos e garantindo uma experiência agradável. Também atendia na padaria todas as tardes, buscando agilizar o atendimento e reduzir as filas.

Essas experiências me ajudaram a desenvolver habilidades de atendimento ao cliente, organização, vendas e gerenciamento de tempo, além de contribuir com ideias e melhorias para os locais onde trabalhei.','Sou formada em Marketing e sou graduanda em Engenharia Agroindustrial Indústrias Alimentícias',NULL,'Estágio','https://drive.google.com/open?id=1lj23_ZtupYEd65JiNk0GayjslsQOE16r',NULL,'Instagram','Não','1000','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-11T14:03:00.000Z'::timestamptz),
  ('Lucila Souza de Andrade','lucila.lucysa@gmail.com',NULL,'51989189443','1984-02-13',42,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1QTNQNQeZA1KGX8ugTOSk5XEgNge_1T6O','Estudando Administração','Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Pet''s Raio x Veterinário, Empresaria e Tec em Radiologia. Hospital Santa Casa (santo Antônio da Patrulha) TEC em Radiologia','Técnico em Administração, formada, estudando Administração na Uniasselvi, estudante de Tec em Contabilidade IFSUL','CPA 20 ( Certificação ANBIMA)','Administrativa','https://drive.google.com/open?id=13EKo-rp18OME-tclTNwDXJ6RPIGovMRw','https://drive.google.com/open?id=1DElstnfZV4QB_ANG4FS6GBrDWRraw-bx','Facebook','Não','R$1.400,00','Sim',NULL,'Estágio Financeiro','Com experiência no atendimento ao público busco nova experiência na área administrativa/financeira, sempre em busca de novos conhecimentos estou estudando Administração e TEC em Contabilidade. Veja nessa vaga de estágio uma ótima chance de aprender rotinas administrativas e colaborar para o dia a dia da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-12T00:17:00.000Z'::timestamptz),
  ('Lais Ribeiro Pedroso','laispedroso7085@gmail.com',NULL,'51995789470','2000-04-26',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1MhXgB7W_i2UdnVsfb-CQF6kFV6LTqOKp',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura Municipal de Santo Antônio da Patrulha, estagiária, início em 12/12/2021 e término em 01/07/2023, as principais atividades eram atendimento ao Público, recebimento de documentos, arquivamento de documentos, conferência de folhas pontos, conferência de diárias, chamamento de novos estagiários e temporários, recebimento de documentação para assumir contrato ou concurso, serviços bancários.','Técnico em Administração, 2 anos pelo Instituto Federal Sul Rio Grandense 
Informática, 80 horas pela escola Mundo Office
Atendimento ao Público, 30 horas, pela Fundação Bradesco',NULL,'Administrativa','https://drive.google.com/open?id=1oUqF83S-kuF_lg7l60bBcZsdPddD20Ua',NULL,'Instagram','Não','1800','Sim','Cleia Airoldi, Secretaria de Municipal de Administração na Prefeitura Municipal de Santo Antônio da Patrulha','Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa responsável, atenta, comprometida, alegre, educada, gosto de trabalhar em equipe e estou a procura de uma oportunidade para colocar em pratica todo meu conhecimento e contribuir com o crescimento da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-12T02:02:00.000Z'::timestamptz),
  ('Tainá da Silva Simões','sansiltaina@gmail.com',NULL,'51981999811','1998-07-17',27,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=16sgOvFEKKqGeFI-AHUc75-zWTQVu4s9M','Bacharel em Teologia','Ensino Superior Completo','FABAD','2024-04-13','Sou formado','Vero Internet, consultor de negócios interno, início   Abril de 2022, trabalho atual. Vendas B2B (Business to business) para empresas de pequeno a médio porte, no atendimento receptivo e em algumas ocasiões ativo. Com meu bom desempenho somente eu fiquei por um ano no televendas atendendo mais de três estados e agora tendo mais colegas na equipe, as cubro em seus horários de férias. 
Aptidão para lidar com objeções, empatia para entender o que o cliente precisa e conhecimento extenso sobre nossos serviços oferecidos. E nos últimos dois meses atendo cliente B2C (Business to Consumer) vendas de produtos para o cliente final.


Boulevard free way, assistente administrativo, início dezembro de 2019, saída março de 2020. Controle de agenda, atendimento ao cliente e
telefone, pagamento de contas; Elaboração de planilhas; Organização de arquivos; Acompanhamento de reuniões e entrevistas de emprego Lançamento de notas sistema (bitbar supply); Registro de cartão ponto; Pagamento de colaboradores; Fechamento caixa; Controle de uniformes e Epi''s; Receber e enviar documentos e emails.


Supermercado Pinheiro, Fiscal de Caixa, período : 2021 a 2022
Monitoramento do fluxo dos caixas, prestar apoio em ocorrências diversas, realizando cancelamentos e estornos, realizando a reposição de troco e coleta de valores, abertura e fechamento geral do movimento de caixa do dia, além de garantir a qualidade do serviço prestado, embalagens dos produtos e entrega em domicílio.',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Facebook','Não','A partir 1.600,00','Sim',NULL,'Comercial','▪Pacote Office: Word, Excel, PowerPoint, Digitação e Impressão - Rede de Ensino Styllus, ano de conclusão 2009;
▪Informática e Inclusão Digital - SESI, ano de conclusão 2010;
▪Curso Básico em Teologia - IBADEP, ano de conclusão 2020.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-12T16:35:00.000Z'::timestamptz),
  ('Jessica lassakoski ferreira','jessicalferreira89@gmail.com',NULL,'51999875798','1997-08-19',28,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Y5LSNepGfzPEyk_v__3EeO3zMXYs-uEA','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi',NULL,'Não, no momento pausei/parei por um período.','Revisora, vendedor',NULL,NULL,'Administrativa, Comercial, Estágio, Engenharia',NULL,NULL,'Facebook','Nao','1700','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-16T15:02:00.000Z'::timestamptz),
  ('Maria eduarda pires nascimento','pmariaeduarda626@gmail.com',NULL,'51980212840','2004-08-25',21,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1VMcdlfnbOKNCccqdKWZxUZVXy6-GLdGs',NULL,'Ensino Superior Incompleto','Universidade Federal de Rio Grande- FURG',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','E.M.E.I Pequeno Aprendiz, de Julho de 2021 - até Abril de 2023 -Estágio remunerado magistério
Farmácia São João, de Junho 2023- até Maio de 2024-Operadora de caixa; Balco farmacista; Encarregada de loja
Vero internet, de Julho de 2024- atual- Atendimento Suporte/Sac; Auxiliar na configuração, manutenção e atualização de softwares e hardwares; Suporte a sistemas operacionais e aplicativos: prestar assistência na instalação, configuração e solução de problemas em sistemas operacionais.',NULL,NULL,'Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=1QFZpVEj-VH98mxmelKP2MtlN1b2TSEUP',NULL,'Instagram','Não','1.400,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-16T15:30:00.000Z'::timestamptz),
  ('Giovanna Luz Ramos','gigilramos@hotmail.com',NULL,'51995540211','2009-03-24',16,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1UN0x0-HMH9WjZdMN4nBUy86N1ZycloFJ',NULL,'Ensino Médio Completo','Colégio Santa Teresinha','2026-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Informações Complementares
Trabalho Informal com vendas em empresa familiar.
Trabalho informal com redes sociais e atendimento ao público em empresa familiar.
(Edite Rocha Imóveis)
Objetivo
Busco a oportunidade de ingressar no mercado de trabalho, com o objetivo de adquirir experiência profissional e desenvolver habilidades práticas.','Trainee Coaching 1 (Administração Informatizada) - Cursando
Administração - Vendas - Secretariado - Marketing - Contabilidade - Internet e Drive - Pacote Office e Desenvolvimento Humano.
Carga Horária: 80h.
Instituição Mundo Office.

Empreendedorismo Digital - Concluído
Carga Horária: 30h. 
Instituição Senac.','Empreendedorismo Digital - Concluído Carga Horária: 30h.  Instituição Senac.','Administrativa, Estágio, Financeiro, Marketing','https://drive.google.com/open?id=1_7c_VyyrJ-Ou2eBOj_iinubWZkAe1QdO',NULL,'Indicação','Não','R$900,00','Não',NULL,'Jovem Aprendiz',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-19T01:12:00.000Z'::timestamptz),
  ('Rosane Gehm dos Santos','sanigehm@gmail.com',NULL,'51992956704','1982-10-02',43,'União estável','0','Sim','Novo Hamburgo/rs','https://drive.google.com/uc?export=view&id=18PbJvK4VyyjzzHDTTigH8Qx8vOSJDGhZ','Direito','Ensino Superior Completo','Centro Universitário Feevale','2012-08-11','Sou formado','•	Empresa: Ofício do Registro de Imóveis de Novo Hamburgo 
Cidade: Novo Hamburgo 
Período: 05 de outubro de 2020 até 08 de maio de 2024. 
Resumo das Atividades:
Setor de conferência, onde são realizadas a conferência da documentação entregue pelos clientes afim de verificar se estão aptos para os devidos registros e averbações solicitados. 
Conferência em destaque em relação as Incorporações e Instituições de condomínio, verificando Projetos, Planilhas NBR, Memoriais Descritivos, certidões, enfim, toda a documentação pertinente ao serviço até estar apto para registro.
Em atividade aparte, auxílio nos ofícios judiciais recebidos pelo Registro de Imóveis (Justiça Estadual, Federal, do Trabalho e demais órgãos governamentais) verificação e controle de prazos no E-PROC (auxílio na abertura de prazos, postagem dos ofícios), elaborações de ofícios, baixas sistema CNIB e demais atividades administrativas.
Controle dos arquivos envolvendo os ofícios recebidos e enviados pelo Registro e organização e arquivos dos formulários em relação a LGPD.
Sempre que necessário prestando atendimento presencial, telefone ou e-mail aos clientes ou órgãos judiciais ou administrativos.
•	Empresa: ABDO, ABDO e Diniz Advogados Associados 
Cidade: Novo Hamburgo 
Período: 01 de março de 2006 até 12 de dezembro de 2018.
Resumo das Atividades:
Atendimento aos clientes sobre informações processuais presenciais e por telefone, elaboração de petições, acordos revisionais, atividades administrativas da área jurídica, Finalização de processos (execuções de honorários, alvarás,...) setor bancário. Últimas atividades desenvolvidas foram no setor financeiro desde 2012, no controle dos alvarás a serem sacados e alvarás já sacados, verificação dos valores, prestação de contas com os clientes, negociação de contratos, cobrança de valores pendentes, auxilio na análise de minutas de acordo a serem fechados pelo setor cível, analises jurídicas em geral dos processos, cálculos de atualizações de valores, cálculos necessários para a prestação de contas. Atualização e controle de planilhas, alimentação de sistema próprio da empresa. Atendimento presencial, telefônico e via e-mail aos clientes.

•	Empresa: Terceiro Cartório Civil da Comarca de Novo Hamburgo 
Cidade: Novo Hamburgo
Período: 17 de fevereiro de 2003 até 17 de fevereiro de 2006
Resumo das Atividades: 
Atendimento ao Público, Elaboração de Peças Processuais, Cumprimento de Despachos, Digitação de Dados. 

•	Empresa: Styllus Informática
Cidade: Novo Hamburgo 
Período: Janeiro de 2000 até fevereiro de 2003 (Estágio)
Resumo das Atividades: 
Instrutora de informática','Curso Técnico: Transações Imobiliárias Entidade: Faccentro',NULL,'Administrativa, Financeiro, Licenciamentos, Engenharia','https://drive.google.com/open?id=1kug-_3NuUvCOMwj1llUncwnt30MleTCy',NULL,'Google','Não','A combinar','Sim',NULL,'Efetivo - área onde a equipe Young precisar dos meus serviços.','Ola! Tenho grande interesse em fazer parte de uma empresa que prese o trabalho em equipe, valorizando seus colaboradores, onde todos pretendam estar na empresa não somente por salário,  mas também por fazer parte de um time.
Pesquisei por empresas Urbanizadoras/Empreendimentos, pois devido a minha última experência de trabalho no Registro de Imóveis tive a grande oportunidde de conhecer esta área e me apaixonei, senti que nesse ramo poderia contribuir com todos os meus conhecimentos e experiências anteriores, deste contato com clientes, vendas, questões administrativas,  conferência e providencia de documentos burocráticos, além dos memoriais descritivos, planilhas NBR, projetos, enfim... e olhando o site da empresa, os empreendimentos, o vídeo, deu pra sentir que são uma verdadeira equipe.
Sobre minha vida pessoal, estou em uma união estável a mais de dez anos, onde tenho dois 
enteados,  um de 17 anos e outro de 11 anos, os quais amo muito onde eles tem uma convivência direta comigo e meu marido, compartilhada com a mãe deles. 
Gosto de animais, natureza... então passeios sempre procuramos onde possamos ter este contato. 
Me considero uma pessoa calma e tranquila ao lidar com as pessoas, sendo atenciosa e respeitando o outro. Gosto de passar os conhecimentos que tenho aos colegas assim como gosto de adquirir novos cenhecimentos e experiências.
Sei da importância que é para uma pessoa, uma família, poder adquirir seu imóvel próprio, poder trabalhar ajudando as pessoas a realizarem este sonho é um privilégio!
Seria uma grande oportunidade e satisfação fazer parte da Equipe Young.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-20T18:12:00.000Z'::timestamptz),
  ('Tauãne Oliveira do Nascimento','tauanenascimento76@gmail.com',NULL,'55999248398','2002-10-13',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Ralh3zMJ-Pa6UgydxZO4iAasrt0qGQuI','Cursando Administração','Ensino Superior Incompleto','Universidade Federal do Rio Grande FURG','2027-01-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1- Prefeitura Municipal de Santo Antônio da Patrulha. 2- Estagiária. 3- 05/10/2022 até 28/03/2024. 4- Atuava no setor de Compras, responsável pela busca de fornecedores para atender às demandas do município e das secretarias da cidade. Realizava também o atendimento ao público.
Atualmente estou na IMAP como estagiária no setor de Data Integrity',NULL,NULL,'Estágio',NULL,NULL,'Agência de Empregos','Não','1300','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-26T23:02:00.000Z'::timestamptz),
  ('Solange Otto Alós','solangeottoa@gmail.com',NULL,'51996923053','1981-03-11',44,'Solteiro(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1IGL9s8KlZqwZ68yMTJwzil3mY0Vfb9mU','Administração de empresas','Ensino Superior Incompleto','FURG',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Triunfo concepa - Atendimento, Departamento administrativo, financeiro, Encarregado de equipe. Período março 2015 a mais 2018 . Padaria são Pedro - Escritório, rotinas administrativa, financeiro, RH, programa NF. Período outubro 2018 a março 2022. Clínica vida e saúde, financeiro. Período junho 2022 a setembro 2022. Farmácia Maxxi econômica- Atendimento e caixa de outubro de 2022 até o momento setembro 2024','Rotinas administrativas',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Facebook','Não','Compatível com a função','Sim','Katiucha - 51 9613-7915','Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-26T23:15:00.000Z'::timestamptz),
  ('Lucila Souza de Andrade','lucila.andra.84@gmail.com',NULL,'51989189443','1984-02-13',42,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1hDMY4eteZ9GHXK5AuXaQCc8oG5lK1wyT','Tecnologo em Radiologia','Ensino Superior Incompleto','Uniasselvi','2023-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Pet''s Raio x, Raio x Veterinário, cargo Administrativo/ Tec em Radiologia 
Hospital Santo Antônio, cargo Tec em Radiologia.','Técnico em Administração e cursando Técnico em Contabilidade IFSUL Polo Sto Antônio','Certificado CPA 20 ANBIMA 04/2024','Administrativa','https://drive.google.com/open?id=1sjz0iXVQj_yBlPDONHVeE88ryr87J0L6',NULL,'Instagram','Não','R$1.500,00','Sim','Mix Pet, produtos veterinários, contato: 51 98142-9514','Estágio Financeiro','Bom dia, tenho facilidade em trabalhar com software de sistema, bom relacionamento entre colegas, atendimento ao público, me adapto a diferentes situações. Sempre buscando conhecimento estudo Administração e Tec em Contabilidade, com muita vontade de crescer dentro dessa empresa que está se tornando uma das maiores no seu ramo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-27T12:44:00.000Z'::timestamptz),
  ('Jorge Batista de Mello Filho','jorgefilhomb@gmail.com',NULL,'51995110708','2005-01-14',21,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1A6ozzM4u8R2rVOONmj-z6GrtmZhby6Vy',NULL,'Ensino Superior Incompleto','Universidade Federal do Rio Grande (FURG)','2027-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Flatut, auxiliar de produção - 09/22 à 03/23
Farmácias São João, auxiliar administrativo - 09/23 à atual','Já fiz curso de inglês também, assim como curso sobre o básico da programação.',NULL,'Administrativa, Estágio, Financeiro, Licenciamentos','https://drive.google.com/open?id=1TV2ED8GYAfUKSmqmBLhHQap2bhAZvEwq',NULL,'Indicação','Sim, Antonio Alves.','R$1.660,00 com possibilidade de efetivação futuramente e consequentemente aumento de salario.','Não',NULL,'Estágio Financeiro','Possuo excel basico e word, ingles avançado.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-27T13:11:00.000Z'::timestamptz),
  ('Rafaela dos Santos Bertoldi','rafabertoldi29@gmail.com',NULL,'51999143655','2003-07-29',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1GRBzDwLJtV3c4oCpNPRbFQ6PoXajGK_I','Administração de empresas','Ensino Superior Incompleto','Centro Universitário Leonardo Da Vinci/UNIASSELVI','2025-12-18','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Centro Municipal de Atendimento Educacional Especializado Santo Antônio: Endereço: Av. Cel. Victor Villa Verde, 710 - Centro, Santo Antônio da Patrulha/RS. Período: 05/05/2021 à 13/09/2021.
Cargo exercido: Estágio exercendo o cargo de secretária.
Funções        Desempenhadas:        Atendimento        ao        público,        criação        de        documentos importantes,como ATA, ligações aos atendentes e manuseio com planilhas Excel.

Clube Cardoso Marques:
Endereço: R. Paul Harris, 52 - Pitangueiras, Santo Antônio da Patrulha/RS.
Período: 15/09/2021 à 15/03/2023.
Cargo exercido: Estágio exercendo o cargo de Assistente Administrativo e RH.
Funções Desempenhadas: Atendimento ao público, ligações aos clientes, vendas de planos, agendamento de consultas e exames, recebimento e criação de boletos, manuseio com planilhas Excel e Word, criação de artes gráficas para o marketing digital da empresa, gestão de recursos financeiros e RH.

Secretaria da Educação Santo Antônio:
Endereço: Av. Borges de Medeiros, 481, Santo Antônio da Patrulha/RS.
Período: 01/06/2023 à 01/06/2024.
Cargo exercido: Estágio exercendo o cargo de estagiária Administrativa.
Funções Desempenhadas: Atendimento ao público, criação de documentos importantes, como ATA, Memorandos, realização de cadastros de alunos no transporte escolar e manuseio com planilhas Excel e word.','Curso Profissional 1º, informática básica (Excel, Power Point, Word e Google documentos) e administração, concluído.
Carga horária: 80h.

Profissional 2º, informática avançada, Design Gráfico (Photoshop, Corel Draw e Movie Maker) e administração, concluído (Design Gráfico e Administração)
Carga horária: 80h.

Curso Profissional de Língua Inglesa 1º (iniciante), concluído.
Carga horária: 40h.

Curso Profissional de Língua Inglesa 2º (Intermediário), incompleto.
Carga horária: 40h.

Instituição: Mundo Office.

Curso New W2 de Língua Inglesa (iniciante/intermediário), concluído.
Carga horária: 70h.
 
Instituição: Wizard.
Curso Profissional de Assistente Administrativo, concluído.
Carga horária: 80h.

Instituição: Centro Universitário IFSul

Curso de Língua Inglesa (Iniciante I), concluído.
Carga horária: 30h.

Instituição: Go Up School

Curso de Língua Inglesa (Iniciante II), concluído.
Carga horária: 30h.

Instituição: Go Up School

Curso de Imersão de Língua Inglesa, concluído.
Carga horária: 80h.

Instituição: Teacher Natchee

Curso de Língua Inglesa (Pré Intermediário I), concluído.
Carga horária: 30h.

Instituição: Go Up School


Curso de Língua Inglesa (Pré Intermediário II), cursando.
Carga horária: 30h.

Instituição: Go Up School',NULL,'Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=1jWSzw-BHUoqBaWoHPCwRQTY-w3ApcY5_','https://drive.google.com/open?id=1GLcZPRZpFbeaPJcjPcw1CHHpZB9FgSvI','Agência de Empregos','Não','R$1.412,00','Sim','Empresa: Clube Cardoso Marques
Contatos: (51) 99933-3608 - Paulo Marques (chefe) / (51) 998847767 - Fernanda Meregalli (gerente)','Estágio Financeiro','Bom, eu tenho um pequeno empreendimento, faço personalizados em casa, meu insta é @rafabertoldipersonalizados. Gosto muito desta área, me saio muito bem nisto, pois tenho muita criatividade e uma certa delicadeza para realizar detalhes importantes para cada cliente. Tenho muito interesse na língua inglesa, realizo aulas a 2 anos, estou me dedicando muito a isso, pois acredito que é algo muito importante tanto para mim adquirir conhecimento quanto para ter mais oportunidades de trabalho. No meu tempo livre gosto muito de fotografar, danço e de tocar piano.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-09-27T16:42:00.000Z'::timestamptz),
  ('Hellen da Silva portal','hellen110506@gmail.com',NULL,'51980639929','2006-05-11',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1LtzoHD0E3PEF95pE9VqmWFQwzq0PfWuw','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2027-11-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Massulo Comércio e Beneficiamento de Arroz ltda 
2) Auxiliar de Faturamento 
3) 06/06/2022 - 10/11/2023
4) Emissão de notas fiscais, Entrada em documentos, Organização dos conhecimentos, toda a parte fiscal em geral.

1) Infocell Assistência técnica ltda 
2) Vendedora 
3) 05/02/2024 - 31/05/2024
4) Atendimento ao cliente, Venda de produtos da loja, Fechamento de caixa, organização da loja!','Ensino Médio completo e atualmente estou cursando faculdade de ciências Contábeis','Não possuo','Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=1R1MAFPtvOBZo70_LzaKsr2-S5CLcORHY',NULL,'Instagram','Não fui indicada','1600','Não','Deise Adam - (51) 996428407','Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-10-01T01:07:00.000Z'::timestamptz),
  ('Carlos Adriano abejaneda barbosa','carlosadrianoabejaneda@gmail.com',NULL,'053997016271','1988-09-21',37,'Solteiro(a)','3','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1jNlVXR9hBiWT4-DlnL_HZDMbWqXF2u05',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Portela eletromotores,rebobinador e mecânico de manutenção,29,09,2021//25,09,2024 .
Manutenção em motores elétricos e componentes elétricos.',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1iYKcJoL87JDzBIL-nmObWXDsrT8KT_83',NULL,'Facebook','Não','O possivel para minha familia','Sim','+55 53 99955-0220','Quero inscrever-me no banco de talentos da Young!','Esse currículo que mando aqui,é um antigo e não tem meu último emprego','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-10-01T14:59:00.000Z'::timestamptz),
  ('Jessica lassakoski Ferreira','jessicalferreira89@gmail.com',NULL,'51999875798','1997-08-19',28,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1wLb2lZbLQCXGf-FOIEBNi5Hw6rt_3e44','Administração de empresas','Ensino Superior Incompleto','Unifavest',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atendente e caixa  (padaria gaúcha)
Costureira(calçados manaain)',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Facebook','Não','1660.00','Não',NULL,'Estágio Financeiro','Me chamo Jessica, cursei um ano na área de Contábeis, mais um pedagogia e agora administração... Pois amo as três áreas, e gostaria muito de uma chance para exercer habilidades, também aprender muito...','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-10-01T18:32:00.000Z'::timestamptz),
  ('Leonardo Gonçalves de Freitas','leonardogonfre@gmail.com',NULL,'53991815952','2003-04-15',22,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1II9GOckUofv8faG9jO9jQa6BqPu5477O','Administração de empresas','Ensino Superior Incompleto','Universidade Pitágoras Unopar Anhanguera','2026-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Iniciei minha trajetória profissional como Vendedor e Caixa Temporário na Americanas S.A., onde atuei de 26/11/2021 até 06/01/2022. Nesse período, fui responsável pelo atendimento ao cliente, organização de produtos e suporte em operações de caixa, especialmente durante as promoções de final de ano. Essa experiência me proporcionou um forte aprendizado em atendimento ao público e trabalho em equipe.

Posteriormente, trabalhei no Atacadão Bagé como Operador de Caixa de 01/11/2022 até 01/09/2023. Minhas funções incluíam o atendimento direto aos clientes, controle de pagamentos e fechamento de caixa ao fim do expediente. Aprimorei minhas habilidades operacionais e de atendimento em um ambiente dinâmico e de alta demanda.

Entre 01/02/2024 e 22/07/2024, realizei um Estágio Administrativo no setor de Patrimônio, onde criei e atualizei planilhas, documentos e organogramas. Participei ativamente na realização de inventários, na entrega de memorandos e protocolos, além de realizar atendimento interno e externo e cuidar da comunicação via e-mails institucionais. Também dei suporte à preparação de leilões, desempenhando um papel essencial nas atividades do setor.

Mais recentemente, trabalhei como Analista de Suporte ao Cliente I na Bling, de junho de 2024 até agosto de 2024. Nesse cargo, fornecia atendimento ao cliente por meio de acesso remoto, auxiliando na resolução de dúvidas e na operação do sistema ERP, além de dar suporte em áreas como integração com marketplaces, API, logística e emissão de notas fiscais.','Possuo certificação de Assistente de logistica, Assistente de RH, Programador de Sistemas, atendimento ao público, secretariado administrativo e contábil.',NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1F9p5KN0FYM2-Tpolvtg-UewQrM14ro2t',NULL,'Google','Não','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Gosto de viajar, conhecer novos lugares, novas culturas, novas pessoas. Sou entusiasta da tecnologia, estou sempre procurando saber sobre as novas tecnologias. Adoro conhecer e praticar coisas novas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-10-02T05:28:00.000Z'::timestamptz),
  ('Lucinara Castro','cinara.scastro@gmail.com',NULL,'51994314095','2024-10-02',1,'União estável','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1mOaBB8mWI80ump11trzFpRIXXSVIPlIz',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei como secretária administrativa em Capão da Canoa quando morava lá, trabalhei por quase 2 anos na função, trabalhava em uma construtora e imobiliária. 
Trabalhei tbm como caixa crediarista na loja delta sul, trabalhei por 1 ano e meio. Onde atendia o público e auxiliava nas cobranças.
Trabalhei no posto gás Fort, por quase 2 anos, atuava como caixa, recebia compras para loja e era responsável pelo fechamento do posto as 22h. 
Trabalhei na lotérica magro.','Possui curso de secretaria e relações humanas, curso de vendas, curso de informática, curso de lançamento de NFS.',NULL,'Administrativa, Financeiro',NULL,NULL,'Indicação','Nao','1800 a 2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-10-02T18:26:00.000Z'::timestamptz),
  ('DIEGO MIGUEL DE SOUZA WÜNSCH','miguelwunsch1@hotmail.com',NULL,'53991199131','1994-06-18',31,'Divorciado(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=17SYA07pwS74w3HMrreUwitgr6GRjMYWV','Técnico em Transações Imobiliárias','Ensino Médio Completo','Geteco Técnico','2023-12-23','Não, no momento pausei/parei por um período.','1)WMS SUPERMERCADOS DO BRASIL LTDA
2)JOVEM APRENDIZ
3)04/03/2013 - 26/12/2013
4) EMPACOTADOR, REPOSITOR, ATENDIMENTO NO BALCÃO DO AÇOUGUE E PADARIA 

1)FORÇA AÉREA BRASILEIRA
2)SOLDADO
3)01/03/2014 - 28/02/2018
4)ALTERAÇÃO DE DADOS BANCÁRIOS, CADASTRAMENTO DE AUXÍLIO TRANSPORTE, ORDEM DE SERVIÇO, FORMULÁRIO DE APURAÇÃO DE TRASNGRESSÃO DISCIPLINAR.

1)PAMPEANO ALIMENTOS LTDA
2)OPERADOR DE AUTOCLAVE
3)15/08/2018 - 06/08/2024
4)RESPONSÁVEL POR SUBIR E DESCER CARGA DENTRO AUTOCLAVE, FECHAMENTO DA MESMA, INÍCIO DE PROCESSO E DESPRESSURIZAR A AUTOCLAVE 

1) ESCRITÓRIO IMOBILIÁRIO PAULO ÁVILA
2) ESTAGIÁRIO 
3) OUTUBRO DE 2023
4)ESTÁGIO OBRIGATÓRIO DE CONCLUSÃO DE CURSO, ATENDIMENTO AO CLIENTE PRESENCIAL, VIA MESSENGER E WHATSAPP, CAPTAÇÃO DE CLIENTES, IMÓVEIS','Curso Técnico em Contabilidade em andamento',NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=10q4UksADSL00vhE_pxW8PQLylXDTcWzb',NULL,'Prodesp','NÃO','R$1.610,00','Sim','ESCRITÓRIO IMOBILIÁRIO PAULO ÁVILA, 53 981363115','Comercial','Gosto de participar de eventos de corrida de rua, já pratiquei karatê, viajo quando posso.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-10-03T14:52:00.000Z'::timestamptz),
  ('Liliana Aparecida Geraldo da Silveira','lilianaags97@gmail.com',NULL,'51997983804','1997-10-24',28,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1JbiHOKc5iHyRwhJGFVlasV5vd42kYBGT','Ciências Contábeis','Ensino Superior Incompleto','Universidade Uniasselvi','2025-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Jatrabalhei no setor fiscal da empresa Comtec, onde emitia notas realizava cobranças,e apuraca os impostos, Engenho Coface onde fazia acerto de contas a pagar e a receber, Empresa Ambiente Móveis onde fazia cotação de materiais pra estoque, montava orçamento pra clientes, fazia folha de pagamento , acertos cobranças, e compras, vendas e redes sociais.','Rotinas administrativas, Ecxel',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1OF_Au2g7rOFr-hCVokO69_3x51OEy1Yb',NULL,'Facebook','Não','R$1.600,00','Sim','Engenheiro Cereais, coface - CesarTedesco','Estágio Financeiro','Procuro um emprego o de possa a aperfeiçoar ainda mais minhas habilidades profissionais, tem cede de aprender coisas novas e crescer proficionalmente. Sou muito centrada e dedicada O trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-10-03T22:34:00.000Z'::timestamptz),
  ('Priscila Lourenço','prihlourencoreis@gmail.com',NULL,'51996344031','1988-11-16',37,'Divorciado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1-qJTNPwLiERaV4dtYTvyVkR58ytvMk7W','Administração de empresas','Ensino Superior Incompleto','Uninter','2027-10-03','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atuo atualmente a mais de 15anos na área de vendas e comercial, tive a honra de iniciar na grande rede de comércio Magazine Luíza,  lugar onde foi meu 1°emprego e também um divisor de aguas na minha vida , pois ali despertei o amor pela venda e e aprendi a buscar sempre um atendimento exemplar ! Logo após isso devido a algumas mudança pessoais trabalhei também na estrangeira Leroy Merlin, em São Leopoldo . Uma empresa muito sólida e bem estruturada onde fui aprendendo sempre a desenvolver vendas técnicas  e orçamentos . Tive outras experiências tambem em empresas menores , me aventurei no empreendorismo, onde me dediquei a minha própria empresa que infelizmente sofreu muito com a crise d pandemias e após isso atualmente a última empresa uma grande empresa regional Deltasul Utilidades.  , onde trabalhei com as vendas de produtos e de serviços  .','Atualmente cursando Administração e me sentindo muito realizada pois sempre foi um sonho antigo onde hoje estou tirando do papel. Trabalha com publico e atendimento em geral sempre foi umas das minhas paixões e entendo que onde vou tenho a oportunidade de fazer a diferença e agregar muito valor a empresa.',NULL,'Administrativa, Comercial, Estágio, Novos Negócios','https://drive.google.com/open?id=1nZTuxxzb78wzkrTRX9ddaKXXVIsrsycB',NULL,'Instagram','Não.','Em torno de R$1600 a R$200','Sim',NULL,'Estágio Engenharia e/ou Arquitetura','Então, uma menina do interior de Taquari que aos 18 anos descobriu o amor pelas vendas. E hoje depois de 17anos como um boa vendedora meu maior traço sempre foi a simpatia e extroversão,  então no ambiente de trabalho em equipe procuro levar tudo de forma leve e respeitosa com todos! Sei ouvir críticas positivas ,mas me desenvolvo melhor com as críticas construtivas . 
Estou saindo da área  de vendas no varejo devido a rotina de trabalho nos finais de semana, e o motivo é pq tenho um filho de 4 anos que é minha fonte de amor então busco oferecer mais tempo de qualidade ao lado dele e participar mais do seu crescimento.  
Gosto muito de praticar esportes, trilhas e pedais são minha grande paixão!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-10-04T01:34:00.000Z'::timestamptz),
  ('Vitor Soares dos Santos','vitor18ss18@gmail.com',NULL,'51996159264','1998-08-18',27,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1G7hk5m79g_kcJiQvoU8huhdpnHpJWJuH','Gestão Financeira','Ensino Superior Incompleto','Universidade do Vale do Rio dos Sinos','2025-08-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) D&V Ferragem 
Junho/2016 – 30/09/2024 - Auxiliar Administrativo e de Vendas 
Responsável por: atender os clientes no estabelecimento e realizar as 
vendas; Consultar, avaliar e estabelecer relacionamento com os 
fornecedores; organizar e manter o controle do estoque através de softwares 
de gestão; conferir notais fiscais; realizar pagamentos e serviços bancários; 
monitorar o fluxo de caixa da empresa; Além de planejar e buscar soluções 
para a saúde financeira da empresa – como o controle de custos e despesas, 
com o auxílio de programas de gestão e elaboração de planilhas no Excel.

Profissional Autônomo 
2019 – Julho/2024 – Comércio Varejista de materiais de construção em geral 
Responsável por atender e negociar com clientes, garantir a entrega dos 
devidos pedidos e realizar a compra dos materiais para revenda.',NULL,NULL,'Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1bdiR0kQzVelSbKd-JnaoMfzmtbTKG73c',NULL,'Indicação','Não','R$1.700,00','Não',NULL,'Estágio Financeiro','Após concluir o Ensino Médio, comecei a auxiliar meu pai em seu pequeno negócio, no ano de 2016. Neste período adquiri conhecimento sobre gestão, vendas e como atender e criar um relacionamento com os clientes de forma humanizada, buscando sempre solucionar seus problemas. Em 2021, iniciei minha graduação na Unisinos, para obter qualificações técnicas. Sempre fui muito interessado por estudos, e estou sempre procurando algo novo para aprender. Sou muito organizado e analítico. 
Por fim, meu maior "hobby" é acompanhar Formula 1 e todo o "mundo" de dados e análises técnicas que envolvem esse esporte.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-10-07T22:21:00.000Z'::timestamptz),
  ('Fernanda Morrudo Rosa','femorrudo@hotmail.com',NULL,'53984490697','1984-11-30',41,'União estável','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1q5m8Pdp6U7YBhF_1kVTyLxMVQ-xq6iy0','Letras','Ensino Superior Incompleto','Unipamapa - Universidade Federal do Pampa','2026-09-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Lojas Quero quero de 12/2003 A 08/2009 auxiliar admin, Sistema Engenharia de 09/2009 A 07/2017 setor admin contábil e financeiro, Postos Balluarte de 08/2017 A 05/2019 auxiliar admin contábil e escrita fiscal, ASM Empreendimentos de 09/2019 A 08/2021 auxiliar admin financeiro, contábil e escrita fiscal.','Somente cursos de nível técnico.',NULL,'Administrativa','https://drive.google.com/open?id=18tGM7kaPdEfzXOH7EJHyh2HY2QbBAy2N',NULL,'Instagram','Não','Se for na minha cidade algo entre R$2000,00 e R$ 2500,00 se for fora da cidade algo acima deste valor.','Sim',NULL,'Administrativo','Bem, sempre trabalhei na área administrativa, adquiri bastante conhecimento contábil,  financeiro e fiscal, alguma coisa de departamento pessoal. Atualmente trabalho por conta e estudo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-10-09T02:25:00.000Z'::timestamptz),
  ('Roseline Vieira Castello','rose_castello81@hotmail.com',NULL,'53991890763','1981-02-17',45,'Casado(a)','2','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1OxJlPwu97NWk8YHxKDYaxufyXjqBkC4d','Técnico em Transações Imobiliárias','Ensino Superior Incompleto','Geteco- Escola Municipal de Ensino Técnico Antenor Gonçalves Pereira','2025-12-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Shanadu - Vendedora/ Supervisora de vendas 
Out/ 15 a Março/20
Picorrucho - vendedora 
Mai/11 a Out/ 13',NULL,NULL,'Comercial, Marketing, Engenharia','https://drive.google.com/open?id=137Mzlyv2ezjCmmFnn30GlD6pAHaPj0ni','https://drive.google.com/open?id=1JYGSB7Ifa6EN1KHwP1mb8IyrfPpSFmge','Instagram','Não','Minha expectativa salarial é negociável com base nas responsabilidades da função e benefícios oferecidos.','Sim','Glaucia - Supervisora de vendas 
Shanadu (53)984196131
Paulo A''vila- Corretor/ Professor de Operações imobiliárias (53)98136-3115','Agenciamento/ Captação/ Corretora','Gosto de aprender coisas novas, me defendo no inglês, sou ótima em exatas, ajudo muito meus colegas de aula nas matérias que exigem cálculo, sou mãe coruja, tenho 2 filhos que sou apaixonada, um tem 21 que faz faculdade de Engenharia da Computação e outro 9 e estuda no 4 anos, amo cozinhar, Tenho aproveitado o tempo que não estou trabalhando para cuidar da casa e tenho estudado bastante','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-10-09T14:56:00.000Z'::timestamptz),
  ('Thalita de Borba Vincent','thalitavincent@gmail.com',NULL,'539999605144','2005-06-01',20,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1TxFtOvC8ybklHtgs4vUU90w0OAzI2kBq','Psicologia','Ensino Superior Incompleto','URCAMP- Universidade da Região da Campanha','2028-07-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Caixa Econômica Federal, estagiária, 04/2022 -12/2022.
Nicola veículos, jovem aprendiz, 03/2023 - 06/2024.
Sibele multimarcas, auxiliar administrativo (atuo na área de marketing), desde 06/2024.','Tenho cursos na área da informática: Excel, Word, Windows. Também de idiomas: inglês. E atualmente estou cursando na área de marketing: social media, tráfego pago…','Não','Administrativa, Financeiro, Marketing','https://drive.google.com/open?id=1OE4cuaV-AuyJnj_Ztc16itBBoAcX8VA8','https://drive.google.com/open?id=1S33XmGLHmeY-gkN7BZY_tZEVZHYOFbmq','Instagram','Não','1.800 - 3.000','Sim','Jussana Maciel (gerente Caixa Econômica Federal)- 53 99703-8386
Suelen Silveira (encarregada do setor financeiro, minha superior)- 53 99999-1151','Quero inscrever-me no banco de talentos da Young!','Meu nome é Thalita, tenho 19 anos e sou acadêmica do 3° módulo de Psicologia. Iniciei minha trajetória profissional aos 14 anos como bolsista em uma Universidade Federal da minha cidade. Após o término do contrato da bolsa, passei a trabalhar como vendedora em uma loja da minha família. Em seguida, fui selecionada para um estágio na Caixa Econômica Federal, onde adquiri ampla experiência em rotinas administrativas, atendimento ao público e processos bancários. A Caixa foi uma empresa que me acolheu até a conclusão do ensino médio.
Após o término do estágio, ingressei na empresa Nicola Veículos como jovem aprendiz, oportunidade que me permitiu adquirir conhecimentos em diversas áreas da empresa. Atualmente, atuo na área de marketing de uma revenda de carros, desempenhando a função de social media.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-10-10T00:49:00.000Z'::timestamptz),
  ('Dauana Soares Pereira','dauanasoares_sm@hotmail.com',NULL,'53999070336','1992-10-25',33,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1DUgpABReR2hqWrvVThjHw1TeLKSYa5bJ','Administração de empresas','Pós-graduação Completa','Universidade da Região da Campanha','2014-03-22','Sou formado','Dallé Construtora- Analista Financeiro Pleno- de setembro de 2020 até o momento, atividades financeiras, contas a pagar e a receber.','Pós graduação em Controladoria e Finanças Corporativas e MBA em Liderança e RH',NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1CiCkqznrYciew8UDj1uiKRHUe_y8D2vX',NULL,'Google','Não','R$ 3.000,00 a R$ 4.000,00','Não','Tais Bom- Gestora Financeira Dallé Construtora- 53 9957-5751','Quero inscrever-me no banco de talentos da Young!','Olá, sou a Dauana, tenho 31 anos e possuo experiência na área administrativa em diversos ramos, mas o que mais me chama atenção é o da construção civil e novos empreendimentos para comercialização. Nas horas vagas gosto de manter contato com a natureza e conhecer lugares novos sempre que possível.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-10-11T12:41:00.000Z'::timestamptz),
  ('Tássia Coutinho Vaz','tassia11vaz@gmail.com',NULL,'53999336624','1993-12-11',32,'Casado(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1gU0ABaBZ2QHEwATkSWmLEUC5PhRE6q83','Administração de empresas','Ensino Superior Completo','Unicesumar','2023-01-27','Sou formado','PVI Energia Solar, estágio na área administrativa,atividades administrativas e atendimento.','Técnico em Segurança do Trabalho',NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1UPAVZJ7Zbpxn7C3cPMb0owOTdXHt4waD',NULL,'Google','Não','Acima de 1400 reais','Não',NULL,'Administrativo e comercial','Trabalhei no Censo Agro 2018 no IBGE, cargo Supervisora. Tive experiência com trabalho em equipe e supervisão. Sou muito responsável e determinada. Fiz curso de assistente administrativo pela Unicesumar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-10-11T15:34:00.000Z'::timestamptz),
  ('Sara da Silva Santos','sarasilvasantos98@hotmail.com',NULL,'51998999756','1998-04-25',27,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Zc-mlmgc_1AIJqoTpuU5DJpPqg6SScwF','Administração de empresas','Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Particulare Confecções, vendedora, 09/2016 até 07/2019
Divique Confecções, vendedora, 03/2020 até 12/2020
Um Men Store, vendedora, 05/2021 até 02/2022; 09/2022 até 01/2023
P.R dos Santos Pinto, auxiliar de produção, 08/2023 até atualmente','Assistente administrativo 
Informática básica',NULL,'Administrativa, Estágio, Financeiro',NULL,NULL,'Agência de Empregos','Não','1.420,00','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-10-11T23:57:00.000Z'::timestamptz),
  ('Thiago Ferreira Gomes','thiagofgomes17@gmail.com',NULL,'55981143398','1999-06-07',26,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1SLwtai9_-kqeJDCrEDDBt7qFDVtPb_YK','Engenheiro Cartógrafo e Agrimensor','Pós-graduação Completa','Universidade Federal do Pampa','2022-04-28','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Prefeitura de Maçambará 
2) Estagiário de CTM
3) 01/2020 até 04/2020
4) Analista e executor de dados oriundos do levantamento à “campo”
voltados para o Cadastro Técnico Multifinalitário municipal, e na execução dos boletins
cadastrais. imóveis.

1) Universidade Federal do Pampa
2) Professor substituto
3) 07/2023 até 02/2024
4) Encarregado das disciplinas de Geodésia, Cartografia, Geoprocessamento,
Topografia e Laudos rurais. Sendo essas ofertadas aos cursos de Bacharelado em Engenharia
Cartográfica e de Agrimensura e Bacharelado em Agronomia.

1) CAPES e FAPERGS
2) Pesquisador de mestrado e doutorado
3) 08/2022 até o presente momento
4) Bolsista de Pós-Graduação e Pesquisador no Laboratório de Fluidodinâmica
Computacional e Turbulência Atmosférica, com ênfase em análises voltadas para a adequação
de um modelo para analisar o período de inundação dos rios (Mestrado). E uma análise do funcionamento do modelo WRF-VPRM em torno dos poluentes que são dispersos na produção de arroz irrigado, na região do bioma pampa (Doutorado)','Sou Mestre em Engenharia na área de modelagens e simulações, e realizando o Doutorado no mesmo programa',NULL,'Financeiro, Licenciamentos, Engenharia','https://drive.google.com/open?id=12rHTuKGNOt8-FhY6Htx6Ayx49F7QDdJn','https://drive.google.com/open?id=1MvOCMLJDEKD3NU-hcLyDcNfNa-lfVNnU, https://drive.google.com/open?id=1NXFGrv1ZzCgyPap25HIKfjxv2nfTn2zp, https://drive.google.com/open?id=1_wfVrvoPO4sYcYYT_8tk8C5nBTsXNofV, https://drive.google.com/open?id=1uEEmxDiccmbpLHgJZAGBKMR7cmL0Qqtc, https://drive.google.com/open?id=1krMKE9_WeqARzX18QTizb23JsRN6vDDJ','Email','Ninguém','Entre 3000 e 4000 reais','Sim',NULL,'Engenheiro Cartógrafo e Agrimensor','Sou apaixonado por vôlei e cavalos. No meu tempo livre participo de treinos de vôlei, saio com amigos e cozinho aos finais de semana. Realizo alguns projetos dentro dos softwares HEC-HMS, QGis, Rstudio, WRF, AutoCAD e um pouco de programação em Python. Estou começando a fazer aulas de inglês para melhorar o idioma. Busco sempre estudar coisas novas e encontrar formas de estimular o cérebro.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-10-13T03:43:00.000Z'::timestamptz),
  ('Gustavo Simionato Campara','gustavo_campara@hotmail.com',NULL,'55996219127','1997-09-05',28,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1HIHz05GypbGaDRcjMrx-TvuZIDJNDaxX','Graduando em Engenharia Cartográfica e de Agrimensura','Ensino Superior Incompleto','UNIPAMPA / CAMPUS ITAQUI - RS','2025-01-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','TOPOPLAN - Mariópolis PR, durante os anos de 2022 à 2024 participei e me envolvi na área de topografia e georreferenciamento de imóveis rurais pela empresa onde resido com minha família, dessa maneira auxiliava em atividades de campo com a utilização de equipamentos geodésicos e em escritório no processamento dos dados e na confecção de materiais técnicos que o meio exigia. PLANAST - Itaqui RS, Realizei meu estágio obrigatório pelo curso que estou graduando realizado no período de 2023 (Abril à julho) na área a de georreferenciamento de imóveis rurais pelo município.',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1Q30ySuxNAmgNq5azMtzV20ZB9jIjCnk9',NULL,'Agência de Empregos','Não','4000','Sim','TOPOPLAN - Eng. responsável (45) 9846-2999','Estágio Engenharia e/ou Arquitetura','Recentemente fiz um investimento profissional do Métrica topo (setembro), o investimento veio por meio do contato com o estágio na cidade de minha família, então senti que seria um investimento que traria muitos benefícios sobre as disciplinas de Cadastro Técnico Multifinalitário e Parcelamento Territorial e no meio profissional. Esses componentes citados estou cursando no período de 2024/2, concluindo o curso em final de 2024/2 sobre os dias da semana de Quinta pela manha e sexta no período da tarde, sinto muito em informar que a disponibilidade de horário de 44 horas semanais seria um problema para mim, visto que nos demais dias da semana (segundas, terças e quartas-feiras) tenho tempo livre, inclusive fins de semana (alternativa).','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-10-14T14:20:00.000Z'::timestamptz),
  ('Vanessa Fraga da Silveira','vanessasilveira369@gmail.com',NULL,'519995815771','2002-05-23',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1EguLfTd97SiqnQN63zsN5-dtCRfFIqi7','Ciências Contábeis','Ensino Superior Incompleto','UniSantaCruz','2026-01-06','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Mauro Moro Atelier - costureira- 01/09/2019- 10/12/2022
Banco do Estado do Rio Grande do Sul- 12/12/2022
Vero- 15/07/2024',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Agência de Empregos','Nao','2200','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-10-14T18:51:00.000Z'::timestamptz)
;
